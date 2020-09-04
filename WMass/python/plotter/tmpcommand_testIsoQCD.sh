#!/bin/bash    

cd /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter
eval `scramv1 runtime -sh`

# --showRatio --maxRatioRange 0.8 1.2 --fixRatioRange --noLegendRatioPlot
command='python /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/mcPlots.py -f -l 35.9 --s2v --tree treeProducerWMass --obj tree --lspam "#bf{CMS} #it{Preliminary}"  --legendWidth 0.25 --legendFontSize 0.05 /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/w-mass-13TeV/wmass_mu/mca_testIsoQCD.txt /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/w-mass-13TeV/wmass_mu/cuts_wmu_test.txt /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/w-mass-13TeV/wmass_mu/plots_forMuonFR.txt --noCms -j 8  --sP "ptl1,etal1,isol1,mt" -P /afs/cern.ch/work/m/mdunser/public/wmassTrees/SKIMS_muons_latest/  -F Friends /afs/cern.ch/work/m/mdunser/public/wmassTrees/SKIMS_muons_latest/friends/tree_Friend_{cname}.root  -W "puw2016_nTrueInt_36fb(nTrueInt)*_get_muonSF_recoToSelection(LepGood1_pdgId, LepGood1_calPt, LepGood1_eta)*_get_muonSF_selectionToTrigger(LepGood1_pdgId,LepGood1_calPt,LepGood1_eta,LepGood1_charge)*prefireJetsWeight(LepGood1_eta)" --pdir /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/plots/Wlike/TREE_4_WLIKE_MU/testIsoQCD/withMtCut/abseta0p0to0p4/ --setLegendCoordinates 0.2,0.75,0.85,0.92 -p "data_isoMore0p15,data_isoMore0p25,data_isoMore0p45,QCD_isoLess0p15,QCD_isoMore0p15,QCD_isoMore0p25,QCD_isoMore0p45"  --allProcInLegend  --n-column-legend 2 --plotmode norm --contentAxisTitle "arbitrary units" -X muTightIso -A onelep eta "abs(LepGood1_eta) > 0.0 && abs(LepGood1_eta) < 0.4" --setTitleXoffset 0.95 --legendFontSize 0.038 '
