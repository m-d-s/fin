! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareMutex
	.export	_Method_P_Kernel_HoareMutex_1
	.export	_Method_P_Kernel_HoareMutex_2
	.export	_Method_P_Kernel_HoareMutex_3
	.export	_Method_P_Kernel_HoareMutex_4
	.export	_Method_P_Kernel_HoareMutex_5
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
	.export	_Method_P_Kernel_HoareCondition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	76
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_194:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_193:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_192:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_191:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_190:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_189:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_188:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_187:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_186:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_185:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_184:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_183:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_182:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_181:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_180:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_179:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_178:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_177:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_176:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_175:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_174:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_173:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_172:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_171:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_170:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_169:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_168:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_167:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_166:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_165:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_164:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_163:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_162:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_161:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_160:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_159:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_158:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_157:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_156:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_155:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_154:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_153:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_152:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_151:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_150:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_149:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_148:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_147:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_146:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_145:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_144:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_143:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_142:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_141:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_138:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_135:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_132:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_128:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_127:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_126:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_125:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_123:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_122:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_121:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_120:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_119:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_118:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_117:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_116:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_115:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_114:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_113:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_112:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_111:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_110:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_109:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_108:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_107:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_106:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_105:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_104:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_103:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_102:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_101:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_100:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_99:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_98:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_97:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_96:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_95:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_94:
	.word	2			! length
	.ascii	"T9"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	"T8"
	.align
_StringConst_92:
	.word	2			! length
	.ascii	"T7"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	"T6"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"T5"
	.align
_StringConst_89:
	.word	2			! length
	.ascii	"T4"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	"T3"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"T2"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	"T1"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"T0"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_83:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_82:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_81:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_80:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_79:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_75:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_74:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_73:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_72:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_71:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_70:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_69:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_68:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_67:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_66:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_65:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_64:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_63:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_62:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_61:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_60:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_59:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_57:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_56:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_54:
	.word	20			! length
	.ascii	"\nNO WAITING THREADS\n"
	.align
_StringConst_53:
	.word	54			! length
	.ascii	"HoareTest called by a thread other than current thread"
	.align
_StringConst_52:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_51:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_50:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_45:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_44:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_43:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_42:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_41:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_40:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_39:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_38:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_37:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_36:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_35:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_34:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	45			! length
	.ascii	"Encountered problem trying to load executable"
	.align
_StringConst_26:
	.word	38			! length
	.ascii	"Encontered problem trying to open file"
	.align
_StringConst_25:
	.word	9			! length
	.ascii	"MyProgram"
	.align
_StringConst_24:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x7250d5c7,r4		! myHashVal = 1917900231
	cmp	r3,r4
	be	_Label_203
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_203:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_204
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_204
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_204
_Label_204:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_205 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_205  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2997:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2997
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_209 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_210 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_211 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_212 = _temp_211 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_212 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2998:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2998
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_214 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_215 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_214  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_216 = _function_202_IdleFunction
	set	_function_202_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_217 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_218
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_219
	.word	-12
	.word	4
	.word	_Label_220
	.word	-16
	.word	4
	.word	_Label_221
	.word	-20
	.word	4
	.word	_Label_222
	.word	-24
	.word	4
	.word	_Label_223
	.word	-28
	.word	4
	.word	_Label_224
	.word	-32
	.word	4
	.word	_Label_225
	.word	-36
	.word	4
	.word	_Label_226
	.word	-40
	.word	4
	.word	_Label_227
	.word	-44
	.word	4
	.word	_Label_228
	.word	-48
	.word	4
	.word	_Label_229
	.word	-52
	.word	4
	.word	_Label_230
	.word	-56
	.word	4
	.word	_Label_231
	.word	-60
	.word	4
	.word	0
_Label_218:
	.ascii	"InitializeScheduler\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_202_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_232:
!	jmp	_Label_233
_Label_233:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_237 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_235 else goto _Label_236
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_236
	jmp	_Label_235
_Label_235:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_238
_Label_236:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_238:
! END WHILE...
	jmp	_Label_232
_Label_234:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_IdleFunction:
	.word	_sourceFileName
	.word	_Label_239
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_240
	.word	8
	.word	4
	.word	_Label_241
	.word	-12
	.word	4
	.word	_Label_242
	.word	-16
	.word	4
	.word	0
_Label_239:
	.ascii	"IdleFunction\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_245 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_245 ) then goto _Label_244		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_244
!	jmp	_Label_243
_Label_243:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_247 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_247 [0 ] into _temp_248
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_246 = _temp_248		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_244:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_249 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_249 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_250:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_254 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_253  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_253 then goto _Label_252 else goto _Label_251
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_251
	jmp	_Label_252
_Label_251:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_255 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_250
_Label_252:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_259 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_259 ) then goto _Label_258		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_261 [0 ] into _temp_262
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_260 = _temp_262		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_263 = *_temp_264  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_263) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _temp_263 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_258:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_266
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_267
	.word	8
	.word	4
	.word	_Label_268
	.word	-16
	.word	4
	.word	_Label_269
	.word	-20
	.word	4
	.word	_Label_270
	.word	-24
	.word	4
	.word	_Label_271
	.word	-28
	.word	4
	.word	_Label_272
	.word	-32
	.word	4
	.word	_Label_273
	.word	-36
	.word	4
	.word	_Label_274
	.word	-40
	.word	4
	.word	_Label_275
	.word	-44
	.word	4
	.word	_Label_276
	.word	-48
	.word	4
	.word	_Label_277
	.word	-52
	.word	4
	.word	_Label_278
	.word	-9
	.word	1
	.word	_Label_279
	.word	-56
	.word	4
	.word	_Label_280
	.word	-60
	.word	4
	.word	_Label_281
	.word	-64
	.word	4
	.word	_Label_282
	.word	-68
	.word	4
	.word	_Label_283
	.word	-72
	.word	4
	.word	_Label_284
	.word	-76
	.word	4
	.word	_Label_285
	.word	-80
	.word	4
	.word	0
_Label_266:
	.ascii	"Run\0"
	.align
_Label_267:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_278:
	.byte	'C'
	.ascii	"_temp_253\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_284:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_285:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_286 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_287 = _function_201_ThreadPrintShort
	set	_function_201_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_288 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_287  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_289
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_290
	.word	-12
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	0
_Label_289:
	.ascii	"PrintReadyList\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_293:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_294  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_295 = *_temp_296  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_297 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_298
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_299
	.word	-12
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	_Label_301
	.word	-20
	.word	4
	.word	_Label_302
	.word	-24
	.word	4
	.word	_Label_303
	.word	-28
	.word	4
	.word	_Label_304
	.word	-32
	.word	4
	.word	0
_Label_298:
	.ascii	"ThreadStartMain\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_303:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_305 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_306 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_307
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_308
	.word	-12
	.word	4
	.word	_Label_309
	.word	-16
	.word	4
	.word	_Label_310
	.word	-20
	.word	4
	.word	0
_Label_307:
	.ascii	"ThreadFinish\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_310:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_311 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_313		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_313
!	jmp	_Label_312
_Label_312:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_314 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_315 = *_temp_316  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_313:
! CALL STATEMENT...
!   _temp_317 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_318 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_319 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_320
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_321
	.word	8
	.word	4
	.word	_Label_322
	.word	-12
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	_Label_325
	.word	-24
	.word	4
	.word	_Label_326
	.word	-28
	.word	4
	.word	_Label_327
	.word	-32
	.word	4
	.word	_Label_328
	.word	-36
	.word	4
	.word	_Label_329
	.word	-40
	.word	4
	.word	0
_Label_320:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_321:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_331		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_331
!	jmp	_Label_330
_Label_330:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_332
_Label_331:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_332:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_333
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_334
	.word	8
	.word	4
	.word	_Label_335
	.word	-12
	.word	4
	.word	0
_Label_333:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_334:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_335:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_201_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	823,r13		! source line 823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_339		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_339
!   _temp_338 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_340
_Label_339:
!   _temp_338 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_340:
!   if _temp_338 then goto _Label_337 else goto _Label_336
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_336
	jmp	_Label_337
_Label_336:
! THEN...
	mov	832,r13		! source line 832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_341 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	833,r13		! source line 833
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_337:
! CALL STATEMENT...
!   _temp_342 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_344 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_343 = *_temp_344  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_345 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	838,r13		! source line 838
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_354 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_353 = *_temp_354  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_348
	cmp	r1,2
	be	_Label_349
	cmp	r1,3
	be	_Label_350
	cmp	r1,4
	be	_Label_351
	cmp	r1,5
	be	_Label_352
	jmp	_Label_346
! CASE 1...
_Label_348:
! CALL STATEMENT...
!   _temp_355 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 2...
_Label_349:
! CALL STATEMENT...
!   _temp_356 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 3...
_Label_350:
! CALL STATEMENT...
!   _temp_357 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 4...
_Label_351:
! CALL STATEMENT...
!   _temp_358 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 5...
_Label_352:
! CALL STATEMENT...
!   _temp_359 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0BR",r10
	jmp	_Label_347
! DEFAULT CASE...
_Label_346:
! CALL STATEMENT...
!   _temp_360 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	855,r13		! source line 855
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_347:
! CALL STATEMENT...
!   _temp_361 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_362 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_363 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_364
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_365
	.word	8
	.word	4
	.word	_Label_366
	.word	-16
	.word	4
	.word	_Label_367
	.word	-20
	.word	4
	.word	_Label_368
	.word	-24
	.word	4
	.word	_Label_369
	.word	-28
	.word	4
	.word	_Label_370
	.word	-32
	.word	4
	.word	_Label_371
	.word	-36
	.word	4
	.word	_Label_372
	.word	-40
	.word	4
	.word	_Label_373
	.word	-44
	.word	4
	.word	_Label_374
	.word	-48
	.word	4
	.word	_Label_375
	.word	-52
	.word	4
	.word	_Label_376
	.word	-56
	.word	4
	.word	_Label_377
	.word	-60
	.word	4
	.word	_Label_378
	.word	-64
	.word	4
	.word	_Label_379
	.word	-68
	.word	4
	.word	_Label_380
	.word	-72
	.word	4
	.word	_Label_381
	.word	-76
	.word	4
	.word	_Label_382
	.word	-9
	.word	1
	.word	_Label_383
	.word	-80
	.word	4
	.word	0
_Label_364:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_365:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_382:
	.byte	'C'
	.ascii	"_temp_338\0"
	.align
_Label_383:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_200_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	1191,r13		! source line 1191
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_384 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_385
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_386
	.word	8
	.word	4
	.word	_Label_387
	.word	-12
	.word	4
	.word	0
_Label_385:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_386:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	1201,r13		! source line 1201
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_388 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1207,r13		! source line 1207
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_389
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_390
	.word	8
	.word	4
	.word	_Label_391
	.word	-12
	.word	4
	.word	0
_Label_389:
	.ascii	"ProcessFinish\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	1215,r13		! source line 1215
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0AS",r10
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_392 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=obtainedThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_393 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_393  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
!   _temp_394 = _function_199_StartUserProcess
	set	_function_199_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_394  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_395
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_396
	.word	-12
	.word	4
	.word	_Label_397
	.word	-16
	.word	4
	.word	_Label_398
	.word	-20
	.word	4
	.word	_Label_399
	.word	-24
	.word	4
	.word	0
_Label_395:
	.ascii	"InitFirstProcess\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_399:
	.byte	'P'
	.ascii	"obtainedThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_199_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_StartUserProcess,r1
	push	r1
	mov	27,r1
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	1225,r13		! source line 1225
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_400 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   Send message GetANewProcess
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=obtainedPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! SEND STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Init
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0AS",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = obtainedPCB + 24
	load	[r14+-100],r1
	add	r1,24,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_401 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_402 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_402 = obtainedPCB  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0AS",r10
	mov	1239,r13		! source line 1239
	mov	"\0\0SE",r10
!   _temp_403 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-68]
!   _temp_404 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_403  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_405
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_405
	jmp	_Label_406
_Label_405:
! THEN...
	mov	1242,r13		! source line 1242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_407 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1242,r13		! source line 1242
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_406:
! ASSIGNMENT STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0AS",r10
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_409 = obtainedPCB + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   _temp_408 = _temp_409		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-56]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_408  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_411		(int)
	load	[r14+-88],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_411
!	jmp	_Label_410
_Label_410:
! THEN...
	mov	1248,r13		! source line 1248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_412 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1248,r13		! source line 1248
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_411:
! SEND STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0SE",r10
!   _temp_413 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_415 = obtainedPCB + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_416 = _temp_415 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_414 = *_temp_416  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initStackTop = _temp_414 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_417 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_417 [999 ] into _temp_418
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_418		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	1257,r13		! source line 1257
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_419 = obtainedPCB + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_420 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_420 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initPC  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_421 = initSystemStackTop		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_421  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0RE",r10
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_422
	.word	4		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_423
	.word	8
	.word	4
	.word	_Label_424
	.word	-12
	.word	4
	.word	_Label_425
	.word	-16
	.word	4
	.word	_Label_426
	.word	-20
	.word	4
	.word	_Label_427
	.word	-24
	.word	4
	.word	_Label_428
	.word	-28
	.word	4
	.word	_Label_429
	.word	-32
	.word	4
	.word	_Label_430
	.word	-36
	.word	4
	.word	_Label_431
	.word	-40
	.word	4
	.word	_Label_432
	.word	-44
	.word	4
	.word	_Label_433
	.word	-48
	.word	4
	.word	_Label_434
	.word	-52
	.word	4
	.word	_Label_435
	.word	-56
	.word	4
	.word	_Label_436
	.word	-60
	.word	4
	.word	_Label_437
	.word	-64
	.word	4
	.word	_Label_438
	.word	-68
	.word	4
	.word	_Label_439
	.word	-72
	.word	4
	.word	_Label_440
	.word	-76
	.word	4
	.word	_Label_441
	.word	-80
	.word	4
	.word	_Label_442
	.word	-84
	.word	4
	.word	_Label_443
	.word	-88
	.word	4
	.word	_Label_444
	.word	-92
	.word	4
	.word	_Label_445
	.word	-96
	.word	4
	.word	_Label_446
	.word	-100
	.word	4
	.word	_Label_447
	.word	-104
	.word	4
	.word	0
_Label_422:
	.ascii	"StartUserProcess\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_442:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_443:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_444:
	.byte	'I'
	.ascii	"initStackTop\0"
	.align
_Label_445:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_446:
	.byte	'P'
	.ascii	"obtainedPCB\0"
	.align
_Label_447:
	.byte	'P'
	.ascii	"openFile\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	1767,r13		! source line 1767
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_448
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_448:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	1785,r13		! source line 1785
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0IF",r10
!   _temp_452 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_453 = _temp_452 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_451 = *_temp_453  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_451 == 0 then goto _Label_450		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_450
!	jmp	_Label_449
_Label_449:
! THEN...
	mov	1797,r13		! source line 1797
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0SE",r10
!   _temp_455 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_456 = _temp_455 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_454 = *_temp_456  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_454) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_450:
! RETURN STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_457
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_458
	.word	-12
	.word	4
	.word	_Label_459
	.word	-16
	.word	4
	.word	_Label_460
	.word	-20
	.word	4
	.word	_Label_461
	.word	-24
	.word	4
	.word	_Label_462
	.word	-28
	.word	4
	.word	_Label_463
	.word	-32
	.word	4
	.word	0
_Label_457:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1804,r13		! source line 1804
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_464
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_464:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1818,r13		! source line 1818
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_465 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_466
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_467
	.word	-12
	.word	4
	.word	0
_Label_466:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	1830,r13		! source line 1830
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_468 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_469
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_470
	.word	-12
	.word	4
	.word	0
_Label_469:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	1842,r13		! source line 1842
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_471 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1849,r13		! source line 1849
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_472
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_473
	.word	-12
	.word	4
	.word	0
_Label_472:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	1854,r13		! source line 1854
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_474 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_475
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_476
	.word	-12
	.word	4
	.word	0
_Label_475:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	1866,r13		! source line 1866
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_477 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1873,r13		! source line 1873
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_478
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_479
	.word	-12
	.word	4
	.word	0
_Label_478:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	1878,r13		! source line 1878
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_480 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_480  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_481
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_482
	.word	-12
	.word	4
	.word	0
_Label_481:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	1890,r13		! source line 1890
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_483 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_483  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_484
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_485
	.word	-12
	.word	4
	.word	0
_Label_484:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_198_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	1902,r13		! source line 1902
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_486 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1907,r13		! source line 1907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_487 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_491 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_490 = *_temp_491  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_490 == 0 then goto _Label_489		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_489
!	jmp	_Label_488
_Label_488:
! THEN...
	mov	1913,r13		! source line 1913
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_493 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_492 = *_temp_493  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_492) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_494
_Label_489:
! ELSE...
	mov	1915,r13		! source line 1915
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_495 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_494:
! SEND STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_496
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_497
	.word	8
	.word	4
	.word	_Label_498
	.word	-12
	.word	4
	.word	_Label_499
	.word	-16
	.word	4
	.word	_Label_500
	.word	-20
	.word	4
	.word	_Label_501
	.word	-24
	.word	4
	.word	_Label_502
	.word	-28
	.word	4
	.word	_Label_503
	.word	-32
	.word	4
	.word	_Label_504
	.word	-36
	.word	4
	.word	0
_Label_496:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_497:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	1928,r13		! source line 1928
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1949,r13		! source line 1949
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3022
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_505
_Label_3022:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_505
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_505
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_519,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_519:
	jmp	_Label_511	! 1:	
	jmp	_Label_518	! 2:	
	jmp	_Label_508	! 3:	
	jmp	_Label_507	! 4:	
	jmp	_Label_510	! 5:	
	jmp	_Label_509	! 6:	
	jmp	_Label_512	! 7:	
	jmp	_Label_513	! 8:	
	jmp	_Label_514	! 9:	
	jmp	_Label_515	! 10:	
	jmp	_Label_516	! 11:	
	jmp	_Label_517	! 12:	
! CASE 4...
_Label_507:
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_520  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_520  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_508:
! CALL STATEMENT...
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_509:
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_521  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_521  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_510:
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_522  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_522  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_511:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1960,r13		! source line 1960
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_512:
! RETURN STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1963,r13		! source line 1963
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_523  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_523  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_513:
! RETURN STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1965,r13		! source line 1965
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_514:
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_515:
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_516:
! RETURN STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_517:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_518:
! CALL STATEMENT...
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_505:
! CALL STATEMENT...
!   _temp_528 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_529 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1982,r13		! source line 1982
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_506:
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_530
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_531
	.word	8
	.word	4
	.word	_Label_532
	.word	12
	.word	4
	.word	_Label_533
	.word	16
	.word	4
	.word	_Label_534
	.word	20
	.word	4
	.word	_Label_535
	.word	24
	.word	4
	.word	_Label_536
	.word	-12
	.word	4
	.word	_Label_537
	.word	-16
	.word	4
	.word	_Label_538
	.word	-20
	.word	4
	.word	_Label_539
	.word	-24
	.word	4
	.word	_Label_540
	.word	-28
	.word	4
	.word	_Label_541
	.word	-32
	.word	4
	.word	_Label_542
	.word	-36
	.word	4
	.word	_Label_543
	.word	-40
	.word	4
	.word	_Label_544
	.word	-44
	.word	4
	.word	_Label_545
	.word	-48
	.word	4
	.word	0
