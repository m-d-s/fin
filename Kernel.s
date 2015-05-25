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
_StringConst_196:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_194:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_193:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_192:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_191:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_190:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_189:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_188:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_187:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_186:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_185:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_184:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_183:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_182:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_181:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_180:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_179:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_178:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_177:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_176:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_175:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_174:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_173:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_172:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_171:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_170:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_169:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_168:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_167:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_166:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_165:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_164:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_163:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_162:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_161:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_160:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_158:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_157:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_156:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_155:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_154:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_153:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_152:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_151:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_150:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_149:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_148:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_147:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_146:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_145:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_144:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_143:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_137:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_134:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_131:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_130:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_129:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_128:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_127:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_125:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_124:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_123:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_122:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_121:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_120:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_119:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_118:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_117:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_114:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_113:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_112:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_111:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_110:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_109:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_108:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_107:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_106:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_105:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_104:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_103:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_102:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_101:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_100:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_99:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_98:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_97:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_96:
	.word	2			! length
	.ascii	"T9"
	.align
_StringConst_95:
	.word	2			! length
	.ascii	"T8"
	.align
_StringConst_94:
	.word	2			! length
	.ascii	"T7"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	"T6"
	.align
_StringConst_92:
	.word	2			! length
	.ascii	"T5"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	"T4"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"T3"
	.align
_StringConst_89:
	.word	2			! length
	.ascii	"T2"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	"T1"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"T0"
	.align
_StringConst_86:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_85:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_84:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_83:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_82:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_81:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_80:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_79:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_77:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_76:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_75:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_74:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_73:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_72:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_71:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_70:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_69:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_68:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_67:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_66:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_65:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_64:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_63:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_62:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_61:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_60:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_59:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_58:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_56:
	.word	20			! length
	.ascii	"\nNO WAITING THREADS\n"
	.align
_StringConst_55:
	.word	54			! length
	.ascii	"HoareTest called by a thread other than current thread"
	.align
_StringConst_54:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_52:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_51:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_47:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_45:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_44:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_43:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_42:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_41:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_40:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_39:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_38:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_37:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_36:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_35:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_34:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	4			! length
	.ascii	"here"
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
	be	_Label_205
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
_Label_205:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_206
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_206
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_206
_Label_206:
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
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_207 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_207  sizeInBytes=4
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
_Label_3003:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3003
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_211 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_212 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_211  sizeInBytes=4
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
!   _temp_213 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_214 = _temp_213 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_214 = 3  (sizeInBytes=4)
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
_Label_3004:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3004
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_216 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_217 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
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
!   _temp_218 = _function_204_IdleFunction
	set	_function_204_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_219 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
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
	.word	_Label_220
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_221
	.word	-12
	.word	4
	.word	_Label_222
	.word	-16
	.word	4
	.word	_Label_223
	.word	-20
	.word	4
	.word	_Label_224
	.word	-24
	.word	4
	.word	_Label_225
	.word	-28
	.word	4
	.word	_Label_226
	.word	-32
	.word	4
	.word	_Label_227
	.word	-36
	.word	4
	.word	_Label_228
	.word	-40
	.word	4
	.word	_Label_229
	.word	-44
	.word	4
	.word	_Label_230
	.word	-48
	.word	4
	.word	_Label_231
	.word	-52
	.word	4
	.word	_Label_232
	.word	-56
	.word	4
	.word	_Label_233
	.word	-60
	.word	4
	.word	0
_Label_220:
	.ascii	"InitializeScheduler\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_204_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_234:
!	jmp	_Label_235
_Label_235:
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
!   _temp_239 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_237 else goto _Label_238
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_238
	jmp	_Label_237
_Label_237:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_240
_Label_238:
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
_Label_240:
! END WHILE...
	jmp	_Label_234
_Label_236:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_IdleFunction:
	.word	_sourceFileName
	.word	_Label_241
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_242
	.word	8
	.word	4
	.word	_Label_243
	.word	-12
	.word	4
	.word	_Label_244
	.word	-16
	.word	4
	.word	0
_Label_241:
	.ascii	"IdleFunction\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_244:
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
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
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
!   _temp_247 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_247 ) then goto _Label_246		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_246
!	jmp	_Label_245
_Label_245:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_249 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_249 [0 ] into _temp_250
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
!   _temp_248 = _temp_250		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_246:
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
!   _temp_251 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_251 = 3  (sizeInBytes=4)
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
_Label_252:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_255  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_255 then goto _Label_254 else goto _Label_253
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_253
	jmp	_Label_254
_Label_253:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_257 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_258 = &_P_Kernel_threadManager
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
	jmp	_Label_252
_Label_254:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_261 ) then goto _Label_260		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_260
!	jmp	_Label_259
_Label_259:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_263 [0 ] into _temp_264
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
!   _temp_262 = _temp_264		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
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
!   _temp_266 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_265 = *_temp_266  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_265) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = _temp_265 + 32
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
_Label_260:
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
	.word	_Label_268
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_269
	.word	8
	.word	4
	.word	_Label_270
	.word	-16
	.word	4
	.word	_Label_271
	.word	-20
	.word	4
	.word	_Label_272
	.word	-24
	.word	4
	.word	_Label_273
	.word	-28
	.word	4
	.word	_Label_274
	.word	-32
	.word	4
	.word	_Label_275
	.word	-36
	.word	4
	.word	_Label_276
	.word	-40
	.word	4
	.word	_Label_277
	.word	-44
	.word	4
	.word	_Label_278
	.word	-48
	.word	4
	.word	_Label_279
	.word	-52
	.word	4
	.word	_Label_280
	.word	-9
	.word	1
	.word	_Label_281
	.word	-56
	.word	4
	.word	_Label_282
	.word	-60
	.word	4
	.word	_Label_283
	.word	-64
	.word	4
	.word	_Label_284
	.word	-68
	.word	4
	.word	_Label_285
	.word	-72
	.word	4
	.word	_Label_286
	.word	-76
	.word	4
	.word	_Label_287
	.word	-80
	.word	4
	.word	0
_Label_268:
	.ascii	"Run\0"
	.align
_Label_269:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_280:
	.byte	'C'
	.ascii	"_temp_255\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_286:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_287:
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
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
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
!   _temp_288 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_289 = _function_203_ThreadPrintShort
	set	_function_203_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_290 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_289  sizeInBytes=4
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
	.word	_Label_291
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_292
	.word	-12
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	_Label_294
	.word	-20
	.word	4
	.word	_Label_295
	.word	-24
	.word	4
	.word	0
_Label_291:
	.ascii	"PrintReadyList\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_295:
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
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
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
!   _temp_296 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_296  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_297 = *_temp_298  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
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
!   _temp_299 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
	.word	_Label_300
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_301
	.word	-12
	.word	4
	.word	_Label_302
	.word	-16
	.word	4
	.word	_Label_303
	.word	-20
	.word	4
	.word	_Label_304
	.word	-24
	.word	4
	.word	_Label_305
	.word	-28
	.word	4
	.word	_Label_306
	.word	-32
	.word	4
	.word	0
_Label_300:
	.ascii	"ThreadStartMain\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_305:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_306:
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
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
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
!   _temp_307 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_308 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
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
	.word	_Label_309
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_310
	.word	-12
	.word	4
	.word	_Label_311
	.word	-16
	.word	4
	.word	_Label_312
	.word	-20
	.word	4
	.word	0
_Label_309:
	.ascii	"ThreadFinish\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_312:
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
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
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
!   _temp_313 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_315		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_315
!	jmp	_Label_314
_Label_314:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_316 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
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
!   _temp_318 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_317 = *_temp_318  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_315:
! CALL STATEMENT...
!   _temp_319 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
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
!   _temp_320 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_321 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
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
	.word	_Label_322
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_323
	.word	8
	.word	4
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	_Label_326
	.word	-20
	.word	4
	.word	_Label_327
	.word	-24
	.word	4
	.word	_Label_328
	.word	-28
	.word	4
	.word	_Label_329
	.word	-32
	.word	4
	.word	_Label_330
	.word	-36
	.word	4
	.word	_Label_331
	.word	-40
	.word	4
	.word	0
_Label_322:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_331:
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
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
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
!   if newStatus != 1 then goto _Label_333		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_333
!	jmp	_Label_332
_Label_332:
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
	jmp	_Label_334
_Label_333:
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
_Label_334:
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
	.word	_Label_335
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_336
	.word	8
	.word	4
	.word	_Label_337
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_336:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_337:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_203_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
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
!   if t == 0 then goto _Label_341		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_341
!   _temp_340 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_342
_Label_341:
!   _temp_340 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_342:
!   if _temp_340 then goto _Label_339 else goto _Label_338
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_338
	jmp	_Label_339
_Label_338:
! THEN...
	mov	832,r13		! source line 832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_343 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
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
_Label_339:
! CALL STATEMENT...
!   _temp_344 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
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
!   _temp_346 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_345 = *_temp_346  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_347 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
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
!   _temp_356 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_355 = *_temp_356  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_350
	cmp	r1,2
	be	_Label_351
	cmp	r1,3
	be	_Label_352
	cmp	r1,4
	be	_Label_353
	cmp	r1,5
	be	_Label_354
	jmp	_Label_348
! CASE 1...
_Label_350:
! CALL STATEMENT...
!   _temp_357 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 2...
_Label_351:
! CALL STATEMENT...
!   _temp_358 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 3...
_Label_352:
! CALL STATEMENT...
!   _temp_359 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 4...
_Label_353:
! CALL STATEMENT...
!   _temp_360 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 5...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0BR",r10
	jmp	_Label_349
! DEFAULT CASE...
_Label_348:
! CALL STATEMENT...
!   _temp_362 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
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
_Label_349:
! CALL STATEMENT...
!   _temp_363 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_365 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
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
_RoutineDescriptor__function_203_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_366
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_367
	.word	8
	.word	4
	.word	_Label_368
	.word	-16
	.word	4
	.word	_Label_369
	.word	-20
	.word	4
	.word	_Label_370
	.word	-24
	.word	4
	.word	_Label_371
	.word	-28
	.word	4
	.word	_Label_372
	.word	-32
	.word	4
	.word	_Label_373
	.word	-36
	.word	4
	.word	_Label_374
	.word	-40
	.word	4
	.word	_Label_375
	.word	-44
	.word	4
	.word	_Label_376
	.word	-48
	.word	4
	.word	_Label_377
	.word	-52
	.word	4
	.word	_Label_378
	.word	-56
	.word	4
	.word	_Label_379
	.word	-60
	.word	4
	.word	_Label_380
	.word	-64
	.word	4
	.word	_Label_381
	.word	-68
	.word	4
	.word	_Label_382
	.word	-72
	.word	4
	.word	_Label_383
	.word	-76
	.word	4
	.word	_Label_384
	.word	-9
	.word	1
	.word	_Label_385
	.word	-80
	.word	4
	.word	0
_Label_366:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_367:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_384:
	.byte	'C'
	.ascii	"_temp_340\0"
	.align
_Label_385:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_202_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1191,r13		! source line 1191
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_386 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
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
_RoutineDescriptor__function_202_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_387
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_388
	.word	8
	.word	4
	.word	_Label_389
	.word	-12
	.word	4
	.word	0
_Label_387:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_388:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_386\0"
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
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	1201,r13		! source line 1201
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_390 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
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
	.word	_Label_391
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_392
	.word	8
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	0
_Label_391:
	.ascii	"ProcessFinish\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_390\0"
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
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	1215,r13		! source line 1215
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0AS",r10
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_394 = &_P_Kernel_threadManager
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
!   _temp_395 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_395  sizeInBytes=4
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
!   _temp_396 = _function_201_StartUserProcess
	set	_function_201_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_396  sizeInBytes=4
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
	.word	_Label_397
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_398
	.word	-12
	.word	4
	.word	_Label_399
	.word	-16
	.word	4
	.word	_Label_400
	.word	-20
	.word	4
	.word	_Label_401
	.word	-24
	.word	4
	.word	0
_Label_397:
	.ascii	"InitFirstProcess\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_401:
	.byte	'P'
	.ascii	"obtainedThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_201_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_StartUserProcess,r1
	push	r1
	mov	28,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	1225,r13		! source line 1225
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_402 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   Send message GetANewProcess
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=obtainedPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! SEND STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Init
	load	[r14+-104],r1
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
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = obtainedPCB + 24
	load	[r14+-104],r1
	add	r1,24,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_403 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-80],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_404 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_404 = obtainedPCB  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0AS",r10
	mov	1239,r13		! source line 1239
	mov	"\0\0SE",r10
!   _temp_405 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-72]
!   _temp_406 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_405  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_407
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_407
	jmp	_Label_408
_Label_407:
! THEN...
	mov	1242,r13		! source line 1242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_409 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-64],r1
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
_Label_408:
! ASSIGNMENT STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0AS",r10
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_411 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_410 = _temp_411		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-60]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_410  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_413		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_413
!	jmp	_Label_412
_Label_412:
! THEN...
	mov	1248,r13		! source line 1248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_414 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-52],r1
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
_Label_413:
! SEND STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0SE",r10
!   _temp_415 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-48],r1
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
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_417 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   _temp_418 = _temp_417 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_416 = *_temp_418  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initStackTop = _temp_416 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_419 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_419 [999 ] into _temp_420
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_420		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-100]
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
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	1257,r13		! source line 1257
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_421 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Send message SetToThisPageTable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   _temp_422 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_423 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_423 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (initSystemStackTop) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_424 = *initSystemStackTop  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_424  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_425
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_426
	.word	8
	.word	4
	.word	_Label_427
	.word	-12
	.word	4
	.word	_Label_428
	.word	-16
	.word	4
	.word	_Label_429
	.word	-20
	.word	4
	.word	_Label_430
	.word	-24
	.word	4
	.word	_Label_431
	.word	-28
	.word	4
	.word	_Label_432
	.word	-32
	.word	4
	.word	_Label_433
	.word	-36
	.word	4
	.word	_Label_434
	.word	-40
	.word	4
	.word	_Label_435
	.word	-44
	.word	4
	.word	_Label_436
	.word	-48
	.word	4
	.word	_Label_437
	.word	-52
	.word	4
	.word	_Label_438
	.word	-56
	.word	4
	.word	_Label_439
	.word	-60
	.word	4
	.word	_Label_440
	.word	-64
	.word	4
	.word	_Label_441
	.word	-68
	.word	4
	.word	_Label_442
	.word	-72
	.word	4
	.word	_Label_443
	.word	-76
	.word	4
	.word	_Label_444
	.word	-80
	.word	4
	.word	_Label_445
	.word	-84
	.word	4
	.word	_Label_446
	.word	-88
	.word	4
	.word	_Label_447
	.word	-92
	.word	4
	.word	_Label_448
	.word	-96
	.word	4
	.word	_Label_449
	.word	-100
	.word	4
	.word	_Label_450
	.word	-104
	.word	4
	.word	_Label_451
	.word	-108
	.word	4
	.word	0
_Label_425:
	.ascii	"StartUserProcess\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_446:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_448:
	.byte	'I'
	.ascii	"initStackTop\0"
	.align
_Label_449:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_450:
	.byte	'P'
	.ascii	"obtainedPCB\0"
	.align
_Label_451:
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
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	1762,r13		! source line 1762
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1774,r13		! source line 1774
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
	mov	1775,r13		! source line 1775
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
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
	.word	_Label_452
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_452:
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
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0IF",r10
!   _temp_456 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_457 = _temp_456 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_455 = *_temp_457  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_455 == 0 then goto _Label_454		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_454
!	jmp	_Label_453
_Label_453:
! THEN...
	mov	1792,r13		! source line 1792
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0SE",r10
!   _temp_459 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_460 = _temp_459 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_458 = *_temp_460  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_458) then goto _runtimeErrorNullPointer
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
_Label_454:
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
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
	.word	_Label_461
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	0
_Label_461:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_455\0"
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
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1808,r13		! source line 1808
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
	.word	_Label_468
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_468:
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
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	1813,r13		! source line 1813
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_469 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_469  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1820,r13		! source line 1820
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
	.word	_Label_470
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_471
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_469\0"
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
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	1825,r13		! source line 1825
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_472 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
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
	.word	_Label_473
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_473:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_472\0"
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
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1843,r13		! source line 1843
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_475 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
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
	.word	_Label_476
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_477
	.word	-12
	.word	4
	.word	0
_Label_476:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
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
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	1849,r13		! source line 1849
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_478 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1856,r13		! source line 1856
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
	.word	_Label_479
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_480
	.word	-12
	.word	4
	.word	0
_Label_479:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_478\0"
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
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	1861,r13		! source line 1861
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_481 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1868,r13		! source line 1868
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1868,r13		! source line 1868
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
	.word	_Label_482
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_483
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_481\0"
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
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	1873,r13		! source line 1873
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_484 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
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
	.word	_Label_485
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
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
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	1885,r13		! source line 1885
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1892,r13		! source line 1892
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
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_200_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	1897,r13		! source line 1897
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_490 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_491 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_494 = *_temp_495  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_494 == 0 then goto _Label_493		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_493
!	jmp	_Label_492
_Label_492:
! THEN...
	mov	1908,r13		! source line 1908
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_497 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_496 = *_temp_497  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_496) then goto _runtimeErrorNullPointer
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
	jmp	_Label_498
_Label_493:
! ELSE...
	mov	1910,r13		! source line 1910
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_499 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_498:
! SEND STATEMENT...
	mov	1912,r13		! source line 1912
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
	mov	1918,r13		! source line 1918
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_500
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_501
	.word	8
	.word	4
	.word	_Label_502
	.word	-12
	.word	4
	.word	_Label_503
	.word	-16
	.word	4
	.word	_Label_504
	.word	-20
	.word	4
	.word	_Label_505
	.word	-24
	.word	4
	.word	_Label_506
	.word	-28
	.word	4
	.word	_Label_507
	.word	-32
	.word	4
	.word	_Label_508
	.word	-36
	.word	4
	.word	0
_Label_500:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_501:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_490\0"
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
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	1923,r13		! source line 1923
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1944,r13		! source line 1944
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3028
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_509
_Label_3028:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_509
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_509
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_523,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_523:
	jmp	_Label_515	! 1:	
	jmp	_Label_522	! 2:	
	jmp	_Label_512	! 3:	
	jmp	_Label_511	! 4:	
	jmp	_Label_514	! 5:	
	jmp	_Label_513	! 6:	
	jmp	_Label_516	! 7:	
	jmp	_Label_517	! 8:	
	jmp	_Label_518	! 9:	
	jmp	_Label_519	! 10:	
	jmp	_Label_520	! 11:	
	jmp	_Label_521	! 12:	
! CASE 4...
_Label_511:
! RETURN STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0RE",r10
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_512:
! CALL STATEMENT...
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_513:
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_514:
! RETURN STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_515:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_516:
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_517:
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1960,r13		! source line 1960
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_518:
! RETURN STATEMENT...
	mov	1962,r13		! source line 1962
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
	mov	1962,r13		! source line 1962
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_519:
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
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
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_530  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_530  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_520:
! RETURN STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_531  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_521:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_522:
! CALL STATEMENT...
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_509:
! CALL STATEMENT...
!   _temp_532 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_533 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1977,r13		! source line 1977
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_510:
! RETURN STATEMENT...
	mov	1979,r13		! source line 1979
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
	.word	_Label_534
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_535
	.word	8
	.word	4
	.word	_Label_536
	.word	12
	.word	4
	.word	_Label_537
	.word	16
	.word	4
	.word	_Label_538
	.word	20
	.word	4
	.word	_Label_539
	.word	24
	.word	4
	.word	_Label_540
	.word	-12
	.word	4
	.word	_Label_541
	.word	-16
	.word	4
	.word	_Label_542
	.word	-20
	.word	4
	.word	_Label_543
	.word	-24
	.word	4
	.word	_Label_544
	.word	-28
	.word	4
	.word	_Label_545
	.word	-32
	.word	4
	.word	_Label_546
	.word	-36
	.word	4
	.word	_Label_547
	.word	-40
	.word	4
	.word	_Label_548
	.word	-44
	.word	4
	.word	_Label_549
	.word	-48
	.word	4
	.word	0
_Label_534:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_536:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_538:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_524\0"
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
	mov	1984,r13		! source line 1984
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_550
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_551
	.word	8
	.word	4
	.word	0
_Label_550:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_551:
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
	mov	2,r1
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	1990,r13		! source line 1990
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_552 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1991,r13		! source line 1991
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_553
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_554
	.word	-12
	.word	4
	.word	0
_Label_553:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_552\0"
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
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_555
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_555:
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
	mov	2002,r13		! source line 2002
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
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
	.word	_Label_556
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_556:
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
	mov	2009,r13		! source line 2009
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_557
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_558
	.word	8
	.word	4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_558:
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
	mov	2016,r13		! source line 2016
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
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
	.word	_Label_559
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_560
	.word	8
	.word	4
	.word	0
