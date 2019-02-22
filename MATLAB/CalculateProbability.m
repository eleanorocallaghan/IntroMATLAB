function probability = CalculateProbability(numSuccess, numTrials, indivProb)

    probability = BinomCoeff(numSuccess, numTrials)*(indivProb^numSuccess)*(1-indivProb)^(numTrials-numSuccess);

end

function binomCoeff = BinomCoeff(numSuccess, numTrials)

    binomCoeff = (factorial(numTrials))/((factorial(numSuccess))*(factorial(numTrials-numSuccess)));

end