_Label_530:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_531:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_532:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_533:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_534:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	1989,r13		! source line 1989
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CE",r10
	call	printInt
! RETURN STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_546
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_547
	.word	8
	.word	4
	.word	0
_Label_546:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_547:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1996,r13		! source line 1996
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_548
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_548:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2002,r13		! source line 2002
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_549
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_549:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2008,r13		! source line 2008
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_550
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_550:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1,r1
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	2014,r13		! source line 2014
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CE",r10
	call	printInt
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_551
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_552
	.word	8
	.word	4
	.word	0
_Label_551:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_552:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	2021,r13		! source line 2021
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_553
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_554
	.word	8
	.word	4
	.word	0
_Label_553:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_554:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	2028,r13		! source line 2028
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_555
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_556
	.word	8
	.word	4
	.word	0
_Label_555:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_556:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	2035,r13		! source line 2035
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_557
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_558
	.word	8
	.word	4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_558:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1,r1
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	2042,r13		! source line 2042
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CE",r10
	call	printInt
! RETURN STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_559
	.word	12		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_560
	.word	8
	.word	4
	.word	_Label_561
	.word	12
	.word	4
	.word	_Label_562
	.word	16
	.word	4
	.word	0
_Label_559:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_561:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1,r1
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	2051,r13		! source line 2051
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2052,r13		! source line 2052
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	printInt
! RETURN STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_563
	.word	12		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_564
	.word	8
	.word	4
	.word	_Label_565
	.word	12
	.word	4
	.word	_Label_566
	.word	16
	.word	4
	.word	0
_Label_563:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_565:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1,r1
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	2060,r13		! source line 2060
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2061,r13		! source line 2061
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2062,r13		! source line 2062
	mov	"\0\0CE",r10
	call	printInt
! RETURN STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_567
	.word	8		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_568
	.word	8
	.word	4
	.word	_Label_569
	.word	12
	.word	4
	.word	0
_Label_567:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1,r1
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	2068,r13		! source line 2068
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2069,r13		! source line 2069
	mov	"\0\0CE",r10
	call	printInt
! RETURN STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_570
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_571
	.word	8
	.word	4
	.word	0
_Label_570:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_197_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	2660,r13		! source line 2660
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_572 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_572  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
!   _temp_573 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_573) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_575 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_575) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_574 = *_temp_575  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_573 = _temp_574  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   _temp_576 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_576) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_578) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_577 = *_temp_578  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_576 = _temp_577  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   _temp_579 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_579) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_581) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_580 = *_temp_581  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_579 = _temp_580  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_582
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_583
	.word	8
	.word	4
	.word	_Label_584
	.word	12
	.word	4
	.word	_Label_585
	.word	-16
	.word	4
	.word	_Label_586
	.word	-9
	.word	1
	.word	_Label_587
	.word	-20
	.word	4
	.word	_Label_588
	.word	-24
	.word	4
	.word	_Label_589
	.word	-10
	.word	1
	.word	_Label_590
	.word	-28
	.word	4
	.word	_Label_591
	.word	-32
	.word	4
	.word	_Label_592
	.word	-11
	.word	1
	.word	_Label_593
	.word	-36
	.word	4
	.word	_Label_594
	.word	-12
	.word	1
	.word	_Label_595
	.word	-40
	.word	4
	.word	_Label_596
	.word	-44
	.word	4
	.word	0
_Label_582:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_583:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_584:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_586:
	.byte	'C'
	.ascii	"_temp_580\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_589:
	.byte	'C'
	.ascii	"_temp_577\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_592:
	.byte	'C'
	.ascii	"_temp_574\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_594:
	.byte	'C'
	.ascii	"_temp_572\0"
	.align
_Label_595:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_596:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_196_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_printFCB,r1
	push	r1
	mov	3,r1
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	2670,r13		! source line 2670
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_597 = *_temp_598  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_196_printFCB:
	.word	_sourceFileName
	.word	_Label_599
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_600
	.word	8
	.word	4
	.word	_Label_601
	.word	-12
	.word	4
	.word	_Label_602
	.word	-16
	.word	4
	.word	0
_Label_599:
	.ascii	"printFCB\0"
	.align
_Label_600:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_195_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_printOpen,r1
	push	r1
	mov	4,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	2675,r13		! source line 2675
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_603 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_604 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2677,r13		! source line 2677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_605 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_605  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_printOpen:
	.word	_sourceFileName
	.word	_Label_606
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_607
	.word	8
	.word	4
	.word	_Label_608
	.word	-12
	.word	4
	.word	_Label_609
	.word	-16
	.word	4
	.word	_Label_610
	.word	-20
	.word	4
	.word	0
_Label_606:
	.ascii	"printOpen\0"
	.align
_Label_607:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_611
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_611:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_612
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_612:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_614		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_614
!	jmp	_Label_613
_Label_613:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_615 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_615  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_614:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_617
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_618
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_619
	.word	12
	.word	4
	.word	_Label_620
	.word	-12
	.word	4
	.word	_Label_621
	.word	-16
	.word	4
	.word	0
_Label_617:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_618:
	.ascii	"Pself\0"
	.align
_Label_619:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_623		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_623
!	jmp	_Label_622
_Label_622:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_624 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_623:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_626		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_626
!	jmp	_Label_625
_Label_625:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_627 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_628 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_629 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_626:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_630
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_631
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_632
	.word	-12
	.word	4
	.word	_Label_633
	.word	-16
	.word	4
	.word	_Label_634
	.word	-20
	.word	4
	.word	_Label_635
	.word	-24
	.word	4
	.word	_Label_636
	.word	-28
	.word	4
	.word	_Label_637
	.word	-32
	.word	4
	.word	0
_Label_630:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_631:
	.ascii	"Pself\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_636:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_637:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_639		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_639
!	jmp	_Label_638
_Label_638:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_640 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_639:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_642		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_642
!	jmp	_Label_641
_Label_641:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_643 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_642:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_644
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_645
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_646
	.word	-12
	.word	4
	.word	_Label_647
	.word	-16
	.word	4
	.word	_Label_648
	.word	-20
	.word	4
	.word	0
_Label_644:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_645:
	.ascii	"Pself\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_649
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_649:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_650
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_650:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_652
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_653
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_654
	.word	-12
	.word	4
	.word	0
_Label_652:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_653:
	.ascii	"Pself\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_656		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_656
!	jmp	_Label_655
_Label_655:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_657 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_656:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_661		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_661
!   _temp_660 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_662
_Label_661:
!   _temp_660 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_662:
!   if _temp_660 then goto _Label_659 else goto _Label_658
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_658
	jmp	_Label_659
_Label_658:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_663
_Label_659:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_664 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_663:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_665
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_666
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_667
	.word	-16
	.word	4
	.word	_Label_668
	.word	-9
	.word	1
	.word	_Label_669
	.word	-20
	.word	4
	.word	_Label_670
	.word	-24
	.word	4
	.word	0
_Label_665:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_666:
	.ascii	"Pself\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_668:
	.byte	'C'
	.ascii	"_temp_660\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_670:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_672		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_672
!	jmp	_Label_671
_Label_671:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_673 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_673  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_672:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_674 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_676		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_676
!	jmp	_Label_675
_Label_675:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_677 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_678 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_679
_Label_676:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_679:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_680
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_682
	.word	-12
	.word	4
	.word	_Label_683
	.word	-16
	.word	4
	.word	_Label_684
	.word	-20
	.word	4
	.word	_Label_685
	.word	-24
	.word	4
	.word	_Label_686
	.word	-28
	.word	4
	.word	_Label_687
	.word	-32
	.word	4
	.word	0
_Label_680:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_681:
	.ascii	"Pself\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_686:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_687:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_690		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_690
!	jmp	_Label_689
_Label_689:
!   _temp_688 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_691
_Label_690:
!   _temp_688 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_691:
!   ReturnResult: _temp_688  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_692
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_694
	.word	-9
	.word	1
	.word	0
_Label_692:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_693:
	.ascii	"Pself\0"
	.align
_Label_694:
	.byte	'C'
	.ascii	"_temp_688\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_695
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	printHeldBy
	.word	0
! 
! Class descriptor:
! 
_Label_695:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_696
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_696:
	.ascii	"HoareMutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareMutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_1,r1
	push	r1
	mov	1,r1
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	464,r13		! source line 464
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_1:
	.word	_sourceFileName
	.word	_Label_698
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_700
	.word	-12
	.word	4
	.word	0
_Label_698:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_699:
	.ascii	"Pself\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_HoareMutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_2,r1
	push	r1
	mov	5,r1
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
	mov	473,r13		! source line 473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_704		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_704
!   _temp_703 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_705
_Label_704:
!   _temp_703 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_705:
!   if _temp_703 then goto _Label_702 else goto _Label_701
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_701
	jmp	_Label_702
_Label_701:
! THEN...
	mov	483,r13		! source line 483
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_706
_Label_702:
! ELSE...
	mov	485,r13		! source line 485
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_708		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_708
!	jmp	_Label_707
_Label_707:
! THEN...
	mov	486,r13		! source line 486
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   heldBy = transfer		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_708:
! SEND STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   _temp_709 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_706:
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_2:
	.word	_sourceFileName
	.word	_Label_710
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_711
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_712
	.word	12
	.word	4
	.word	_Label_713
	.word	-16
	.word	4
	.word	_Label_714
	.word	-9
	.word	1
	.word	_Label_715
	.word	-20
	.word	4
	.word	0
_Label_710:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_711:
	.ascii	"Pself\0"
	.align
_Label_712:
	.byte	'P'
	.ascii	"transfer\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_714:
	.byte	'C'
	.ascii	"_temp_703\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_HoareMutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_3,r1
	push	r1
	mov	8,r1
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	496,r13		! source line 496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_717		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_717
!	jmp	_Label_716
_Label_716:
! THEN...
	mov	501,r13		! source line 501
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_718 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	501,r13		! source line 501
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_717:
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	503,r13		! source line 503
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
	mov	504,r13		! source line 504
	mov	"\0\0SE",r10
!   _temp_719 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_721		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_721
!	jmp	_Label_720
_Label_720:
! THEN...
	mov	506,r13		! source line 506
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_722 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_722 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0SE",r10
!   _temp_723 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_724
_Label_721:
! ELSE...
	mov	510,r13		! source line 510
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_724:
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_3:
	.word	_sourceFileName
	.word	_Label_725
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_726
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_727
	.word	-12
	.word	4
	.word	_Label_728
	.word	-16
	.word	4
	.word	_Label_729
	.word	-20
	.word	4
	.word	_Label_730
	.word	-24
	.word	4
	.word	_Label_731
	.word	-28
	.word	4
	.word	_Label_732
	.word	-32
	.word	4
	.word	0
_Label_725:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_726:
	.ascii	"Pself\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_732:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_HoareMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_4,r1
	push	r1
	mov	1,r1
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_735		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_735
!	jmp	_Label_734
_Label_734:
!   _temp_733 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_736
_Label_735:
!   _temp_733 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_736:
!   ReturnResult: _temp_733  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_4:
	.word	_sourceFileName
	.word	_Label_737
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_738
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_739
	.word	-9
	.word	1
	.word	0
_Label_737:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_738:
	.ascii	"Pself\0"
	.align
_Label_739:
	.byte	'C'
	.ascii	"_temp_733\0"
	.align
! 
! ===============  METHOD printHeldBy  ===============
! 
_Method_P_Kernel_HoareMutex_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_5,r1
	push	r1
	mov	3,r1
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	521,r13		! source line 521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (heldBy) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_741 = heldBy + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_740 = *_temp_741  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	522,r13		! source line 522
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_5:
	.word	_sourceFileName
	.word	_Label_742
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_744
	.word	-12
	.word	4
	.word	_Label_745
	.word	-16
	.word	4
	.word	0
_Label_742:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"printHeldBy\0"
	.align
_Label_743:
	.ascii	"Pself\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_746
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_746:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_747
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_747:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_749
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_751
	.word	-12
	.word	4
	.word	0
_Label_749:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_750:
	.ascii	"Pself\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_754  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_754 then goto _Label_753 else goto _Label_752
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_752
	jmp	_Label_753
_Label_752:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_755 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_753:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_756 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_757
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_759
	.word	12
	.word	4
	.word	_Label_760
	.word	-16
	.word	4
	.word	_Label_761
	.word	-20
	.word	4
	.word	_Label_762
	.word	-9
	.word	1
	.word	_Label_763
	.word	-24
	.word	4
	.word	0
_Label_757:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_758:
	.ascii	"Pself\0"
	.align
_Label_759:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_762:
	.byte	'C'
	.ascii	"_temp_754\0"
	.align
_Label_763:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_766  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_766 then goto _Label_765 else goto _Label_764
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_764
	jmp	_Label_765
_Label_764:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_767 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_765:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_768 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_770		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_770
!	jmp	_Label_769
_Label_769:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_771 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_771 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_772 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_770:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_773
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_774
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_775
	.word	12
	.word	4
	.word	_Label_776
	.word	-16
	.word	4
	.word	_Label_777
	.word	-20
	.word	4
	.word	_Label_778
	.word	-24
	.word	4
	.word	_Label_779
	.word	-28
	.word	4
	.word	_Label_780
	.word	-9
	.word	1
	.word	_Label_781
	.word	-32
	.word	4
	.word	_Label_782
	.word	-36
	.word	4
	.word	0
_Label_773:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_774:
	.ascii	"Pself\0"
	.align
_Label_775:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_780:
	.byte	'C'
	.ascii	"_temp_766\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_782:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_785  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_785 then goto _Label_784 else goto _Label_783
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_783
	jmp	_Label_784
_Label_783:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_786 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_784:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_787:
!	jmp	_Label_788
_Label_788:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_790 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_791
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_791
	jmp	_Label_792
_Label_791:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_789
! END IF...
_Label_792:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_793 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_794 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_787
_Label_789:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_795
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_796
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_797
	.word	12
	.word	4
	.word	_Label_798
	.word	-16
	.word	4
	.word	_Label_799
	.word	-20
	.word	4
	.word	_Label_800
	.word	-24
	.word	4
	.word	_Label_801
	.word	-28
	.word	4
	.word	_Label_802
	.word	-9
	.word	1
	.word	_Label_803
	.word	-32
	.word	4
	.word	_Label_804
	.word	-36
	.word	4
	.word	0
_Label_795:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_796:
	.ascii	"Pself\0"
	.align
_Label_797:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_802:
	.byte	'C'
	.ascii	"_temp_785\0"
	.align
_Label_803:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_804:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_805
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	HoareTest
	.word	0
! 
! Class descriptor:
! 
_Label_805:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_806
	.word	_sourceFileName
	.word	181		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_806:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	548,r13		! source line 548
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_808
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_809
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_810
	.word	-12
	.word	4
	.word	0
_Label_808:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_809:
	.ascii	"Pself\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	558,r13		! source line 558
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0IF",r10
	mov	561,r13		! source line 561
	mov	"\0\0SE",r10