_Label_559:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_560:
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
	mov	2023,r13		! source line 2023
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
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
	.word	_Label_561
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_562
	.word	8
	.word	4
	.word	0
_Label_561:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_562:
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
	mov	2030,r13		! source line 2030
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
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
	.word	_Label_563
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_564
	.word	8
	.word	4
	.word	0
_Label_563:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_564:
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
	mov	2037,r13		! source line 2037
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_565
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_566
	.word	8
	.word	4
	.word	_Label_567
	.word	12
	.word	4
	.word	_Label_568
	.word	16
	.word	4
	.word	0
_Label_565:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_567:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_568:
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
	mov	2044,r13		! source line 2044
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_569
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_570
	.word	8
	.word	4
	.word	_Label_571
	.word	12
	.word	4
	.word	_Label_572
	.word	16
	.word	4
	.word	0
_Label_569:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_571:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_572:
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
	mov	2051,r13		! source line 2051
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_573
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_574
	.word	8
	.word	4
	.word	_Label_575
	.word	12
	.word	4
	.word	0
_Label_573:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_574:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_575:
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
	mov	2058,r13		! source line 2058
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_576
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_577
	.word	8
	.word	4
	.word	0
_Label_576:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_577:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_199_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	2650,r13		! source line 2650
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_578 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_578  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   _temp_579 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_579) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_581) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_580 = *_temp_581  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_579 = _temp_580  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
!   _temp_582 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_582) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_583 = *_temp_584  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_582 = _temp_583  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0AS",r10
!   _temp_585 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_585) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_587) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_586 = *_temp_587  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_585 = _temp_586  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_588
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_589
	.word	8
	.word	4
	.word	_Label_590
	.word	12
	.word	4
	.word	_Label_591
	.word	-16
	.word	4
	.word	_Label_592
	.word	-9
	.word	1
	.word	_Label_593
	.word	-20
	.word	4
	.word	_Label_594
	.word	-24
	.word	4
	.word	_Label_595
	.word	-10
	.word	1
	.word	_Label_596
	.word	-28
	.word	4
	.word	_Label_597
	.word	-32
	.word	4
	.word	_Label_598
	.word	-11
	.word	1
	.word	_Label_599
	.word	-36
	.word	4
	.word	_Label_600
	.word	-12
	.word	1
	.word	_Label_601
	.word	-40
	.word	4
	.word	_Label_602
	.word	-44
	.word	4
	.word	0
_Label_588:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_589:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_590:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_592:
	.byte	'C'
	.ascii	"_temp_586\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_595:
	.byte	'C'
	.ascii	"_temp_583\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_598:
	.byte	'C'
	.ascii	"_temp_580\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_600:
	.byte	'C'
	.ascii	"_temp_578\0"
	.align
_Label_601:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_602:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_198_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_printFCB,r1
	push	r1
	mov	3,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	2660,r13		! source line 2660
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_603 = *_temp_604  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2661,r13		! source line 2661
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2662,r13		! source line 2662
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_printFCB:
	.word	_sourceFileName
	.word	_Label_605
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_606
	.word	8
	.word	4
	.word	_Label_607
	.word	-12
	.word	4
	.word	_Label_608
	.word	-16
	.word	4
	.word	0
_Label_605:
	.ascii	"printFCB\0"
	.align
_Label_606:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_197_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_printOpen,r1
	push	r1
	mov	4,r1
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	2665,r13		! source line 2665
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_609 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2666,r13		! source line 2666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_610 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_610  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2667,r13		! source line 2667
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_611 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2669,r13		! source line 2669
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
	mov	2669,r13		! source line 2669
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_printOpen:
	.word	_sourceFileName
	.word	_Label_612
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_613
	.word	8
	.word	4
	.word	_Label_614
	.word	-12
	.word	4
	.word	_Label_615
	.word	-16
	.word	4
	.word	_Label_616
	.word	-20
	.word	4
	.word	0
_Label_612:
	.ascii	"printOpen\0"
	.align
_Label_613:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_617
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_617:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_618
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_618:
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
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_620		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_620
!	jmp	_Label_619
_Label_619:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_621 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_621  sizeInBytes=4
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
_Label_620:
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
	.word	_Label_623
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_625
	.word	12
	.word	4
	.word	_Label_626
	.word	-12
	.word	4
	.word	_Label_627
	.word	-16
	.word	4
	.word	0
_Label_623:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_624:
	.ascii	"Pself\0"
	.align
_Label_625:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_621\0"
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
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
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
!   if count != 2147483647 then goto _Label_629		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_629
!	jmp	_Label_628
_Label_628:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_630 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
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
_Label_629:
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
!   if count > 0 then goto _Label_632		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_632
!	jmp	_Label_631
_Label_631:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_633 = &waitingThreads
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
!   _temp_634 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_634 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_635 = &_P_Kernel_readyList
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
_Label_632:
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
	.word	_Label_636
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_637
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_638
	.word	-12
	.word	4
	.word	_Label_639
	.word	-16
	.word	4
	.word	_Label_640
	.word	-20
	.word	4
	.word	_Label_641
	.word	-24
	.word	4
	.word	_Label_642
	.word	-28
	.word	4
	.word	_Label_643
	.word	-32
	.word	4
	.word	0
_Label_636:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_637:
	.ascii	"Pself\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_642:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_643:
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
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
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
!   if count != -2147483648 then goto _Label_645		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_645
!	jmp	_Label_644
_Label_644:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_646 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_646  sizeInBytes=4
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
_Label_645:
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
!   if count >= 0 then goto _Label_648		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_648
!	jmp	_Label_647
_Label_647:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_649 = &waitingThreads
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
_Label_648:
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
	.word	_Label_650
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_652
	.word	-12
	.word	4
	.word	_Label_653
	.word	-16
	.word	4
	.word	_Label_654
	.word	-20
	.word	4
	.word	0
_Label_650:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_651:
	.ascii	"Pself\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_654:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_655
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_655:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_656
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_656:
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
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
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
	.word	_Label_658
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_660
	.word	-12
	.word	4
	.word	0
_Label_658:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_659:
	.ascii	"Pself\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_657\0"
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
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_662		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_662
!	jmp	_Label_661
_Label_661:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_663 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
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
_Label_662:
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
!   if heldBy == 0 then goto _Label_667		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_667
!   _temp_666 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_668
_Label_667:
!   _temp_666 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_668:
!   if _temp_666 then goto _Label_665 else goto _Label_664
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_664
	jmp	_Label_665
_Label_664:
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
	jmp	_Label_669
_Label_665:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_670 = &waitingThreads
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
_Label_669:
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
	.word	_Label_671
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_673
	.word	-16
	.word	4
	.word	_Label_674
	.word	-9
	.word	1
	.word	_Label_675
	.word	-20
	.word	4
	.word	_Label_676
	.word	-24
	.word	4
	.word	0
_Label_671:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_672:
	.ascii	"Pself\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_674:
	.byte	'C'
	.ascii	"_temp_666\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_676:
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
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_678		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_678
!	jmp	_Label_677
_Label_677:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_679 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
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
_Label_678:
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
!   _temp_680 = &waitingThreads
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
!   if t == 0 then goto _Label_682		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_682
!	jmp	_Label_681
_Label_681:
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
!   _temp_683 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_683 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_684 = &_P_Kernel_readyList
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
	jmp	_Label_685
_Label_682:
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
_Label_685:
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
	.word	_Label_686
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_687
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_688
	.word	-12
	.word	4
	.word	_Label_689
	.word	-16
	.word	4
	.word	_Label_690
	.word	-20
	.word	4
	.word	_Label_691
	.word	-24
	.word	4
	.word	_Label_692
	.word	-28
	.word	4
	.word	_Label_693
	.word	-32
	.word	4
	.word	0
_Label_686:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_687:
	.ascii	"Pself\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_692:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_693:
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
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_696		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_696
!	jmp	_Label_695
_Label_695:
!   _temp_694 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_697
_Label_696:
!   _temp_694 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_697:
!   ReturnResult: _temp_694  (sizeInBytes=1)
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
	.word	_Label_698
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_700
	.word	-9
	.word	1
	.word	0
_Label_698:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_699:
	.ascii	"Pself\0"
	.align
_Label_700:
	.byte	'C'
	.ascii	"_temp_694\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_701
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	printHeldBy
	.word	0
! 
! Class descriptor:
! 
_Label_701:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_702
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_702:
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
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
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
	.word	_Label_704
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_705
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_706
	.word	-12
	.word	4
	.word	0
_Label_704:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_705:
	.ascii	"Pself\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_703\0"
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
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
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
!   if heldBy == 0 then goto _Label_710		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_710
!   _temp_709 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_711
_Label_710:
!   _temp_709 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_711:
!   if _temp_709 then goto _Label_708 else goto _Label_707
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_707
	jmp	_Label_708
_Label_707:
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
	jmp	_Label_712
_Label_708:
! ELSE...
	mov	485,r13		! source line 485
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_714		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_714
!	jmp	_Label_713
_Label_713:
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
_Label_714:
! SEND STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   _temp_715 = &waitingThreads
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
_Label_712:
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
	.word	_Label_716
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_717
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_718
	.word	12
	.word	4
	.word	_Label_719
	.word	-16
	.word	4
	.word	_Label_720
	.word	-9
	.word	1
	.word	_Label_721
	.word	-20
	.word	4
	.word	0
_Label_716:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_717:
	.ascii	"Pself\0"
	.align
_Label_718:
	.byte	'P'
	.ascii	"transfer\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_720:
	.byte	'C'
	.ascii	"_temp_709\0"
	.align
_Label_721:
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
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	496,r13		! source line 496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_723		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_723
!	jmp	_Label_722
_Label_722:
! THEN...
	mov	501,r13		! source line 501
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_724 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
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
_Label_723:
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
!   _temp_725 = &waitingThreads
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
!   if t == 0 then goto _Label_727		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_727
!	jmp	_Label_726
_Label_726:
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
!   _temp_728 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_728 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0SE",r10
!   _temp_729 = &_P_Kernel_readyList
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
	jmp	_Label_730
_Label_727:
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
_Label_730:
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
	.word	_Label_731
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_732
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_733
	.word	-12
	.word	4
	.word	_Label_734
	.word	-16
	.word	4
	.word	_Label_735
	.word	-20
	.word	4
	.word	_Label_736
	.word	-24
	.word	4
	.word	_Label_737
	.word	-28
	.word	4
	.word	_Label_738
	.word	-32
	.word	4
	.word	0
_Label_731:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_732:
	.ascii	"Pself\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_737:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_738:
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
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_741		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_741
!	jmp	_Label_740
_Label_740:
!   _temp_739 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_742
_Label_741:
!   _temp_739 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_742:
!   ReturnResult: _temp_739  (sizeInBytes=1)
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
	.word	_Label_743
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_745
	.word	-9
	.word	1
	.word	0
_Label_743:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_744:
	.ascii	"Pself\0"
	.align
_Label_745:
	.byte	'C'
	.ascii	"_temp_739\0"
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
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	521,r13		! source line 521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (heldBy) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_747 = heldBy + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_746 = *_temp_747  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
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
	.word	_Label_748
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_749
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_750
	.word	-12
	.word	4
	.word	_Label_751
	.word	-16
	.word	4
	.word	0
_Label_748:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"printHeldBy\0"
	.align
_Label_749:
	.ascii	"Pself\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_752
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_752:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_753
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_753:
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
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
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
	.word	_Label_755
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_756
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_757
	.word	-12
	.word	4
	.word	0
_Label_755:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_756:
	.ascii	"Pself\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_754\0"
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
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
!   Retrieve Result: targetName=_temp_760  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_760 then goto _Label_759 else goto _Label_758
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_758
	jmp	_Label_759
_Label_758:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_761 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
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
_Label_759:
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
!   _temp_762 = &waitingThreads
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
	.word	_Label_763
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_765
	.word	12
	.word	4
	.word	_Label_766
	.word	-16
	.word	4
	.word	_Label_767
	.word	-20
	.word	4
	.word	_Label_768
	.word	-9
	.word	1
	.word	_Label_769
	.word	-24
	.word	4
	.word	0
_Label_763:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_764:
	.ascii	"Pself\0"
	.align
_Label_765:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_768:
	.byte	'C'
	.ascii	"_temp_760\0"
	.align
_Label_769:
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
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
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
!   Retrieve Result: targetName=_temp_772  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_772 then goto _Label_771 else goto _Label_770
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_770
	jmp	_Label_771
_Label_770:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_773 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
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
_Label_771:
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
!   _temp_774 = &waitingThreads
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
!   if t == 0 then goto _Label_776		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_776
!	jmp	_Label_775
_Label_775:
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
!   _temp_777 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_777 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_778 = &_P_Kernel_readyList
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
_Label_776:
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
	.word	_Label_779
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_781
	.word	12
	.word	4
	.word	_Label_782
	.word	-16
	.word	4
	.word	_Label_783
	.word	-20
	.word	4
	.word	_Label_784
	.word	-24
	.word	4
	.word	_Label_785
	.word	-28
	.word	4
	.word	_Label_786
	.word	-9
	.word	1
	.word	_Label_787
	.word	-32
	.word	4
	.word	_Label_788
	.word	-36
	.word	4
	.word	0
_Label_779:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_780:
	.ascii	"Pself\0"
	.align
_Label_781:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_786:
	.byte	'C'
	.ascii	"_temp_772\0"
	.align
_Label_787:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_788:
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
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
!   Retrieve Result: targetName=_temp_791  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_791 then goto _Label_790 else goto _Label_789
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_789
	jmp	_Label_790
_Label_789:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_792 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
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
_Label_790:
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
_Label_793:
!	jmp	_Label_794
_Label_794:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_796 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_797
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_797
	jmp	_Label_798
_Label_797:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_795
! END IF...
_Label_798:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_799 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_800 = &_P_Kernel_readyList
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
	jmp	_Label_793
_Label_795:
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
	.word	_Label_801
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_803
	.word	12
	.word	4
	.word	_Label_804
	.word	-16
	.word	4
	.word	_Label_805
	.word	-20
	.word	4
	.word	_Label_806
	.word	-24
	.word	4
	.word	_Label_807
	.word	-28
	.word	4
	.word	_Label_808
	.word	-9
	.word	1
	.word	_Label_809
	.word	-32
	.word	4
	.word	_Label_810
	.word	-36
	.word	4
	.word	0
_Label_801:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_802:
	.ascii	"Pself\0"
	.align
_Label_803:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_808:
	.byte	'C'
	.ascii	"_temp_791\0"
	.align
_Label_809:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_810:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_811
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	HoareTest
	.word	0
! 
! Class descriptor:
! 
_Label_811:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_812
	.word	_sourceFileName
	.word	181		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_812:
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
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
	.word	_Label_814
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_815
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_816
	.word	-12
	.word	4
	.word	0
_Label_814:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_815:
	.ascii	"Pself\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_813\0"
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
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
!   Retrieve Result: targetName=_temp_819  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_819 then goto _Label_818 else goto _Label_817
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_817
	jmp	_Label_818
_Label_817:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_820 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_820  sizeInBytes=4
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
_Label_818:
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
!   _temp_821 = &waitingThreads
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
	.word	_Label_822
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_823
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_824
	.word	12
	.word	4
	.word	_Label_825
	.word	-16
	.word	4
	.word	_Label_826
	.word	-20
	.word	4
	.word	_Label_827
	.word	-9
	.word	1
	.word	_Label_828
	.word	-24
	.word	4
	.word	0
_Label_822:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_823:
	.ascii	"Pself\0"
	.align
_Label_824:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_827:
	.byte	'C'
	.ascii	"_temp_819\0"
	.align
_Label_828:
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
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
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
!   Retrieve Result: targetName=_temp_831  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_831 then goto _Label_830 else goto _Label_829
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_829
	jmp	_Label_830
_Label_829:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_832 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
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
_Label_830:
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
!   _temp_833 = &waitingThreads
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
!   if t == 0 then goto _Label_835		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_835
!	jmp	_Label_834
_Label_834:
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
!   _temp_836 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_836 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0SE",r10
!   _temp_837 = &_P_Kernel_readyList
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
_Label_835:
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
	.word	_Label_838
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_840
	.word	12
	.word	4
	.word	_Label_841
	.word	-16
	.word	4
	.word	_Label_842
	.word	-20
	.word	4
	.word	_Label_843
	.word	-24
	.word	4
	.word	_Label_844
	.word	-28
	.word	4
	.word	_Label_845
	.word	-9
	.word	1
	.word	_Label_846
	.word	-32
	.word	4
	.word	_Label_847
	.word	-36
	.word	4
	.word	0
_Label_838:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_839:
	.ascii	"Pself\0"
	.align
_Label_840:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_845:
	.byte	'C'
	.ascii	"_temp_831\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_847:
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
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
!   if test == _P_Kernel_currentThread then goto _Label_849		(int)
	load	[r14+12],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_849
!	jmp	_Label_848
_Label_848:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_850 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
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
_Label_849:
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
!   _temp_854 = &waitingThreads
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
!   Retrieve Result: targetName=_temp_853  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_855 = _temp_853 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_855 then goto _Label_852 else goto _Label_851
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_851
	jmp	_Label_852
_Label_851:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_856 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_856  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_857
_Label_852:
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
	call	_function_203_ThreadPrintShort
! END IF...
_Label_857:
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
	.word	_Label_858
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_860
	.word	12
	.word	4
	.word	_Label_861
	.word	16
	.word	4
	.word	_Label_862
	.word	-16
	.word	4
	.word	_Label_863
	.word	-9
	.word	1
	.word	_Label_864
	.word	-20
	.word	4
	.word	_Label_865
	.word	-10
	.word	1
	.word	_Label_866
	.word	-24
	.word	4
	.word	_Label_867
	.word	-28
	.word	4
	.word	0
_Label_858:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"HoareTest\0"
	.align
_Label_859:
	.ascii	"Pself\0"
	.align
_Label_860:
	.byte	'P'
	.ascii	"test\0"
	.align
_Label_861:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_863:
	.byte	'C'
	.ascii	"_temp_855\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_865:
	.byte	'C'
	.ascii	"_temp_853\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_867:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_868
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
_Label_868:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_869
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_869:
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
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
!   _temp_870 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_870) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_870 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   _temp_871 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_871 [0 ] into _temp_872
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
!   Data Move: *_temp_872 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_873 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_873 [999 ] into _temp_874
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
!   Data Move: *_temp_874 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_875 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_875 [999 ] into _temp_876
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
!   stackTop = _temp_876		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_877 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_879 = &_temp_878
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_879 = _temp_879 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_881:
!   Data Move: *_temp_879 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_879 = _temp_879 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_880 = _temp_880 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_880) then goto _Label_881
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_881
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_882 = &_temp_878
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3054
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3054:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_877 = *_temp_882  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3055:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3055
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
!   _temp_883 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_885 = &_temp_884
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_885 = _temp_885 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_887:
!   Data Move: *_temp_885 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_885 = _temp_885 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_886 = _temp_886 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_886) then goto _Label_887
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_887
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_888 = &_temp_884
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3056
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3056:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_883 = *_temp_888  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3057:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3057
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
	.word	_Label_889
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_891
	.word	12
	.word	4
	.word	_Label_892
	.word	-12
	.word	4
	.word	_Label_893
	.word	-16
	.word	4
	.word	_Label_894
	.word	-20
	.word	4
	.word	_Label_895
	.word	-84
	.word	64
	.word	_Label_896
	.word	-88
	.word	4
	.word	_Label_897
	.word	-92
	.word	4
	.word	_Label_898
	.word	-96
	.word	4
	.word	_Label_899
	.word	-100
	.word	4
	.word	_Label_900
	.word	-156
	.word	56
	.word	_Label_901
	.word	-160
	.word	4
	.word	_Label_902
	.word	-164
	.word	4
	.word	_Label_903
	.word	-168
	.word	4
	.word	_Label_904
	.word	-172
	.word	4
	.word	_Label_905
	.word	-176
	.word	4
	.word	_Label_906
	.word	-180
	.word	4
	.word	_Label_907
	.word	-184
	.word	4
	.word	_Label_908
	.word	-188
	.word	4
	.word	0
_Label_889:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_890:
	.ascii	"Pself\0"
	.align
_Label_891:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_870\0"
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
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
!   _temp_909 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_909  (sizeInBytes=4)
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
!   _temp_911 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_910  sizeInBytes=4
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
	.word	_Label_912
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_914
	.word	12
	.word	4
	.word	_Label_915
	.word	16
	.word	4
	.word	_Label_916
	.word	-12
	.word	4
	.word	_Label_917
	.word	-16
	.word	4
	.word	_Label_918
	.word	-20
	.word	4
	.word	_Label_919
	.word	-24
	.word	4
	.word	_Label_920
	.word	-28
	.word	4
	.word	0
