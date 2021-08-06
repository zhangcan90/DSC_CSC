function possiablePaths = findPath(Graph, partialPath, destination, partialWeight)
pathLength = length(partialPath);
lastNode = partialPath(pathLength); 
nextNodes = find(0<Graph(lastNode,:) & Graph(lastNode,:)<inf); 
GLength = length(Graph);
possiablePaths = [];
if lastNode == destination
 possiablePaths = partialPath;
 possiablePaths(GLength + 1) = partialWeight;
 return;
elseif length( find( partialPath == destination ) ) ~= 0
 return;
end
for i=1:length(nextNodes)
 if destination == nextNodes(i)
  tmpPath = cat(2, partialPath, destination);
  tmpPath(GLength + 1) = partialWeight + Graph(lastNode, destination);
  possiablePaths( length(possiablePaths) + 1 , : ) = tmpPath;
  nextNodes(i) = 0;
 elseif length( find( partialPath == nextNodes(i) ) ) ~= 0
  nextNodes(i) = 0;
 end
end
nextNodes = nextNodes(nextNodes ~= 0); 
for i=1:length(nextNodes)
 tmpPath = cat(2, partialPath, nextNodes(i));
 tmpPsbPaths = findPath(Graph, tmpPath, destination, partialWeight + Graph(lastNode, nextNodes(i)));
 possiablePaths = cat(1, possiablePaths, tmpPsbPaths);
 %possiablePaths = sortrows(possiablePaths,GLength+1);
end