!   if intIsZero (hMutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_813  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_813 then goto _Label_812 else goto _Label_811
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_811
	jmp	_Label_812
_Label_811:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_814 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	562,r13		! source line 562
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_812:
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	564,r13		! source line 564
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0SE",r10
!   if intIsZero (hMutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0SE",r10
!   _temp_815 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_816
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_818
	.word	12
	.word	4
	.word	_Label_819
	.word	-16
	.word	4
	.word	_Label_820
	.word	-20
	.word	4
	.word	_Label_821
	.word	-9
	.word	1
	.word	_Label_822
	.word	-24
	.word	4
	.word	0
_Label_816:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_817:
	.ascii	"Pself\0"
	.align
_Label_818:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_821:
	.byte	'C'
	.ascii	"_temp_813\0"
	.align
_Label_822:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	9,r1
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0IF",r10
	mov	581,r13		! source line 581
	mov	"\0\0SE",r10
!   if intIsZero (hMutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_825  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_825 then goto _Label_824 else goto _Label_823
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_823
	jmp	_Label_824
_Label_823:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_826 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_826  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	582,r13		! source line 582
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_824:
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0AS",r10
	mov	585,r13		! source line 585
	mov	"\0\0SE",r10
!   _temp_827 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_829		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_829
!	jmp	_Label_828
_Label_828:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_830 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_830 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0SE",r10
!   _temp_831 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0SE",r10
!   if intIsZero (hMutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_829:
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_832
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_834
	.word	12
	.word	4
	.word	_Label_835
	.word	-16
	.word	4
	.word	_Label_836
	.word	-20
	.word	4
	.word	_Label_837
	.word	-24
	.word	4
	.word	_Label_838
	.word	-28
	.word	4
	.word	_Label_839
	.word	-9
	.word	1
	.word	_Label_840
	.word	-32
	.word	4
	.word	_Label_841
	.word	-36
	.word	4
	.word	0
_Label_832:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_833:
	.ascii	"Pself\0"
	.align
_Label_834:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_839:
	.byte	'C'
	.ascii	"_temp_825\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_841:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD HoareTest  ===============
! 
_Method_P_Kernel_HoareCondition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_4,r1
	push	r1
	mov	6,r1
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
!   if test == _P_Kernel_currentThread then goto _Label_843		(int)
	load	[r14+12],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_843
!	jmp	_Label_842
_Label_842:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_844 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_844  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	608,r13		! source line 608
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_843:
! ASSIGNMENT STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! CALL STATEMENT...
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=message  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CA",r10
	call	_P_System_nl
! IF STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0IF",r10
	mov	614,r13		! source line 614
	mov	"\0\0SE",r10
!   _temp_848 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message IsEmpty
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_847  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_849 = _temp_847 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_849 then goto _Label_846 else goto _Label_845
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_845
	jmp	_Label_846
_Label_845:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_850 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_851
_Label_846:
! ELSE...
	mov	617,r13		! source line 617
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=test  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CA",r10
	call	_function_201_ThreadPrintShort
! END IF...
_Label_851:
! ASSIGNMENT STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_4:
	.word	_sourceFileName
	.word	_Label_852
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_854
	.word	12
	.word	4
	.word	_Label_855
	.word	16
	.word	4
	.word	_Label_856
	.word	-16
	.word	4
	.word	_Label_857
	.word	-9
	.word	1
	.word	_Label_858
	.word	-20
	.word	4
	.word	_Label_859
	.word	-10
	.word	1
	.word	_Label_860
	.word	-24
	.word	4
	.word	_Label_861
	.word	-28
	.word	4
	.word	0
_Label_852:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"HoareTest\0"
	.align
_Label_853:
	.ascii	"Pself\0"
	.align
_Label_854:
	.byte	'P'
	.ascii	"test\0"
	.align
_Label_855:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_857:
	.byte	'C'
	.ascii	"_temp_849\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_859:
	.byte	'C'
	.ascii	"_temp_847\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_861:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_862
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_862:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_863
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_863:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	630,r13		! source line 630
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0AS",r10
!   _temp_864 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_864) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_864 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   _temp_865 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_865 [0 ] into _temp_866
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_866 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_867 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_867 [999 ] into _temp_868
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_868 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_869 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_869 [999 ] into _temp_870
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_870		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_871 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_873 = &_temp_872
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_873 = _temp_873 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_875:
!   Data Move: *_temp_873 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_873 = _temp_873 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_874 = _temp_874 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_874) then goto _Label_875
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_875
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_876 = &_temp_872
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3053
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3053:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_871 = *_temp_876  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3054:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3054
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0AS",r10
!   _temp_877 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_879 = &_temp_878
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_879 = _temp_879 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_881:
!   Data Move: *_temp_879 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_879 = _temp_879 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_880 = _temp_880 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_880) then goto _Label_881
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_881
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_882 = &_temp_878
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3055
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3055:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_877 = *_temp_882  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3056:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3056
! RETURN STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_883
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_884
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_885
	.word	12
	.word	4
	.word	_Label_886
	.word	-12
	.word	4
	.word	_Label_887
	.word	-16
	.word	4
	.word	_Label_888
	.word	-20
	.word	4
	.word	_Label_889
	.word	-84
	.word	64
	.word	_Label_890
	.word	-88
	.word	4
	.word	_Label_891
	.word	-92
	.word	4
	.word	_Label_892
	.word	-96
	.word	4
	.word	_Label_893
	.word	-100
	.word	4
	.word	_Label_894
	.word	-156
	.word	56
	.word	_Label_895
	.word	-160
	.word	4
	.word	_Label_896
	.word	-164
	.word	4
	.word	_Label_897
	.word	-168
	.word	4
	.word	_Label_898
	.word	-172
	.word	4
	.word	_Label_899
	.word	-176
	.word	4
	.word	_Label_900
	.word	-180
	.word	4
	.word	_Label_901
	.word	-184
	.word	4
	.word	_Label_902
	.word	-188
	.word	4
	.word	0
_Label_883:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_884:
	.ascii	"Pself\0"
	.align
_Label_885:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	649,r13		! source line 649
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_903 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_903  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_905 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_904  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_906
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_908
	.word	12
	.word	4
	.word	_Label_909
	.word	16
	.word	4
	.word	_Label_910
	.word	-12
	.word	4
	.word	_Label_911
	.word	-16
	.word	4
	.word	_Label_912
	.word	-20
	.word	4
	.word	_Label_913
	.word	-24
	.word	4
	.word	_Label_914
	.word	-28
	.word	4
	.word	0
_Label_906:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_907:
	.ascii	"Pself\0"
	.align
_Label_908:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_909:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_913:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_914:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	673,r13		! source line 673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_917 == _P_Kernel_currentThread then goto _Label_916		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_916
!	jmp	_Label_915
_Label_915:
! THEN...
	mov	690,r13		! source line 690
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_918 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_918  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	690,r13		! source line 690
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_916:
! ASSIGNMENT STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0AS",r10
	mov	696,r13		! source line 696
	mov	"\0\0SE",r10
!   _temp_919 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_921		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_921
!	jmp	_Label_920
_Label_920:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_923		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_923
!	jmp	_Label_922
_Label_922:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_924 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	702,r13		! source line 702
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_923:
! ASSIGNMENT STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_926 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_925  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_921:
! ASSIGNMENT STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_927
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_929
	.word	-12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	_Label_931
	.word	-20
	.word	4
	.word	_Label_932
	.word	-24
	.word	4
	.word	_Label_933
	.word	-28
	.word	4
	.word	_Label_934
	.word	-32
	.word	4
	.word	_Label_935
	.word	-36
	.word	4
	.word	_Label_936
	.word	-40
	.word	4
	.word	_Label_937
	.word	-44
	.word	4
	.word	0
_Label_927:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_928:
	.ascii	"Pself\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_935:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_936:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_937:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	713,r13		! source line 713
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_939		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_939
!	jmp	_Label_938
_Label_938:
! THEN...
	mov	726,r13		! source line 726
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_940 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	726,r13		! source line 726
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_939:
! IF STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_943 == _P_Kernel_currentThread then goto _Label_942		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_942
!	jmp	_Label_941
_Label_941:
! THEN...
	mov	730,r13		! source line 730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_944 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	730,r13		! source line 730
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_942:
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
	mov	736,r13		! source line 736
	mov	"\0\0SE",r10
!   _temp_945 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_946
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_946
	jmp	_Label_947
_Label_946:
! THEN...
	mov	738,r13		! source line 738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_948 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_948  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	738,r13		! source line 738
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_947:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_949
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_951
	.word	-12
	.word	4
	.word	_Label_952
	.word	-16
	.word	4
	.word	_Label_953
	.word	-20
	.word	4
	.word	_Label_954
	.word	-24
	.word	4
	.word	_Label_955
	.word	-28
	.word	4
	.word	_Label_956
	.word	-32
	.word	4
	.word	0
_Label_949:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_950:
	.ascii	"Pself\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_956:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	745,r13		! source line 745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0IF",r10
!   _temp_960 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_960 [0 ] into _temp_961
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_959 = *_temp_961  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_959 == 606348324 then goto _Label_958		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_958
!	jmp	_Label_957
_Label_957:
! THEN...
	mov	752,r13		! source line 752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_962 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	752,r13		! source line 752
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_963
_Label_958:
! ELSE...
	mov	753,r13		! source line 753
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0IF",r10
!   _temp_967 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_967 [999 ] into _temp_968
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_966 = *_temp_968  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_966 == 606348324 then goto _Label_965		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_965
!	jmp	_Label_964
_Label_964:
! THEN...
	mov	754,r13		! source line 754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_969 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	754,r13		! source line 754
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_965:
! END IF...
_Label_963:
! RETURN STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_970
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_972
	.word	-12
	.word	4
	.word	_Label_973
	.word	-16
	.word	4
	.word	_Label_974
	.word	-20
	.word	4
	.word	_Label_975
	.word	-24
	.word	4
	.word	_Label_976
	.word	-28
	.word	4
	.word	_Label_977
	.word	-32
	.word	4
	.word	_Label_978
	.word	-36
	.word	4
	.word	_Label_979
	.word	-40
	.word	4
	.word	0
_Label_970:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_971:
	.ascii	"Pself\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	760,r13		! source line 760
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_980 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_981 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_983 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_983  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_984 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_989 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_990 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_989  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_985:
!   Perform the FOR-LOOP termination test
!   if i > _temp_990 then goto _Label_988		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_988
_Label_986:
	mov	773,r13		! source line 773
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_991 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_992 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_992  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_993 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_993  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_995 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_995 [i ] into _temp_996
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_994 = *_temp_996  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_994  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_997 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_999 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_999 [i ] into _temp_1000
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_998 = *_temp_1000  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_998  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1001 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1001  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_987:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_985
! END FOR
_Label_988:
! CALL STATEMENT...
!   _temp_1002 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-116]
!   _temp_1003 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1002  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1003  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1004 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-108]
!   _temp_1006 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1006 [0 ] into _temp_1007
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1005 = _temp_1007		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1004  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1005  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	784,r13		! source line 784
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1010
	cmp	r1,2
	be	_Label_1011
	cmp	r1,3
	be	_Label_1012
	cmp	r1,4
	be	_Label_1013
	cmp	r1,5
	be	_Label_1014
	jmp	_Label_1008
! CASE 1...
_Label_1010:
! CALL STATEMENT...
!   _temp_1015 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1015  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0BR",r10
	jmp	_Label_1009
! CASE 2...
_Label_1011:
! CALL STATEMENT...
!   _temp_1016 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1016  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0BR",r10
	jmp	_Label_1009
! CASE 3...
_Label_1012:
! CALL STATEMENT...
!   _temp_1017 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1017  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0BR",r10
	jmp	_Label_1009
! CASE 4...
_Label_1013:
! CALL STATEMENT...
!   _temp_1018 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1018  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0BR",r10
	jmp	_Label_1009
! CASE 5...
_Label_1014:
! CALL STATEMENT...
!   _temp_1019 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0BR",r10
	jmp	_Label_1009
! DEFAULT CASE...
_Label_1008:
! CALL STATEMENT...
!   _temp_1020 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	801,r13		! source line 801
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1009:
! CALL STATEMENT...
!   _temp_1021 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	804,r13		! source line 804
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1022 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1027 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1028 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1027  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1023:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1028 then goto _Label_1026		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1026
_Label_1024:
	mov	807,r13		! source line 807
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1029 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1029  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1030 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1031 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1033 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1033 [i ] into _temp_1034
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1032 = *_temp_1034  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1035 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1037 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1037 [i ] into _temp_1038
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1036 = *_temp_1038  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1039 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1025:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1023
! END FOR
_Label_1026:
! ASSIGNMENT STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1040
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1041
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1042
	.word	-12
	.word	4
	.word	_Label_1043
	.word	-16
	.word	4
	.word	_Label_1044
	.word	-20
	.word	4
	.word	_Label_1045
	.word	-24
	.word	4
	.word	_Label_1046
	.word	-28
	.word	4
	.word	_Label_1047
	.word	-32
	.word	4
	.word	_Label_1048
	.word	-36
	.word	4
	.word	_Label_1049
	.word	-40
	.word	4
	.word	_Label_1050
	.word	-44
	.word	4
	.word	_Label_1051
	.word	-48
	.word	4
	.word	_Label_1052
	.word	-52
	.word	4
	.word	_Label_1053
	.word	-56
	.word	4
	.word	_Label_1054
	.word	-60
	.word	4
	.word	_Label_1055
	.word	-64
	.word	4
	.word	_Label_1056
	.word	-68
	.word	4
	.word	_Label_1057
	.word	-72
	.word	4
	.word	_Label_1058
	.word	-76
	.word	4
	.word	_Label_1059
	.word	-80
	.word	4
	.word	_Label_1060
	.word	-84
	.word	4
	.word	_Label_1061
	.word	-88
	.word	4
	.word	_Label_1062
	.word	-92
	.word	4
	.word	_Label_1063
	.word	-96
	.word	4
	.word	_Label_1064
	.word	-100
	.word	4
	.word	_Label_1065
	.word	-104
	.word	4
	.word	_Label_1066
	.word	-108
	.word	4
	.word	_Label_1067
	.word	-112
	.word	4
	.word	_Label_1068
	.word	-116
	.word	4
	.word	_Label_1069
	.word	-120
	.word	4
	.word	_Label_1070
	.word	-124
	.word	4
	.word	_Label_1071
	.word	-128
	.word	4
	.word	_Label_1072
	.word	-132
	.word	4
	.word	_Label_1073
	.word	-136
	.word	4
	.word	_Label_1074
	.word	-140
	.word	4
	.word	_Label_1075
	.word	-144
	.word	4
	.word	_Label_1076
	.word	-148
	.word	4
	.word	_Label_1077
	.word	-152
	.word	4
	.word	_Label_1078
	.word	-156
	.word	4
	.word	_Label_1079
	.word	-160
	.word	4
	.word	_Label_1080
	.word	-164
	.word	4
	.word	_Label_1081
	.word	-168
	.word	4
	.word	_Label_1082
	.word	-172
	.word	4
	.word	_Label_1083
	.word	-176
	.word	4
	.word	_Label_1084
	.word	-180
	.word	4
	.word	_Label_1085
	.word	-184
	.word	4
	.word	_Label_1086
	.word	-188
	.word	4
	.word	_Label_1087
	.word	-192
	.word	4
	.word	_Label_1088
	.word	-196
	.word	4
	.word	0
_Label_1040:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1041:
	.ascii	"Pself\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1087:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1088:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1089
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1089:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1090
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1090:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11506,r1
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	875,r13		! source line 875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1091 = _StringConst_84
	set	_StringConst_84,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManLock = _P_Kernel_HoareMutex
	set	_P_Kernel_HoareMutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0SE",r10
!   _temp_1093 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-46008,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1095 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	set	-46000,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-46000,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   _temp_1096 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1098 = &_temp_1097
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_1098 = _temp_1098 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1100 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_3063:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3063
!   _temp_1100 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_1102:
!   Data Move: *_temp_1098 = _temp_1100  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_3064:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3064
!   _temp_1098 = _temp_1098 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_1099 = _temp_1099 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_1099) then goto _Label_1102
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_1102
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_1103 = &_temp_1097
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3065
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3065:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1096 = *_temp_1103  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3066:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3066
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1104 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-168]
!   _temp_1105 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_1105 [0 ] into _temp_1106
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   Prepare Argument: offset=12  value=_temp_1104  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0SE",r10
!   _temp_1107 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-156]
!   _temp_1108 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_1108 [1 ] into _temp_1109
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   Prepare Argument: offset=12  value=_temp_1107  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_1110 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-144]
!   _temp_1111 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_1111 [2 ] into _temp_1112
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   Prepare Argument: offset=12  value=_temp_1110  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_1113 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-132]
!   _temp_1114 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_1114 [3 ] into _temp_1115
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Prepare Argument: offset=12  value=_temp_1113  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1116 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-120]
!   _temp_1117 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_1117 [4 ] into _temp_1118
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Prepare Argument: offset=12  value=_temp_1116  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
!   _temp_1119 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-108]
!   _temp_1120 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_1120 [5 ] into _temp_1121
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_1119  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1122 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-96]
!   _temp_1123 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_1123 [6 ] into _temp_1124
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_1122  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1125 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-84]
!   _temp_1126 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_1126 [7 ] into _temp_1127
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_1125  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1128 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-72]
!   _temp_1129 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_1129 [8 ] into _temp_1130
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_1128  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_1131 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-60]
!   _temp_1132 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_1132 [9 ] into _temp_1133
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1131  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41684,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41684,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   length = 9		(4 bytes)
	mov	9,r1
	set	-46024,r2
	store	r1,[r14+r2]
! FOR STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1139 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1140 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1139  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1135:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1140 then goto _Label_1138		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1138
_Label_1136:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_1141 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_1141 [i ] into _temp_1142
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1143 = _temp_1142 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1143 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1145 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_1145 [i ] into _temp_1146
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1144 = _temp_1146		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1147 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1144  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1137:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1135
! END FOR
_Label_1138:
! RETURN STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0RE",r10
	set	46028,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1148
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_1149
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1150
	.word	-12
	.word	4
	.word	_Label_1151
	.word	-16
	.word	4
	.word	_Label_1152
	.word	-20
	.word	4
	.word	_Label_1153
	.word	-24
	.word	4
	.word	_Label_1154
	.word	-28
	.word	4
	.word	_Label_1155
	.word	-32
	.word	4
	.word	_Label_1156
	.word	-36
	.word	4
	.word	_Label_1157
	.word	-40
	.word	4
	.word	_Label_1158
	.word	-44
	.word	4
	.word	_Label_1159
	.word	-48
	.word	4
	.word	_Label_1160
	.word	-52
	.word	4
	.word	_Label_1161
	.word	-56
	.word	4
	.word	_Label_1162
	.word	-60
	.word	4
	.word	_Label_1163
	.word	-64
	.word	4
	.word	_Label_1164
	.word	-68
	.word	4
	.word	_Label_1165
	.word	-72
	.word	4
	.word	_Label_1166
	.word	-76
	.word	4
	.word	_Label_1167
	.word	-80
	.word	4
	.word	_Label_1168
	.word	-84
	.word	4
	.word	_Label_1169
	.word	-88
	.word	4
	.word	_Label_1170
	.word	-92
	.word	4
	.word	_Label_1171
	.word	-96
	.word	4
	.word	_Label_1172
	.word	-100
	.word	4
	.word	_Label_1173
	.word	-104
	.word	4
	.word	_Label_1174
	.word	-108
	.word	4
	.word	_Label_1175
	.word	-112
	.word	4
	.word	_Label_1176
	.word	-116
	.word	4
	.word	_Label_1177
	.word	-120
	.word	4
	.word	_Label_1178
	.word	-124
	.word	4
	.word	_Label_1179
	.word	-128
	.word	4
	.word	_Label_1180
	.word	-132
	.word	4
	.word	_Label_1181
	.word	-136
	.word	4
	.word	_Label_1182
	.word	-140
	.word	4
	.word	_Label_1183
	.word	-144
	.word	4
	.word	_Label_1184
	.word	-148
	.word	4
	.word	_Label_1185
	.word	-152
	.word	4
	.word	_Label_1186
	.word	-156
	.word	4
	.word	_Label_1187
	.word	-160
	.word	4
	.word	_Label_1188
	.word	-164
	.word	4
	.word	_Label_1189
	.word	-168
	.word	4
	.word	_Label_1190
	.word	-172
	.word	4
	.word	_Label_1191
	.word	-176
	.word	4
	.word	_Label_1192
	.word	-4340
	.word	4164
	.word	_Label_1193
	.word	-4344
	.word	4
	.word	_Label_1194
	.word	-4348
	.word	4
	.word	_Label_1195
	.word	-45992
	.word	41644
	.word	_Label_1196
	.word	-45996
	.word	4
	.word	_Label_1197
	.word	-46000
	.word	4
	.word	_Label_1198
	.word	-46004
	.word	4
	.word	_Label_1199
	.word	-46008
	.word	4
	.word	_Label_1200
	.word	-46012
	.word	4
	.word	_Label_1201
	.word	-46016
	.word	4
	.word	_Label_1202
	.word	-46020
	.word	4
	.word	_Label_1203
	.word	-46024
	.word	4
	.word	0
_Label_1148:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1149:
	.ascii	"Pself\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1202:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1203:
	.byte	'I'
	.ascii	"length\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	916,r13		! source line 916
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1204 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1209 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1210 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1209  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1205:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1210 then goto _Label_1208		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1208
_Label_1206:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1211 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1212 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1214 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_1214 [i ] into _temp_1215
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1213 = _temp_1215		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_function_201_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1207:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1205
! END FOR
_Label_1208:
! CALL STATEMENT...
!   _temp_1216 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1217 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1218 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1217  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1219
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1220
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1221
	.word	-12
	.word	4
	.word	_Label_1222
	.word	-16
	.word	4
	.word	_Label_1223
	.word	-20
	.word	4
	.word	_Label_1224
	.word	-24
	.word	4
	.word	_Label_1225
	.word	-28
	.word	4
	.word	_Label_1226
	.word	-32
	.word	4
	.word	_Label_1227
	.word	-36
	.word	4
	.word	_Label_1228
	.word	-40
	.word	4
	.word	_Label_1229
	.word	-44
	.word	4
	.word	_Label_1230
	.word	-48
	.word	4
	.word	_Label_1231
	.word	-52
	.word	4
	.word	_Label_1232
	.word	-56
	.word	4
	.word	_Label_1233
	.word	-60
	.word	4
	.word	0