_Label_912:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_913:
	.ascii	"Pself\0"
	.align
_Label_914:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_915:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_919:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_920:
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
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	673,r13		! source line 673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_923 == _P_Kernel_currentThread then goto _Label_922		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_922
!	jmp	_Label_921
_Label_921:
! THEN...
	mov	690,r13		! source line 690
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_924 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
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
_Label_922:
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
!   _temp_925 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_927		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_927
!	jmp	_Label_926
_Label_926:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_929		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_929
!	jmp	_Label_928
_Label_928:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_930 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
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
_Label_929:
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
!   _temp_932 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_931  sizeInBytes=4
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
_Label_927:
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
	.word	_Label_933
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_935
	.word	-12
	.word	4
	.word	_Label_936
	.word	-16
	.word	4
	.word	_Label_937
	.word	-20
	.word	4
	.word	_Label_938
	.word	-24
	.word	4
	.word	_Label_939
	.word	-28
	.word	4
	.word	_Label_940
	.word	-32
	.word	4
	.word	_Label_941
	.word	-36
	.word	4
	.word	_Label_942
	.word	-40
	.word	4
	.word	_Label_943
	.word	-44
	.word	4
	.word	0
_Label_933:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_934:
	.ascii	"Pself\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_941:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_942:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_943:
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
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	713,r13		! source line 713
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_945		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_945
!	jmp	_Label_944
_Label_944:
! THEN...
	mov	726,r13		! source line 726
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_946 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_946  sizeInBytes=4
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
_Label_945:
! IF STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_949 == _P_Kernel_currentThread then goto _Label_948		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_948
!	jmp	_Label_947
_Label_947:
! THEN...
	mov	730,r13		! source line 730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_950 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_950  sizeInBytes=4
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
_Label_948:
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
!   _temp_951 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_952
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_952
	jmp	_Label_953
_Label_952:
! THEN...
	mov	738,r13		! source line 738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_954 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
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
_Label_953:
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
	.word	_Label_955
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_957
	.word	-12
	.word	4
	.word	_Label_958
	.word	-16
	.word	4
	.word	_Label_959
	.word	-20
	.word	4
	.word	_Label_960
	.word	-24
	.word	4
	.word	_Label_961
	.word	-28
	.word	4
	.word	_Label_962
	.word	-32
	.word	4
	.word	0
_Label_955:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_956:
	.ascii	"Pself\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_962:
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
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	745,r13		! source line 745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0IF",r10
!   _temp_966 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_966 [0 ] into _temp_967
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
!   Data Move: _temp_965 = *_temp_967  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_965 == 606348324 then goto _Label_964		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_964
!	jmp	_Label_963
_Label_963:
! THEN...
	mov	752,r13		! source line 752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_968 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
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
	jmp	_Label_969
_Label_964:
! ELSE...
	mov	753,r13		! source line 753
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0IF",r10
!   _temp_973 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_973 [999 ] into _temp_974
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
!   Data Move: _temp_972 = *_temp_974  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_972 == 606348324 then goto _Label_971		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_971
!	jmp	_Label_970
_Label_970:
! THEN...
	mov	754,r13		! source line 754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_975 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
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
_Label_971:
! END IF...
_Label_969:
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
	.word	_Label_976
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_977
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_978
	.word	-12
	.word	4
	.word	_Label_979
	.word	-16
	.word	4
	.word	_Label_980
	.word	-20
	.word	4
	.word	_Label_981
	.word	-24
	.word	4
	.word	_Label_982
	.word	-28
	.word	4
	.word	_Label_983
	.word	-32
	.word	4
	.word	_Label_984
	.word	-36
	.word	4
	.word	_Label_985
	.word	-40
	.word	4
	.word	0
_Label_976:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_977:
	.ascii	"Pself\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_965\0"
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
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
!   _temp_986 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_986  sizeInBytes=4
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
!   _temp_987 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_988  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_989 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_990 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
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
!   _temp_995 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_996 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_995  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_991:
!   Perform the FOR-LOOP termination test
!   if i > _temp_996 then goto _Label_994		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_994
_Label_992:
	mov	773,r13		! source line 773
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_997 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_998 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_998  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_999 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1001 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1001 [i ] into _temp_1002
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
!   Data Move: _temp_1000 = *_temp_1002  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1000  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1003 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1003  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1005 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1005 [i ] into _temp_1006
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
!   Data Move: _temp_1004 = *_temp_1006  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1004  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1007 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_993:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_991
! END FOR
_Label_994:
! CALL STATEMENT...
!   _temp_1008 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-116]
!   _temp_1009 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1009  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1010 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-108]
!   _temp_1012 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1012 [0 ] into _temp_1013
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
!   _temp_1011 = _temp_1013		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1011  sizeInBytes=4
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
	be	_Label_1016
	cmp	r1,2
	be	_Label_1017
	cmp	r1,3
	be	_Label_1018
	cmp	r1,4
	be	_Label_1019
	cmp	r1,5
	be	_Label_1020
	jmp	_Label_1014
! CASE 1...
_Label_1016:
! CALL STATEMENT...
!   _temp_1021 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0BR",r10
	jmp	_Label_1015
! CASE 2...
_Label_1017:
! CALL STATEMENT...
!   _temp_1022 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0BR",r10
	jmp	_Label_1015
! CASE 3...
_Label_1018:
! CALL STATEMENT...
!   _temp_1023 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0BR",r10
	jmp	_Label_1015
! CASE 4...
_Label_1019:
! CALL STATEMENT...
!   _temp_1024 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0BR",r10
	jmp	_Label_1015
! CASE 5...
_Label_1020:
! CALL STATEMENT...
!   _temp_1025 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0BR",r10
	jmp	_Label_1015
! DEFAULT CASE...
_Label_1014:
! CALL STATEMENT...
!   _temp_1026 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
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
_Label_1015:
! CALL STATEMENT...
!   _temp_1027 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
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
!   _temp_1028 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
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
!   _temp_1033 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1034 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1033  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1029:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1034 then goto _Label_1032		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1032
_Label_1030:
	mov	807,r13		! source line 807
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1035 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1036 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1037 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1039 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1039 [i ] into _temp_1040
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
!   Data Move: _temp_1038 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1041 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1043 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1043 [i ] into _temp_1044
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
!   Data Move: _temp_1042 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1045 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1031:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1029
! END FOR
_Label_1032:
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
	.word	_Label_1046
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1048
	.word	-12
	.word	4
	.word	_Label_1049
	.word	-16
	.word	4
	.word	_Label_1050
	.word	-20
	.word	4
	.word	_Label_1051
	.word	-24
	.word	4
	.word	_Label_1052
	.word	-28
	.word	4
	.word	_Label_1053
	.word	-32
	.word	4
	.word	_Label_1054
	.word	-36
	.word	4
	.word	_Label_1055
	.word	-40
	.word	4
	.word	_Label_1056
	.word	-44
	.word	4
	.word	_Label_1057
	.word	-48
	.word	4
	.word	_Label_1058
	.word	-52
	.word	4
	.word	_Label_1059
	.word	-56
	.word	4
	.word	_Label_1060
	.word	-60
	.word	4
	.word	_Label_1061
	.word	-64
	.word	4
	.word	_Label_1062
	.word	-68
	.word	4
	.word	_Label_1063
	.word	-72
	.word	4
	.word	_Label_1064
	.word	-76
	.word	4
	.word	_Label_1065
	.word	-80
	.word	4
	.word	_Label_1066
	.word	-84
	.word	4
	.word	_Label_1067
	.word	-88
	.word	4
	.word	_Label_1068
	.word	-92
	.word	4
	.word	_Label_1069
	.word	-96
	.word	4
	.word	_Label_1070
	.word	-100
	.word	4
	.word	_Label_1071
	.word	-104
	.word	4
	.word	_Label_1072
	.word	-108
	.word	4
	.word	_Label_1073
	.word	-112
	.word	4
	.word	_Label_1074
	.word	-116
	.word	4
	.word	_Label_1075
	.word	-120
	.word	4
	.word	_Label_1076
	.word	-124
	.word	4
	.word	_Label_1077
	.word	-128
	.word	4
	.word	_Label_1078
	.word	-132
	.word	4
	.word	_Label_1079
	.word	-136
	.word	4
	.word	_Label_1080
	.word	-140
	.word	4
	.word	_Label_1081
	.word	-144
	.word	4
	.word	_Label_1082
	.word	-148
	.word	4
	.word	_Label_1083
	.word	-152
	.word	4
	.word	_Label_1084
	.word	-156
	.word	4
	.word	_Label_1085
	.word	-160
	.word	4
	.word	_Label_1086
	.word	-164
	.word	4
	.word	_Label_1087
	.word	-168
	.word	4
	.word	_Label_1088
	.word	-172
	.word	4
	.word	_Label_1089
	.word	-176
	.word	4
	.word	_Label_1090
	.word	-180
	.word	4
	.word	_Label_1091
	.word	-184
	.word	4
	.word	_Label_1092
	.word	-188
	.word	4
	.word	_Label_1093
	.word	-192
	.word	4
	.word	_Label_1094
	.word	-196
	.word	4
	.word	0
_Label_1046:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1047:
	.ascii	"Pself\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1093:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1094:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1095
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1095:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1096
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1096:
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
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	875,r13		! source line 875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1097 = _StringConst_86
	set	_StringConst_86,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1097  sizeInBytes=4
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
!   _temp_1099 = &threadManLock
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
!   _temp_1101 = &threadBecameFree
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
!   _temp_1102 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1104 = &_temp_1103
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_1104 = _temp_1104 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1106 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_3064:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3064
!   _temp_1106 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_1108:
!   Data Move: *_temp_1104 = _temp_1106  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_3065:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3065
!   _temp_1104 = _temp_1104 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_1105 = _temp_1105 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_1105) then goto _Label_1108
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_1108
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_1109 = &_temp_1103
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3066
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3066:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1102 = *_temp_1109  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3067:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3067
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1110 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-168]
!   _temp_1111 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_1111 [0 ] into _temp_1112
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
!   Prepare Argument: offset=12  value=_temp_1110  sizeInBytes=4
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
!   _temp_1113 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-156]
!   _temp_1114 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_1114 [1 ] into _temp_1115
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
!   Prepare Argument: offset=12  value=_temp_1113  sizeInBytes=4
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
!   _temp_1116 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-144]
!   _temp_1117 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_1117 [2 ] into _temp_1118
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
!   Prepare Argument: offset=12  value=_temp_1116  sizeInBytes=4
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
!   _temp_1119 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-132]
!   _temp_1120 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_1120 [3 ] into _temp_1121
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
!   Prepare Argument: offset=12  value=_temp_1119  sizeInBytes=4
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
!   _temp_1122 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-120]
!   _temp_1123 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_1123 [4 ] into _temp_1124
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
!   Prepare Argument: offset=12  value=_temp_1122  sizeInBytes=4
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
!   _temp_1125 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-108]
!   _temp_1126 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_1126 [5 ] into _temp_1127
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
!   Prepare Argument: offset=12  value=_temp_1125  sizeInBytes=4
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
!   _temp_1128 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-96]
!   _temp_1129 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_1129 [6 ] into _temp_1130
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
!   Prepare Argument: offset=12  value=_temp_1128  sizeInBytes=4
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
!   _temp_1131 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-84]
!   _temp_1132 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_1132 [7 ] into _temp_1133
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
!   Prepare Argument: offset=12  value=_temp_1131  sizeInBytes=4
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
!   _temp_1134 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-72]
!   _temp_1135 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_1135 [8 ] into _temp_1136
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
!   Prepare Argument: offset=12  value=_temp_1134  sizeInBytes=4
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
!   _temp_1137 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-60]
!   _temp_1138 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_1138 [9 ] into _temp_1139
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
!   Prepare Argument: offset=12  value=_temp_1137  sizeInBytes=4
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
!   _temp_1145 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1146 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1145  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1141:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1146 then goto _Label_1144		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1144
_Label_1142:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_1147 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_1147 [i ] into _temp_1148
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
!   _temp_1149 = _temp_1148 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1149 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1151 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_1151 [i ] into _temp_1152
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
!   _temp_1150 = _temp_1152		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1153 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1150  sizeInBytes=4
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
_Label_1143:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1141
! END FOR
_Label_1144:
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
	.word	_Label_1154
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_1155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1156
	.word	-12
	.word	4
	.word	_Label_1157
	.word	-16
	.word	4
	.word	_Label_1158
	.word	-20
	.word	4
	.word	_Label_1159
	.word	-24
	.word	4
	.word	_Label_1160
	.word	-28
	.word	4
	.word	_Label_1161
	.word	-32
	.word	4
	.word	_Label_1162
	.word	-36
	.word	4
	.word	_Label_1163
	.word	-40
	.word	4
	.word	_Label_1164
	.word	-44
	.word	4
	.word	_Label_1165
	.word	-48
	.word	4
	.word	_Label_1166
	.word	-52
	.word	4
	.word	_Label_1167
	.word	-56
	.word	4
	.word	_Label_1168
	.word	-60
	.word	4
	.word	_Label_1169
	.word	-64
	.word	4
	.word	_Label_1170
	.word	-68
	.word	4
	.word	_Label_1171
	.word	-72
	.word	4
	.word	_Label_1172
	.word	-76
	.word	4
	.word	_Label_1173
	.word	-80
	.word	4
	.word	_Label_1174
	.word	-84
	.word	4
	.word	_Label_1175
	.word	-88
	.word	4
	.word	_Label_1176
	.word	-92
	.word	4
	.word	_Label_1177
	.word	-96
	.word	4
	.word	_Label_1178
	.word	-100
	.word	4
	.word	_Label_1179
	.word	-104
	.word	4
	.word	_Label_1180
	.word	-108
	.word	4
	.word	_Label_1181
	.word	-112
	.word	4
	.word	_Label_1182
	.word	-116
	.word	4
	.word	_Label_1183
	.word	-120
	.word	4
	.word	_Label_1184
	.word	-124
	.word	4
	.word	_Label_1185
	.word	-128
	.word	4
	.word	_Label_1186
	.word	-132
	.word	4
	.word	_Label_1187
	.word	-136
	.word	4
	.word	_Label_1188
	.word	-140
	.word	4
	.word	_Label_1189
	.word	-144
	.word	4
	.word	_Label_1190
	.word	-148
	.word	4
	.word	_Label_1191
	.word	-152
	.word	4
	.word	_Label_1192
	.word	-156
	.word	4
	.word	_Label_1193
	.word	-160
	.word	4
	.word	_Label_1194
	.word	-164
	.word	4
	.word	_Label_1195
	.word	-168
	.word	4
	.word	_Label_1196
	.word	-172
	.word	4
	.word	_Label_1197
	.word	-176
	.word	4
	.word	_Label_1198
	.word	-4340
	.word	4164
	.word	_Label_1199
	.word	-4344
	.word	4
	.word	_Label_1200
	.word	-4348
	.word	4
	.word	_Label_1201
	.word	-45992
	.word	41644
	.word	_Label_1202
	.word	-45996
	.word	4
	.word	_Label_1203
	.word	-46000
	.word	4
	.word	_Label_1204
	.word	-46004
	.word	4
	.word	_Label_1205
	.word	-46008
	.word	4
	.word	_Label_1206
	.word	-46012
	.word	4
	.word	_Label_1207
	.word	-46016
	.word	4
	.word	_Label_1208
	.word	-46020
	.word	4
	.word	_Label_1209
	.word	-46024
	.word	4
	.word	0
_Label_1154:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1155:
	.ascii	"Pself\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1208:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1209:
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
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
!   _temp_1210 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1210  sizeInBytes=4
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
!   _temp_1215 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1216 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1215  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1211:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1216 then goto _Label_1214		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1214
_Label_1212:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1217 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
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
!   _temp_1218 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1220 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_1220 [i ] into _temp_1221
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
!   _temp_1219 = _temp_1221		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1213:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1211
! END FOR
_Label_1214:
! CALL STATEMENT...
!   _temp_1222 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1223 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1224 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1223  sizeInBytes=4
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
	.word	_Label_1225
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1227
	.word	-12
	.word	4
	.word	_Label_1228
	.word	-16
	.word	4
	.word	_Label_1229
	.word	-20
	.word	4
	.word	_Label_1230
	.word	-24
	.word	4
	.word	_Label_1231
	.word	-28
	.word	4
	.word	_Label_1232
	.word	-32
	.word	4
	.word	_Label_1233
	.word	-36
	.word	4
	.word	_Label_1234
	.word	-40
	.word	4
	.word	_Label_1235
	.word	-44
	.word	4
	.word	_Label_1236
	.word	-48
	.word	4
	.word	_Label_1237
	.word	-52
	.word	4
	.word	_Label_1238
	.word	-56
	.word	4
	.word	_Label_1239
	.word	-60
	.word	4
	.word	0
_Label_1225:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1226:
	.ascii	"Pself\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1238:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1239:
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
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
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
!   _temp_1240 = &threadManLock
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
!   _temp_1244 = &freeList
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
!   Retrieve Result: targetName=_temp_1243  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1245 = _temp_1243 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1245 then goto _Label_1242 else goto _Label_1241
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1241
	jmp	_Label_1242
_Label_1241:
! THEN...
	mov	951,r13		! source line 951
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1246 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1247 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1246  sizeInBytes=4
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
_Label_1242:
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1248 = &freeList
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
!   _temp_1249 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1249 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1250 = &threadManLock
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
	.word	_Label_1251
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1253
	.word	-16
	.word	4
	.word	_Label_1254
	.word	-20
	.word	4
	.word	_Label_1255
	.word	-24
	.word	4
	.word	_Label_1256
	.word	-28
	.word	4
	.word	_Label_1257
	.word	-32
	.word	4
	.word	_Label_1258
	.word	-9
	.word	1
	.word	_Label_1259
	.word	-36
	.word	4
	.word	_Label_1260
	.word	-10
	.word	1
	.word	_Label_1261
	.word	-40
	.word	4
	.word	_Label_1262
	.word	-44
	.word	4
	.word	0
_Label_1251:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1252:
	.ascii	"Pself\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1258:
	.byte	'C'
	.ascii	"_temp_1245\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1260:
	.byte	'C'
	.ascii	"_temp_1243\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1262:
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
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	965,r13		! source line 965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1263 = &threadManLock
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
!   _temp_1264 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1264 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1265 = &freeList
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
!   _temp_1266 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1267 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1266  sizeInBytes=4
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
!   _temp_1268 = &threadManLock
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
	.word	_Label_1269
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1271
	.word	12
	.word	4
	.word	_Label_1272
	.word	-12
	.word	4
	.word	_Label_1273
	.word	-16
	.word	4
	.word	_Label_1274
	.word	-20
	.word	4
	.word	_Label_1275
	.word	-24
	.word	4
	.word	_Label_1276
	.word	-28
	.word	4
	.word	_Label_1277
	.word	-32
	.word	4
	.word	0
_Label_1269:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1270:
	.ascii	"Pself\0"
	.align
_Label_1271:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1278
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1278:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1279
	.word	_sourceFileName
	.word	242		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1279:
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
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
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
_Label_3072:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3072
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0SE",r10
!   _temp_1281 = &addrSpace
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
	.word	_Label_1282
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1283
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1284
	.word	-12
	.word	4
	.word	_Label_1285
	.word	-16
	.word	4
	.word	0
_Label_1282:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1283:
	.ascii	"Pself\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1280\0"
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1286) then goto _runtimeErrorNullPointer
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
!   _temp_1287 = &addrSpace
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
!   _temp_1288 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
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
	call	_function_203_ThreadPrintShort
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
	.word	_Label_1289
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1291
	.word	-12
	.word	4
	.word	_Label_1292
	.word	-16
	.word	4
	.word	_Label_1293
	.word	-20
	.word	4
	.word	0
_Label_1289:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1290:
	.ascii	"Pself\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1286\0"
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
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1029,r13		! source line 1029
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1294 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1296 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
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
!   _temp_1297 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1299		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1299
!	jmp	_Label_1298
_Label_1298:
! THEN...
	mov	1039,r13		! source line 1039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1300 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1301
_Label_1299:
! ELSE...
	mov	1040,r13		! source line 1040
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1303		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1303
!	jmp	_Label_1302
_Label_1302:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1304 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1305
_Label_1303:
! ELSE...
	mov	1042,r13		! source line 1042
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1307		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1307
!	jmp	_Label_1306
_Label_1306:
! THEN...
	mov	1043,r13		! source line 1043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1308 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1309
