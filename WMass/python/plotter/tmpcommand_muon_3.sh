#!/bin/bash    

cd /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/rel_slc7/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter
eval `scramv1 runtime -sh`

command='python /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/rel_slc7/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/mcPlots.py -f -l 35.9 --s2v --tree treeProducerWMass --obj tree --lspam "#bf{CMS} #it{Preliminary}"  --legendWidth 0.25 --legendFontSize 0.05 /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/rel_slc7/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/w-mass-13TeV/wmass_mu/mca_forMuonFR.txt /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/rel_slc7/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/w-mass-13TeV/wmass_mu/cuts_forMuonFR.txt /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/rel_slc7/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/w-mass-13TeV/wmass_mu/plots_forMuonFR.txt --noCms -j 8  --sP "ptl1,etal1,ptl1__etal1,isol1,muonId,awayJet_pt,awayJet_eta,mt,mt_jet_mu,mass_jet_mu,dphiLepAwayJet,detaLepAwayJet,dRLepAwayJet,iso03,dxy,dz,met_pt,nVert,miniRelIso" -P /eos/cms/store/cmst3/group/wmass/mciprian/TREE_4_WMASS_skimMuonFR_21Jan2020/  -F Friends /eos/cms/store/cmst3/group/wmass/mciprian/TREE_4_WMASS_skimMuonFR_21Jan2020/friends/tree_Friend_{cname}.root  -W "puw2016_nTrueInt_36fb(nTrueInt)*_get_muonSF_recoToSelection(LepGood1_pdgId, LepGood1_calPt, LepGood1_eta)*_get_muonSF_selectionToTrigger(LepGood1_pdgId,LepGood1_calPt,LepGood1_eta,LepGood1_charge)*prefireJetsWeight(LepGood1_eta)" --pdir /afs/cern.ch/work/m/mciprian/w_mass_analysis/heppy/rel_slc7/CMSSW_9_4_12/src/CMGTools/WMass/python/plotter/plots/Wlike/TREE_4_WLIKE_MU/comparisons/checkFR_computationRegion_noMediumId/ --n-column-legend 2 --setLegendCoordinates 0.3,0.78,0.9,0.92 -p "data,Wptmu,TauDecaysWpt,QCD,DiBosons,Top,Zpt"  --allProcInLegend --showRatio --maxRatioRange 0.8 1.2 --fixRatioRange --noLegendRatioPlot --n-column-legend 3 -X muMediumId '

echo "${command}"
echo "${command}" | bash