_Label_1219:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1220:
	.ascii	"Pself\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1232:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1233:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	11,r1
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	939,r13		! source line 939
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0SE",r10
!   _temp_1234 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0IF",r10
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_1238 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1237  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1239 = _temp_1237 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1239 then goto _Label_1236 else goto _Label_1235
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1235
	jmp	_Label_1236
_Label_1235:
! THEN...
	mov	951,r13		! source line 951
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1240 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1241 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1240  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1236:
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1242 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1243 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1244 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1245
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1246
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1247
	.word	-16
	.word	4
	.word	_Label_1248
	.word	-20
	.word	4
	.word	_Label_1249
	.word	-24
	.word	4
	.word	_Label_1250
	.word	-28
	.word	4
	.word	_Label_1251
	.word	-32
	.word	4
	.word	_Label_1252
	.word	-9
	.word	1
	.word	_Label_1253
	.word	-36
	.word	4
	.word	_Label_1254
	.word	-10
	.word	1
	.word	_Label_1255
	.word	-40
	.word	4
	.word	_Label_1256
	.word	-44
	.word	4
	.word	0
_Label_1245:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1246:
	.ascii	"Pself\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1252:
	.byte	'C'
	.ascii	"_temp_1239\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1254:
	.byte	'C'
	.ascii	"_temp_1237\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1256:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	965,r13		! source line 965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1257 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1258 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1258 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1259 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1260 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1261 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1260  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1262 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1263
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1264
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1265
	.word	12
	.word	4
	.word	_Label_1266
	.word	-12
	.word	4
	.word	_Label_1267
	.word	-16
	.word	4
	.word	_Label_1268
	.word	-20
	.word	4
	.word	_Label_1269
	.word	-24
	.word	4
	.word	_Label_1270
	.word	-28
	.word	4
	.word	_Label_1271
	.word	-32
	.word	4
	.word	0
_Label_1263:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1264:
	.ascii	"Pself\0"
	.align
_Label_1265:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1272
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1272:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1273
	.word	_sourceFileName
	.word	242		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1273:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	992,r13		! source line 992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3071:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3071
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0SE",r10
!   _temp_1275 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1276
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1278
	.word	-12
	.word	4
	.word	_Label_1279
	.word	-16
	.word	4
	.word	0
_Label_1276:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1277:
	.ascii	"Pself\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1280) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0SE",r10
!   _temp_1281 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1282 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CA",r10
	call	_function_201_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1024,r13		! source line 1024
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1283
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1284
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1285
	.word	-12
	.word	4
	.word	_Label_1286
	.word	-16
	.word	4
	.word	_Label_1287
	.word	-20
	.word	4
	.word	0
_Label_1283:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1284:
	.ascii	"Pself\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1029,r13		! source line 1029
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1288 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1290 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1035,r13		! source line 1035
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1036,r13		! source line 1036
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1291 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1293		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1293
!	jmp	_Label_1292
_Label_1292:
! THEN...
	mov	1039,r13		! source line 1039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1294 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1295
_Label_1293:
! ELSE...
	mov	1040,r13		! source line 1040
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1297		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1297
!	jmp	_Label_1296
_Label_1296:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1298 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1299
_Label_1297:
! ELSE...
	mov	1042,r13		! source line 1042
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1301		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1301
!	jmp	_Label_1300
_Label_1300:
! THEN...
	mov	1043,r13		! source line 1043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1302 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1303
_Label_1301:
! ELSE...
	mov	1045,r13		! source line 1045
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1304 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1045,r13		! source line 1045
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1303:
! END IF...
_Label_1299:
! END IF...
_Label_1295:
! CALL STATEMENT...
!   _temp_1305 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1306 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1051,r13		! source line 1051
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1307
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1308
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1309
	.word	-12
	.word	4
	.word	_Label_1310
	.word	-16
	.word	4
	.word	_Label_1311
	.word	-20
	.word	4
	.word	_Label_1312
	.word	-24
	.word	4
	.word	_Label_1313
	.word	-28
	.word	4
	.word	_Label_1314
	.word	-32
	.word	4
	.word	_Label_1315
	.word	-36
	.word	4
	.word	_Label_1316
	.word	-40
	.word	4
	.word	_Label_1317
	.word	-44
	.word	4
	.word	_Label_1318
	.word	-48
	.word	4
	.word	0
_Label_1307:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1308:
	.ascii	"Pself\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1319
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1319:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1320
	.word	_sourceFileName
	.word	262		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1320:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1067,r13		! source line 1067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   _temp_1321 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1323 = &_temp_1322
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1323 = _temp_1323 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1325 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3075:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3075
!   _temp_1325 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1327:
!   Data Move: *_temp_1323 = _temp_1325  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3076:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3076
!   _temp_1323 = _temp_1323 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1324 = _temp_1324 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1324) then goto _Label_1327
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1327
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1328 = &_temp_1322
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3077
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3077:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1321 = *_temp_1328  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3078:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3078
! ASSIGNMENT STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1330 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-76]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0SE",r10
!   _temp_1332 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1335 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1340 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1341 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1340  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1336:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1341 then goto _Label_1339		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1339
_Label_1337:
	mov	1087,r13		! source line 1087
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1342 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1342 [i ] into _temp_1343
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_1345 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1345 [i ] into _temp_1346
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1344 = _temp_1346		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1347 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1344  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1338:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1336
! END FOR
_Label_1339:
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   _temp_1348 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1348 [0 ] into _temp_1349
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1350 = _temp_1349 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1350  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! RETURN STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1351
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1352
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1353
	.word	-12
	.word	4
	.word	_Label_1354
	.word	-16
	.word	4
	.word	_Label_1355
	.word	-20
	.word	4
	.word	_Label_1356
	.word	-24
	.word	4
	.word	_Label_1357
	.word	-28
	.word	4
	.word	_Label_1358
	.word	-32
	.word	4
	.word	_Label_1359
	.word	-36
	.word	4
	.word	_Label_1360
	.word	-40
	.word	4
	.word	_Label_1361
	.word	-44
	.word	4
	.word	_Label_1362
	.word	-48
	.word	4
	.word	_Label_1363
	.word	-52
	.word	4
	.word	_Label_1364
	.word	-56
	.word	4
	.word	_Label_1365
	.word	-60
	.word	4
	.word	_Label_1366
	.word	-64
	.word	4
	.word	_Label_1367
	.word	-68
	.word	4
	.word	_Label_1368
	.word	-72
	.word	4
	.word	_Label_1369
	.word	-76
	.word	4
	.word	_Label_1370
	.word	-80
	.word	4
	.word	_Label_1371
	.word	-84
	.word	4
	.word	_Label_1372
	.word	-88
	.word	4
	.word	_Label_1373
	.word	-212
	.word	124
	.word	_Label_1374
	.word	-216
	.word	4
	.word	_Label_1375
	.word	-220
	.word	4
	.word	_Label_1376
	.word	-1464
	.word	1244
	.word	_Label_1377
	.word	-1468
	.word	4
	.word	_Label_1378
	.word	-1472
	.word	4
	.word	0
_Label_1351:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1352:
	.ascii	"Pself\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1378:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1096,r13		! source line 1096
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1103,r13		! source line 1103
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1379 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1379  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1384 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1385 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1384  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1380:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1385 then goto _Label_1383		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1383
_Label_1381:
	mov	1105,r13		! source line 1105
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1386 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1386  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1107,r13		! source line 1107
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1387 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1387  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1388 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1388 [i ] into _temp_1389
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1382:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1380
! END FOR
_Label_1383:
! CALL STATEMENT...
!   _temp_1390 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1391 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1392 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1391  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1393
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1394
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1395
	.word	-12
	.word	4
	.word	_Label_1396
	.word	-16
	.word	4
	.word	_Label_1397
	.word	-20
	.word	4
	.word	_Label_1398
	.word	-24
	.word	4
	.word	_Label_1399
	.word	-28
	.word	4
	.word	_Label_1400
	.word	-32
	.word	4
	.word	_Label_1401
	.word	-36
	.word	4
	.word	_Label_1402
	.word	-40
	.word	4
	.word	_Label_1403
	.word	-44
	.word	4
	.word	_Label_1404
	.word	-48
	.word	4
	.word	_Label_1405
	.word	-52
	.word	4
	.word	_Label_1406
	.word	-56
	.word	4
	.word	0
_Label_1393:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1394:
	.ascii	"Pself\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1405:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1406:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1119,r13		! source line 1119
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1407 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1407  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1412 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1413 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1412  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1408:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1413 then goto _Label_1411		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1411
_Label_1409:
	mov	1128,r13		! source line 1128
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1414 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1415 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1415 [i ] into _temp_1416
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1410:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1408
! END FOR
_Label_1411:
! CALL STATEMENT...
!   _temp_1417 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1417  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1418 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1419 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1418  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1136,r13		! source line 1136
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1420
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1422
	.word	-12
	.word	4
	.word	_Label_1423
	.word	-16
	.word	4
	.word	_Label_1424
	.word	-20
	.word	4
	.word	_Label_1425
	.word	-24
	.word	4
	.word	_Label_1426
	.word	-28
	.word	4
	.word	_Label_1427
	.word	-32
	.word	4
	.word	_Label_1428
	.word	-36
	.word	4
	.word	_Label_1429
	.word	-40
	.word	4
	.word	_Label_1430
	.word	-44
	.word	4
	.word	_Label_1431
	.word	-48
	.word	4
	.word	_Label_1432
	.word	-52
	.word	4
	.word	0
_Label_1420:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1421:
	.ascii	"Pself\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1431:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1432:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	16,r1
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	1141,r13		! source line 1141
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_1433 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0WH",r10
_Label_1434:
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1438 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1437  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1439 = _temp_1437 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1439 then goto _Label_1436 else goto _Label_1435
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1435
	jmp	_Label_1436
_Label_1435:
	mov	1151,r13		! source line 1151
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1440 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1441 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1440  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1434
_Label_1436:
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1442 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1443 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0IF",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1447 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1446  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1448 = _temp_1446 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1448 then goto _Label_1445 else goto _Label_1444
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1444
	jmp	_Label_1445
_Label_1444:
! THEN...
	mov	1159,r13		! source line 1159
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_1449 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1450 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1450  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1451 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_1452
_Label_1445:
! ELSE...
	mov	1163,r13		! source line 1163
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1452:
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1453 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1454
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1455
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1456
	.word	-16
	.word	4
	.word	_Label_1457
	.word	-20
	.word	4
	.word	_Label_1458
	.word	-24
	.word	4
	.word	_Label_1459
	.word	-28
	.word	4
	.word	_Label_1460
	.word	-9
	.word	1
	.word	_Label_1461
	.word	-32
	.word	4
	.word	_Label_1462
	.word	-10
	.word	1
	.word	_Label_1463
	.word	-36
	.word	4
	.word	_Label_1464
	.word	-40
	.word	4
	.word	_Label_1465
	.word	-44
	.word	4
	.word	_Label_1466
	.word	-48
	.word	4
	.word	_Label_1467
	.word	-11
	.word	1
	.word	_Label_1468
	.word	-52
	.word	4
	.word	_Label_1469
	.word	-12
	.word	1
	.word	_Label_1470
	.word	-56
	.word	4
	.word	_Label_1471
	.word	-60
	.word	4
	.word	_Label_1472
	.word	-64
	.word	4
	.word	0
_Label_1454:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1455:
	.ascii	"Pself\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1460:
	.byte	'C'
	.ascii	"_temp_1448\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1462:
	.byte	'C'
	.ascii	"_temp_1446\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1467:
	.byte	'C'
	.ascii	"_temp_1439\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1469:
	.byte	'C'
	.ascii	"_temp_1437\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1471:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1472:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	11,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1171,r13		! source line 1171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1473 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0IF",r10
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   _temp_1477 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1476  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1478 = _temp_1476 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1478 then goto _Label_1475 else goto _Label_1474
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1474
	jmp	_Label_1475
_Label_1474:
! THEN...
	mov	1178,r13		! source line 1178
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1479 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1479  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1475:
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1480 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1480 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1481 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_1482 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1483 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1482  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
!   _temp_1484 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1485
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1487
	.word	12
	.word	4
	.word	_Label_1488
	.word	-16
	.word	4
	.word	_Label_1489
	.word	-20
	.word	4
	.word	_Label_1490
	.word	-24
	.word	4
	.word	_Label_1491
	.word	-28
	.word	4
	.word	_Label_1492
	.word	-32
	.word	4
	.word	_Label_1493
	.word	-36
	.word	4
	.word	_Label_1494
	.word	-9
	.word	1
	.word	_Label_1495
	.word	-40
	.word	4
	.word	_Label_1496
	.word	-10
	.word	1
	.word	_Label_1497
	.word	-44
	.word	4
	.word	0
_Label_1485:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1486:
	.ascii	"Pself\0"
	.align
_Label_1487:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1494:
	.byte	'C'
	.ascii	"_temp_1478\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1496:
	.byte	'C'
	.ascii	"_temp_1476\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1498
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1498:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1499
	.word	_sourceFileName
	.word	285		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1499:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	16,r1
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1282,r13		! source line 1282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1500 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
!   _temp_1502 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_1504 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0AS",r10
!   waiting = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! ASSIGNMENT STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: restOfLine = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   restOfLine = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! SEND STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0SE",r10
!   _temp_1506 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0SE",r10
!   _temp_1508 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1513 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1514 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1513  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1509:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1514 then goto _Label_1512		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1512
_Label_1510:
	mov	1304,r13		! source line 1304
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1517 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1517) then goto _Label_1516
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1516
!	jmp	_Label_1515
_Label_1515:
! THEN...
	mov	1308,r13		! source line 1308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1518 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1308,r13		! source line 1308
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1516:
!   Increment the FOR-LOOP index variable and jump back
_Label_1511:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1509
! END FOR
_Label_1512:
! RETURN STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1519
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1521
	.word	-12
	.word	4
	.word	_Label_1522
	.word	-16
	.word	4
	.word	_Label_1523
	.word	-20
	.word	4
	.word	_Label_1524
	.word	-24
	.word	4
	.word	_Label_1525
	.word	-28
	.word	4
	.word	_Label_1526
	.word	-32
	.word	4
	.word	_Label_1527
	.word	-36
	.word	4
	.word	_Label_1528
	.word	-40
	.word	4
	.word	_Label_1529
	.word	-44
	.word	4
	.word	_Label_1530
	.word	-48
	.word	4
	.word	_Label_1531
	.word	-52
	.word	4
	.word	_Label_1532
	.word	-56
	.word	4
	.word	_Label_1533
	.word	-60
	.word	4
	.word	_Label_1534
	.word	-64
	.word	4
	.word	0
_Label_1519:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1520:
	.ascii	"Pself\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1534:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1315,r13		! source line 1315
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0SE",r10
!   _temp_1535 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1536 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1536  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1320,r13		! source line 1320
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1537 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1537  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1321,r13		! source line 1321
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1538 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1538  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1322,r13		! source line 1322
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0SE",r10
!   _temp_1539 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0SE",r10
!   _temp_1540 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1541
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1543
	.word	-12
	.word	4
	.word	_Label_1544
	.word	-16
	.word	4
	.word	_Label_1545
	.word	-20
	.word	4
	.word	_Label_1546
	.word	-24
	.word	4
	.word	_Label_1547
	.word	-28
	.word	4
	.word	_Label_1548
	.word	-32
	.word	4
	.word	0
_Label_1541:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1542:
	.ascii	"Pself\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0SE",r10
!   _temp_1549 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0WH",r10
_Label_1550:
!   if numberFreeFrames >= 1 then goto _Label_1552		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1552
!	jmp	_Label_1551
_Label_1551:
	mov	1340,r13		! source line 1340
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0SE",r10
!   _temp_1553 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1554 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1553  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1550
_Label_1552:
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
	mov	1345,r13		! source line 1345
	mov	"\0\0SE",r10
!   _temp_1555 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0SE",r10
!   _temp_1556 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_1557 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1557		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1558
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1560
	.word	-12
	.word	4
	.word	_Label_1561
	.word	-16
	.word	4
	.word	_Label_1562
	.word	-20
	.word	4
	.word	_Label_1563
	.word	-24
	.word	4
	.word	_Label_1564
	.word	-28
	.word	4
	.word	_Label_1565
	.word	-32
	.word	4
	.word	_Label_1566
	.word	-36
	.word	4
	.word	_Label_1567
	.word	-40
	.word	4
	.word	0
_Label_1558:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1559:
	.ascii	"Pself\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1566:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	18,r1
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1359,r13		! source line 1359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_1568 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0AS",r10
!   waiting = waiting + 1		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+40]
! IF STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0IF",r10
!   if waiting <= 1 then goto _Label_1570		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1570
!	jmp	_Label_1569
_Label_1569:
! THEN...
	mov	1366,r13		! source line 1366
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0SE",r10
!   _temp_1571 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1572 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1571  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1570:
! WHILE STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0WH",r10
_Label_1573:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1575		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1575
!	jmp	_Label_1574
_Label_1574:
	mov	1369,r13		! source line 1369
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0SE",r10
!   _temp_1576 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1577 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1576  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1573
_Label_1575:
! FOR STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1582 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1583 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1582  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1578:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1583 then goto _Label_1581		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1581
_Label_1579:
	mov	1373,r13		! source line 1373
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0AS",r10
	mov	1374,r13		! source line 1374
	mov	"\0\0SE",r10
!   _temp_1584 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message FindZeroAndSet
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_1585 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1585		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1580:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1578
! END FOR
_Label_1581:
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1586 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1586 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   waiting = waiting - 1		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0SE",r10
!   _temp_1587 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1588 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1587  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0SE",r10
!   _temp_1589 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1590
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1592
	.word	12
	.word	4
	.word	_Label_1593
	.word	16
	.word	4
	.word	_Label_1594
	.word	-12
	.word	4
	.word	_Label_1595
	.word	-16
	.word	4
	.word	_Label_1596
	.word	-20
	.word	4
	.word	_Label_1597
	.word	-24
	.word	4
	.word	_Label_1598
	.word	-28
	.word	4
	.word	_Label_1599
	.word	-32
	.word	4
	.word	_Label_1600
	.word	-36
	.word	4
	.word	_Label_1601
	.word	-40
	.word	4
	.word	_Label_1602
	.word	-44
	.word	4
	.word	_Label_1603
	.word	-48
	.word	4
	.word	_Label_1604
	.word	-52
	.word	4
	.word	_Label_1605
	.word	-56
	.word	4
	.word	_Label_1606
	.word	-60
	.word	4
	.word	_Label_1607
	.word	-64
	.word	4
	.word	_Label_1608
	.word	-68
	.word	4
	.word	0
_Label_1590:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1591:
	.ascii	"Pself\0"
	.align