_Label_1307:
! ELSE...
	mov	1045,r13		! source line 1045
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1310 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
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
_Label_1309:
! END IF...
_Label_1305:
! END IF...
_Label_1301:
! CALL STATEMENT...
!   _temp_1311 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
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
!   _temp_1312 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
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
	.word	_Label_1313
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1315
	.word	-12
	.word	4
	.word	_Label_1316
	.word	-16
	.word	4
	.word	_Label_1317
	.word	-20
	.word	4
	.word	_Label_1318
	.word	-24
	.word	4
	.word	_Label_1319
	.word	-28
	.word	4
	.word	_Label_1320
	.word	-32
	.word	4
	.word	_Label_1321
	.word	-36
	.word	4
	.word	_Label_1322
	.word	-40
	.word	4
	.word	_Label_1323
	.word	-44
	.word	4
	.word	_Label_1324
	.word	-48
	.word	4
	.word	0
_Label_1313:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1314:
	.ascii	"Pself\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1325
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1325:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1326
	.word	_sourceFileName
	.word	262		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1326:
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
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1067,r13		! source line 1067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   _temp_1327 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1329 = &_temp_1328
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1329 = _temp_1329 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1331 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3076:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3076
!   _temp_1331 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1333:
!   Data Move: *_temp_1329 = _temp_1331  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3077:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3077
!   _temp_1329 = _temp_1329 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1330 = _temp_1330 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1330) then goto _Label_1333
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1333
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1334 = &_temp_1328
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3078
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3078:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1327 = *_temp_1334  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3079:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3079
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
!   _temp_1336 = &processManagerLock
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
!   _temp_1338 = &aProcessBecameFree
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
!   _temp_1341 = &aProcessDied
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
!   _temp_1346 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1347 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1346  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1342:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1347 then goto _Label_1345		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1345
_Label_1343:
	mov	1087,r13		! source line 1087
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1348 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1348 [i ] into _temp_1349
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
!   _temp_1351 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1351 [i ] into _temp_1352
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
!   _temp_1350 = _temp_1352		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1353 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1350  sizeInBytes=4
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
_Label_1344:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1342
! END FOR
_Label_1345:
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   _temp_1354 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1354 [0 ] into _temp_1355
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
!   _temp_1356 = _temp_1355 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1356  (sizeInBytes=4)
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
	.word	_Label_1357
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1358
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1359
	.word	-12
	.word	4
	.word	_Label_1360
	.word	-16
	.word	4
	.word	_Label_1361
	.word	-20
	.word	4
	.word	_Label_1362
	.word	-24
	.word	4
	.word	_Label_1363
	.word	-28
	.word	4
	.word	_Label_1364
	.word	-32
	.word	4
	.word	_Label_1365
	.word	-36
	.word	4
	.word	_Label_1366
	.word	-40
	.word	4
	.word	_Label_1367
	.word	-44
	.word	4
	.word	_Label_1368
	.word	-48
	.word	4
	.word	_Label_1369
	.word	-52
	.word	4
	.word	_Label_1370
	.word	-56
	.word	4
	.word	_Label_1371
	.word	-60
	.word	4
	.word	_Label_1372
	.word	-64
	.word	4
	.word	_Label_1373
	.word	-68
	.word	4
	.word	_Label_1374
	.word	-72
	.word	4
	.word	_Label_1375
	.word	-76
	.word	4
	.word	_Label_1376
	.word	-80
	.word	4
	.word	_Label_1377
	.word	-84
	.word	4
	.word	_Label_1378
	.word	-88
	.word	4
	.word	_Label_1379
	.word	-212
	.word	124
	.word	_Label_1380
	.word	-216
	.word	4
	.word	_Label_1381
	.word	-220
	.word	4
	.word	_Label_1382
	.word	-1464
	.word	1244
	.word	_Label_1383
	.word	-1468
	.word	4
	.word	_Label_1384
	.word	-1472
	.word	4
	.word	0
_Label_1357:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1358:
	.ascii	"Pself\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1384:
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
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
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
!   _temp_1385 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1385  sizeInBytes=4
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
!   _temp_1390 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1391 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1390  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1386:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1391 then goto _Label_1389		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1389
_Label_1387:
	mov	1105,r13		! source line 1105
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1392 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
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
!   _temp_1393 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1394 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1394 [i ] into _temp_1395
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
_Label_1388:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1386
! END FOR
_Label_1389:
! CALL STATEMENT...
!   _temp_1396 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1396  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1397 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1398 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1397  sizeInBytes=4
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
	.word	_Label_1399
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1400
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1401
	.word	-12
	.word	4
	.word	_Label_1402
	.word	-16
	.word	4
	.word	_Label_1403
	.word	-20
	.word	4
	.word	_Label_1404
	.word	-24
	.word	4
	.word	_Label_1405
	.word	-28
	.word	4
	.word	_Label_1406
	.word	-32
	.word	4
	.word	_Label_1407
	.word	-36
	.word	4
	.word	_Label_1408
	.word	-40
	.word	4
	.word	_Label_1409
	.word	-44
	.word	4
	.word	_Label_1410
	.word	-48
	.word	4
	.word	_Label_1411
	.word	-52
	.word	4
	.word	_Label_1412
	.word	-56
	.word	4
	.word	0
_Label_1399:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1400:
	.ascii	"Pself\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1411:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1412:
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
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
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
!   _temp_1413 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
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
!   _temp_1418 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1419 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1418  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1414:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1419 then goto _Label_1417		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1417
_Label_1415:
	mov	1128,r13		! source line 1128
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1420 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
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
!   _temp_1421 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1421 [i ] into _temp_1422
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
_Label_1416:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1414
! END FOR
_Label_1417:
! CALL STATEMENT...
!   _temp_1423 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1424 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1425 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1424  sizeInBytes=4
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
	.word	_Label_1426
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1427
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1428
	.word	-12
	.word	4
	.word	_Label_1429
	.word	-16
	.word	4
	.word	_Label_1430
	.word	-20
	.word	4
	.word	_Label_1431
	.word	-24
	.word	4
	.word	_Label_1432
	.word	-28
	.word	4
	.word	_Label_1433
	.word	-32
	.word	4
	.word	_Label_1434
	.word	-36
	.word	4
	.word	_Label_1435
	.word	-40
	.word	4
	.word	_Label_1436
	.word	-44
	.word	4
	.word	_Label_1437
	.word	-48
	.word	4
	.word	_Label_1438
	.word	-52
	.word	4
	.word	0
_Label_1426:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1427:
	.ascii	"Pself\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1437:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1438:
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
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
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
!   _temp_1439 = &processManagerLock
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
_Label_1440:
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1444 = &freeList
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
!   Retrieve Result: targetName=_temp_1443  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1445 = _temp_1443 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1445 then goto _Label_1442 else goto _Label_1441
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1441
	jmp	_Label_1442
_Label_1441:
	mov	1151,r13		! source line 1151
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1446 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1447 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1446  sizeInBytes=4
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
	jmp	_Label_1440
_Label_1442:
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1448 = &freeList
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
!   _temp_1449 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1449 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0IF",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1453 = &freeList
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
!   Retrieve Result: targetName=_temp_1452  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1454 = _temp_1452 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1454 then goto _Label_1451 else goto _Label_1450
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1450
	jmp	_Label_1451
_Label_1450:
! THEN...
	mov	1159,r13		! source line 1159
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_1455 = &freeList
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
!   _temp_1456 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1456  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1457 = &freeList
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
	jmp	_Label_1458
_Label_1451:
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
_Label_1458:
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1459 = &processManagerLock
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
	.word	_Label_1460
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1462
	.word	-16
	.word	4
	.word	_Label_1463
	.word	-20
	.word	4
	.word	_Label_1464
	.word	-24
	.word	4
	.word	_Label_1465
	.word	-28
	.word	4
	.word	_Label_1466
	.word	-9
	.word	1
	.word	_Label_1467
	.word	-32
	.word	4
	.word	_Label_1468
	.word	-10
	.word	1
	.word	_Label_1469
	.word	-36
	.word	4
	.word	_Label_1470
	.word	-40
	.word	4
	.word	_Label_1471
	.word	-44
	.word	4
	.word	_Label_1472
	.word	-48
	.word	4
	.word	_Label_1473
	.word	-11
	.word	1
	.word	_Label_1474
	.word	-52
	.word	4
	.word	_Label_1475
	.word	-12
	.word	1
	.word	_Label_1476
	.word	-56
	.word	4
	.word	_Label_1477
	.word	-60
	.word	4
	.word	_Label_1478
	.word	-64
	.word	4
	.word	0
_Label_1460:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1461:
	.ascii	"Pself\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1466:
	.byte	'C'
	.ascii	"_temp_1454\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1468:
	.byte	'C'
	.ascii	"_temp_1452\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1473:
	.byte	'C'
	.ascii	"_temp_1445\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1475:
	.byte	'C'
	.ascii	"_temp_1443\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1477:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1478:
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
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1171,r13		! source line 1171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1479 = &processManagerLock
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
!   _temp_1483 = &freeList
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
!   Retrieve Result: targetName=_temp_1482  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1484 = _temp_1482 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1484 then goto _Label_1481 else goto _Label_1480
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1480
	jmp	_Label_1481
_Label_1480:
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
!   _temp_1485 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1485  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1481:
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1486 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1486 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1487 = &freeList
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
!   _temp_1488 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1489 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1488  sizeInBytes=4
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
!   _temp_1490 = &processManagerLock
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
	.word	_Label_1491
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1492
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1493
	.word	12
	.word	4
	.word	_Label_1494
	.word	-16
	.word	4
	.word	_Label_1495
	.word	-20
	.word	4
	.word	_Label_1496
	.word	-24
	.word	4
	.word	_Label_1497
	.word	-28
	.word	4
	.word	_Label_1498
	.word	-32
	.word	4
	.word	_Label_1499
	.word	-36
	.word	4
	.word	_Label_1500
	.word	-9
	.word	1
	.word	_Label_1501
	.word	-40
	.word	4
	.word	_Label_1502
	.word	-10
	.word	1
	.word	_Label_1503
	.word	-44
	.word	4
	.word	0
_Label_1491:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1492:
	.ascii	"Pself\0"
	.align
_Label_1493:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1500:
	.byte	'C'
	.ascii	"_temp_1484\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1502:
	.byte	'C'
	.ascii	"_temp_1482\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1504
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1504:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1505
	.word	_sourceFileName
	.word	285		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1505:
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
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1277,r13		! source line 1277
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1506 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1284,r13		! source line 1284
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
	mov	1285,r13		! source line 1285
	mov	"\0\0SE",r10
!   _temp_1508 = &framesInUse
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
	mov	1286,r13		! source line 1286
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
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
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
!   _temp_1510 = &frameManagerLock
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
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   waiting = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! ASSIGNMENT STATEMENT...
	mov	1290,r13		! source line 1290
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
	mov	1291,r13		! source line 1291
	mov	"\0\0SE",r10
!   _temp_1512 = &restOfLine
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
	mov	1292,r13		! source line 1292
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
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_1514 = &newFramesAvailable
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
	mov	1299,r13		! source line 1299
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1519 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1520 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1519  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1515:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1520 then goto _Label_1518		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1518
_Label_1516:
	mov	1299,r13		! source line 1299
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1523 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1523) then goto _Label_1522
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1522
!	jmp	_Label_1521
_Label_1521:
! THEN...
	mov	1303,r13		! source line 1303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1524 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1303,r13		! source line 1303
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1522:
!   Increment the FOR-LOOP index variable and jump back
_Label_1517:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1515
! END FOR
_Label_1518:
! RETURN STATEMENT...
	mov	1299,r13		! source line 1299
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
	.word	_Label_1525
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1527
	.word	-12
	.word	4
	.word	_Label_1528
	.word	-16
	.word	4
	.word	_Label_1529
	.word	-20
	.word	4
	.word	_Label_1530
	.word	-24
	.word	4
	.word	_Label_1531
	.word	-28
	.word	4
	.word	_Label_1532
	.word	-32
	.word	4
	.word	_Label_1533
	.word	-36
	.word	4
	.word	_Label_1534
	.word	-40
	.word	4
	.word	_Label_1535
	.word	-44
	.word	4
	.word	_Label_1536
	.word	-48
	.word	4
	.word	_Label_1537
	.word	-52
	.word	4
	.word	_Label_1538
	.word	-56
	.word	4
	.word	_Label_1539
	.word	-60
	.word	4
	.word	_Label_1540
	.word	-64
	.word	4
	.word	0
_Label_1525:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1526:
	.ascii	"Pself\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1540:
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
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1310,r13		! source line 1310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0SE",r10
!   _temp_1541 = &frameManagerLock
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
!   _temp_1542 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1542  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1315,r13		! source line 1315
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1543 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1543  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1316,r13		! source line 1316
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1544 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1544  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1317,r13		! source line 1317
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0SE",r10
!   _temp_1545 = &framesInUse
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
	mov	1319,r13		! source line 1319
	mov	"\0\0SE",r10
!   _temp_1546 = &frameManagerLock
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
	mov	1319,r13		! source line 1319
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
	.word	_Label_1547
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1548
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1549
	.word	-12
	.word	4
	.word	_Label_1550
	.word	-16
	.word	4
	.word	_Label_1551
	.word	-20
	.word	4
	.word	_Label_1552
	.word	-24
	.word	4
	.word	_Label_1553
	.word	-28
	.word	4
	.word	_Label_1554
	.word	-32
	.word	4
	.word	0
_Label_1547:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1548:
	.ascii	"Pself\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1541\0"
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
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1324,r13		! source line 1324
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0SE",r10
!   _temp_1555 = &frameManagerLock
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
	mov	1335,r13		! source line 1335
	mov	"\0\0WH",r10
_Label_1556:
!   if numberFreeFrames >= 1 then goto _Label_1558		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1558
!	jmp	_Label_1557
_Label_1557:
	mov	1335,r13		! source line 1335
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0SE",r10
!   _temp_1559 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1560 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1559  sizeInBytes=4
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
	jmp	_Label_1556
_Label_1558:
! ASSIGNMENT STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0AS",r10
	mov	1340,r13		! source line 1340
	mov	"\0\0SE",r10
!   _temp_1561 = &framesInUse
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
	mov	1341,r13		! source line 1341
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
	mov	1344,r13		! source line 1344
	mov	"\0\0SE",r10
!   _temp_1562 = &frameManagerLock
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
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   _temp_1563 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1563		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1349,r13		! source line 1349
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
	.word	_Label_1564
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1566
	.word	-12
	.word	4
	.word	_Label_1567
	.word	-16
	.word	4
	.word	_Label_1568
	.word	-20
	.word	4
	.word	_Label_1569
	.word	-24
	.word	4
	.word	_Label_1570
	.word	-28
	.word	4
	.word	_Label_1571
	.word	-32
	.word	4
	.word	_Label_1572
	.word	-36
	.word	4
	.word	_Label_1573
	.word	-40
	.word	4
	.word	0
_Label_1564:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1565:
	.ascii	"Pself\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1573:
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1354,r13		! source line 1354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0SE",r10
!   _temp_1574 = &frameManagerLock
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
	mov	1359,r13		! source line 1359
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
	mov	1360,r13		! source line 1360
	mov	"\0\0IF",r10
!   if waiting <= 1 then goto _Label_1576		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1576
!	jmp	_Label_1575
_Label_1575:
! THEN...
	mov	1361,r13		! source line 1361
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0SE",r10
!   _temp_1577 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1578 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1577  sizeInBytes=4
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
_Label_1576:
! WHILE STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0WH",r10
_Label_1579:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1581		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1581
!	jmp	_Label_1580
_Label_1580:
	mov	1364,r13		! source line 1364
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0SE",r10
!   _temp_1582 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1583 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1582  sizeInBytes=4
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
	jmp	_Label_1579
_Label_1581:
! FOR STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1588 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1589 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1588  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1584:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1589 then goto _Label_1587		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1587
_Label_1585:
	mov	1368,r13		! source line 1368
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0AS",r10
	mov	1369,r13		! source line 1369
	mov	"\0\0SE",r10
!   _temp_1590 = &framesInUse
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
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_1591 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1591		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1371,r13		! source line 1371
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
_Label_1586:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1584
! END FOR
_Label_1587:
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
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
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1592 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1592 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
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
	mov	1377,r13		! source line 1377
	mov	"\0\0SE",r10
!   _temp_1593 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1594 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1593  sizeInBytes=4
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
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
!   _temp_1595 = &frameManagerLock
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
	mov	1379,r13		! source line 1379
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
	.word	_Label_1596
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1597
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1598
	.word	12
	.word	4
	.word	_Label_1599
	.word	16
	.word	4
	.word	_Label_1600
	.word	-12
	.word	4
	.word	_Label_1601
	.word	-16
	.word	4
	.word	_Label_1602
	.word	-20
	.word	4
	.word	_Label_1603
	.word	-24
	.word	4
	.word	_Label_1604
	.word	-28
	.word	4
	.word	_Label_1605
	.word	-32
	.word	4
	.word	_Label_1606
	.word	-36
	.word	4
	.word	_Label_1607
	.word	-40
	.word	4
	.word	_Label_1608
	.word	-44
	.word	4
	.word	_Label_1609
	.word	-48
	.word	4
	.word	_Label_1610
	.word	-52
	.word	4
	.word	_Label_1611
	.word	-56
	.word	4
	.word	_Label_1612
	.word	-60
	.word	4
	.word	_Label_1613
	.word	-64
	.word	4
	.word	_Label_1614
	.word	-68
	.word	4
	.word	0
_Label_1596:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1597:
	.ascii	"Pself\0"
	.align
_Label_1598:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1599:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1613:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1614:
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
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0SE",r10
!   _temp_1615 = &frameManagerLock
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
	mov	1389,r13		! source line 1389
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1620 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1623 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1622 = *_temp_1623  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1621 = _temp_1622 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1620  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1616:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1621 then goto _Label_1619		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1619
_Label_1617:
	mov	1389,r13		! source line 1389
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
	mov	1390,r13		! source line 1390
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
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   _temp_1624 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1624 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0SE",r10
!   _temp_1625 = &framesInUse
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
_Label_1618:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1616
! END FOR
_Label_1619:
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1627 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1626 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1626		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0SE",r10
!   _temp_1628 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1629 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1628  sizeInBytes=4
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
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1630 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1630 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0SE",r10
!   _temp_1631 = &frameManagerLock
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
	mov	1399,r13		! source line 1399
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
	.word	_Label_1632
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1634
	.word	12
	.word	4
	.word	_Label_1635
	.word	-12
	.word	4
	.word	_Label_1636
	.word	-16
	.word	4
	.word	_Label_1637
	.word	-20
	.word	4
	.word	_Label_1638
	.word	-24
	.word	4
	.word	_Label_1639
	.word	-28
	.word	4
	.word	_Label_1640
	.word	-32
	.word	4
	.word	_Label_1641
	.word	-36
	.word	4
	.word	_Label_1642
	.word	-40
	.word	4
	.word	_Label_1643
	.word	-44
	.word	4
	.word	_Label_1644
	.word	-48
	.word	4
	.word	_Label_1645
	.word	-52
	.word	4
	.word	_Label_1646
	.word	-56
	.word	4
	.word	_Label_1647
	.word	-60
	.word	4
	.word	_Label_1648
	.word	-64
	.word	4
	.word	_Label_1649
	.word	-68
	.word	4
	.word	_Label_1650
	.word	-72
	.word	4
	.word	0
_Label_1632:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1633:
	.ascii	"Pself\0"
	.align
_Label_1634:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1649:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1651
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
_Label_1651:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1652
	.word	_sourceFileName
	.word	306		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1652:
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	1410,r13		! source line 1410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_1653 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1655 = &_temp_1654
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1655 = _temp_1655 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1657:
!   Data Move: *_temp_1655 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1655 = _temp_1655 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1656 = _temp_1656 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1656) then goto _Label_1657
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1657
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1658 = &_temp_1654
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3090
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3090:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1653 = *_temp_1658  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3091:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3091
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
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
	.word	_Label_1659
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1660
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1661
	.word	-12
	.word	4
	.word	_Label_1662
	.word	-16
	.word	4
	.word	_Label_1663
	.word	-20
	.word	4
	.word	_Label_1664
	.word	-104
	.word	84
	.word	_Label_1665
	.word	-108
	.word	4
	.word	0
