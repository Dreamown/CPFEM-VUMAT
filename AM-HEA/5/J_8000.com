from driverConstants import *
from driverExplicit import ExplicitAnalysis
import driverUtils, sys
options = {
    'ams':OFF,
    'analysisType':EXPLICIT,
    'applicationName':'analysis',
    'aqua':OFF,
    'beamSectGen':OFF,
    'biorid':OFF,
    'cavityTypes':[],
    'cavparallel':OFF,
    'complexFrequency':OFF,
    'contact':OFF,
    'cosimulation':OFF,
    'coupledProcedure':OFF,
    'cse':OFF,
    'cyclicSymmetryModel':OFF,
    'directCyclic':OFF,
    'domains':1,
    'double_precision':EXPLICIT,
    'dsa':OFF,
    'dynamic':OFF,
    'enrichment':OFF,
    'filPrt':[],
    'fils':[],
    'finitesliding':OFF,
    'foundation':OFF,
    'geostatic':OFF,
    'heatTransfer':OFF,
    'importer':OFF,
    'importerParts':OFF,
    'includes':[],
    'initialConditionsFile':OFF,
    'input':'J_8000',
    'inputFormat':INP,
    'job':'J_8000',
    'keyword_licenses':[],
    'lanczos':OFF,
    'libs':[],
    'magnetostatic':OFF,
    'massDiffusion':OFF,
    'modifiedTet':OFF,
    'moldflowFiles':[],
    'moldflowMaterial':OFF,
    'mp_mode':THREADS,
    'multiphysics':OFF,
    'noDmpDirect':[],
    'noMultiHost':[],
    'noMultiHostElemLoop':[],
    'noStdParallel':[],
    'no_domain_check':1,
    'outputKeywords':ON,
    'parallel':DOMAIN,
    'parallel_odb':SINGLE,
    'parameterized':OFF,
    'partsAndAssemblies':ON,
    'parval':OFF,
    'postOutput':OFF,
    'preDecomposition':OFF,
    'restart':OFF,
    'restartEndStep':OFF,
    'restartIncrement':0,
    'restartStep':0,
    'restartWrite':ON,
    'rezone':OFF,
    'runCalculator':OFF,
    'soils':OFF,
    'soliter':OFF,
    'solverTypes':['DIRECT'],
    'staticNonlinear':OFF,
    'steadyStateTransport':OFF,
    'step':ON,
    'subGen':OFF,
    'subGenLibs':[],
    'subGenTypes':[],
    'submodel':OFF,
    'substrLibDefs':OFF,
    'substructure':OFF,
    'symmetricModelGeneration':OFF,
    'thermal':OFF,
    'tmpdir':'/tmp',
    'tracer':OFF,
    'user':'vumat_dual_phase.f',
    'visco':OFF,
}
analysis = ExplicitAnalysis(options)
status = analysis.run()
sys.exit(status)