_Label_1592:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1593:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1608:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	18,r1
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0SE",r10
!   _temp_1609 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1614 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1617 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1616 = *_temp_1617  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1615 = _temp_1616 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1614  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1610:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1615 then goto _Label_1613		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1613
_Label_1611:
	mov	1394,r13		! source line 1394
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
	mov	1395,r13		! source line 1395
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   _temp_1618 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1618 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0SE",r10
!   _temp_1619 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1612:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1610
! END FOR
_Label_1613:
! ASSIGNMENT STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1621 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1620 = *_temp_1621  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1620		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0SE",r10
!   _temp_1622 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1623 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1622  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1402,r13		! source line 1402
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1624 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1624 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0SE",r10
!   _temp_1625 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1626
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1628
	.word	12
	.word	4
	.word	_Label_1629
	.word	-12
	.word	4
	.word	_Label_1630
	.word	-16
	.word	4
	.word	_Label_1631
	.word	-20
	.word	4
	.word	_Label_1632
	.word	-24
	.word	4
	.word	_Label_1633
	.word	-28
	.word	4
	.word	_Label_1634
	.word	-32
	.word	4
	.word	_Label_1635
	.word	-36
	.word	4
	.word	_Label_1636
	.word	-40
	.word	4
	.word	_Label_1637
	.word	-44
	.word	4
	.word	_Label_1638
	.word	-48
	.word	4
	.word	_Label_1639
	.word	-52
	.word	4
	.word	_Label_1640
	.word	-56
	.word	4
	.word	_Label_1641
	.word	-60
	.word	4
	.word	_Label_1642
	.word	-64
	.word	4
	.word	_Label_1643
	.word	-68
	.word	4
	.word	_Label_1644
	.word	-72
	.word	4
	.word	0
_Label_1626:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1627:
	.ascii	"Pself\0"
	.align
_Label_1628:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1642:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1643:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1644:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1645
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1645:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1646
	.word	_sourceFileName
	.word	306		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1646:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   _temp_1647 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1649 = &_temp_1648
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1649 = _temp_1649 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1651:
!   Data Move: *_temp_1649 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1649 = _temp_1649 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1650 = _temp_1650 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1650) then goto _Label_1651
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1651
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1652 = &_temp_1648
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3089
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3089:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1647 = *_temp_1652  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3090:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3090
! RETURN STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1653
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1655
	.word	-12
	.word	4
	.word	_Label_1656
	.word	-16
	.word	4
	.word	_Label_1657
	.word	-20
	.word	4
	.word	_Label_1658
	.word	-104
	.word	84
	.word	_Label_1659
	.word	-108
	.word	4
	.word	0
_Label_1653:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1654:
	.ascii	"Pself\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1425,r13		! source line 1425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1660 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1661 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1661  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1431,r13		! source line 1431
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1666 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1667 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1666  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1662:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1667 then goto _Label_1665		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1665
_Label_1663:
	mov	1432,r13		! source line 1432
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1668 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1433,r13		! source line 1433
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1670 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1670 [i ] into _temp_1671
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1669 = _temp_1671		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1669  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1434,r13		! source line 1434
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1672 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1435,r13		! source line 1435
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1674 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1674 [i ] into _temp_1675
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1673 = *_temp_1675  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1673  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1436,r13		! source line 1436
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1676 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1437,r13		! source line 1437
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1677 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1677  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1438,r13		! source line 1438
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1678 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1680) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1679  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1440,r13		! source line 1440
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1681 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1685) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1684  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1684) then goto _Label_1683
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1683
!	jmp	_Label_1682
_Label_1682:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1687) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1686  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1688
_Label_1683:
! ELSE...
	mov	1445,r13		! source line 1445
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1689 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1445,r13		! source line 1445
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1688:
! CALL STATEMENT...
!   _temp_1690 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1693) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1691 else goto _Label_1692
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1692
	jmp	_Label_1691
_Label_1691:
! THEN...
	mov	1449,r13		! source line 1449
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1694 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1695
_Label_1692:
! ELSE...
	mov	1451,r13		! source line 1451
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1696 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1696  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1695:
! CALL STATEMENT...
!   _temp_1697 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0IF",r10
	mov	1454,r13		! source line 1454
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1700) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1698 else goto _Label_1699
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1699
	jmp	_Label_1698
_Label_1698:
! THEN...
	mov	1455,r13		! source line 1455
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1701 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1701  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1455,r13		! source line 1455
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1702
_Label_1699:
! ELSE...
	mov	1457,r13		! source line 1457
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1703 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1457,r13		! source line 1457
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1702:
! CALL STATEMENT...
!   _temp_1704 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1459,r13		! source line 1459
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	mov	1460,r13		! source line 1460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1707) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1705 else goto _Label_1706
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1706
	jmp	_Label_1705
_Label_1705:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1708 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1708  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1461,r13		! source line 1461
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1709
_Label_1706:
! ELSE...
	mov	1463,r13		! source line 1463
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1710 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1710  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1463,r13		! source line 1463
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1709:
! CALL STATEMENT...
!   _temp_1711 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1711  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1465,r13		! source line 1465
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0IF",r10
	mov	1466,r13		! source line 1466
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1714) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1712 else goto _Label_1713
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1713
	jmp	_Label_1712
_Label_1712:
! THEN...
	mov	1467,r13		! source line 1467
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1715 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1715  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1467,r13		! source line 1467
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1716
_Label_1713:
! ELSE...
	mov	1469,r13		! source line 1469
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1717 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1469,r13		! source line 1469
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1716:
! CALL STATEMENT...
!   Call the function
	mov	1471,r13		! source line 1471
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1664:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1662
! END FOR
_Label_1665:
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1718
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1719
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1720
	.word	-12
	.word	4
	.word	_Label_1721
	.word	-16
	.word	4
	.word	_Label_1722
	.word	-20
	.word	4
	.word	_Label_1723
	.word	-24
	.word	4
	.word	_Label_1724
	.word	-28
	.word	4
	.word	_Label_1725
	.word	-32
	.word	4
	.word	_Label_1726
	.word	-36
	.word	4
	.word	_Label_1727
	.word	-40
	.word	4
	.word	_Label_1728
	.word	-44
	.word	4
	.word	_Label_1729
	.word	-48
	.word	4
	.word	_Label_1730
	.word	-52
	.word	4
	.word	_Label_1731
	.word	-56
	.word	4
	.word	_Label_1732
	.word	-60
	.word	4
	.word	_Label_1733
	.word	-64
	.word	4
	.word	_Label_1734
	.word	-68
	.word	4
	.word	_Label_1735
	.word	-72
	.word	4
	.word	_Label_1736
	.word	-76
	.word	4
	.word	_Label_1737
	.word	-80
	.word	4
	.word	_Label_1738
	.word	-84
	.word	4
	.word	_Label_1739
	.word	-88
	.word	4
	.word	_Label_1740
	.word	-92
	.word	4
	.word	_Label_1741
	.word	-96
	.word	4
	.word	_Label_1742
	.word	-100
	.word	4
	.word	_Label_1743
	.word	-104
	.word	4
	.word	_Label_1744
	.word	-108
	.word	4
	.word	_Label_1745
	.word	-112
	.word	4
	.word	_Label_1746
	.word	-116
	.word	4
	.word	_Label_1747
	.word	-120
	.word	4
	.word	_Label_1748
	.word	-124
	.word	4
	.word	_Label_1749
	.word	-128
	.word	4
	.word	_Label_1750
	.word	-132
	.word	4
	.word	_Label_1751
	.word	-136
	.word	4
	.word	_Label_1752
	.word	-140
	.word	4
	.word	_Label_1753
	.word	-144
	.word	4
	.word	_Label_1754
	.word	-148
	.word	4
	.word	_Label_1755
	.word	-152
	.word	4
	.word	_Label_1756
	.word	-156
	.word	4
	.word	_Label_1757
	.word	-160
	.word	4
	.word	_Label_1758
	.word	-164
	.word	4
	.word	_Label_1759
	.word	-168
	.word	4
	.word	0
_Label_1718:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1719:
	.ascii	"Pself\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1759:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1477,r13		! source line 1477
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   _temp_1762 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1762 [entry ] into _temp_1763
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1761 = *_temp_1763  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1760 = _temp_1761 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1760  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1764
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1766
	.word	12
	.word	4
	.word	_Label_1767
	.word	-12
	.word	4
	.word	_Label_1768
	.word	-16
	.word	4
	.word	_Label_1769
	.word	-20
	.word	4
	.word	_Label_1770
	.word	-24
	.word	4
	.word	0
_Label_1764:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1765:
	.ascii	"Pself\0"
	.align
_Label_1766:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
!   _temp_1773 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1773 [entry ] into _temp_1774
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1772 = *_temp_1774  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1771 = _temp_1772 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1771  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1775
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1777
	.word	12
	.word	4
	.word	_Label_1778
	.word	-12
	.word	4
	.word	_Label_1779
	.word	-16
	.word	4
	.word	_Label_1780
	.word	-20
	.word	4
	.word	_Label_1781
	.word	-24
	.word	4
	.word	0
_Label_1775:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1776:
	.ascii	"Pself\0"
	.align
_Label_1777:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   _temp_1782 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1782 [entry ] into _temp_1783
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1787 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1787 [entry ] into _temp_1788
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1786 = *_temp_1788  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1785 = _temp_1786 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1784 = _temp_1785 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1783 = _temp_1784  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1789
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1791
	.word	12
	.word	4
	.word	_Label_1792
	.word	16
	.word	4
	.word	_Label_1793
	.word	-12
	.word	4
	.word	_Label_1794
	.word	-16
	.word	4
	.word	_Label_1795
	.word	-20
	.word	4
	.word	_Label_1796
	.word	-24
	.word	4
	.word	_Label_1797
	.word	-28
	.word	4
	.word	_Label_1798
	.word	-32
	.word	4
	.word	_Label_1799
	.word	-36
	.word	4
	.word	0
_Label_1789:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1790:
	.ascii	"Pself\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1792:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	1506,r13		! source line 1506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0RE",r10
!   _temp_1803 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1803 [entry ] into _temp_1804
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1802 = *_temp_1804  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1801 = _temp_1802 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1801) then goto _Label_1805
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1805
!   _temp_1800 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1806
_Label_1805:
!   _temp_1800 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1806:
!   ReturnResult: _temp_1800  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1807
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1808
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1809
	.word	12
	.word	4
	.word	_Label_1810
	.word	-16
	.word	4
	.word	_Label_1811
	.word	-20
	.word	4
	.word	_Label_1812
	.word	-24
	.word	4
	.word	_Label_1813
	.word	-28
	.word	4
	.word	_Label_1814
	.word	-9
	.word	1
	.word	0
_Label_1807:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1808:
	.ascii	"Pself\0"
	.align
_Label_1809:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1814:
	.byte	'C'
	.ascii	"_temp_1800\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	1515,r13		! source line 1515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0RE",r10
!   _temp_1818 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1818 [entry ] into _temp_1819
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1817 = *_temp_1819  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1816 = _temp_1817 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1816) then goto _Label_1820
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1820
!   _temp_1815 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1821
_Label_1820:
!   _temp_1815 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1821:
!   ReturnResult: _temp_1815  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1822
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1823
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1824
	.word	12
	.word	4
	.word	_Label_1825
	.word	-16
	.word	4
	.word	_Label_1826
	.word	-20
	.word	4
	.word	_Label_1827
	.word	-24
	.word	4
	.word	_Label_1828
	.word	-28
	.word	4
	.word	_Label_1829
	.word	-9
	.word	1
	.word	0
_Label_1822:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1823:
	.ascii	"Pself\0"
	.align
_Label_1824:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1829:
	.byte	'C'
	.ascii	"_temp_1815\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	1524,r13		! source line 1524
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0RE",r10
!   _temp_1833 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1833 [entry ] into _temp_1834
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1832 = *_temp_1834  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1831 = _temp_1832 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1831) then goto _Label_1835
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1835
!   _temp_1830 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1836
_Label_1835:
!   _temp_1830 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1836:
!   ReturnResult: _temp_1830  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1837
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1838
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1839
	.word	12
	.word	4
	.word	_Label_1840
	.word	-16
	.word	4
	.word	_Label_1841
	.word	-20
	.word	4
	.word	_Label_1842
	.word	-24
	.word	4
	.word	_Label_1843
	.word	-28
	.word	4
	.word	_Label_1844
	.word	-9
	.word	1
	.word	0
_Label_1837:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1838:
	.ascii	"Pself\0"
	.align
_Label_1839:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1844:
	.byte	'C'
	.ascii	"_temp_1830\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	1533,r13		! source line 1533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0RE",r10
!   _temp_1848 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1848 [entry ] into _temp_1849
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1847 = *_temp_1849  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1846 = _temp_1847 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1846) then goto _Label_1850
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1850
!   _temp_1845 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1851
_Label_1850:
!   _temp_1845 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1851:
!   ReturnResult: _temp_1845  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1852
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1854
	.word	12
	.word	4
	.word	_Label_1855
	.word	-16
	.word	4
	.word	_Label_1856
	.word	-20
	.word	4
	.word	_Label_1857
	.word	-24
	.word	4
	.word	_Label_1858
	.word	-28
	.word	4
	.word	_Label_1859
	.word	-9
	.word	1
	.word	0
_Label_1852:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1853:
	.ascii	"Pself\0"
	.align
_Label_1854:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1859:
	.byte	'C'
	.ascii	"_temp_1845\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	1542,r13		! source line 1542
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0AS",r10
!   _temp_1860 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1860 [entry ] into _temp_1861
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1864 [entry ] into _temp_1865
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1863 = *_temp_1865  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1862 = _temp_1863 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1861 = _temp_1862  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1866
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1867
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1868
	.word	12
	.word	4
	.word	_Label_1869
	.word	-12
	.word	4
	.word	_Label_1870
	.word	-16
	.word	4
	.word	_Label_1871
	.word	-20
	.word	4
	.word	_Label_1872
	.word	-24
	.word	4
	.word	_Label_1873
	.word	-28
	.word	4
	.word	_Label_1874
	.word	-32
	.word	4
	.word	0
_Label_1866:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1867:
	.ascii	"Pself\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	1551,r13		! source line 1551
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0AS",r10
!   _temp_1875 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1875 [entry ] into _temp_1876
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1879 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1879 [entry ] into _temp_1880
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1878 = *_temp_1880  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1877 = _temp_1878 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1876 = _temp_1877  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1881
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1882
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1883
	.word	12
	.word	4
	.word	_Label_1884
	.word	-12
	.word	4
	.word	_Label_1885
	.word	-16
	.word	4
	.word	_Label_1886
	.word	-20
	.word	4
	.word	_Label_1887
	.word	-24
	.word	4
	.word	_Label_1888
	.word	-28
	.word	4
	.word	_Label_1889
	.word	-32
	.word	4
	.word	0
_Label_1881:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1882:
	.ascii	"Pself\0"
	.align
_Label_1883:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	1560,r13		! source line 1560
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   _temp_1890 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1890 [entry ] into _temp_1891
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1894 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1894 [entry ] into _temp_1895
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1893 = *_temp_1895  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1892 = _temp_1893 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1891 = _temp_1892  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1896
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1898
	.word	12
	.word	4
	.word	_Label_1899
	.word	-12
	.word	4
	.word	_Label_1900
	.word	-16
	.word	4
	.word	_Label_1901
	.word	-20
	.word	4
	.word	_Label_1902
	.word	-24
	.word	4
	.word	_Label_1903
	.word	-28
	.word	4
	.word	_Label_1904
	.word	-32
	.word	4
	.word	0
_Label_1896:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1897:
	.ascii	"Pself\0"
	.align
_Label_1898:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	1569,r13		! source line 1569
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0AS",r10
!   _temp_1905 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1905 [entry ] into _temp_1906
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1909 [entry ] into _temp_1910
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1908 = *_temp_1910  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1907 = _temp_1908 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1906 = _temp_1907  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1911
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1913
	.word	12
	.word	4
	.word	_Label_1914
	.word	-12
	.word	4
	.word	_Label_1915
	.word	-16
	.word	4
	.word	_Label_1916
	.word	-20
	.word	4
	.word	_Label_1917
	.word	-24
	.word	4
	.word	_Label_1918
	.word	-28
	.word	4
	.word	_Label_1919
	.word	-32
	.word	4
	.word	0
_Label_1911:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1912:
	.ascii	"Pself\0"
	.align
_Label_1913:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	1578,r13		! source line 1578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   _temp_1920 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1920 [entry ] into _temp_1921
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1924 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1924 [entry ] into _temp_1925
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1923 = *_temp_1925  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1922 = _temp_1923 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1921 = _temp_1922  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1926
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1928
	.word	12
	.word	4
	.word	_Label_1929
	.word	-12
	.word	4
	.word	_Label_1930
	.word	-16
	.word	4
	.word	_Label_1931
	.word	-20
	.word	4
	.word	_Label_1932
	.word	-24
	.word	4
	.word	_Label_1933
	.word	-28
	.word	4
	.word	_Label_1934
	.word	-32
	.word	4
	.word	0
_Label_1926:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1927:
	.ascii	"Pself\0"
	.align
_Label_1928:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	1587,r13		! source line 1587
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   _temp_1935 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1935 [entry ] into _temp_1936
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1939 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1939 [entry ] into _temp_1940
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1938 = *_temp_1940  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1937 = _temp_1938 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1936 = _temp_1937  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1941
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1943
	.word	12
	.word	4
	.word	_Label_1944
	.word	-12
	.word	4
	.word	_Label_1945
	.word	-16
	.word	4
	.word	_Label_1946
	.word	-20
	.word	4
	.word	_Label_1947
	.word	-24
	.word	4
	.word	_Label_1948
	.word	-28
	.word	4
	.word	_Label_1949
	.word	-32
	.word	4
	.word	0
_Label_1941:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1942:
	.ascii	"Pself\0"
	.align
_Label_1943:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	1596,r13		! source line 1596
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0AS",r10
!   _temp_1950 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1950 [entry ] into _temp_1951
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1954 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1954 [entry ] into _temp_1955
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1953 = *_temp_1955  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1952 = _temp_1953 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1951 = _temp_1952  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1956
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1958
	.word	12
	.word	4
	.word	_Label_1959
	.word	-12
	.word	4
	.word	_Label_1960
	.word	-16
	.word	4
	.word	_Label_1961
	.word	-20
	.word	4
	.word	_Label_1962
	.word	-24
	.word	4
	.word	_Label_1963
	.word	-28
	.word	4
	.word	_Label_1964
	.word	-32
	.word	4
	.word	0
_Label_1956:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1957:
	.ascii	"Pself\0"
	.align
_Label_1958:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	1605,r13		! source line 1605
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   _temp_1965 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1965 [entry ] into _temp_1966
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1969 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1969 [entry ] into _temp_1970
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1968 = *_temp_1970  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1967 = _temp_1968 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1966 = _temp_1967  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1971
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1973
	.word	12
	.word	4
	.word	_Label_1974
	.word	-12
	.word	4
	.word	_Label_1975
	.word	-16
	.word	4
	.word	_Label_1976
	.word	-20
	.word	4
	.word	_Label_1977
	.word	-24
	.word	4
	.word	_Label_1978
	.word	-28
	.word	4
	.word	_Label_1979
	.word	-32
	.word	4
	.word	0
_Label_1971:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1972:
	.ascii	"Pself\0"
	.align