_Label_1659:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1660:
	.ascii	"Pself\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1653\0"
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
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1666 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1425,r13		! source line 1425
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1667 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1672 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1673 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1672  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1668:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1673 then goto _Label_1671		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1671
_Label_1669:
	mov	1427,r13		! source line 1427
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1674 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1674  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1428,r13		! source line 1428
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1676 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1676 [i ] into _temp_1677
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
!   _temp_1675 = _temp_1677		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1675  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1429,r13		! source line 1429
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1678 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1680 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1680 [i ] into _temp_1681
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
!   Data Move: _temp_1679 = *_temp_1681  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1431,r13		! source line 1431
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1682 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1432,r13		! source line 1432
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1683 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1433,r13		! source line 1433
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1684 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1434,r13		! source line 1434
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1686) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1685  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1435,r13		! source line 1435
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1687 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1436,r13		! source line 1436
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0IF",r10
	mov	1437,r13		! source line 1437
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1691) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1690  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1690) then goto _Label_1689
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1689
!	jmp	_Label_1688
_Label_1688:
! THEN...
	mov	1438,r13		! source line 1438
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1693) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1692  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1438,r13		! source line 1438
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1694
_Label_1689:
! ELSE...
	mov	1440,r13		! source line 1440
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1695 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1695  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1440,r13		! source line 1440
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1694:
! CALL STATEMENT...
!   _temp_1696 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1696  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1442,r13		! source line 1442
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0IF",r10
	mov	1443,r13		! source line 1443
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1699) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1697 else goto _Label_1698
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1698
	jmp	_Label_1697
_Label_1697:
! THEN...
	mov	1444,r13		! source line 1444
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1700 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1444,r13		! source line 1444
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1701
_Label_1698:
! ELSE...
	mov	1446,r13		! source line 1446
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1702 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1446,r13		! source line 1446
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1701:
! CALL STATEMENT...
!   _temp_1703 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1448,r13		! source line 1448
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0IF",r10
	mov	1449,r13		! source line 1449
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1706) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1704 else goto _Label_1705
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1705
	jmp	_Label_1704
_Label_1704:
! THEN...
	mov	1450,r13		! source line 1450
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1707 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1707  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1450,r13		! source line 1450
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1708
_Label_1705:
! ELSE...
	mov	1452,r13		! source line 1452
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1709 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1709  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1452,r13		! source line 1452
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1708:
! CALL STATEMENT...
!   _temp_1710 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1710  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1454,r13		! source line 1454
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0IF",r10
	mov	1455,r13		! source line 1455
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1713) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1711 else goto _Label_1712
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1712
	jmp	_Label_1711
_Label_1711:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1714 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1714  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1456,r13		! source line 1456
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1715
_Label_1712:
! ELSE...
	mov	1458,r13		! source line 1458
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1716 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1458,r13		! source line 1458
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1715:
! CALL STATEMENT...
!   _temp_1717 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1460,r13		! source line 1460
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0IF",r10
	mov	1461,r13		! source line 1461
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1720) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1718 else goto _Label_1719
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1719
	jmp	_Label_1718
_Label_1718:
! THEN...
	mov	1462,r13		! source line 1462
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1721 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1721  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1462,r13		! source line 1462
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1722
_Label_1719:
! ELSE...
	mov	1464,r13		! source line 1464
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1723 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1464,r13		! source line 1464
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1722:
! CALL STATEMENT...
!   Call the function
	mov	1466,r13		! source line 1466
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1670:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1668
! END FOR
_Label_1671:
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
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
	.word	_Label_1724
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1725
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1726
	.word	-12
	.word	4
	.word	_Label_1727
	.word	-16
	.word	4
	.word	_Label_1728
	.word	-20
	.word	4
	.word	_Label_1729
	.word	-24
	.word	4
	.word	_Label_1730
	.word	-28
	.word	4
	.word	_Label_1731
	.word	-32
	.word	4
	.word	_Label_1732
	.word	-36
	.word	4
	.word	_Label_1733
	.word	-40
	.word	4
	.word	_Label_1734
	.word	-44
	.word	4
	.word	_Label_1735
	.word	-48
	.word	4
	.word	_Label_1736
	.word	-52
	.word	4
	.word	_Label_1737
	.word	-56
	.word	4
	.word	_Label_1738
	.word	-60
	.word	4
	.word	_Label_1739
	.word	-64
	.word	4
	.word	_Label_1740
	.word	-68
	.word	4
	.word	_Label_1741
	.word	-72
	.word	4
	.word	_Label_1742
	.word	-76
	.word	4
	.word	_Label_1743
	.word	-80
	.word	4
	.word	_Label_1744
	.word	-84
	.word	4
	.word	_Label_1745
	.word	-88
	.word	4
	.word	_Label_1746
	.word	-92
	.word	4
	.word	_Label_1747
	.word	-96
	.word	4
	.word	_Label_1748
	.word	-100
	.word	4
	.word	_Label_1749
	.word	-104
	.word	4
	.word	_Label_1750
	.word	-108
	.word	4
	.word	_Label_1751
	.word	-112
	.word	4
	.word	_Label_1752
	.word	-116
	.word	4
	.word	_Label_1753
	.word	-120
	.word	4
	.word	_Label_1754
	.word	-124
	.word	4
	.word	_Label_1755
	.word	-128
	.word	4
	.word	_Label_1756
	.word	-132
	.word	4
	.word	_Label_1757
	.word	-136
	.word	4
	.word	_Label_1758
	.word	-140
	.word	4
	.word	_Label_1759
	.word	-144
	.word	4
	.word	_Label_1760
	.word	-148
	.word	4
	.word	_Label_1761
	.word	-152
	.word	4
	.word	_Label_1762
	.word	-156
	.word	4
	.word	_Label_1763
	.word	-160
	.word	4
	.word	_Label_1764
	.word	-164
	.word	4
	.word	_Label_1765
	.word	-168
	.word	4
	.word	0
_Label_1724:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1725:
	.ascii	"Pself\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1765:
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1472,r13		! source line 1472
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   _temp_1768 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1768 [entry ] into _temp_1769
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
!   Data Move: _temp_1767 = *_temp_1769  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1766 = _temp_1767 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1766  (sizeInBytes=4)
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
	.word	_Label_1770
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1772
	.word	12
	.word	4
	.word	_Label_1773
	.word	-12
	.word	4
	.word	_Label_1774
	.word	-16
	.word	4
	.word	_Label_1775
	.word	-20
	.word	4
	.word	_Label_1776
	.word	-24
	.word	4
	.word	0
_Label_1770:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1771:
	.ascii	"Pself\0"
	.align
_Label_1772:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1766\0"
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	1482,r13		! source line 1482
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0RE",r10
!   _temp_1779 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1779 [entry ] into _temp_1780
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
!   Data Move: _temp_1778 = *_temp_1780  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1777 = _temp_1778 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1777  (sizeInBytes=4)
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
	.word	_Label_1781
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1782
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1783
	.word	12
	.word	4
	.word	_Label_1784
	.word	-12
	.word	4
	.word	_Label_1785
	.word	-16
	.word	4
	.word	_Label_1786
	.word	-20
	.word	4
	.word	_Label_1787
	.word	-24
	.word	4
	.word	0
_Label_1781:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1782:
	.ascii	"Pself\0"
	.align
_Label_1783:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1777\0"
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	1491,r13		! source line 1491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   _temp_1788 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1788 [entry ] into _temp_1789
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
!   _temp_1793 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1793 [entry ] into _temp_1794
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
!   Data Move: _temp_1792 = *_temp_1794  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1791 = _temp_1792 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1790 = _temp_1791 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1789 = _temp_1790  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1496,r13		! source line 1496
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
	.word	_Label_1795
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1796
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1797
	.word	12
	.word	4
	.word	_Label_1798
	.word	16
	.word	4
	.word	_Label_1799
	.word	-12
	.word	4
	.word	_Label_1800
	.word	-16
	.word	4
	.word	_Label_1801
	.word	-20
	.word	4
	.word	_Label_1802
	.word	-24
	.word	4
	.word	_Label_1803
	.word	-28
	.word	4
	.word	_Label_1804
	.word	-32
	.word	4
	.word	_Label_1805
	.word	-36
	.word	4
	.word	0
_Label_1795:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1796:
	.ascii	"Pself\0"
	.align
_Label_1797:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1798:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1788\0"
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
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	1501,r13		! source line 1501
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0RE",r10
!   _temp_1809 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1809 [entry ] into _temp_1810
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
!   Data Move: _temp_1808 = *_temp_1810  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1807 = _temp_1808 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1807) then goto _Label_1811
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1811
!   _temp_1806 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1812
_Label_1811:
!   _temp_1806 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1812:
!   ReturnResult: _temp_1806  (sizeInBytes=1)
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
	.word	_Label_1813
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1815
	.word	12
	.word	4
	.word	_Label_1816
	.word	-16
	.word	4
	.word	_Label_1817
	.word	-20
	.word	4
	.word	_Label_1818
	.word	-24
	.word	4
	.word	_Label_1819
	.word	-28
	.word	4
	.word	_Label_1820
	.word	-9
	.word	1
	.word	0
_Label_1813:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1814:
	.ascii	"Pself\0"
	.align
_Label_1815:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1820:
	.byte	'C'
	.ascii	"_temp_1806\0"
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
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	1510,r13		! source line 1510
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0RE",r10
!   _temp_1824 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1824 [entry ] into _temp_1825
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
!   Data Move: _temp_1823 = *_temp_1825  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1822 = _temp_1823 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1822) then goto _Label_1826
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1826
!   _temp_1821 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1827
_Label_1826:
!   _temp_1821 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1827:
!   ReturnResult: _temp_1821  (sizeInBytes=1)
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
	.word	_Label_1828
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1829
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1830
	.word	12
	.word	4
	.word	_Label_1831
	.word	-16
	.word	4
	.word	_Label_1832
	.word	-20
	.word	4
	.word	_Label_1833
	.word	-24
	.word	4
	.word	_Label_1834
	.word	-28
	.word	4
	.word	_Label_1835
	.word	-9
	.word	1
	.word	0
_Label_1828:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1829:
	.ascii	"Pself\0"
	.align
_Label_1830:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1835:
	.byte	'C'
	.ascii	"_temp_1821\0"
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
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	1519,r13		! source line 1519
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   _temp_1839 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1839 [entry ] into _temp_1840
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
!   Data Move: _temp_1838 = *_temp_1840  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1837 = _temp_1838 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1837) then goto _Label_1841
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1841
!   _temp_1836 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1842
_Label_1841:
!   _temp_1836 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1842:
!   ReturnResult: _temp_1836  (sizeInBytes=1)
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
	.word	_Label_1843
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1845
	.word	12
	.word	4
	.word	_Label_1846
	.word	-16
	.word	4
	.word	_Label_1847
	.word	-20
	.word	4
	.word	_Label_1848
	.word	-24
	.word	4
	.word	_Label_1849
	.word	-28
	.word	4
	.word	_Label_1850
	.word	-9
	.word	1
	.word	0
_Label_1843:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1844:
	.ascii	"Pself\0"
	.align
_Label_1845:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1850:
	.byte	'C'
	.ascii	"_temp_1836\0"
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
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	1528,r13		! source line 1528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
!   _temp_1854 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1854 [entry ] into _temp_1855
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
!   Data Move: _temp_1853 = *_temp_1855  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1852 = _temp_1853 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1852) then goto _Label_1856
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1856
!   _temp_1851 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1857
_Label_1856:
!   _temp_1851 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1857:
!   ReturnResult: _temp_1851  (sizeInBytes=1)
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
	.word	_Label_1858
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1860
	.word	12
	.word	4
	.word	_Label_1861
	.word	-16
	.word	4
	.word	_Label_1862
	.word	-20
	.word	4
	.word	_Label_1863
	.word	-24
	.word	4
	.word	_Label_1864
	.word	-28
	.word	4
	.word	_Label_1865
	.word	-9
	.word	1
	.word	0
_Label_1858:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1859:
	.ascii	"Pself\0"
	.align
_Label_1860:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1865:
	.byte	'C'
	.ascii	"_temp_1851\0"
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
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	1537,r13		! source line 1537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   _temp_1866 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1866 [entry ] into _temp_1867
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
!   _temp_1870 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1870 [entry ] into _temp_1871
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
!   Data Move: _temp_1869 = *_temp_1871  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1868 = _temp_1869 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1867 = _temp_1868  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
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
	.word	_Label_1872
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1874
	.word	12
	.word	4
	.word	_Label_1875
	.word	-12
	.word	4
	.word	_Label_1876
	.word	-16
	.word	4
	.word	_Label_1877
	.word	-20
	.word	4
	.word	_Label_1878
	.word	-24
	.word	4
	.word	_Label_1879
	.word	-28
	.word	4
	.word	_Label_1880
	.word	-32
	.word	4
	.word	0
_Label_1872:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1873:
	.ascii	"Pself\0"
	.align
_Label_1874:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1866\0"
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
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	1546,r13		! source line 1546
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0AS",r10
!   _temp_1881 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1881 [entry ] into _temp_1882
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
!   _temp_1885 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1885 [entry ] into _temp_1886
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
!   Data Move: _temp_1884 = *_temp_1886  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1883 = _temp_1884 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1882 = _temp_1883  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
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
	.word	_Label_1887
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1888
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1889
	.word	12
	.word	4
	.word	_Label_1890
	.word	-12
	.word	4
	.word	_Label_1891
	.word	-16
	.word	4
	.word	_Label_1892
	.word	-20
	.word	4
	.word	_Label_1893
	.word	-24
	.word	4
	.word	_Label_1894
	.word	-28
	.word	4
	.word	_Label_1895
	.word	-32
	.word	4
	.word	0
_Label_1887:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1888:
	.ascii	"Pself\0"
	.align
_Label_1889:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1881\0"
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
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	1555,r13		! source line 1555
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0AS",r10
!   _temp_1896 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1896 [entry ] into _temp_1897
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
!   _temp_1900 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1900 [entry ] into _temp_1901
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
!   Data Move: _temp_1899 = *_temp_1901  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1898 = _temp_1899 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1897 = _temp_1898  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
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
	.word	_Label_1902
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1904
	.word	12
	.word	4
	.word	_Label_1905
	.word	-12
	.word	4
	.word	_Label_1906
	.word	-16
	.word	4
	.word	_Label_1907
	.word	-20
	.word	4
	.word	_Label_1908
	.word	-24
	.word	4
	.word	_Label_1909
	.word	-28
	.word	4
	.word	_Label_1910
	.word	-32
	.word	4
	.word	0
_Label_1902:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1903:
	.ascii	"Pself\0"
	.align
_Label_1904:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1896\0"
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
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	1564,r13		! source line 1564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   _temp_1911 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1911 [entry ] into _temp_1912
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
!   _temp_1915 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1915 [entry ] into _temp_1916
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
!   Data Move: _temp_1914 = *_temp_1916  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1913 = _temp_1914 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1912 = _temp_1913  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1568,r13		! source line 1568
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
	.word	_Label_1917
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1918
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1919
	.word	12
	.word	4
	.word	_Label_1920
	.word	-12
	.word	4
	.word	_Label_1921
	.word	-16
	.word	4
	.word	_Label_1922
	.word	-20
	.word	4
	.word	_Label_1923
	.word	-24
	.word	4
	.word	_Label_1924
	.word	-28
	.word	4
	.word	_Label_1925
	.word	-32
	.word	4
	.word	0
_Label_1917:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1918:
	.ascii	"Pself\0"
	.align
_Label_1919:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1911\0"
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	1573,r13		! source line 1573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0AS",r10
!   _temp_1926 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1926 [entry ] into _temp_1927
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
!   _temp_1930 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1930 [entry ] into _temp_1931
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
!   Data Move: _temp_1929 = *_temp_1931  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1928 = _temp_1929 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1927 = _temp_1928  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1577,r13		! source line 1577
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
	.word	_Label_1932
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1933
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1934
	.word	12
	.word	4
	.word	_Label_1935
	.word	-12
	.word	4
	.word	_Label_1936
	.word	-16
	.word	4
	.word	_Label_1937
	.word	-20
	.word	4
	.word	_Label_1938
	.word	-24
	.word	4
	.word	_Label_1939
	.word	-28
	.word	4
	.word	_Label_1940
	.word	-32
	.word	4
	.word	0
_Label_1932:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1933:
	.ascii	"Pself\0"
	.align
_Label_1934:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1926\0"
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	1582,r13		! source line 1582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0AS",r10
!   _temp_1941 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1941 [entry ] into _temp_1942
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
!   _temp_1945 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1945 [entry ] into _temp_1946
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
!   Data Move: _temp_1944 = *_temp_1946  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1943 = _temp_1944 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1942 = _temp_1943  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
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
	.word	_Label_1947
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1949
	.word	12
	.word	4
	.word	_Label_1950
	.word	-12
	.word	4
	.word	_Label_1951
	.word	-16
	.word	4
	.word	_Label_1952
	.word	-20
	.word	4
	.word	_Label_1953
	.word	-24
	.word	4
	.word	_Label_1954
	.word	-28
	.word	4
	.word	_Label_1955
	.word	-32
	.word	4
	.word	0
_Label_1947:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1948:
	.ascii	"Pself\0"
	.align
_Label_1949:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1941\0"
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	1591,r13		! source line 1591
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0AS",r10
!   _temp_1956 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1956 [entry ] into _temp_1957
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
!   _temp_1960 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1960 [entry ] into _temp_1961
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
!   Data Move: _temp_1959 = *_temp_1961  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1958 = _temp_1959 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1957 = _temp_1958  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1595,r13		! source line 1595
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
	.word	_Label_1962
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1964
	.word	12
	.word	4
	.word	_Label_1965
	.word	-12
	.word	4
	.word	_Label_1966
	.word	-16
	.word	4
	.word	_Label_1967
	.word	-20
	.word	4
	.word	_Label_1968
	.word	-24
	.word	4
	.word	_Label_1969
	.word	-28
	.word	4
	.word	_Label_1970
	.word	-32
	.word	4
	.word	0
_Label_1962:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1963:
	.ascii	"Pself\0"
	.align
_Label_1964:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1956\0"
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
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	1600,r13		! source line 1600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0AS",r10
!   _temp_1971 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1971 [entry ] into _temp_1972
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
!   _temp_1975 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1975 [entry ] into _temp_1976
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
!   Data Move: _temp_1974 = *_temp_1976  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1973 = _temp_1974 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1972 = _temp_1973  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
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
	.word	_Label_1977
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1978
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1979
	.word	12
	.word	4
	.word	_Label_1980
	.word	-12
	.word	4
	.word	_Label_1981
	.word	-16
	.word	4
	.word	_Label_1982
	.word	-20
	.word	4
	.word	_Label_1983
	.word	-24
	.word	4
	.word	_Label_1984
	.word	-28
	.word	4
	.word	_Label_1985
	.word	-32
	.word	4
	.word	0
_Label_1977:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1978:
	.ascii	"Pself\0"
	.align
_Label_1979:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1971\0"
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
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	1609,r13		! source line 1609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1987 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1987 [0 ] into _temp_1988
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
!   _temp_1986 = _temp_1988		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1989 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1989  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1615,r13		! source line 1615
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1615,r13		! source line 1615
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
	.word	_Label_1990
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1992
	.word	-12
	.word	4
	.word	_Label_1993
	.word	-16
	.word	4
	.word	_Label_1994
	.word	-20
	.word	4
	.word	_Label_1995
	.word	-24
	.word	4
	.word	0
_Label_1990:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1991:
	.ascii	"Pself\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1986\0"
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
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	1620,r13		! source line 1620
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1996
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1996
	jmp	_Label_1997
_Label_1996:
! THEN...
	mov	1636,r13		! source line 1636
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1998
_Label_1997:
! ELSE...
	mov	1637,r13		! source line 1637
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2000		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2000
!	jmp	_Label_1999
_Label_1999:
! THEN...
	mov	1638,r13		! source line 1638
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2000:
! END IF...
_Label_1998:
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
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
	mov	1641,r13		! source line 1641
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
	mov	1644,r13		! source line 1644
	mov	"\0\0WH",r10
_Label_2001:
!	jmp	_Label_2002
_Label_2002:
	mov	1644,r13		! source line 1644
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2005		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2005
!	jmp	_Label_2004
_Label_2004:
! THEN...
	mov	1646,r13		! source line 1646
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2006 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2005:
! IF STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0IF",r10
	mov	1649,r13		! source line 1649
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2010) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2009  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2009 then goto _Label_2008 else goto _Label_2007
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2007
	jmp	_Label_2008
_Label_2007:
! THEN...
	mov	1650,r13		! source line 1650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2011 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2011  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1650,r13		! source line 1650
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2008:
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0AS",r10
	mov	1653,r13		! source line 1653
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2013) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2012  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2012 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0WH",r10
_Label_2014:
!   if offset >= 8192 then goto _Label_2016		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2016
!	jmp	_Label_2015
_Label_2015:
	mov	1655,r13		! source line 1655
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2017 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2017  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2019		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2019
!	jmp	_Label_2018
_Label_2018:
! THEN...
	mov	1664,r13		! source line 1664
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2019:
! END WHILE...
	jmp	_Label_2014
_Label_2016:
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2001
_Label_2003:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2020
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2022
	.word	12
	.word	4
	.word	_Label_2023
	.word	16
	.word	4
	.word	_Label_2024
	.word	20
	.word	4
	.word	_Label_2025
	.word	-9
	.word	1
	.word	_Label_2026
	.word	-16
	.word	4
	.word	_Label_2027
	.word	-20
	.word	4
	.word	_Label_2028
	.word	-24
	.word	4
	.word	_Label_2029
	.word	-28
	.word	4
	.word	_Label_2030
	.word	-10
	.word	1
	.word	_Label_2031
	.word	-32
	.word	4
	.word	_Label_2032
	.word	-36
	.word	4
	.word	_Label_2033
	.word	-40
	.word	4
	.word	_Label_2034
	.word	-44
	.word	4
	.word	_Label_2035
	.word	-48
	.word	4
	.word	0
_Label_2020:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2021:
	.ascii	"Pself\0"
	.align
_Label_2022:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2023:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2024:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2025:
	.byte	'C'
	.ascii	"_temp_2017\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2030:
	.byte	'C'
	.ascii	"_temp_2009\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2032:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2033:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2034:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2035:
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
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	1674,r13		! source line 1674
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2036
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2036
	jmp	_Label_2037
_Label_2036:
! THEN...
	mov	1686,r13		! source line 1686
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2038
_Label_2037:
! ELSE...
	mov	1687,r13		! source line 1687
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2040		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2040
!	jmp	_Label_2039
_Label_2039:
! THEN...
	mov	1688,r13		! source line 1688
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2040:
! END IF...
_Label_2038:
! ASSIGNMENT STATEMENT...
	mov	1690,r13		! source line 1690
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
	mov	1691,r13		! source line 1691
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
	mov	1692,r13		! source line 1692
	mov	"\0\0WH",r10
_Label_2041:
!	jmp	_Label_2042
_Label_2042:
	mov	1692,r13		! source line 1692
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2047		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2047
	jmp	_Label_2044
_Label_2047:
	mov	1694,r13		! source line 1694
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2049) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2048  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2048 then goto _Label_2046 else goto _Label_2044
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2044
	jmp	_Label_2046
_Label_2046:
	mov	1695,r13		! source line 1695
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2051) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2050  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2050 then goto _Label_2045 else goto _Label_2044
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2044
	jmp	_Label_2045
_Label_2044:
! THEN...
	mov	1696,r13		! source line 1696
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2045:
! ASSIGNMENT STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0AS",r10
	mov	1698,r13		! source line 1698
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2053) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2052  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2052 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0WH",r10
_Label_2054:
!   if offset >= 8192 then goto _Label_2056		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2056
!	jmp	_Label_2055
_Label_2055:
	mov	1699,r13		! source line 1699
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2057 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2057  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2059		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2059
!	jmp	_Label_2058
_Label_2058:
! THEN...
	mov	1706,r13		! source line 1706
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2059:
! END WHILE...
	jmp	_Label_2054
_Label_2056:
! ASSIGNMENT STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1710,r13		! source line 1710
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2041
_Label_2043:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2060
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2062
	.word	12
	.word	4
	.word	_Label_2063
	.word	16
	.word	4
	.word	_Label_2064
	.word	20
	.word	4
	.word	_Label_2065
	.word	-9
	.word	1
	.word	_Label_2066
	.word	-16
	.word	4
	.word	_Label_2067
	.word	-20
	.word	4
	.word	_Label_2068
	.word	-24
	.word	4
	.word	_Label_2069
	.word	-10
	.word	1
	.word	_Label_2070
	.word	-28
	.word	4
	.word	_Label_2071
	.word	-11
	.word	1
	.word	_Label_2072
	.word	-32
	.word	4
	.word	_Label_2073
	.word	-36
	.word	4
	.word	_Label_2074
	.word	-40
	.word	4
	.word	_Label_2075
	.word	-44
	.word	4
	.word	0
_Label_2060:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2061:
	.ascii	"Pself\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2063:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2064:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2065:
	.byte	'C'
	.ascii	"_temp_2057\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2069:
	.byte	'C'
	.ascii	"_temp_2050\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2071:
	.byte	'C'
	.ascii	"_temp_2048\0"
	.align
_Label_2072:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2073:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2074:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2075:
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
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	1716,r13		! source line 1716
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0IF",r10
	mov	1740,r13		! source line 1740
	mov	"\0\0SE",r10
!   _temp_2079 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2080) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2079  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2078  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2078 >= 4 then goto _Label_2077		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2077
!	jmp	_Label_2076
_Label_2076:
! THEN...
	mov	1743,r13		! source line 1743
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2077:
! IF STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2082		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2082
!	jmp	_Label_2081
_Label_2081:
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
_Label_2082:
! ASSIGNMENT STATEMENT...
	mov	1751,r13		! source line 1751
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
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
	mov	1753,r13		! source line 1753
	mov	"\0\0SE",r10
!   _temp_2085 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2084 = _temp_2085 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2086 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2087) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2084  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2086  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2083  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2083  (sizeInBytes=4)
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
	.word	_Label_2088
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2090
	.word	12
	.word	4
	.word	_Label_2091
	.word	16
	.word	4
	.word	_Label_2092
	.word	20
	.word	4
	.word	_Label_2093
	.word	-12
	.word	4
	.word	_Label_2094
	.word	-16
	.word	4
	.word	_Label_2095
	.word	-20
	.word	4
	.word	_Label_2096
	.word	-24
	.word	4
	.word	_Label_2097
	.word	-28
	.word	4
	.word	_Label_2098
	.word	-32
	.word	4
	.word	_Label_2099
	.word	-36
	.word	4
	.word	_Label_2100
	.word	-40
	.word	4
	.word	_Label_2101
	.word	-44
	.word	4
	.word	0
_Label_2088:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2089:
	.ascii	"Pself\0"
	.align
_Label_2090:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2091:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2092:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2101:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2102
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2102:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2103
	.word	_sourceFileName
	.word	339		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2103:
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
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	2086,r13		! source line 2086
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2104 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2104  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2087,r13		! source line 2087
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
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
	mov	2095,r13		! source line 2095
	mov	"\0\0SE",r10
!   _temp_2106 = &semUsedInSynchMethods
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
	mov	2096,r13		! source line 2096
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
	mov	2097,r13		! source line 2097
	mov	"\0\0SE",r10
!   _temp_2108 = &diskBusy
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
	mov	2097,r13		! source line 2097
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
	.word	_Label_2109
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2111
	.word	-12
	.word	4
	.word	_Label_2112
	.word	-16
	.word	4
	.word	_Label_2113
	.word	-20
	.word	4
	.word	_Label_2114
	.word	-24
	.word	4
	.word	_Label_2115
	.word	-28
	.word	4
	.word	0
_Label_2109:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2110:
	.ascii	"Pself\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2104\0"
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	2102,r13		! source line 2102
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0SE",r10
!   _temp_2116 = &diskBusy
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
	mov	2116,r13		! source line 2116
	mov	"\0\0WH",r10
_Label_2117:
!	jmp	_Label_2118
_Label_2118:
	mov	2116,r13		! source line 2116
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   _temp_2120 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2121) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2120  sizeInBytes=4
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
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   _temp_2122 = &semUsedInSynchMethods
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
	mov	2123,r13		! source line 2123
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2131 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2125
	cmp	r1,2
	be	_Label_2126
	cmp	r1,3
	be	_Label_2127
	cmp	r1,4
	be	_Label_2128
	cmp	r1,5
	be	_Label_2129
	cmp	r1,6
	be	_Label_2130
	jmp	_Label_2123
! CASE 1...
_Label_2125:
! SEND STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   _temp_2132 = &diskBusy
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
	mov	2126,r13		! source line 2126
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2126:
! CALL STATEMENT...
!   _temp_2133 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2133  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2128,r13		! source line 2128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2127:
! CALL STATEMENT...
!   _temp_2134 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2134  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2130,r13		! source line 2130
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2128:
! CALL STATEMENT...
!   _temp_2135 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2135  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2132,r13		! source line 2132
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2129:
! BREAK STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0BR",r10
	jmp	_Label_2124
! CASE 6...
_Label_2130:
! CALL STATEMENT...
!   _temp_2136 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2136  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2138,r13		! source line 2138
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2123:
! CALL STATEMENT...
!   _temp_2137 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2137  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2140,r13		! source line 2140
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2124:
! END WHILE...
	jmp	_Label_2117
_Label_2119:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2138
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2139
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2140
	.word	12
	.word	4
	.word	_Label_2141
	.word	16
	.word	4
	.word	_Label_2142
	.word	20
	.word	4
	.word	_Label_2143
	.word	-12
	.word	4
	.word	_Label_2144
	.word	-16
	.word	4
	.word	_Label_2145
	.word	-20
	.word	4
	.word	_Label_2146
	.word	-24
	.word	4
	.word	_Label_2147
	.word	-28
	.word	4
	.word	_Label_2148
	.word	-32
	.word	4
	.word	_Label_2149
	.word	-36
	.word	4
	.word	_Label_2150
	.word	-40
	.word	4
	.word	_Label_2151
	.word	-44
	.word	4
	.word	_Label_2152
	.word	-48
	.word	4
	.word	_Label_2153
	.word	-52
	.word	4
	.word	0
_Label_2138:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2139:
	.ascii	"Pself\0"
	.align
_Label_2140:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2141:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2142:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2116\0"
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
	mov	2149,r13		! source line 2149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
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
	mov	2168,r13		! source line 2168
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
	mov	2169,r13		! source line 2169
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
	mov	2170,r13		! source line 2170
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
	mov	2170,r13		! source line 2170
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
	.word	_Label_2154
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2156
	.word	12
	.word	4
	.word	_Label_2157
	.word	16
	.word	4
	.word	_Label_2158
	.word	20
	.word	4
	.word	_Label_2159
	.word	24
	.word	4
	.word	0
_Label_2154:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2155:
	.ascii	"Pself\0"
	.align
_Label_2156:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2157:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2158:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2159:
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	2175,r13		! source line 2175
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   _temp_2160 = &diskBusy
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
	mov	2188,r13		! source line 2188
	mov	"\0\0WH",r10
_Label_2161:
!	jmp	_Label_2162
_Label_2162:
	mov	2188,r13		! source line 2188
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0SE",r10
!   _temp_2164 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2165) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2164  sizeInBytes=4
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
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_2166 = &semUsedInSynchMethods
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
	mov	2194,r13		! source line 2194
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2175 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2169
	cmp	r1,2
	be	_Label_2170
	cmp	r1,3
	be	_Label_2171
	cmp	r1,4
	be	_Label_2172
	cmp	r1,5
	be	_Label_2173
	cmp	r1,6
	be	_Label_2174
	jmp	_Label_2167
! CASE 1...
_Label_2169:
! SEND STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0SE",r10
!   _temp_2176 = &diskBusy
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
	mov	2197,r13		! source line 2197
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2170:
! CALL STATEMENT...
!   _temp_2177 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2199,r13		! source line 2199
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2171:
! CALL STATEMENT...
!   _temp_2178 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2178  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2201,r13		! source line 2201
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2172:
! CALL STATEMENT...
!   _temp_2179 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2179  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2203,r13		! source line 2203
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2173:
! BREAK STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0BR",r10
	jmp	_Label_2168
! CASE 6...
_Label_2174:
! CALL STATEMENT...
!   _temp_2180 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2180  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2209,r13		! source line 2209
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2167:
! CALL STATEMENT...
!   _temp_2181 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2181  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2211,r13		! source line 2211
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2168:
! END WHILE...
	jmp	_Label_2161
_Label_2163:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2182
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2184
	.word	12
	.word	4
	.word	_Label_2185
	.word	16
	.word	4
	.word	_Label_2186
	.word	20
	.word	4
	.word	_Label_2187
	.word	-12
	.word	4
	.word	_Label_2188
	.word	-16
	.word	4
	.word	_Label_2189
	.word	-20
	.word	4
	.word	_Label_2190
	.word	-24
	.word	4
	.word	_Label_2191
	.word	-28
	.word	4
	.word	_Label_2192
	.word	-32
	.word	4
	.word	_Label_2193
	.word	-36
	.word	4
	.word	_Label_2194
	.word	-40
	.word	4
	.word	_Label_2195
	.word	-44
	.word	4
	.word	_Label_2196
	.word	-48
	.word	4
	.word	_Label_2197
	.word	-52
	.word	4
	.word	0
_Label_2182:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2183:
	.ascii	"Pself\0"
	.align
_Label_2184:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2185:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2186:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2160\0"
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
	mov	2220,r13		! source line 2220
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
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
	mov	2238,r13		! source line 2238
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
	mov	2239,r13		! source line 2239
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
	mov	2240,r13		! source line 2240
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
	mov	2240,r13		! source line 2240
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
	.word	_Label_2198
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2199
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2200
	.word	12
	.word	4
	.word	_Label_2201
	.word	16
	.word	4
	.word	_Label_2202
	.word	20
	.word	4
	.word	_Label_2203
	.word	24
	.word	4
	.word	0
_Label_2198:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2199:
	.ascii	"Pself\0"
	.align
_Label_2200:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2201:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2202:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2203:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2204
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
_Label_2204:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2205
	.word	_sourceFileName
	.word	362		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2205:
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	2251,r13		! source line 2251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2206 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2206  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2258,r13		! source line 2258
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
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
	mov	2260,r13		! source line 2260
	mov	"\0\0SE",r10
!   _temp_2208 = &fileManagerLock
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
	mov	2263,r13		! source line 2263
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
	mov	2264,r13		! source line 2264
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
	mov	2265,r13		! source line 2265
	mov	"\0\0SE",r10
!   _temp_2211 = &anFCBBecameFree
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
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   _temp_2212 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2214 = &_temp_2213
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2214 = _temp_2214 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2216 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3116:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3116
!   _temp_2216 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2218:
!   Data Move: *_temp_2214 = _temp_2216  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3117:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3117
!   _temp_2214 = _temp_2214 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2215 = _temp_2215 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2215) then goto _Label_2218
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2218
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2219 = &_temp_2213
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3118
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3118:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2212 = *_temp_2219  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3119:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3119
! FOR STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2224 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2225 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2224  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2220:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2225 then goto _Label_2223		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2223
_Label_2221:
	mov	2268,r13		! source line 2268
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   _temp_2226 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2226 [i ] into _temp_2227
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
!   _temp_2228 = _temp_2227 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2228 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_2229 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2229 [i ] into _temp_2230
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
	mov	2271,r13		! source line 2271
	mov	"\0\0SE",r10
!   _temp_2232 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2232 [i ] into _temp_2233
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
!   _temp_2231 = _temp_2233		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2234 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2231  sizeInBytes=4
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
_Label_2222:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2220
! END FOR
_Label_2223:
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
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
	mov	2276,r13		! source line 2276
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
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_2237 = &anOpenFileBecameFree
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
	mov	2278,r13		! source line 2278
	mov	"\0\0AS",r10
!   _temp_2238 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2240 = &_temp_2239
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2240 = _temp_2240 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2242 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3120:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3120
!   _temp_2242 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2244:
!   Data Move: *_temp_2240 = _temp_2242  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3121:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3121
!   _temp_2240 = _temp_2240 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2241 = _temp_2241 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2241) then goto _Label_2244
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2244
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2245 = &_temp_2239
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3122
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3122:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2238 = *_temp_2245  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3123:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3123
! FOR STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2250 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2251 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2250  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2246:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2251 then goto _Label_2249		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2249
_Label_2247:
	mov	2280,r13		! source line 2280
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   _temp_2252 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2252 [i ] into _temp_2253
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
!   _temp_2254 = _temp_2253 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2254 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0SE",r10
!   _temp_2256 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2256 [i ] into _temp_2257
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
!   _temp_2255 = _temp_2257		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2258 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2255  sizeInBytes=4
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
_Label_2248:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2246
! END FOR
_Label_2249:
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3124:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3124
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   _temp_2260 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2261 = _temp_2260 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2261 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_2262 = &_P_Kernel_frameManager
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
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_2263 = &_P_Kernel_diskDriver
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
	mov	2293,r13		! source line 2293
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
	.word	_Label_2264
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2265
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2266
	.word	-12
	.word	4
	.word	_Label_2267
	.word	-16
	.word	4
	.word	_Label_2268
	.word	-20
	.word	4
	.word	_Label_2269
	.word	-24
	.word	4
	.word	_Label_2270
	.word	-28
	.word	4
	.word	_Label_2271
	.word	-32
	.word	4
	.word	_Label_2272
	.word	-36
	.word	4
	.word	_Label_2273
	.word	-40
	.word	4
	.word	_Label_2274
	.word	-44
	.word	4
	.word	_Label_2275
	.word	-48
	.word	4
	.word	_Label_2276
	.word	-52
	.word	4
	.word	_Label_2277
	.word	-56
	.word	4
	.word	_Label_2278
	.word	-60
	.word	4
	.word	_Label_2279
	.word	-64
	.word	4
	.word	_Label_2280
	.word	-68
	.word	4
	.word	_Label_2281
	.word	-72
	.word	4
	.word	_Label_2282
	.word	-100
	.word	28
	.word	_Label_2283
	.word	-104
	.word	4
	.word	_Label_2284
	.word	-108
	.word	4
	.word	_Label_2285
	.word	-392
	.word	284
	.word	_Label_2286
	.word	-396
	.word	4
	.word	_Label_2287
	.word	-400
	.word	4
	.word	_Label_2288
	.word	-404
	.word	4
	.word	_Label_2289
	.word	-408
	.word	4
	.word	_Label_2290
	.word	-412
	.word	4
	.word	_Label_2291
	.word	-416
	.word	4
	.word	_Label_2292
	.word	-420
	.word	4
	.word	_Label_2293
	.word	-424
	.word	4
	.word	_Label_2294
	.word	-428
	.word	4
	.word	_Label_2295
	.word	-432
	.word	4
	.word	_Label_2296
	.word	-436
	.word	4
	.word	_Label_2297
	.word	-440
	.word	4
	.word	_Label_2298
	.word	-444
	.word	4
	.word	_Label_2299
	.word	-448
	.word	4
	.word	_Label_2300
	.word	-452
	.word	4
	.word	_Label_2301
	.word	-456
	.word	4
	.word	_Label_2302
	.word	-460
	.word	4
	.word	_Label_2303
	.word	-500
	.word	40
	.word	_Label_2304
	.word	-504
	.word	4
	.word	_Label_2305
	.word	-508
	.word	4
	.word	_Label_2306
	.word	-912
	.word	404
	.word	_Label_2307
	.word	-916
	.word	4
	.word	_Label_2308
	.word	-920
	.word	4
	.word	_Label_2309
	.word	-924
	.word	4
	.word	_Label_2310
	.word	-928
	.word	4
	.word	_Label_2311
	.word	-932
	.word	4
	.word	_Label_2312
	.word	-936
	.word	4
	.word	_Label_2313
	.word	-940
	.word	4
	.word	_Label_2314
	.word	-944
	.word	4
	.word	0
_Label_2264:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2265:
	.ascii	"Pself\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2314:
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
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	2300,r13		! source line 2300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2315 = &fileManagerLock
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
!   _temp_2316 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2316  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2303,r13		! source line 2303
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2321 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2322 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2321  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2317:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2322 then goto _Label_2320		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2320
_Label_2318:
	mov	2304,r13		! source line 2304
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2323 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2323  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2305,r13		! source line 2305
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2306,r13		! source line 2306
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2324 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2324  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2307,r13		! source line 2307
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0SE",r10
!   _temp_2325 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2325 [i ] into _temp_2326
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
_Label_2319:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2317
! END FOR
_Label_2320:
! CALL STATEMENT...
!   _temp_2327 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2310,r13		! source line 2310
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0SE",r10
!   _temp_2328 = _function_198_printFCB
	set	_function_198_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2329 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2328  sizeInBytes=4
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
	mov	2312,r13		! source line 2312
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2330 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2330  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2313,r13		! source line 2313
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2335 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2336 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2335  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2331:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2336 then goto _Label_2334		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2334
_Label_2332:
	mov	2314,r13		! source line 2314
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2337 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-56],r1
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
!   _temp_2338 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2317,r13		! source line 2317
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2340 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2340 [i ] into _temp_2341
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
!   _temp_2339 = _temp_2341		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2318,r13		! source line 2318
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2342 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2342  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2319,r13		! source line 2319
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0SE",r10
!   _temp_2343 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2343 [i ] into _temp_2344
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
_Label_2333:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2331
! END FOR
_Label_2334:
! CALL STATEMENT...
!   _temp_2345 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2345  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2322,r13		! source line 2322
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2346 = _function_197_printOpen
	set	_function_197_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2347 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2346  sizeInBytes=4
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
	mov	2324,r13		! source line 2324
	mov	"\0\0SE",r10