_Label_1973:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	1614,r13		! source line 1614
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1981 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1981 [0 ] into _temp_1982
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1980 = _temp_1982		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1983 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1980  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1983  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1620,r13		! source line 1620
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1984
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1986
	.word	-12
	.word	4
	.word	_Label_1987
	.word	-16
	.word	4
	.word	_Label_1988
	.word	-20
	.word	4
	.word	_Label_1989
	.word	-24
	.word	4
	.word	0
_Label_1984:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1985:
	.ascii	"Pself\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	1625,r13		! source line 1625
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1990
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1990
	jmp	_Label_1991
_Label_1990:
! THEN...
	mov	1641,r13		! source line 1641
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1992
_Label_1991:
! ELSE...
	mov	1642,r13		! source line 1642
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1994		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1994
!	jmp	_Label_1993
_Label_1993:
! THEN...
	mov	1643,r13		! source line 1643
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1994:
! END IF...
_Label_1992:
! ASSIGNMENT STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0WH",r10
_Label_1995:
!	jmp	_Label_1996
_Label_1996:
	mov	1649,r13		! source line 1649
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1999		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1999
!	jmp	_Label_1998
_Label_1998:
! THEN...
	mov	1651,r13		! source line 1651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2000 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2000  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1651,r13		! source line 1651
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1999:
! IF STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0IF",r10
	mov	1654,r13		! source line 1654
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2004) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2003  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2003 then goto _Label_2002 else goto _Label_2001
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2001
	jmp	_Label_2002
_Label_2001:
! THEN...
	mov	1655,r13		! source line 1655
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2005 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1655,r13		! source line 1655
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2002:
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0AS",r10
	mov	1658,r13		! source line 1658
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2007) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2006  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2006 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0WH",r10
_Label_2008:
!   if offset >= 8192 then goto _Label_2010		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2010
!	jmp	_Label_2009
_Label_2009:
	mov	1660,r13		! source line 1660
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2011 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2011  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2013		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2013
!	jmp	_Label_2012
_Label_2012:
! THEN...
	mov	1669,r13		! source line 1669
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2013:
! END WHILE...
	jmp	_Label_2008
_Label_2010:
! ASSIGNMENT STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1995
_Label_1997:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2014
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2016
	.word	12
	.word	4
	.word	_Label_2017
	.word	16
	.word	4
	.word	_Label_2018
	.word	20
	.word	4
	.word	_Label_2019
	.word	-9
	.word	1
	.word	_Label_2020
	.word	-16
	.word	4
	.word	_Label_2021
	.word	-20
	.word	4
	.word	_Label_2022
	.word	-24
	.word	4
	.word	_Label_2023
	.word	-28
	.word	4
	.word	_Label_2024
	.word	-10
	.word	1
	.word	_Label_2025
	.word	-32
	.word	4
	.word	_Label_2026
	.word	-36
	.word	4
	.word	_Label_2027
	.word	-40
	.word	4
	.word	_Label_2028
	.word	-44
	.word	4
	.word	_Label_2029
	.word	-48
	.word	4
	.word	0
_Label_2014:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2015:
	.ascii	"Pself\0"
	.align
_Label_2016:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2017:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2019:
	.byte	'C'
	.ascii	"_temp_2011\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2024:
	.byte	'C'
	.ascii	"_temp_2003\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2026:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2027:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2028:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2029:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	1679,r13		! source line 1679
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2030
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2030
	jmp	_Label_2031
_Label_2030:
! THEN...
	mov	1691,r13		! source line 1691
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2032
_Label_2031:
! ELSE...
	mov	1692,r13		! source line 1692
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2034		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2034
!	jmp	_Label_2033
_Label_2033:
! THEN...
	mov	1693,r13		! source line 1693
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2034:
! END IF...
_Label_2032:
! ASSIGNMENT STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0WH",r10
_Label_2035:
!	jmp	_Label_2036
_Label_2036:
	mov	1697,r13		! source line 1697
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2041		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2041
	jmp	_Label_2038
_Label_2041:
	mov	1699,r13		! source line 1699
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2043) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2042  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2042 then goto _Label_2040 else goto _Label_2038
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2038
	jmp	_Label_2040
_Label_2040:
	mov	1700,r13		! source line 1700
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2045) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2044  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2044 then goto _Label_2039 else goto _Label_2038
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2038
	jmp	_Label_2039
_Label_2038:
! THEN...
	mov	1701,r13		! source line 1701
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2039:
! ASSIGNMENT STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0AS",r10
	mov	1703,r13		! source line 1703
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2047) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2046  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2046 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0WH",r10
_Label_2048:
!   if offset >= 8192 then goto _Label_2050		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2050
!	jmp	_Label_2049
_Label_2049:
	mov	1704,r13		! source line 1704
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2051 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2051  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1710,r13		! source line 1710
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2053		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2053
!	jmp	_Label_2052
_Label_2052:
! THEN...
	mov	1711,r13		! source line 1711
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2053:
! END WHILE...
	jmp	_Label_2048
_Label_2050:
! ASSIGNMENT STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2035
_Label_2037:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2054
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2055
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2056
	.word	12
	.word	4
	.word	_Label_2057
	.word	16
	.word	4
	.word	_Label_2058
	.word	20
	.word	4
	.word	_Label_2059
	.word	-9
	.word	1
	.word	_Label_2060
	.word	-16
	.word	4
	.word	_Label_2061
	.word	-20
	.word	4
	.word	_Label_2062
	.word	-24
	.word	4
	.word	_Label_2063
	.word	-10
	.word	1
	.word	_Label_2064
	.word	-28
	.word	4
	.word	_Label_2065
	.word	-11
	.word	1
	.word	_Label_2066
	.word	-32
	.word	4
	.word	_Label_2067
	.word	-36
	.word	4
	.word	_Label_2068
	.word	-40
	.word	4
	.word	_Label_2069
	.word	-44
	.word	4
	.word	0
_Label_2054:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2055:
	.ascii	"Pself\0"
	.align
_Label_2056:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2057:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2058:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2059:
	.byte	'C'
	.ascii	"_temp_2051\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2063:
	.byte	'C'
	.ascii	"_temp_2044\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2065:
	.byte	'C'
	.ascii	"_temp_2042\0"
	.align
_Label_2066:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2067:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2068:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2069:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	1721,r13		! source line 1721
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0IF",r10
	mov	1745,r13		! source line 1745
	mov	"\0\0SE",r10
!   _temp_2073 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2074) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2073  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2072  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2072 >= 4 then goto _Label_2071		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2071
!	jmp	_Label_2070
_Label_2070:
! THEN...
	mov	1748,r13		! source line 1748
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2071:
! IF STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2076		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2076
!	jmp	_Label_2075
_Label_2075:
! THEN...
	mov	1753,r13		! source line 1753
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2076:
! ASSIGNMENT STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
	mov	1758,r13		! source line 1758
	mov	"\0\0SE",r10
!   _temp_2079 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2078 = _temp_2079 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2080 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2081) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2078  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2080  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2077  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2077  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2082
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2083
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2084
	.word	12
	.word	4
	.word	_Label_2085
	.word	16
	.word	4
	.word	_Label_2086
	.word	20
	.word	4
	.word	_Label_2087
	.word	-12
	.word	4
	.word	_Label_2088
	.word	-16
	.word	4
	.word	_Label_2089
	.word	-20
	.word	4
	.word	_Label_2090
	.word	-24
	.word	4
	.word	_Label_2091
	.word	-28
	.word	4
	.word	_Label_2092
	.word	-32
	.word	4
	.word	_Label_2093
	.word	-36
	.word	4
	.word	_Label_2094
	.word	-40
	.word	4
	.word	_Label_2095
	.word	-44
	.word	4
	.word	0
_Label_2082:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2083:
	.ascii	"Pself\0"
	.align
_Label_2084:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2085:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2086:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2095:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2096
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2096:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2097
	.word	_sourceFileName
	.word	339		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2097:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	2096,r13		! source line 2096
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2098 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2098  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2097,r13		! source line 2097
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0SE",r10
!   _temp_2100 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   _temp_2102 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2103
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2104
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2105
	.word	-12
	.word	4
	.word	_Label_2106
	.word	-16
	.word	4
	.word	_Label_2107
	.word	-20
	.word	4
	.word	_Label_2108
	.word	-24
	.word	4
	.word	_Label_2109
	.word	-28
	.word	4
	.word	0
_Label_2103:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2104:
	.ascii	"Pself\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	2112,r13		! source line 2112
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   _temp_2110 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0WH",r10
_Label_2111:
!	jmp	_Label_2112
_Label_2112:
	mov	2126,r13		! source line 2126
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_2114 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2115) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2114  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0SE",r10
!   _temp_2116 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2133,r13		! source line 2133
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2125 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2119
	cmp	r1,2
	be	_Label_2120
	cmp	r1,3
	be	_Label_2121
	cmp	r1,4
	be	_Label_2122
	cmp	r1,5
	be	_Label_2123
	cmp	r1,6
	be	_Label_2124
	jmp	_Label_2117
! CASE 1...
_Label_2119:
! SEND STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0SE",r10
!   _temp_2126 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2120:
! CALL STATEMENT...
!   _temp_2127 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2127  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2138,r13		! source line 2138
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2121:
! CALL STATEMENT...
!   _temp_2128 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2128  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2140,r13		! source line 2140
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2122:
! CALL STATEMENT...
!   _temp_2129 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2129  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2142,r13		! source line 2142
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2123:
! BREAK STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0BR",r10
	jmp	_Label_2118
! CASE 6...
_Label_2124:
! CALL STATEMENT...
!   _temp_2130 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2130  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2148,r13		! source line 2148
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2117:
! CALL STATEMENT...
!   _temp_2131 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2131  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2150,r13		! source line 2150
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2118:
! END WHILE...
	jmp	_Label_2111
_Label_2113:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2132
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2134
	.word	12
	.word	4
	.word	_Label_2135
	.word	16
	.word	4
	.word	_Label_2136
	.word	20
	.word	4
	.word	_Label_2137
	.word	-12
	.word	4
	.word	_Label_2138
	.word	-16
	.word	4
	.word	_Label_2139
	.word	-20
	.word	4
	.word	_Label_2140
	.word	-24
	.word	4
	.word	_Label_2141
	.word	-28
	.word	4
	.word	_Label_2142
	.word	-32
	.word	4
	.word	_Label_2143
	.word	-36
	.word	4
	.word	_Label_2144
	.word	-40
	.word	4
	.word	_Label_2145
	.word	-44
	.word	4
	.word	_Label_2146
	.word	-48
	.word	4
	.word	_Label_2147
	.word	-52
	.word	4
	.word	0
_Label_2132:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2133:
	.ascii	"Pself\0"
	.align
_Label_2134:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2135:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2136:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2159,r13		! source line 2159
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2148
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2149
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2150
	.word	12
	.word	4
	.word	_Label_2151
	.word	16
	.word	4
	.word	_Label_2152
	.word	20
	.word	4
	.word	_Label_2153
	.word	24
	.word	4
	.word	0
_Label_2148:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2149:
	.ascii	"Pself\0"
	.align
_Label_2150:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2151:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2153:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	2185,r13		! source line 2185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_2154 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0WH",r10
_Label_2155:
!	jmp	_Label_2156
_Label_2156:
	mov	2198,r13		! source line 2198
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0SE",r10
!   _temp_2158 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2159) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2158  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0SE",r10
!   _temp_2160 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2204,r13		! source line 2204
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2169 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2163
	cmp	r1,2
	be	_Label_2164
	cmp	r1,3
	be	_Label_2165
	cmp	r1,4
	be	_Label_2166
	cmp	r1,5
	be	_Label_2167
	cmp	r1,6
	be	_Label_2168
	jmp	_Label_2161
! CASE 1...
_Label_2163:
! SEND STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0SE",r10
!   _temp_2170 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2164:
! CALL STATEMENT...
!   _temp_2171 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2171  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2209,r13		! source line 2209
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2165:
! CALL STATEMENT...
!   _temp_2172 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2172  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2211,r13		! source line 2211
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2166:
! CALL STATEMENT...
!   _temp_2173 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2173  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2213,r13		! source line 2213
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2167:
! BREAK STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0BR",r10
	jmp	_Label_2162
! CASE 6...
_Label_2168:
! CALL STATEMENT...
!   _temp_2174 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2219,r13		! source line 2219
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2161:
! CALL STATEMENT...
!   _temp_2175 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2175  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2221,r13		! source line 2221
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2162:
! END WHILE...
	jmp	_Label_2155
_Label_2157:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2176
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2177
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2178
	.word	12
	.word	4
	.word	_Label_2179
	.word	16
	.word	4
	.word	_Label_2180
	.word	20
	.word	4
	.word	_Label_2181
	.word	-12
	.word	4
	.word	_Label_2182
	.word	-16
	.word	4
	.word	_Label_2183
	.word	-20
	.word	4
	.word	_Label_2184
	.word	-24
	.word	4
	.word	_Label_2185
	.word	-28
	.word	4
	.word	_Label_2186
	.word	-32
	.word	4
	.word	_Label_2187
	.word	-36
	.word	4
	.word	_Label_2188
	.word	-40
	.word	4
	.word	_Label_2189
	.word	-44
	.word	4
	.word	_Label_2190
	.word	-48
	.word	4
	.word	_Label_2191
	.word	-52
	.word	4
	.word	0
_Label_2176:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2177:
	.ascii	"Pself\0"
	.align
_Label_2178:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2179:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2180:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2230,r13		! source line 2230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2192
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2194
	.word	12
	.word	4
	.word	_Label_2195
	.word	16
	.word	4
	.word	_Label_2196
	.word	20
	.word	4
	.word	_Label_2197
	.word	24
	.word	4
	.word	0
_Label_2192:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2193:
	.ascii	"Pself\0"
	.align
_Label_2194:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2195:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2196:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2197:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2198
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2198:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2199
	.word	_sourceFileName
	.word	362		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2199:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	2261,r13		! source line 2261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2200 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2268,r13		! source line 2268
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_2202 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   _temp_2205 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   _temp_2206 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2208 = &_temp_2207
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2208 = _temp_2208 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2210 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3115:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3115
!   _temp_2210 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2212:
!   Data Move: *_temp_2208 = _temp_2210  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3116:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3116
!   _temp_2208 = _temp_2208 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2209 = _temp_2209 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2209) then goto _Label_2212
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2212
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2213 = &_temp_2207
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3117
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3117:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2206 = *_temp_2213  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3118:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3118
! FOR STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2218 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2219 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2218  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2219 then goto _Label_2217		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2217
_Label_2215:
	mov	2278,r13		! source line 2278
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0AS",r10
!   _temp_2220 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2220 [i ] into _temp_2221
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2222 = _temp_2221 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2222 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0SE",r10
!   _temp_2223 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2223 [i ] into _temp_2224
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0SE",r10
!   _temp_2226 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2226 [i ] into _temp_2227
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2225 = _temp_2227		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2228 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2225  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2216:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2214
! END FOR
_Label_2217:
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_2231 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   _temp_2232 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2234 = &_temp_2233
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2234 = _temp_2234 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2236 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3119:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3119
!   _temp_2236 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2238:
!   Data Move: *_temp_2234 = _temp_2236  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3120:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3120
!   _temp_2234 = _temp_2234 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2235 = _temp_2235 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2235) then goto _Label_2238
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2238
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2239 = &_temp_2233
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3121
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3121:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2232 = *_temp_2239  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3122:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3122
! FOR STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2244 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2245 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2244  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2240:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2245 then goto _Label_2243		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2243
_Label_2241:
	mov	2290,r13		! source line 2290
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   _temp_2246 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2246 [i ] into _temp_2247
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2248 = _temp_2247 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2248 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_2250 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2250 [i ] into _temp_2251
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2249 = _temp_2251		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2252 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2249  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2242:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2240
! END FOR
_Label_2243:
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3123:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3123
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   _temp_2254 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2255 = _temp_2254 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2255 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2256 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0SE",r10
!   _temp_2257 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2258
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2259
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2260
	.word	-12
	.word	4
	.word	_Label_2261
	.word	-16
	.word	4
	.word	_Label_2262
	.word	-20
	.word	4
	.word	_Label_2263
	.word	-24
	.word	4
	.word	_Label_2264
	.word	-28
	.word	4
	.word	_Label_2265
	.word	-32
	.word	4
	.word	_Label_2266
	.word	-36
	.word	4
	.word	_Label_2267
	.word	-40
	.word	4
	.word	_Label_2268
	.word	-44
	.word	4
	.word	_Label_2269
	.word	-48
	.word	4
	.word	_Label_2270
	.word	-52
	.word	4
	.word	_Label_2271
	.word	-56
	.word	4
	.word	_Label_2272
	.word	-60
	.word	4
	.word	_Label_2273
	.word	-64
	.word	4
	.word	_Label_2274
	.word	-68
	.word	4
	.word	_Label_2275
	.word	-72
	.word	4
	.word	_Label_2276
	.word	-100
	.word	28
	.word	_Label_2277
	.word	-104
	.word	4
	.word	_Label_2278
	.word	-108
	.word	4
	.word	_Label_2279
	.word	-392
	.word	284
	.word	_Label_2280
	.word	-396
	.word	4
	.word	_Label_2281
	.word	-400
	.word	4
	.word	_Label_2282
	.word	-404
	.word	4
	.word	_Label_2283
	.word	-408
	.word	4
	.word	_Label_2284
	.word	-412
	.word	4
	.word	_Label_2285
	.word	-416
	.word	4
	.word	_Label_2286
	.word	-420
	.word	4
	.word	_Label_2287
	.word	-424
	.word	4
	.word	_Label_2288
	.word	-428
	.word	4
	.word	_Label_2289
	.word	-432
	.word	4
	.word	_Label_2290
	.word	-436
	.word	4
	.word	_Label_2291
	.word	-440
	.word	4
	.word	_Label_2292
	.word	-444
	.word	4
	.word	_Label_2293
	.word	-448
	.word	4
	.word	_Label_2294
	.word	-452
	.word	4
	.word	_Label_2295
	.word	-456
	.word	4
	.word	_Label_2296
	.word	-460
	.word	4
	.word	_Label_2297
	.word	-500
	.word	40
	.word	_Label_2298
	.word	-504
	.word	4
	.word	_Label_2299
	.word	-508
	.word	4
	.word	_Label_2300
	.word	-912
	.word	404
	.word	_Label_2301
	.word	-916
	.word	4
	.word	_Label_2302
	.word	-920
	.word	4
	.word	_Label_2303
	.word	-924
	.word	4
	.word	_Label_2304
	.word	-928
	.word	4
	.word	_Label_2305
	.word	-932
	.word	4
	.word	_Label_2306
	.word	-936
	.word	4
	.word	_Label_2307
	.word	-940
	.word	4
	.word	_Label_2308
	.word	-944
	.word	4
	.word	0
_Label_2258:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2259:
	.ascii	"Pself\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2308:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	2310,r13		! source line 2310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0SE",r10