!   _temp_2348 = &fileManagerLock
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
	mov	2324,r13		! source line 2324
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
	.word	_Label_2349
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2350
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2351
	.word	-12
	.word	4
	.word	_Label_2352
	.word	-16
	.word	4
	.word	_Label_2353
	.word	-20
	.word	4
	.word	_Label_2354
	.word	-24
	.word	4
	.word	_Label_2355
	.word	-28
	.word	4
	.word	_Label_2356
	.word	-32
	.word	4
	.word	_Label_2357
	.word	-36
	.word	4
	.word	_Label_2358
	.word	-40
	.word	4
	.word	_Label_2359
	.word	-44
	.word	4
	.word	_Label_2360
	.word	-48
	.word	4
	.word	_Label_2361
	.word	-52
	.word	4
	.word	_Label_2362
	.word	-56
	.word	4
	.word	_Label_2363
	.word	-60
	.word	4
	.word	_Label_2364
	.word	-64
	.word	4
	.word	_Label_2365
	.word	-68
	.word	4
	.word	_Label_2366
	.word	-72
	.word	4
	.word	_Label_2367
	.word	-76
	.word	4
	.word	_Label_2368
	.word	-80
	.word	4
	.word	_Label_2369
	.word	-84
	.word	4
	.word	_Label_2370
	.word	-88
	.word	4
	.word	_Label_2371
	.word	-92
	.word	4
	.word	_Label_2372
	.word	-96
	.word	4
	.word	_Label_2373
	.word	-100
	.word	4
	.word	_Label_2374
	.word	-104
	.word	4
	.word	_Label_2375
	.word	-108
	.word	4
	.word	_Label_2376
	.word	-112
	.word	4
	.word	_Label_2377
	.word	-116
	.word	4
	.word	0
_Label_2349:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2350:
	.ascii	"Pself\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2377:
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
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	2329,r13		! source line 2329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
	mov	2345,r13		! source line 2345
	mov	"\0\0SE",r10
!   _temp_2378 = &_P_Kernel_fileManager
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
	mov	2346,r13		! source line 2346
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2379
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2379
	jmp	_Label_2380
_Label_2379:
! THEN...
	mov	2347,r13		! source line 2347
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2380:
! SEND STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0SE",r10
!   _temp_2381 = &fileManagerLock
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
	mov	2352,r13		! source line 2352
	mov	"\0\0WH",r10
_Label_2382:
	mov	2352,r13		! source line 2352
	mov	"\0\0SE",r10
!   _temp_2385 = &openFileFreeList
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
!   if result==true then goto _Label_2383 else goto _Label_2384
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2384
	jmp	_Label_2383
_Label_2383:
	mov	2352,r13		! source line 2352
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0SE",r10
!   _temp_2386 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2387 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2386  sizeInBytes=4
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
	jmp	_Label_2382
_Label_2384:
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
	mov	2355,r13		! source line 2355
	mov	"\0\0SE",r10
!   _temp_2388 = &openFileFreeList
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
	mov	2358,r13		! source line 2358
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2389 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2389 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2390 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2390 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2391 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2391 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0SE",r10
!   _temp_2392 = &fileManagerLock
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
	mov	2365,r13		! source line 2365
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
	.word	_Label_2393
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2394
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2395
	.word	12
	.word	4
	.word	_Label_2396
	.word	-12
	.word	4
	.word	_Label_2397
	.word	-16
	.word	4
	.word	_Label_2398
	.word	-20
	.word	4
	.word	_Label_2399
	.word	-24
	.word	4
	.word	_Label_2400
	.word	-28
	.word	4
	.word	_Label_2401
	.word	-32
	.word	4
	.word	_Label_2402
	.word	-36
	.word	4
	.word	_Label_2403
	.word	-40
	.word	4
	.word	_Label_2404
	.word	-44
	.word	4
	.word	_Label_2405
	.word	-48
	.word	4
	.word	_Label_2406
	.word	-52
	.word	4
	.word	_Label_2407
	.word	-56
	.word	4
	.word	0
_Label_2393:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2394:
	.ascii	"Pself\0"
	.align
_Label_2395:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2406:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2407:
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
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	2370,r13		! source line 2370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
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
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2409		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2409
!	jmp	_Label_2408
_Label_2408:
! THEN...
	mov	2401,r13		! source line 2401
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2410 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2410  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2401,r13		! source line 2401
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2409:
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
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
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2407,r13		! source line 2407
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
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0WH",r10
_Label_2411:
!   if numFiles <= 0 then goto _Label_2413		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2413
!	jmp	_Label_2412
_Label_2412:
	mov	2411,r13		! source line 2411
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2414 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2414  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2412,r13		! source line 2412
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2415 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2415  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2414,r13		! source line 2414
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2416 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2416  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2416,r13		! source line 2416
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2420 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2420 then goto _Label_2418		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2418
!	jmp	_Label_2419
_Label_2419:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2422
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
!   _temp_2421 = _temp_2422		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2421  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2419,r13		! source line 2419
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2417 else goto _Label_2418
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2418
	jmp	_Label_2417
_Label_2417:
! THEN...
	mov	2420,r13		! source line 2420
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0BR",r10
	jmp	_Label_2413
! END IF...
_Label_2418:
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2411
_Label_2413:
! IF STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2424		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2424
!	jmp	_Label_2423
_Label_2423:
! THEN...
	mov	2428,r13		! source line 2428
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2424:
! SEND STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0SE",r10
!   _temp_2425 = &fileManagerLock
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
	mov	2433,r13		! source line 2433
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2430 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2431 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2430  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2426:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2431 then goto _Label_2429		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2429
_Label_2427:
	mov	2433,r13		! source line 2433
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
!   _temp_2432 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2432 [i ] into _temp_2433
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
!   fcb = _temp_2433		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2437 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2436 = *_temp_2437  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2436 != start then goto _Label_2435		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2435
!	jmp	_Label_2434
_Label_2434:
! THEN...
	mov	2436,r13		! source line 2436
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2438 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2441 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2440 = *_temp_2441  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2439 = _temp_2440 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2438 = _temp_2439  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0SE",r10
!   _temp_2442 = &fileManagerLock
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
	mov	2438,r13		! source line 2438
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2435:
!   Increment the FOR-LOOP index variable and jump back
_Label_2428:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2426
! END FOR
_Label_2429:
! WHILE STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0WH",r10
_Label_2443:
	mov	2443,r13		! source line 2443
	mov	"\0\0SE",r10
!   _temp_2446 = &fcbFreeList
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
!   if result==true then goto _Label_2444 else goto _Label_2445
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2445
	jmp	_Label_2444
_Label_2444:
	mov	2443,r13		! source line 2443
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0SE",r10
!   _temp_2447 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2448 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2447  sizeInBytes=4
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
	jmp	_Label_2443
_Label_2445:
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
	mov	2446,r13		! source line 2446
	mov	"\0\0SE",r10
!   _temp_2449 = &fcbFreeList
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
	mov	2449,r13		! source line 2449
	mov	"\0\0SE",r10
!   _temp_2450 = &fileManagerLock
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
	mov	2452,r13		! source line 2452
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2451 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2451 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2452 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2452 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2453 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2453 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2458 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2457 = *_temp_2458  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2457 < 0 then goto _Label_2456		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2456
	jmp	_Label_2454
_Label_2456:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2459 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2459 ) then goto _Label_2455		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2455
!	jmp	_Label_2454
_Label_2454:
! THEN...
	mov	2456,r13		! source line 2456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2460 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2460  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2456,r13		! source line 2456
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2455:
! RETURN STATEMENT...
	mov	2458,r13		! source line 2458
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
	.word	_Label_2461
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2463
	.word	12
	.word	4
	.word	_Label_2464
	.word	-12
	.word	4
	.word	_Label_2465
	.word	-16
	.word	4
	.word	_Label_2466
	.word	-20
	.word	4
	.word	_Label_2467
	.word	-24
	.word	4
	.word	_Label_2468
	.word	-28
	.word	4
	.word	_Label_2469
	.word	-32
	.word	4
	.word	_Label_2470
	.word	-36
	.word	4
	.word	_Label_2471
	.word	-40
	.word	4
	.word	_Label_2472
	.word	-44
	.word	4
	.word	_Label_2473
	.word	-48
	.word	4
	.word	_Label_2474
	.word	-52
	.word	4
	.word	_Label_2475
	.word	-56
	.word	4
	.word	_Label_2476
	.word	-60
	.word	4
	.word	_Label_2477
	.word	-64
	.word	4
	.word	_Label_2478
	.word	-68
	.word	4
	.word	_Label_2479
	.word	-72
	.word	4
	.word	_Label_2480
	.word	-76
	.word	4
	.word	_Label_2481
	.word	-80
	.word	4
	.word	_Label_2482
	.word	-84
	.word	4
	.word	_Label_2483
	.word	-88
	.word	4
	.word	_Label_2484
	.word	-92
	.word	4
	.word	_Label_2485
	.word	-96
	.word	4
	.word	_Label_2486
	.word	-100
	.word	4
	.word	_Label_2487
	.word	-104
	.word	4
	.word	_Label_2488
	.word	-108
	.word	4
	.word	_Label_2489
	.word	-112
	.word	4
	.word	_Label_2490
	.word	-116
	.word	4
	.word	_Label_2491
	.word	-120
	.word	4
	.word	_Label_2492
	.word	-124
	.word	4
	.word	_Label_2493
	.word	-128
	.word	4
	.word	_Label_2494
	.word	-132
	.word	4
	.word	_Label_2495
	.word	-136
	.word	4
	.word	_Label_2496
	.word	-140
	.word	4
	.word	_Label_2497
	.word	-144
	.word	4
	.word	_Label_2498
	.word	-148
	.word	4
	.word	_Label_2499
	.word	-152
	.word	4
	.word	_Label_2500
	.word	-156
	.word	4
	.word	_Label_2501
	.word	-160
	.word	4
	.word	0
_Label_2461:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2462:
	.ascii	"Pself\0"
	.align
_Label_2463:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2495:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2496:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2497:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2498:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2499:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2500:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2501:
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
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	2471,r13		! source line 2471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0IF",r10
!   _temp_2504 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2504 then goto _Label_2503		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2503
!	jmp	_Label_2502
_Label_2502:
! THEN...
	mov	2474,r13		! source line 2474
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2503:
! SEND STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   _temp_2505 = &fileManagerLock
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
	mov	2477,r13		! source line 2477
	mov	"\0\0SE",r10
!   _temp_2506 = &_P_Kernel_fileManager
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
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2507 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2507  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2508 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2511 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2510 = *_temp_2511  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2509 = _temp_2510 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2508 = _temp_2509  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2515 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2514 = *_temp_2515  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2514 > 0 then goto _Label_2513		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2513
!	jmp	_Label_2512
_Label_2512:
! THEN...
	mov	2481,r13		! source line 2481
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0SE",r10
!   _temp_2516 = &openFileFreeList
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
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   _temp_2517 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2518 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2517  sizeInBytes=4
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
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2519 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2522 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2521 = *_temp_2522  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2520 = _temp_2521 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2519 = _temp_2520  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2526 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2525 = *_temp_2526  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2525 > 0 then goto _Label_2524		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2524
!	jmp	_Label_2523
_Label_2523:
! THEN...
	mov	2485,r13		! source line 2485
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0SE",r10
!   _temp_2527 = &fcbFreeList
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
	mov	2486,r13		! source line 2486
	mov	"\0\0SE",r10
!   _temp_2528 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2529 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2528  sizeInBytes=4
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
_Label_2524:
! END IF...
_Label_2513:
! SEND STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0SE",r10
!   _temp_2530 = &fileManagerLock
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
	mov	2489,r13		! source line 2489
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
	.word	_Label_2531
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2533
	.word	12
	.word	4
	.word	_Label_2534
	.word	-12
	.word	4
	.word	_Label_2535
	.word	-16
	.word	4
	.word	_Label_2536
	.word	-20
	.word	4
	.word	_Label_2537
	.word	-24
	.word	4
	.word	_Label_2538
	.word	-28
	.word	4
	.word	_Label_2539
	.word	-32
	.word	4
	.word	_Label_2540
	.word	-36
	.word	4
	.word	_Label_2541
	.word	-40
	.word	4
	.word	_Label_2542
	.word	-44
	.word	4
	.word	_Label_2543
	.word	-48
	.word	4
	.word	_Label_2544
	.word	-52
	.word	4
	.word	_Label_2545
	.word	-56
	.word	4
	.word	_Label_2546
	.word	-60
	.word	4
	.word	_Label_2547
	.word	-64
	.word	4
	.word	_Label_2548
	.word	-68
	.word	4
	.word	_Label_2549
	.word	-72
	.word	4
	.word	_Label_2550
	.word	-76
	.word	4
	.word	_Label_2551
	.word	-80
	.word	4
	.word	_Label_2552
	.word	-84
	.word	4
	.word	_Label_2553
	.word	-88
	.word	4
	.word	_Label_2554
	.word	-92
	.word	4
	.word	_Label_2555
	.word	-96
	.word	4
	.word	_Label_2556
	.word	-100
	.word	4
	.word	_Label_2557
	.word	-104
	.word	4
	.word	0
_Label_2531:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2532:
	.ascii	"Pself\0"
	.align
_Label_2533:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2557:
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
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	2494,r13		! source line 2494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2561 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2560 = *_temp_2561  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2560) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2562 = _temp_2560 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2562 ) then goto _Label_2559		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2559
!	jmp	_Label_2558
_Label_2558:
! THEN...
	mov	2500,r13		! source line 2500
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2567 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2566 = *_temp_2567  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2566) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2568 = _temp_2566 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2565 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2565 >= 0 then goto _Label_2564		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2564
!	jmp	_Label_2563
_Label_2563:
! THEN...
	mov	2501,r13		! source line 2501
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2569 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2569  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2501,r13		! source line 2501
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2564:
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2571 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2570 = *_temp_2571  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2570) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2572 = _temp_2570 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2572 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2576 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2575 = *_temp_2576  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2575) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2577 = _temp_2575 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2574 = *_temp_2577  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2580 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2579 = *_temp_2580  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2579) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2581 = _temp_2579 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2578 = *_temp_2581  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2573 = _temp_2574 + _temp_2578		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2584 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2583 = *_temp_2584  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2583) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2585 = _temp_2583 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2582 = *_temp_2585  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2586 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2573  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2582  sizeInBytes=4
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
_Label_2559:
! RETURN STATEMENT...
	mov	2499,r13		! source line 2499
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
	.word	_Label_2587
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2589
	.word	12
	.word	4
	.word	_Label_2590
	.word	-12
	.word	4
	.word	_Label_2591
	.word	-16
	.word	4
	.word	_Label_2592
	.word	-20
	.word	4
	.word	_Label_2593
	.word	-24
	.word	4
	.word	_Label_2594
	.word	-28
	.word	4
	.word	_Label_2595
	.word	-32
	.word	4
	.word	_Label_2596
	.word	-36
	.word	4
	.word	_Label_2597
	.word	-40
	.word	4
	.word	_Label_2598
	.word	-44
	.word	4
	.word	_Label_2599
	.word	-48
	.word	4
	.word	_Label_2600
	.word	-52
	.word	4
	.word	_Label_2601
	.word	-56
	.word	4
	.word	_Label_2602
	.word	-60
	.word	4
	.word	_Label_2603
	.word	-64
	.word	4
	.word	_Label_2604
	.word	-68
	.word	4
	.word	_Label_2605
	.word	-72
	.word	4
	.word	_Label_2606
	.word	-76
	.word	4
	.word	_Label_2607
	.word	-80
	.word	4
	.word	_Label_2608
	.word	-84
	.word	4
	.word	_Label_2609
	.word	-88
	.word	4
	.word	_Label_2610
	.word	-92
	.word	4
	.word	_Label_2611
	.word	-96
	.word	4
	.word	_Label_2612
	.word	-100
	.word	4
	.word	_Label_2613
	.word	-104
	.word	4
	.word	_Label_2614
	.word	-108
	.word	4
	.word	0
_Label_2587:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2588:
	.ascii	"Pself\0"
	.align
_Label_2589:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2560\0"
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
_Label_3130:
	push	r0
	sub	r1,1,r1
	bne	_Label_3130
	mov	2513,r13		! source line 2513
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_2615 = &fileManagerLock
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
	mov	2529,r13		! source line 2529
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2621		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2621
!   _temp_2620 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2622
_Label_2621:
!   _temp_2620 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2622:
!   if _temp_2620 then goto _Label_2619 else goto _Label_2616
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2616
	jmp	_Label_2619
_Label_2619:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2625 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2624 = *_temp_2625  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2624 == 0 then goto _Label_2626		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2626
!   _temp_2623 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2627
_Label_2626:
!   _temp_2623 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2627:
!   if _temp_2623 then goto _Label_2618 else goto _Label_2616
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2616
	jmp	_Label_2618
_Label_2618:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2630 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2629 = *_temp_2630  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2629) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2631 = _temp_2629 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2628 = *_temp_2631  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2628 >= 0 then goto _Label_2617		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2617
!	jmp	_Label_2616
_Label_2616:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2632 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2632  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2530,r13		! source line 2530
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2617:
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2633 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2633  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0WH",r10
_Label_2634:
!   if numBytes <= 0 then goto _Label_2636		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2636
!	jmp	_Label_2635
_Label_2635:
	mov	2533,r13		! source line 2533
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
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
	mov	2543,r13		! source line 2543
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
	mov	2547,r13		! source line 2547
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2640 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2639 = *_temp_2640  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2639 == sector then goto _Label_2638		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2638
!	jmp	_Label_2637
_Label_2637:
! THEN...
	mov	2548,r13		! source line 2548
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2641) then goto _runtimeErrorNullPointer
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
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2644 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2643 = *_temp_2644  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2642 = sector + _temp_2643		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2646 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2645 = *_temp_2646  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2647 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2642  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2645  sizeInBytes=4
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
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2648 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2648 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2649 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2649 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2638:
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2651 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2650 = *_temp_2651  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2650 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
!   _temp_2652 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2652  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2557,r13		! source line 2557
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
	mov	2561,r13		! source line 2561
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2634
_Label_2636:
! SEND STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0SE",r10
!   _temp_2653 = &fileManagerLock
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
	mov	2572,r13		! source line 2572
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
	.word	_Label_2654
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2655
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2656
	.word	12
	.word	4
	.word	_Label_2657
	.word	16
	.word	4
	.word	_Label_2658
	.word	20
	.word	4
	.word	_Label_2659
	.word	24
	.word	4
	.word	_Label_2660
	.word	-16
	.word	4
	.word	_Label_2661
	.word	-20
	.word	4
	.word	_Label_2662
	.word	-24
	.word	4
	.word	_Label_2663
	.word	-28
	.word	4
	.word	_Label_2664
	.word	-32
	.word	4
	.word	_Label_2665
	.word	-36
	.word	4
	.word	_Label_2666
	.word	-40
	.word	4
	.word	_Label_2667
	.word	-44
	.word	4
	.word	_Label_2668
	.word	-48
	.word	4
	.word	_Label_2669
	.word	-52
	.word	4
	.word	_Label_2670
	.word	-56
	.word	4
	.word	_Label_2671
	.word	-60
	.word	4
	.word	_Label_2672
	.word	-64
	.word	4
	.word	_Label_2673
	.word	-68
	.word	4
	.word	_Label_2674
	.word	-72
	.word	4
	.word	_Label_2675
	.word	-76
	.word	4
	.word	_Label_2676
	.word	-80
	.word	4
	.word	_Label_2677
	.word	-84
	.word	4
	.word	_Label_2678
	.word	-88
	.word	4
	.word	_Label_2679
	.word	-92
	.word	4
	.word	_Label_2680
	.word	-96
	.word	4
	.word	_Label_2681
	.word	-100
	.word	4
	.word	_Label_2682
	.word	-104
	.word	4
	.word	_Label_2683
	.word	-9
	.word	1
	.word	_Label_2684
	.word	-10
	.word	1
	.word	_Label_2685
	.word	-108
	.word	4
	.word	_Label_2686
	.word	-112
	.word	4
	.word	_Label_2687
	.word	-116
	.word	4
	.word	_Label_2688
	.word	-120
	.word	4
	.word	_Label_2689
	.word	-124
	.word	4
	.word	_Label_2690
	.word	-128
	.word	4
	.word	0
_Label_2654:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2655:
	.ascii	"Pself\0"
	.align
_Label_2656:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2657:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2658:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2659:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2683:
	.byte	'C'
	.ascii	"_temp_2623\0"
	.align
_Label_2684:
	.byte	'C'
	.ascii	"_temp_2620\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2686:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2687:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2689:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2690:
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
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	2577,r13		! source line 2577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0SE",r10
!   _temp_2691 = &fileManagerLock
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
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2697		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2697
!   _temp_2696 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2698
_Label_2697:
!   _temp_2696 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2698:
!   if _temp_2696 then goto _Label_2695 else goto _Label_2692
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2692
	jmp	_Label_2695