!   _temp_2309 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2310 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2310  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2313,r13		! source line 2313
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2315 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2316 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2315  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2311:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2316 then goto _Label_2314		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2314
_Label_2312:
	mov	2314,r13		! source line 2314
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2317 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2317  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2315,r13		! source line 2315
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2316,r13		! source line 2316
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2318 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2318  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2317,r13		! source line 2317
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0SE",r10
!   _temp_2319 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2319 [i ] into _temp_2320
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2313:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2311
! END FOR
_Label_2314:
! CALL STATEMENT...
!   _temp_2321 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2321  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2320,r13		! source line 2320
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0SE",r10
!   _temp_2322 = _function_196_printFCB
	set	_function_196_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2323 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2322  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2322,r13		! source line 2322
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2324 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2324  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2323,r13		! source line 2323
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2329 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2330 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2329  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2325:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2330 then goto _Label_2328		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2328
_Label_2326:
	mov	2324,r13		! source line 2324
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2331 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2325,r13		! source line 2325
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2326,r13		! source line 2326
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2332 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2327,r13		! source line 2327
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2334 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2334 [i ] into _temp_2335
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2333 = _temp_2335		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2333  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2328,r13		! source line 2328
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2336 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2336  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2329,r13		! source line 2329
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0SE",r10
!   _temp_2337 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2337 [i ] into _temp_2338
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2327:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2325
! END FOR
_Label_2328:
! CALL STATEMENT...
!   _temp_2339 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2332,r13		! source line 2332
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0SE",r10
!   _temp_2340 = _function_195_printOpen
	set	_function_195_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2341 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2340  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2342 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2343
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2344
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2345
	.word	-12
	.word	4
	.word	_Label_2346
	.word	-16
	.word	4
	.word	_Label_2347
	.word	-20
	.word	4
	.word	_Label_2348
	.word	-24
	.word	4
	.word	_Label_2349
	.word	-28
	.word	4
	.word	_Label_2350
	.word	-32
	.word	4
	.word	_Label_2351
	.word	-36
	.word	4
	.word	_Label_2352
	.word	-40
	.word	4
	.word	_Label_2353
	.word	-44
	.word	4
	.word	_Label_2354
	.word	-48
	.word	4
	.word	_Label_2355
	.word	-52
	.word	4
	.word	_Label_2356
	.word	-56
	.word	4
	.word	_Label_2357
	.word	-60
	.word	4
	.word	_Label_2358
	.word	-64
	.word	4
	.word	_Label_2359
	.word	-68
	.word	4
	.word	_Label_2360
	.word	-72
	.word	4
	.word	_Label_2361
	.word	-76
	.word	4
	.word	_Label_2362
	.word	-80
	.word	4
	.word	_Label_2363
	.word	-84
	.word	4
	.word	_Label_2364
	.word	-88
	.word	4
	.word	_Label_2365
	.word	-92
	.word	4
	.word	_Label_2366
	.word	-96
	.word	4
	.word	_Label_2367
	.word	-100
	.word	4
	.word	_Label_2368
	.word	-104
	.word	4
	.word	_Label_2369
	.word	-108
	.word	4
	.word	_Label_2370
	.word	-112
	.word	4
	.word	_Label_2371
	.word	-116
	.word	4
	.word	0
_Label_2343:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2344:
	.ascii	"Pself\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2371:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	2339,r13		! source line 2339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
	mov	2355,r13		! source line 2355
	mov	"\0\0SE",r10
!   _temp_2372 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2373
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2373
	jmp	_Label_2374
_Label_2373:
! THEN...
	mov	2357,r13		! source line 2357
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2374:
! SEND STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0SE",r10
!   _temp_2375 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0WH",r10
_Label_2376:
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_2379 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2377 else goto _Label_2378
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2378
	jmp	_Label_2377
_Label_2377:
	mov	2362,r13		! source line 2362
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0SE",r10
!   _temp_2380 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2381 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2380  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2376
_Label_2378:
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
	mov	2365,r13		! source line 2365
	mov	"\0\0SE",r10
!   _temp_2382 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2383 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2383 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2384 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2384 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2385 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2385 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0SE",r10
!   _temp_2386 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2387
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2388
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2389
	.word	12
	.word	4
	.word	_Label_2390
	.word	-12
	.word	4
	.word	_Label_2391
	.word	-16
	.word	4
	.word	_Label_2392
	.word	-20
	.word	4
	.word	_Label_2393
	.word	-24
	.word	4
	.word	_Label_2394
	.word	-28
	.word	4
	.word	_Label_2395
	.word	-32
	.word	4
	.word	_Label_2396
	.word	-36
	.word	4
	.word	_Label_2397
	.word	-40
	.word	4
	.word	_Label_2398
	.word	-44
	.word	4
	.word	_Label_2399
	.word	-48
	.word	4
	.word	_Label_2400
	.word	-52
	.word	4
	.word	_Label_2401
	.word	-56
	.word	4
	.word	0
_Label_2387:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2388:
	.ascii	"Pself\0"
	.align
_Label_2389:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2400:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2401:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	2380,r13		! source line 2380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2403		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2403
!	jmp	_Label_2402
_Label_2402:
! THEN...
	mov	2411,r13		! source line 2411
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2404 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2404  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2411,r13		! source line 2411
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2403:
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0WH",r10
_Label_2405:
!   if numFiles <= 0 then goto _Label_2407		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2407
!	jmp	_Label_2406
_Label_2406:
	mov	2421,r13		! source line 2421
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2408 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2408  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2422,r13		! source line 2422
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2409 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2409  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2424,r13		! source line 2424
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2410 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2410  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2426,r13		! source line 2426
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2414 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2414 then goto _Label_2412		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2412
!	jmp	_Label_2413
_Label_2413:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2416
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2415 = _temp_2416		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2415  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2429,r13		! source line 2429
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2411 else goto _Label_2412
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2412
	jmp	_Label_2411
_Label_2411:
! THEN...
	mov	2430,r13		! source line 2430
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0BR",r10
	jmp	_Label_2407
! END IF...
_Label_2412:
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2405
_Label_2407:
! IF STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2418		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2418
!	jmp	_Label_2417
_Label_2417:
! THEN...
	mov	2438,r13		! source line 2438
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2418:
! SEND STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_2419 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2424 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2425 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2424  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2420:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2425 then goto _Label_2423		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2423
_Label_2421:
	mov	2443,r13		! source line 2443
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   _temp_2426 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2426 [i ] into _temp_2427
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2427		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2431 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2430 = *_temp_2431  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2430 != start then goto _Label_2429		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2429
!	jmp	_Label_2428
_Label_2428:
! THEN...
	mov	2446,r13		! source line 2446
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2432 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2435 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2434 = *_temp_2435  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2433 = _temp_2434 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2432 = _temp_2433  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_2436 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2429:
!   Increment the FOR-LOOP index variable and jump back
_Label_2422:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2420
! END FOR
_Label_2423:
! WHILE STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0WH",r10
_Label_2437:
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_2440 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2438 else goto _Label_2439
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2439
	jmp	_Label_2438
_Label_2438:
	mov	2453,r13		! source line 2453
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0SE",r10
!   _temp_2441 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2442 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2441  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2437
_Label_2439:
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
	mov	2456,r13		! source line 2456
	mov	"\0\0SE",r10
!   _temp_2443 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0SE",r10
!   _temp_2444 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2445 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2445 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2446 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2446 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2447 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2447 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2452 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2451 = *_temp_2452  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2451 < 0 then goto _Label_2450		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2450
	jmp	_Label_2448
_Label_2450:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2453 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2453 ) then goto _Label_2449		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2449
!	jmp	_Label_2448
_Label_2448:
! THEN...
	mov	2466,r13		! source line 2466
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2454 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2454  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2466,r13		! source line 2466
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2449:
! RETURN STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2455
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2456
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2457
	.word	12
	.word	4
	.word	_Label_2458
	.word	-12
	.word	4
	.word	_Label_2459
	.word	-16
	.word	4
	.word	_Label_2460
	.word	-20
	.word	4
	.word	_Label_2461
	.word	-24
	.word	4
	.word	_Label_2462
	.word	-28
	.word	4
	.word	_Label_2463
	.word	-32
	.word	4
	.word	_Label_2464
	.word	-36
	.word	4
	.word	_Label_2465
	.word	-40
	.word	4
	.word	_Label_2466
	.word	-44
	.word	4
	.word	_Label_2467
	.word	-48
	.word	4
	.word	_Label_2468
	.word	-52
	.word	4
	.word	_Label_2469
	.word	-56
	.word	4
	.word	_Label_2470
	.word	-60
	.word	4
	.word	_Label_2471
	.word	-64
	.word	4
	.word	_Label_2472
	.word	-68
	.word	4
	.word	_Label_2473
	.word	-72
	.word	4
	.word	_Label_2474
	.word	-76
	.word	4
	.word	_Label_2475
	.word	-80
	.word	4
	.word	_Label_2476
	.word	-84
	.word	4
	.word	_Label_2477
	.word	-88
	.word	4
	.word	_Label_2478
	.word	-92
	.word	4
	.word	_Label_2479
	.word	-96
	.word	4
	.word	_Label_2480
	.word	-100
	.word	4
	.word	_Label_2481
	.word	-104
	.word	4
	.word	_Label_2482
	.word	-108
	.word	4
	.word	_Label_2483
	.word	-112
	.word	4
	.word	_Label_2484
	.word	-116
	.word	4
	.word	_Label_2485
	.word	-120
	.word	4
	.word	_Label_2486
	.word	-124
	.word	4
	.word	_Label_2487
	.word	-128
	.word	4
	.word	_Label_2488
	.word	-132
	.word	4
	.word	_Label_2489
	.word	-136
	.word	4
	.word	_Label_2490
	.word	-140
	.word	4
	.word	_Label_2491
	.word	-144
	.word	4
	.word	_Label_2492
	.word	-148
	.word	4
	.word	_Label_2493
	.word	-152
	.word	4
	.word	_Label_2494
	.word	-156
	.word	4
	.word	_Label_2495
	.word	-160
	.word	4
	.word	0
_Label_2455:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2456:
	.ascii	"Pself\0"
	.align
_Label_2457:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2489:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2490:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2491:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2492:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2493:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2494:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2495:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	2481,r13		! source line 2481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0IF",r10
!   _temp_2498 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2498 then goto _Label_2497		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2497
!	jmp	_Label_2496
_Label_2496:
! THEN...
	mov	2484,r13		! source line 2484
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2497:
! SEND STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0SE",r10
!   _temp_2499 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_2500 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2501 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2501  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2502 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2505 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2504 = *_temp_2505  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2503 = _temp_2504 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2502 = _temp_2503  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2509 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2508 = *_temp_2509  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2508 > 0 then goto _Label_2507		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2507
!	jmp	_Label_2506
_Label_2506:
! THEN...
	mov	2491,r13		! source line 2491
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0SE",r10
!   _temp_2510 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0SE",r10
!   _temp_2511 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2512 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2511  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2513 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2516 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2515 = *_temp_2516  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2514 = _temp_2515 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2513 = _temp_2514  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2520 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2519 = *_temp_2520  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2519 > 0 then goto _Label_2518		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2518
!	jmp	_Label_2517
_Label_2517:
! THEN...
	mov	2495,r13		! source line 2495
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_2521 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0SE",r10
!   _temp_2522 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2523 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2522  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2518:
! END IF...
_Label_2507:
! SEND STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0SE",r10
!   _temp_2524 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2525
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2527
	.word	12
	.word	4
	.word	_Label_2528
	.word	-12
	.word	4
	.word	_Label_2529
	.word	-16
	.word	4
	.word	_Label_2530
	.word	-20
	.word	4
	.word	_Label_2531
	.word	-24
	.word	4
	.word	_Label_2532
	.word	-28
	.word	4
	.word	_Label_2533
	.word	-32
	.word	4
	.word	_Label_2534
	.word	-36
	.word	4
	.word	_Label_2535
	.word	-40
	.word	4
	.word	_Label_2536
	.word	-44
	.word	4
	.word	_Label_2537
	.word	-48
	.word	4
	.word	_Label_2538
	.word	-52
	.word	4
	.word	_Label_2539
	.word	-56
	.word	4
	.word	_Label_2540
	.word	-60
	.word	4
	.word	_Label_2541
	.word	-64
	.word	4
	.word	_Label_2542
	.word	-68
	.word	4
	.word	_Label_2543
	.word	-72
	.word	4
	.word	_Label_2544
	.word	-76
	.word	4
	.word	_Label_2545
	.word	-80
	.word	4
	.word	_Label_2546
	.word	-84
	.word	4
	.word	_Label_2547
	.word	-88
	.word	4
	.word	_Label_2548
	.word	-92
	.word	4
	.word	_Label_2549
	.word	-96
	.word	4
	.word	_Label_2550
	.word	-100
	.word	4
	.word	_Label_2551
	.word	-104
	.word	4
	.word	0
_Label_2525:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2526:
	.ascii	"Pself\0"
	.align
_Label_2527:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2551:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	2504,r13		! source line 2504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2555 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2554 = *_temp_2555  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2554) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2556 = _temp_2554 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2556 ) then goto _Label_2553		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2553
!	jmp	_Label_2552
_Label_2552:
! THEN...
	mov	2510,r13		! source line 2510
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2561 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2560 = *_temp_2561  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2560) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2562 = _temp_2560 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2559 = *_temp_2562  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2559 >= 0 then goto _Label_2558		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2558
!	jmp	_Label_2557
_Label_2557:
! THEN...
	mov	2511,r13		! source line 2511
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2563 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2563  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2511,r13		! source line 2511
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2558:
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2565 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2564 = *_temp_2565  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2564) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2566 = _temp_2564 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2566 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2570 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2569 = *_temp_2570  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2569) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2571 = _temp_2569 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2568 = *_temp_2571  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2574 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2573 = *_temp_2574  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2573) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2575 = _temp_2573 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2572 = *_temp_2575  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2567 = _temp_2568 + _temp_2572		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2578 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2577 = *_temp_2578  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2577) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2579 = _temp_2577 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2576 = *_temp_2579  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2580 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2567  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2576  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2553:
! RETURN STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2581
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2583
	.word	12
	.word	4
	.word	_Label_2584
	.word	-12
	.word	4
	.word	_Label_2585
	.word	-16
	.word	4
	.word	_Label_2586
	.word	-20
	.word	4
	.word	_Label_2587
	.word	-24
	.word	4
	.word	_Label_2588
	.word	-28
	.word	4
	.word	_Label_2589
	.word	-32
	.word	4
	.word	_Label_2590
	.word	-36
	.word	4
	.word	_Label_2591
	.word	-40
	.word	4
	.word	_Label_2592
	.word	-44
	.word	4
	.word	_Label_2593
	.word	-48
	.word	4
	.word	_Label_2594
	.word	-52
	.word	4
	.word	_Label_2595
	.word	-56
	.word	4
	.word	_Label_2596
	.word	-60
	.word	4
	.word	_Label_2597
	.word	-64
	.word	4
	.word	_Label_2598
	.word	-68
	.word	4
	.word	_Label_2599
	.word	-72
	.word	4
	.word	_Label_2600
	.word	-76
	.word	4
	.word	_Label_2601
	.word	-80
	.word	4
	.word	_Label_2602
	.word	-84
	.word	4
	.word	_Label_2603
	.word	-88
	.word	4
	.word	_Label_2604
	.word	-92
	.word	4
	.word	_Label_2605
	.word	-96
	.word	4
	.word	_Label_2606
	.word	-100
	.word	4
	.word	_Label_2607
	.word	-104
	.word	4
	.word	_Label_2608
	.word	-108
	.word	4
	.word	0
_Label_2581:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2582:
	.ascii	"Pself\0"
	.align
_Label_2583:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	2523,r13		! source line 2523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
!   _temp_2609 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2615		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2615
!   _temp_2614 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2616
_Label_2615:
!   _temp_2614 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2616:
!   if _temp_2614 then goto _Label_2613 else goto _Label_2610
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2610
	jmp	_Label_2613
_Label_2613:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2619 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2618 = *_temp_2619  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2618 == 0 then goto _Label_2620		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2620
!   _temp_2617 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2621
_Label_2620:
!   _temp_2617 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2621:
!   if _temp_2617 then goto _Label_2612 else goto _Label_2610
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2610
	jmp	_Label_2612
_Label_2612:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2623 = *_temp_2624  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2623) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2625 = _temp_2623 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2622 = *_temp_2625  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2622 >= 0 then goto _Label_2611		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2611
!	jmp	_Label_2610
_Label_2610:
! THEN...
	mov	2540,r13		! source line 2540
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2626 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2626  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2540,r13		! source line 2540
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2611:
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2627 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2627  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0WH",r10
_Label_2628:
!   if numBytes <= 0 then goto _Label_2630		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2630
!	jmp	_Label_2629
_Label_2629:
	mov	2543,r13		! source line 2543
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2634 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2633 = *_temp_2634  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2633 == sector then goto _Label_2632		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2632
!	jmp	_Label_2631
_Label_2631:
! THEN...
	mov	2558,r13		! source line 2558
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2635) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2638 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2637 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2636 = sector + _temp_2637		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2640 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2639 = *_temp_2640  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2641 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2636  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2639  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2642 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2642 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2643 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2643 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2632:
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2645 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2644 = *_temp_2645  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2644 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   _temp_2646 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2646  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2567,r13		! source line 2567
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2571,r13		! source line 2571
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2628
_Label_2630:
! SEND STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   _temp_2647 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2648
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2650
	.word	12
	.word	4
	.word	_Label_2651
	.word	16
	.word	4
	.word	_Label_2652
	.word	20
	.word	4
	.word	_Label_2653
	.word	24
	.word	4
	.word	_Label_2654
	.word	-16
	.word	4
	.word	_Label_2655
	.word	-20
	.word	4
	.word	_Label_2656
	.word	-24
	.word	4
	.word	_Label_2657
	.word	-28
	.word	4
	.word	_Label_2658
	.word	-32
	.word	4
	.word	_Label_2659
	.word	-36
	.word	4
	.word	_Label_2660
	.word	-40
	.word	4
	.word	_Label_2661
	.word	-44
	.word	4
	.word	_Label_2662
	.word	-48
	.word	4
	.word	_Label_2663
	.word	-52
	.word	4
	.word	_Label_2664
	.word	-56
	.word	4
	.word	_Label_2665
	.word	-60
	.word	4
	.word	_Label_2666
	.word	-64
	.word	4
	.word	_Label_2667
	.word	-68
	.word	4
	.word	_Label_2668
	.word	-72
	.word	4
	.word	_Label_2669
	.word	-76
	.word	4
	.word	_Label_2670
	.word	-80
	.word	4
	.word	_Label_2671
	.word	-84
	.word	4
	.word	_Label_2672
	.word	-88
	.word	4
	.word	_Label_2673
	.word	-92
	.word	4
	.word	_Label_2674
	.word	-96
	.word	4
	.word	_Label_2675
	.word	-100
	.word	4
	.word	_Label_2676
	.word	-104
	.word	4
	.word	_Label_2677
	.word	-9
	.word	1
	.word	_Label_2678
	.word	-10
	.word	1
	.word	_Label_2679
	.word	-108
	.word	4
	.word	_Label_2680
	.word	-112
	.word	4
	.word	_Label_2681
	.word	-116
	.word	4
	.word	_Label_2682
	.word	-120
	.word	4
	.word	_Label_2683
	.word	-124
	.word	4
	.word	_Label_2684
	.word	-128
	.word	4
	.word	0
_Label_2648:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2649:
	.ascii	"Pself\0"
	.align
_Label_2650:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2651:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2652:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2653:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2677:
	.byte	'C'
	.ascii	"_temp_2617\0"
	.align
_Label_2678:
	.byte	'C'
	.ascii	"_temp_2614\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2680:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2681:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2682:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2683:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2684:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3130:
	push	r0
	sub	r1,1,r1
	bne	_Label_3130
	mov	2587,r13		! source line 2587
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0SE",r10
!   _temp_2685 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2691		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2691
!   _temp_2690 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2692
_Label_2691:
!   _temp_2690 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2692:
!   if _temp_2690 then goto _Label_2689 else goto _Label_2686
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2686
	jmp	_Label_2689
_Label_2689:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2695 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2694 = *_temp_2695  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2694 == 0 then goto _Label_2696		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2696
!   _temp_2693 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2697
_Label_2696:
!   _temp_2693 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2697:
!   if _temp_2693 then goto _Label_2688 else goto _Label_2686
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2686
	jmp	_Label_2688
_Label_2688:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2700 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2699 = *_temp_2700  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2699) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2701 = _temp_2699 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2698 = *_temp_2701  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2698 >= 0 then goto _Label_2687		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2687
!	jmp	_Label_2686
_Label_2686:
! THEN...
	mov	2605,r13		! source line 2605
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2702 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2702  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2605,r13		! source line 2605
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2687:
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2703 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2703  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0WH",r10
_Label_2704:
!   if numBytes <= 0 then goto _Label_2706		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2706
!	jmp	_Label_2705
_Label_2705:
	mov	2608,r13		! source line 2608
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2710 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2709 = *_temp_2710  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2709 == sector then goto _Label_2708		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2708
!	jmp	_Label_2707
_Label_2707:
! THEN...
	mov	2624,r13		! source line 2624
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2711) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2708:
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2713 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2712 = *_temp_2713  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2712 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   _temp_2714 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2714  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2627,r13		! source line 2627
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2718 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2717 = *_temp_2718  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2717 != sector then goto _Label_2716		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2716
!	jmp	_Label_2715
_Label_2715:
	jmp	_Label_2719
_Label_2716:
! ELSE...
	mov	2630,r13		! source line 2630
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2722
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2722
	jmp	_Label_2721
_Label_2722:
!   if bytesToMove != 8192 then goto _Label_2721		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2721
!	jmp	_Label_2720
_Label_2720:
	jmp	_Label_2723
_Label_2721:
! ELSE...
	mov	2634,r13		! source line 2634
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2726 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2725 = *_temp_2726  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2724 = sector + _temp_2725		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2728 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2727 = *_temp_2728  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2729 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2724  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2727  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2723:
! END IF...
_Label_2719:
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2730 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2730 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2731 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2731 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2704
_Label_2706:
! SEND STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0SE",r10
!   _temp_2732 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2733
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2734
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2735
	.word	12
	.word	4
	.word	_Label_2736
	.word	16
	.word	4
	.word	_Label_2737
	.word	20
	.word	4
	.word	_Label_2738
	.word	24
	.word	4
	.word	_Label_2739
	.word	-16
	.word	4
	.word	_Label_2740
	.word	-20
	.word	4
	.word	_Label_2741
	.word	-24
	.word	4
	.word	_Label_2742
	.word	-28
	.word	4
	.word	_Label_2743
	.word	-32
	.word	4
	.word	_Label_2744
	.word	-36
	.word	4
	.word	_Label_2745
	.word	-40
	.word	4
	.word	_Label_2746
	.word	-44
	.word	4
	.word	_Label_2747
	.word	-48
	.word	4
	.word	_Label_2748
	.word	-52
	.word	4
	.word	_Label_2749
	.word	-56
	.word	4
	.word	_Label_2750
	.word	-60
	.word	4
	.word	_Label_2751
	.word	-64
	.word	4
	.word	_Label_2752
	.word	-68
	.word	4
	.word	_Label_2753
	.word	-72
	.word	4
	.word	_Label_2754
	.word	-76
	.word	4
	.word	_Label_2755
	.word	-80
	.word	4
	.word	_Label_2756
	.word	-84
	.word	4
	.word	_Label_2757
	.word	-88
	.word	4
	.word	_Label_2758
	.word	-92
	.word	4
	.word	_Label_2759
	.word	-96
	.word	4
	.word	_Label_2760
	.word	-100
	.word	4
	.word	_Label_2761
	.word	-104
	.word	4
	.word	_Label_2762
	.word	-108
	.word	4
	.word	_Label_2763
	.word	-112
	.word	4
	.word	_Label_2764
	.word	-9
	.word	1
	.word	_Label_2765
	.word	-10
	.word	1
	.word	_Label_2766
	.word	-116
	.word	4
	.word	_Label_2767
	.word	-120
	.word	4
	.word	_Label_2768
	.word	-124
	.word	4
	.word	_Label_2769
	.word	-128
	.word	4
	.word	_Label_2770
	.word	-132
	.word	4
	.word	_Label_2771
	.word	-136
	.word	4
	.word	0
_Label_2733:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2734:
	.ascii	"Pself\0"
	.align
_Label_2735:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2736:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2737:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2738:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2764:
	.byte	'C'
	.ascii	"_temp_2693\0"
	.align
_Label_2765:
	.byte	'C'
	.ascii	"_temp_2690\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2767:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2768:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2769:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2770:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2771:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2772
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2772:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2773
	.word	_sourceFileName
	.word	387		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2773:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	2691,r13		! source line 2691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
!   _temp_2774 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2775
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2777
	.word	-12
	.word	4
	.word	0
_Label_2775:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2776:
	.ascii	"Pself\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	2701,r13		! source line 2701
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2778 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2778  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2702,r13		! source line 2702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2703,r13		! source line 2703
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2779 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2779  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2704,r13		! source line 2704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2705,r13		! source line 2705
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2780 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2780  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2706,r13		! source line 2706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2707,r13		! source line 2707
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2781 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2781  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2708,r13		! source line 2708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2709,r13		! source line 2709
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2782 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2782  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2710,r13		! source line 2710
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2711,r13		! source line 2711
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2783 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2783  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2712,r13		! source line 2712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2713,r13		! source line 2713
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2714,r13		! source line 2714
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2784
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2786
	.word	-12
	.word	4
	.word	_Label_2787
	.word	-16
	.word	4
	.word	_Label_2788
	.word	-20
	.word	4
	.word	_Label_2789
	.word	-24
	.word	4
	.word	_Label_2790
	.word	-28
	.word	4
	.word	_Label_2791
	.word	-32
	.word	4
	.word	0
_Label_2784:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2785:
	.ascii	"Pself\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2792
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2792:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2793
	.word	_sourceFileName
	.word	404		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2793:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	2725,r13		! source line 2725
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2794 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2794  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2726,r13		! source line 2726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2795 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2795  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2728,r13		! source line 2728
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2797		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2797
!	jmp	_Label_2796
_Label_2796:
! THEN...
	mov	2730,r13		! source line 2730
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2798
_Label_2797:
! ELSE...
	mov	2732,r13		! source line 2732
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2799 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2799  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2732,r13		! source line 2732
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2798:
! RETURN STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2800
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2801
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2802
	.word	-12
	.word	4
	.word	_Label_2803
	.word	-16
	.word	4
	.word	_Label_2804
	.word	-20
	.word	4
	.word	0
_Label_2800:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2801:
	.ascii	"Pself\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	2738,r13		! source line 2738
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0SE",r10
!   _temp_2805 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2806 = _temp_2805 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   _temp_2807 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2808 = _temp_2807 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0RE",r10
	mov	2752,r13		! source line 2752
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2811 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2810  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2809  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2809  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2812
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2814
	.word	12
	.word	4
	.word	_Label_2815
	.word	16
	.word	4
	.word	_Label_2816
	.word	-16
	.word	4
	.word	_Label_2817
	.word	-20
	.word	4
	.word	_Label_2818
	.word	-9
	.word	1
	.word	_Label_2819
	.word	-24
	.word	4
	.word	_Label_2820
	.word	-28
	.word	4
	.word	_Label_2821
	.word	-32
	.word	4
	.word	_Label_2822
	.word	-36
	.word	4
	.word	_Label_2823
	.word	-40
	.word	4
	.word	0
_Label_2812:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2813:
	.ascii	"Pself\0"
	.align
_Label_2814:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2815:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2818:
	.byte	'C'
	.ascii	"_temp_2809\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2823:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3135:
	push	r0
	sub	r1,1,r1
	bne	_Label_3135
	mov	2757,r13		! source line 2757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0IF",r10
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
!   _temp_2827 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2828) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2827  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2826  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2826 then goto _Label_2825 else goto _Label_2824
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2824
	jmp	_Label_2825
_Label_2824:
! THEN...
	mov	2763,r13		! source line 2763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2829 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2829  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2763,r13		! source line 2763
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2825:
! RETURN STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2830
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2832
	.word	-16
	.word	4
	.word	_Label_2833
	.word	-20
	.word	4
	.word	_Label_2834
	.word	-24
	.word	4
	.word	_Label_2835
	.word	-9
	.word	1
	.word	_Label_2836
	.word	-28
	.word	4
	.word	0
_Label_2830:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2831:
	.ascii	"Pself\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2835:
	.byte	'C'
	.ascii	"_temp_2826\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	2770,r13		! source line 2770
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2840 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2839 = *_temp_2840  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2839) then goto _Label_2838
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2838
!	jmp	_Label_2837
_Label_2837:
! THEN...
	mov	2797,r13		! source line 2797
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2841 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2841  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2797,r13		! source line 2797
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2838:
! IF STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0IF",r10
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2845) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2844  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2844 == 1112300152 then goto _Label_2843		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2843
!	jmp	_Label_2842
_Label_2842:
! THEN...
	mov	2802,r13		! source line 2802
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2846 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2846  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2802,r13		! source line 2802
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2843:
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
	mov	2807,r13		! source line 2807
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2847) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2848) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
	mov	2809,r13		! source line 2809
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2849) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
	mov	2810,r13		! source line 2810
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2850) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
	mov	2811,r13		! source line 2811
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2851) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2852) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0IF",r10
!   _temp_2855 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2855) then goto _Label_2854
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2854
!	jmp	_Label_2853
_Label_2853:
! THEN...
	mov	2816,r13		! source line 2816
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2856 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2856  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2816,r13		! source line 2816
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2854:
! ASSIGNMENT STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2858
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2858
!	jmp	_Label_2857
_Label_2857:
! THEN...
	mov	2824,r13		! source line 2824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2859 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2859  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2858:
! IF STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0IF",r10
!   _temp_2862 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2862) then goto _Label_2861
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2861
!	jmp	_Label_2860
_Label_2860:
! THEN...
	mov	2830,r13		! source line 2830
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2863 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2863  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2861:
! IF STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0IF",r10
!   _temp_2866 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2866 then goto _Label_2865		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2865
!	jmp	_Label_2864
_Label_2864:
! THEN...
	mov	2834,r13		! source line 2834
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2867 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2867  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2865:
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0IF",r10
!   _temp_2870 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2870) then goto _Label_2869
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2869
!	jmp	_Label_2868
_Label_2868:
! THEN...
	mov	2841,r13		! source line 2841
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2871 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2871  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2841,r13		! source line 2841
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2869:
! IF STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0IF",r10
!   _temp_2874 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2874 then goto _Label_2873		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2873
!	jmp	_Label_2872
_Label_2872:
! THEN...
	mov	2845,r13		! source line 2845
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2875 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2875  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2873:
! ASSIGNMENT STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
!   _temp_2878 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2877 = _temp_2878 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2876 = _temp_2877 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2876 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2880		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2880
!	jmp	_Label_2879
_Label_2879:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2881 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2881  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2867,r13		! source line 2867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2882 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2882  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2868,r13		! source line 2868
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2883 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2880:
! SEND STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0SE",r10
!   _temp_2884 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2878,r13		! source line 2878
	mov	"\0\0IF",r10
	mov	2878,r13		! source line 2878
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2888) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2887  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2887 == 707406378 then goto _Label_2886		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2886
!	jmp	_Label_2885
_Label_2885:
! THEN...
	mov	2879,r13		! source line 2879
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2889 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2889  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2879,r13		! source line 2879
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
!   _temp_2890 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2886:
! ASSIGNMENT STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2895 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2896 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2895  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2891:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2896 then goto _Label_2894		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2894
_Label_2892:
	mov	2886,r13		! source line 2886
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
	mov	2887,r13		! source line 2887
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0IF",r10
	mov	2890,r13		! source line 2890
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2900) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2899  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2899 then goto _Label_2898 else goto _Label_2897
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2897
	jmp	_Label_2898
_Label_2897:
! THEN...
	mov	2891,r13		! source line 2891
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2901 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0SE",r10
!   _temp_2902 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2898:
! SEND STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2893:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2891
! END FOR
_Label_2894:
! IF STATEMENT...
	mov	2900,r13		! source line 2900
	mov	"\0\0IF",r10
	mov	2900,r13		! source line 2900
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2906) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2905  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2905 == 707406378 then goto _Label_2904		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2904
!	jmp	_Label_2903
_Label_2903:
! THEN...
	mov	2901,r13		! source line 2901
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2907 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2907  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2901,r13		! source line 2901
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0SE",r10
!   _temp_2908 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2904:
! FOR STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2913 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2914 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2913  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2909:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2914 then goto _Label_2912		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2912
_Label_2910:
	mov	2907,r13		! source line 2907
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
	mov	2908,r13		! source line 2908
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0IF",r10
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2918) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2917  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2917 then goto _Label_2916 else goto _Label_2915
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2915
	jmp	_Label_2916
_Label_2915:
! THEN...
	mov	2912,r13		! source line 2912
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2919 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2919  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
!   _temp_2920 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2916:
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2911:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2909
! END FOR
_Label_2912:
! IF STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0IF",r10
	mov	2920,r13		! source line 2920
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2924) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2923  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2923 == 707406378 then goto _Label_2922		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2922
!	jmp	_Label_2921
_Label_2921:
! THEN...
	mov	2921,r13		! source line 2921
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2925 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2925  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0SE",r10
!   _temp_2926 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2922:
! ASSIGNMENT STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
	mov	2927,r13		! source line 2927
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2927
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2929
	.word	12
	.word	4
	.word	_Label_2930
	.word	-16
	.word	4
	.word	_Label_2931
	.word	-20
	.word	4
	.word	_Label_2932
	.word	-24
	.word	4
	.word	_Label_2933
	.word	-28
	.word	4
	.word	_Label_2934
	.word	-32
	.word	4
	.word	_Label_2935
	.word	-36
	.word	4
	.word	_Label_2936
	.word	-40
	.word	4
	.word	_Label_2937
	.word	-9
	.word	1
	.word	_Label_2938
	.word	-44
	.word	4
	.word	_Label_2939
	.word	-48
	.word	4
	.word	_Label_2940
	.word	-52
	.word	4
	.word	_Label_2941
	.word	-56
	.word	4
	.word	_Label_2942
	.word	-60
	.word	4
	.word	_Label_2943
	.word	-64
	.word	4
	.word	_Label_2944
	.word	-68
	.word	4
	.word	_Label_2945
	.word	-72
	.word	4
	.word	_Label_2946
	.word	-76
	.word	4
	.word	_Label_2947
	.word	-10
	.word	1
	.word	_Label_2948
	.word	-80
	.word	4
	.word	_Label_2949
	.word	-84
	.word	4
	.word	_Label_2950
	.word	-88
	.word	4
	.word	_Label_2951
	.word	-92
	.word	4
	.word	_Label_2952
	.word	-96
	.word	4
	.word	_Label_2953
	.word	-100
	.word	4
	.word	_Label_2954
	.word	-104
	.word	4
	.word	_Label_2955
	.word	-108
	.word	4
	.word	_Label_2956
	.word	-112
	.word	4
	.word	_Label_2957
	.word	-116
	.word	4
	.word	_Label_2958
	.word	-120
	.word	4
	.word	_Label_2959
	.word	-124
	.word	4
	.word	_Label_2960
	.word	-128
	.word	4
	.word	_Label_2961
	.word	-132
	.word	4
	.word	_Label_2962
	.word	-136
	.word	4
	.word	_Label_2963
	.word	-140
	.word	4
	.word	_Label_2964
	.word	-144
	.word	4
	.word	_Label_2965
	.word	-148
	.word	4
	.word	_Label_2966
	.word	-152
	.word	4
	.word	_Label_2967
	.word	-156
	.word	4
	.word	_Label_2968
	.word	-160
	.word	4
	.word	_Label_2969
	.word	-164
	.word	4
	.word	_Label_2970
	.word	-168
	.word	4
	.word	_Label_2971
	.word	-172
	.word	4
	.word	_Label_2972
	.word	-176
	.word	4
	.word	_Label_2973
	.word	-180
	.word	4
	.word	_Label_2974
	.word	-184
	.word	4
	.word	_Label_2975
	.word	-188
	.word	4
	.word	_Label_2976
	.word	-192
	.word	4
	.word	_Label_2977
	.word	-196
	.word	4
	.word	_Label_2978
	.word	-200
	.word	4
	.word	_Label_2979
	.word	-204
	.word	4
	.word	_Label_2980
	.word	-208
	.word	4
	.word	_Label_2981
	.word	-212
	.word	4
	.word	_Label_2982
	.word	-216
	.word	4
	.word	_Label_2983
	.word	-220
	.word	4
	.word	_Label_2984
	.word	-224
	.word	4
	.word	_Label_2985
	.word	-228
	.word	4
	.word	_Label_2986
	.word	-232
	.word	4
	.word	_Label_2987
	.word	-236
	.word	4
	.word	_Label_2988
	.word	-240
	.word	4
	.word	_Label_2989
	.word	-244
	.word	4
	.word	_Label_2990
	.word	-248
	.word	4
	.word	_Label_2991
	.word	-252
	.word	4
	.word	_Label_2992
	.word	-256
	.word	4
	.word	_Label_2993
	.word	-260
	.word	4
	.word	_Label_2994
	.word	-264
	.word	4
	.word	_Label_2995
	.word	-268
	.word	4
	.word	0
_Label_2927:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2928:
	.ascii	"Pself\0"
	.align
_Label_2929:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2937:
	.byte	'C'
	.ascii	"_temp_2917\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2947:
	.byte	'C'
	.ascii	"_temp_2899\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2985:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2987:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2988:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2989:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2990:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2991:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2992:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2993:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2994:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2995:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