_Label_2695:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2701 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2700 = *_temp_2701  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2700 == 0 then goto _Label_2702		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2702
!   _temp_2699 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2703
_Label_2702:
!   _temp_2699 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2703:
!   if _temp_2699 then goto _Label_2694 else goto _Label_2692
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2692
	jmp	_Label_2694
_Label_2694:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2706 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2705 = *_temp_2706  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2705) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2707 = _temp_2705 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2704 = *_temp_2707  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2704 >= 0 then goto _Label_2693		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2693
!	jmp	_Label_2692
_Label_2692:
! THEN...
	mov	2595,r13		! source line 2595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2708 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2708  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2595,r13		! source line 2595
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2693:
! ASSIGNMENT STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2709 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2709  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0WH",r10
_Label_2710:
!   if numBytes <= 0 then goto _Label_2712		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2712
!	jmp	_Label_2711
_Label_2711:
	mov	2598,r13		! source line 2598
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
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
	mov	2608,r13		! source line 2608
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
	mov	2612,r13		! source line 2612
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2716 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2715 = *_temp_2716  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2715 == sector then goto _Label_2714		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2714
!	jmp	_Label_2713
_Label_2713:
! THEN...
	mov	2614,r13		! source line 2614
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2717) then goto _runtimeErrorNullPointer
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
_Label_2714:
! ASSIGNMENT STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2719 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2718 = *_temp_2719  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2718 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0AS",r10
!   _temp_2720 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2720  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2617,r13		! source line 2617
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2724 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2723 = *_temp_2724  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2723 != sector then goto _Label_2722		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2722
!	jmp	_Label_2721
_Label_2721:
	jmp	_Label_2725
_Label_2722:
! ELSE...
	mov	2620,r13		! source line 2620
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2728
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2728
	jmp	_Label_2727
_Label_2728:
!   if bytesToMove != 8192 then goto _Label_2727		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2727
!	jmp	_Label_2726
_Label_2726:
	jmp	_Label_2729
_Label_2727:
! ELSE...
	mov	2624,r13		! source line 2624
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2732 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2731 = *_temp_2732  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2730 = sector + _temp_2731		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2734 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2733 = *_temp_2734  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2735 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2730  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2733  sizeInBytes=4
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
_Label_2729:
! END IF...
_Label_2725:
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2736 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2736 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2737 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2737 = 1  (sizeInBytes=1)
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
	mov	2633,r13		! source line 2633
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2710
_Label_2712:
! SEND STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0SE",r10
!   _temp_2738 = &fileManagerLock
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
	mov	2645,r13		! source line 2645
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
	.word	_Label_2739
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2741
	.word	12
	.word	4
	.word	_Label_2742
	.word	16
	.word	4
	.word	_Label_2743
	.word	20
	.word	4
	.word	_Label_2744
	.word	24
	.word	4
	.word	_Label_2745
	.word	-16
	.word	4
	.word	_Label_2746
	.word	-20
	.word	4
	.word	_Label_2747
	.word	-24
	.word	4
	.word	_Label_2748
	.word	-28
	.word	4
	.word	_Label_2749
	.word	-32
	.word	4
	.word	_Label_2750
	.word	-36
	.word	4
	.word	_Label_2751
	.word	-40
	.word	4
	.word	_Label_2752
	.word	-44
	.word	4
	.word	_Label_2753
	.word	-48
	.word	4
	.word	_Label_2754
	.word	-52
	.word	4
	.word	_Label_2755
	.word	-56
	.word	4
	.word	_Label_2756
	.word	-60
	.word	4
	.word	_Label_2757
	.word	-64
	.word	4
	.word	_Label_2758
	.word	-68
	.word	4
	.word	_Label_2759
	.word	-72
	.word	4
	.word	_Label_2760
	.word	-76
	.word	4
	.word	_Label_2761
	.word	-80
	.word	4
	.word	_Label_2762
	.word	-84
	.word	4
	.word	_Label_2763
	.word	-88
	.word	4
	.word	_Label_2764
	.word	-92
	.word	4
	.word	_Label_2765
	.word	-96
	.word	4
	.word	_Label_2766
	.word	-100
	.word	4
	.word	_Label_2767
	.word	-104
	.word	4
	.word	_Label_2768
	.word	-108
	.word	4
	.word	_Label_2769
	.word	-112
	.word	4
	.word	_Label_2770
	.word	-9
	.word	1
	.word	_Label_2771
	.word	-10
	.word	1
	.word	_Label_2772
	.word	-116
	.word	4
	.word	_Label_2773
	.word	-120
	.word	4
	.word	_Label_2774
	.word	-124
	.word	4
	.word	_Label_2775
	.word	-128
	.word	4
	.word	_Label_2776
	.word	-132
	.word	4
	.word	_Label_2777
	.word	-136
	.word	4
	.word	0
_Label_2739:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2740:
	.ascii	"Pself\0"
	.align
_Label_2741:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2742:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2743:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2744:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2770:
	.byte	'C'
	.ascii	"_temp_2699\0"
	.align
_Label_2771:
	.byte	'C'
	.ascii	"_temp_2696\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2773:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2774:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2775:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2776:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2777:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2778
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2778:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2779
	.word	_sourceFileName
	.word	387		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2779:
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
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	2681,r13		! source line 2681
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
!   _temp_2780 = &_P_Kernel_frameManager
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
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2686,r13		! source line 2686
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
	.word	_Label_2781
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2782
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2783
	.word	-12
	.word	4
	.word	0
_Label_2781:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2782:
	.ascii	"Pself\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2780\0"
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
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	2691,r13		! source line 2691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2784 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2784  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2785 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2785  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2695,r13		! source line 2695
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2786 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2786  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2696,r13		! source line 2696
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2697,r13		! source line 2697
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2787 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2787  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2699,r13		! source line 2699
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2788 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2788  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2700,r13		! source line 2700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2701,r13		! source line 2701
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2789 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2702,r13		! source line 2702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2703,r13		! source line 2703
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2704,r13		! source line 2704
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2704,r13		! source line 2704
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
	.word	_Label_2790
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2791
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2792
	.word	-12
	.word	4
	.word	_Label_2793
	.word	-16
	.word	4
	.word	_Label_2794
	.word	-20
	.word	4
	.word	_Label_2795
	.word	-24
	.word	4
	.word	_Label_2796
	.word	-28
	.word	4
	.word	_Label_2797
	.word	-32
	.word	4
	.word	0
_Label_2790:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2791:
	.ascii	"Pself\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2798
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2798:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2799
	.word	_sourceFileName
	.word	404		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2799:
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
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	2715,r13		! source line 2715
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2800 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2800  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2716,r13		! source line 2716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2717,r13		! source line 2717
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2801 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2801  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2718,r13		! source line 2718
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2803		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2803
!	jmp	_Label_2802
_Label_2802:
! THEN...
	mov	2720,r13		! source line 2720
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2720,r13		! source line 2720
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
	jmp	_Label_2804
_Label_2803:
! ELSE...
	mov	2722,r13		! source line 2722
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2805 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2722,r13		! source line 2722
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2804:
! RETURN STATEMENT...
	mov	2719,r13		! source line 2719
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
	.word	_Label_2806
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2807
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2808
	.word	-12
	.word	4
	.word	_Label_2809
	.word	-16
	.word	4
	.word	_Label_2810
	.word	-20
	.word	4
	.word	0
_Label_2806:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2807:
	.ascii	"Pself\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2800\0"
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
_Label_3135:
	push	r0
	sub	r1,1,r1
	bne	_Label_3135
	mov	2728,r13		! source line 2728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0SE",r10
!   _temp_2811 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2812 = _temp_2811 + 4
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
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
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
	mov	2741,r13		! source line 2741
	mov	"\0\0SE",r10
!   _temp_2813 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2814 = _temp_2813 + 4
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
	mov	2742,r13		! source line 2742
	mov	"\0\0RE",r10
	mov	2742,r13		! source line 2742
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2817 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2816  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2815  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2815  (sizeInBytes=1)
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
	.word	_Label_2818
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2819
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2820
	.word	12
	.word	4
	.word	_Label_2821
	.word	16
	.word	4
	.word	_Label_2822
	.word	-16
	.word	4
	.word	_Label_2823
	.word	-20
	.word	4
	.word	_Label_2824
	.word	-9
	.word	1
	.word	_Label_2825
	.word	-24
	.word	4
	.word	_Label_2826
	.word	-28
	.word	4
	.word	_Label_2827
	.word	-32
	.word	4
	.word	_Label_2828
	.word	-36
	.word	4
	.word	_Label_2829
	.word	-40
	.word	4
	.word	0
_Label_2818:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2819:
	.ascii	"Pself\0"
	.align
_Label_2820:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2821:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2824:
	.byte	'C'
	.ascii	"_temp_2815\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2829:
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
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	2747,r13		! source line 2747
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0IF",r10
	mov	2752,r13		! source line 2752
	mov	"\0\0SE",r10
!   _temp_2833 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2834) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2833  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2832  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2832 then goto _Label_2831 else goto _Label_2830
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2830
	jmp	_Label_2831
_Label_2830:
! THEN...
	mov	2753,r13		! source line 2753
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2835 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2835  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2753,r13		! source line 2753
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2831:
! RETURN STATEMENT...
	mov	2755,r13		! source line 2755
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
	.word	_Label_2836
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2838
	.word	-16
	.word	4
	.word	_Label_2839
	.word	-20
	.word	4
	.word	_Label_2840
	.word	-24
	.word	4
	.word	_Label_2841
	.word	-9
	.word	1
	.word	_Label_2842
	.word	-28
	.word	4
	.word	0
_Label_2836:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2837:
	.ascii	"Pself\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2841:
	.byte	'C'
	.ascii	"_temp_2832\0"
	.align
_Label_2842:
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
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	2760,r13		! source line 2760
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2846 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2845 = *_temp_2846  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2845) then goto _Label_2844
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2844
!	jmp	_Label_2843
_Label_2843:
! THEN...
	mov	2787,r13		! source line 2787
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2847 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2847  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2787,r13		! source line 2787
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2844:
! IF STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0IF",r10
	mov	2791,r13		! source line 2791
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2851) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2850  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2850 == 1112300152 then goto _Label_2849		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2849
!	jmp	_Label_2848
_Label_2848:
! THEN...
	mov	2792,r13		! source line 2792
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2852 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2852  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2849:
! ASSIGNMENT STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0AS",r10
	mov	2797,r13		! source line 2797
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2853) then goto _runtimeErrorNullPointer
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
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
	mov	2798,r13		! source line 2798
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2854) then goto _runtimeErrorNullPointer
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
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
	mov	2799,r13		! source line 2799
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2855) then goto _runtimeErrorNullPointer
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
	mov	2800,r13		! source line 2800
	mov	"\0\0AS",r10
	mov	2800,r13		! source line 2800
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2856) then goto _runtimeErrorNullPointer
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
	mov	2801,r13		! source line 2801
	mov	"\0\0AS",r10
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2857) then goto _runtimeErrorNullPointer
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
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2858) then goto _runtimeErrorNullPointer
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
	mov	2805,r13		! source line 2805
	mov	"\0\0IF",r10
!   _temp_2861 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2861) then goto _Label_2860
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2860
!	jmp	_Label_2859
_Label_2859:
! THEN...
	mov	2806,r13		! source line 2806
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2862 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2862  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2860:
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
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
	mov	2813,r13		! source line 2813
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2864
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2864
!	jmp	_Label_2863
_Label_2863:
! THEN...
	mov	2814,r13		! source line 2814
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2865 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2865  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2864:
! IF STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0IF",r10
!   _temp_2868 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2868) then goto _Label_2867
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2867
!	jmp	_Label_2866
_Label_2866:
! THEN...
	mov	2820,r13		! source line 2820
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2869 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2869  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2820,r13		! source line 2820
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2867:
! IF STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0IF",r10
!   _temp_2872 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2872 then goto _Label_2871		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2871
!	jmp	_Label_2870
_Label_2870:
! THEN...
	mov	2824,r13		! source line 2824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2873 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2873  sizeInBytes=4
	load	[r14+-148],r1
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
_Label_2871:
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
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
	mov	2830,r13		! source line 2830
	mov	"\0\0IF",r10
!   _temp_2876 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2876) then goto _Label_2875
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2875
!	jmp	_Label_2874
_Label_2874:
! THEN...
	mov	2831,r13		! source line 2831
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2877 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2877  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2875:
! IF STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0IF",r10
!   _temp_2880 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2880 then goto _Label_2879		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2879
!	jmp	_Label_2878
_Label_2878:
! THEN...
	mov	2835,r13		! source line 2835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2881 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2881  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2835,r13		! source line 2835
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2879:
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
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
	mov	2841,r13		! source line 2841
	mov	"\0\0AS",r10
!   _temp_2884 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2883 = _temp_2884 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2882 = _temp_2883 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2882 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2886		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2886
!	jmp	_Label_2885
_Label_2885:
! THEN...
	mov	2857,r13		! source line 2857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2887 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2887  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2857,r13		! source line 2857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2888 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2888  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2858,r13		! source line 2858
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2889 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2889  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2859,r13		! source line 2859
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2860,r13		! source line 2860
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
! SEND STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0SE",r10
!   _temp_2890 = &_P_Kernel_frameManager
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
	mov	2868,r13		! source line 2868
	mov	"\0\0IF",r10
	mov	2868,r13		! source line 2868
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2894) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2893  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2893 == 707406378 then goto _Label_2892		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2892
!	jmp	_Label_2891
_Label_2891:
! THEN...
	mov	2869,r13		! source line 2869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2895 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2895  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0SE",r10
!   _temp_2896 = &_P_Kernel_frameManager
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
	mov	2871,r13		! source line 2871
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2892:
! ASSIGNMENT STATEMENT...
	mov	2875,r13		! source line 2875
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
	mov	2876,r13		! source line 2876
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2901 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2902 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2901  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2897:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2902 then goto _Label_2900		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2900
_Label_2898:
	mov	2876,r13		! source line 2876
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0AS",r10
	mov	2877,r13		! source line 2877
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
	mov	2880,r13		! source line 2880
	mov	"\0\0IF",r10
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2906) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2905  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2905 then goto _Label_2904 else goto _Label_2903
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2903
	jmp	_Label_2904
_Label_2903:
! THEN...
	mov	2881,r13		! source line 2881
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2907 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2907  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2881,r13		! source line 2881
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0SE",r10
!   _temp_2908 = &_P_Kernel_frameManager
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
	mov	2883,r13		! source line 2883
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
! SEND STATEMENT...
	mov	2885,r13		! source line 2885
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
	mov	2886,r13		! source line 2886
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2899:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2897
! END FOR
_Label_2900:
! IF STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0IF",r10
	mov	2890,r13		! source line 2890
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2912) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2911  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2911 == 707406378 then goto _Label_2910		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2910
!	jmp	_Label_2909
_Label_2909:
! THEN...
	mov	2891,r13		! source line 2891
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2913 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2913  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0SE",r10
!   _temp_2914 = &_P_Kernel_frameManager
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
_Label_2910:
! FOR STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2919 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2920 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2919  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2915:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2920 then goto _Label_2918		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2918
_Label_2916:
	mov	2897,r13		! source line 2897
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0AS",r10
	mov	2898,r13		! source line 2898
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
	mov	2901,r13		! source line 2901
	mov	"\0\0IF",r10
	mov	2901,r13		! source line 2901
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2924) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2923  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2923 then goto _Label_2922 else goto _Label_2921
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2921
	jmp	_Label_2922
_Label_2921:
! THEN...
	mov	2902,r13		! source line 2902
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2925 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2925  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0SE",r10
!   _temp_2926 = &_P_Kernel_frameManager
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
	mov	2904,r13		! source line 2904
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
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2917:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2915
! END FOR
_Label_2918:
! IF STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0IF",r10
	mov	2910,r13		! source line 2910
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2930) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2929  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2929 == 707406378 then goto _Label_2928		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2928
!	jmp	_Label_2927
_Label_2927:
! THEN...
	mov	2911,r13		! source line 2911
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2931 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2911,r13		! source line 2911
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
!   _temp_2932 = &_P_Kernel_frameManager
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
	mov	2913,r13		! source line 2913
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2928:
! ASSIGNMENT STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0AS",r10
	mov	2917,r13		! source line 2917
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
	mov	2921,r13		! source line 2921
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2924,r13		! source line 2924
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
	.word	_Label_2933
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2935
	.word	12
	.word	4
	.word	_Label_2936
	.word	-16
	.word	4
	.word	_Label_2937
	.word	-20
	.word	4
	.word	_Label_2938
	.word	-24
	.word	4
	.word	_Label_2939
	.word	-28
	.word	4
	.word	_Label_2940
	.word	-32
	.word	4
	.word	_Label_2941
	.word	-36
	.word	4
	.word	_Label_2942
	.word	-40
	.word	4
	.word	_Label_2943
	.word	-9
	.word	1
	.word	_Label_2944
	.word	-44
	.word	4
	.word	_Label_2945
	.word	-48
	.word	4
	.word	_Label_2946
	.word	-52
	.word	4
	.word	_Label_2947
	.word	-56
	.word	4
	.word	_Label_2948
	.word	-60
	.word	4
	.word	_Label_2949
	.word	-64
	.word	4
	.word	_Label_2950
	.word	-68
	.word	4
	.word	_Label_2951
	.word	-72
	.word	4
	.word	_Label_2952
	.word	-76
	.word	4
	.word	_Label_2953
	.word	-10
	.word	1
	.word	_Label_2954
	.word	-80
	.word	4
	.word	_Label_2955
	.word	-84
	.word	4
	.word	_Label_2956
	.word	-88
	.word	4
	.word	_Label_2957
	.word	-92
	.word	4
	.word	_Label_2958
	.word	-96
	.word	4
	.word	_Label_2959
	.word	-100
	.word	4
	.word	_Label_2960
	.word	-104
	.word	4
	.word	_Label_2961
	.word	-108
	.word	4
	.word	_Label_2962
	.word	-112
	.word	4
	.word	_Label_2963
	.word	-116
	.word	4
	.word	_Label_2964
	.word	-120
	.word	4
	.word	_Label_2965
	.word	-124
	.word	4
	.word	_Label_2966
	.word	-128
	.word	4
	.word	_Label_2967
	.word	-132
	.word	4
	.word	_Label_2968
	.word	-136
	.word	4
	.word	_Label_2969
	.word	-140
	.word	4
	.word	_Label_2970
	.word	-144
	.word	4
	.word	_Label_2971
	.word	-148
	.word	4
	.word	_Label_2972
	.word	-152
	.word	4
	.word	_Label_2973
	.word	-156
	.word	4
	.word	_Label_2974
	.word	-160
	.word	4
	.word	_Label_2975
	.word	-164
	.word	4
	.word	_Label_2976
	.word	-168
	.word	4
	.word	_Label_2977
	.word	-172
	.word	4
	.word	_Label_2978
	.word	-176
	.word	4
	.word	_Label_2979
	.word	-180
	.word	4
	.word	_Label_2980
	.word	-184
	.word	4
	.word	_Label_2981
	.word	-188
	.word	4
	.word	_Label_2982
	.word	-192
	.word	4
	.word	_Label_2983
	.word	-196
	.word	4
	.word	_Label_2984
	.word	-200
	.word	4
	.word	_Label_2985
	.word	-204
	.word	4
	.word	_Label_2986
	.word	-208
	.word	4
	.word	_Label_2987
	.word	-212
	.word	4
	.word	_Label_2988
	.word	-216
	.word	4
	.word	_Label_2989
	.word	-220
	.word	4
	.word	_Label_2990
	.word	-224
	.word	4
	.word	_Label_2991
	.word	-228
	.word	4
	.word	_Label_2992
	.word	-232
	.word	4
	.word	_Label_2993
	.word	-236
	.word	4
	.word	_Label_2994
	.word	-240
	.word	4
	.word	_Label_2995
	.word	-244
	.word	4
	.word	_Label_2996
	.word	-248
	.word	4
	.word	_Label_2997
	.word	-252
	.word	4
	.word	_Label_2998
	.word	-256
	.word	4
	.word	_Label_2999
	.word	-260
	.word	4
	.word	_Label_3000
	.word	-264
	.word	4
	.word	_Label_3001
	.word	-268
	.word	4
	.word	0
_Label_2933:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2934:
	.ascii	"Pself\0"
	.align
_Label_2935:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2943:
	.byte	'C'
	.ascii	"_temp_2923\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2953:
	.byte	'C'
	.ascii	"_temp_2905\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2990:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2991:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2992:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2993:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2994:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2995:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2996:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2997:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3001:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
