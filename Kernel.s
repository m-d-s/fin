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
_StringConst_191:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_190:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_189:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_188:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_187:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_186:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_185:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_184:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_183:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_182:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_181:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_180:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_179:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_178:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_177:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_176:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_175:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_174:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_173:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_172:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_171:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_170:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_169:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_168:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_167:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_166:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_165:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_164:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_163:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_162:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_161:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_160:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_159:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_158:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_157:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_156:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_155:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_154:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_153:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_152:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_151:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_150:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_149:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_148:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_147:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_146:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_145:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_144:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_143:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_142:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_141:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_140:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_139:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_138:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
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
	.word	6			! length
	.ascii	"      "
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
	.word	9			! length
	.ascii	"         "
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
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_125:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_124:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_122:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_120:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_119:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_118:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_117:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_116:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_115:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_114:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_113:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_112:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_111:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_110:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_109:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_108:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_105:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_104:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_103:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_102:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_101:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_100:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_99:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_98:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_97:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_96:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_95:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_94:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_92:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	"T9"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"T8"
	.align
_StringConst_89:
	.word	2			! length
	.ascii	"T7"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	"T6"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"T5"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	"T4"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"T3"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	"T2"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	"T1"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"T0"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_79:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_78:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_77:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_70:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_69:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_68:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_67:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_64:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_63:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_61:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_60:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_59:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_58:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_56:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_54:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_51:
	.word	20			! length
	.ascii	"\nNO WAITING THREADS\n"
	.align
_StringConst_50:
	.word	54			! length
	.ascii	"HoareTest called by a thread other than current thread"
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
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_44:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_42:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_41:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_40:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_39:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_38:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_37:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
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
	set	0x55f52792,r4		! myHashVal = 1442129810
	cmp	r3,r4
	be	_Label_199
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
_Label_199:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_200
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_200
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_200
_Label_200:
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
_Label_2924:
	push	r0
	sub	r1,1,r1
	bne	_Label_2924
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_201 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_201  sizeInBytes=4
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
_Label_2925:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2925
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_205 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_206 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_205  sizeInBytes=4
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
!   _temp_207 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_208 = _temp_207 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_208 = 3  (sizeInBytes=4)
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
_Label_2926:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2926
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_210 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_211 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_210  sizeInBytes=4
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
!   _temp_212 = _function_198_IdleFunction
	set	_function_198_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_213 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
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
	.word	_Label_214
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	_Label_219
	.word	-28
	.word	4
	.word	_Label_220
	.word	-32
	.word	4
	.word	_Label_221
	.word	-36
	.word	4
	.word	_Label_222
	.word	-40
	.word	4
	.word	_Label_223
	.word	-44
	.word	4
	.word	_Label_224
	.word	-48
	.word	4
	.word	_Label_225
	.word	-52
	.word	4
	.word	_Label_226
	.word	-56
	.word	4
	.word	_Label_227
	.word	-60
	.word	4
	.word	0
_Label_214:
	.ascii	"InitializeScheduler\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_198_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2927:
	push	r0
	sub	r1,1,r1
	bne	_Label_2927
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_228:
!	jmp	_Label_229
_Label_229:
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
!   _temp_233 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_231 else goto _Label_232
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_232
	jmp	_Label_231
_Label_231:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_234
_Label_232:
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
_Label_234:
! END WHILE...
	jmp	_Label_228
_Label_230:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_IdleFunction:
	.word	_sourceFileName
	.word	_Label_235
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_236
	.word	8
	.word	4
	.word	_Label_237
	.word	-12
	.word	4
	.word	_Label_238
	.word	-16
	.word	4
	.word	0
_Label_235:
	.ascii	"IdleFunction\0"
	.align
_Label_236:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_238:
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
_Label_2928:
	push	r0
	sub	r1,1,r1
	bne	_Label_2928
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
!   _temp_241 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_241 ) then goto _Label_240		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_240
!	jmp	_Label_239
_Label_239:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_243 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_243 [0 ] into _temp_244
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
!   _temp_242 = _temp_244		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_240:
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
!   _temp_245 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_245 = 3  (sizeInBytes=4)
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
_Label_246:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_250 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_249  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_249 then goto _Label_248 else goto _Label_247
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_247
	jmp	_Label_248
_Label_247:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_251 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_252 = &_P_Kernel_threadManager
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
	jmp	_Label_246
_Label_248:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_255 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_255 ) then goto _Label_254		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_254
!	jmp	_Label_253
_Label_253:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_257 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_257 [0 ] into _temp_258
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
!   _temp_256 = _temp_258		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
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
!   _temp_260 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_259 = *_temp_260  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_259) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _temp_259 + 32
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
_Label_254:
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
	.word	_Label_262
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_263
	.word	8
	.word	4
	.word	_Label_264
	.word	-16
	.word	4
	.word	_Label_265
	.word	-20
	.word	4
	.word	_Label_266
	.word	-24
	.word	4
	.word	_Label_267
	.word	-28
	.word	4
	.word	_Label_268
	.word	-32
	.word	4
	.word	_Label_269
	.word	-36
	.word	4
	.word	_Label_270
	.word	-40
	.word	4
	.word	_Label_271
	.word	-44
	.word	4
	.word	_Label_272
	.word	-48
	.word	4
	.word	_Label_273
	.word	-52
	.word	4
	.word	_Label_274
	.word	-9
	.word	1
	.word	_Label_275
	.word	-56
	.word	4
	.word	_Label_276
	.word	-60
	.word	4
	.word	_Label_277
	.word	-64
	.word	4
	.word	_Label_278
	.word	-68
	.word	4
	.word	_Label_279
	.word	-72
	.word	4
	.word	_Label_280
	.word	-76
	.word	4
	.word	_Label_281
	.word	-80
	.word	4
	.word	0
_Label_262:
	.ascii	"Run\0"
	.align
_Label_263:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_274:
	.byte	'C'
	.ascii	"_temp_249\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_280:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_281:
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
_Label_2929:
	push	r0
	sub	r1,1,r1
	bne	_Label_2929
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
!   _temp_282 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_283 = _function_197_ThreadPrintShort
	set	_function_197_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_284 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_283  sizeInBytes=4
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
	.word	_Label_285
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_286
	.word	-12
	.word	4
	.word	_Label_287
	.word	-16
	.word	4
	.word	_Label_288
	.word	-20
	.word	4
	.word	_Label_289
	.word	-24
	.word	4
	.word	0
_Label_285:
	.ascii	"PrintReadyList\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_289:
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
_Label_2930:
	push	r0
	sub	r1,1,r1
	bne	_Label_2930
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
!   _temp_290 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_290  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_291 = *_temp_292  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
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
!   _temp_293 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
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
	.word	_Label_294
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_295
	.word	-12
	.word	4
	.word	_Label_296
	.word	-16
	.word	4
	.word	_Label_297
	.word	-20
	.word	4
	.word	_Label_298
	.word	-24
	.word	4
	.word	_Label_299
	.word	-28
	.word	4
	.word	_Label_300
	.word	-32
	.word	4
	.word	0
_Label_294:
	.ascii	"ThreadStartMain\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_299:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_300:
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
_Label_2931:
	push	r0
	sub	r1,1,r1
	bne	_Label_2931
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
!   _temp_301 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_302 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
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
	.word	_Label_303
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_304
	.word	-12
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	0
_Label_303:
	.ascii	"ThreadFinish\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_306:
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
_Label_2932:
	push	r0
	sub	r1,1,r1
	bne	_Label_2932
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
!   _temp_307 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_309		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_309
!	jmp	_Label_308
_Label_308:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_310 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
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
!   _temp_312 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_311 = *_temp_312  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_309:
! CALL STATEMENT...
!   _temp_313 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
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
!   _temp_314 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_315 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
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
	.word	_Label_316
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_317
	.word	8
	.word	4
	.word	_Label_318
	.word	-12
	.word	4
	.word	_Label_319
	.word	-16
	.word	4
	.word	_Label_320
	.word	-20
	.word	4
	.word	_Label_321
	.word	-24
	.word	4
	.word	_Label_322
	.word	-28
	.word	4
	.word	_Label_323
	.word	-32
	.word	4
	.word	_Label_324
	.word	-36
	.word	4
	.word	_Label_325
	.word	-40
	.word	4
	.word	0
_Label_316:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_317:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_325:
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
_Label_2933:
	push	r0
	sub	r1,1,r1
	bne	_Label_2933
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
!   if newStatus != 1 then goto _Label_327		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_327
!	jmp	_Label_326
_Label_326:
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
	jmp	_Label_328
_Label_327:
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
_Label_328:
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
	.word	_Label_329
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_330
	.word	8
	.word	4
	.word	_Label_331
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_330:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_331:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_197_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2934:
	push	r0
	sub	r1,1,r1
	bne	_Label_2934
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
!   if t == 0 then goto _Label_335		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_335
!   _temp_334 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_336
_Label_335:
!   _temp_334 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_336:
!   if _temp_334 then goto _Label_333 else goto _Label_332
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_332
	jmp	_Label_333
_Label_332:
! THEN...
	mov	832,r13		! source line 832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_337 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
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
_Label_333:
! CALL STATEMENT...
!   _temp_338 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
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
!   _temp_340 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_339 = *_temp_340  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_341 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
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
!   _temp_350 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_344
	cmp	r1,2
	be	_Label_345
	cmp	r1,3
	be	_Label_346
	cmp	r1,4
	be	_Label_347
	cmp	r1,5
	be	_Label_348
	jmp	_Label_342
! CASE 1...
_Label_344:
! CALL STATEMENT...
!   _temp_351 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0BR",r10
	jmp	_Label_343
! CASE 2...
_Label_345:
! CALL STATEMENT...
!   _temp_352 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0BR",r10
	jmp	_Label_343
! CASE 3...
_Label_346:
! CALL STATEMENT...
!   _temp_353 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0BR",r10
	jmp	_Label_343
! CASE 4...
_Label_347:
! CALL STATEMENT...
!   _temp_354 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0BR",r10
	jmp	_Label_343
! CASE 5...
_Label_348:
! CALL STATEMENT...
!   _temp_355 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0BR",r10
	jmp	_Label_343
! DEFAULT CASE...
_Label_342:
! CALL STATEMENT...
!   _temp_356 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
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
_Label_343:
! CALL STATEMENT...
!   _temp_357 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_358 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_359 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
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
_RoutineDescriptor__function_197_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_360
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_361
	.word	8
	.word	4
	.word	_Label_362
	.word	-16
	.word	4
	.word	_Label_363
	.word	-20
	.word	4
	.word	_Label_364
	.word	-24
	.word	4
	.word	_Label_365
	.word	-28
	.word	4
	.word	_Label_366
	.word	-32
	.word	4
	.word	_Label_367
	.word	-36
	.word	4
	.word	_Label_368
	.word	-40
	.word	4
	.word	_Label_369
	.word	-44
	.word	4
	.word	_Label_370
	.word	-48
	.word	4
	.word	_Label_371
	.word	-52
	.word	4
	.word	_Label_372
	.word	-56
	.word	4
	.word	_Label_373
	.word	-60
	.word	4
	.word	_Label_374
	.word	-64
	.word	4
	.word	_Label_375
	.word	-68
	.word	4
	.word	_Label_376
	.word	-72
	.word	4
	.word	_Label_377
	.word	-76
	.word	4
	.word	_Label_378
	.word	-9
	.word	1
	.word	_Label_379
	.word	-80
	.word	4
	.word	0
_Label_360:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_361:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_378:
	.byte	'C'
	.ascii	"_temp_334\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_196_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2935:
	push	r0
	sub	r1,1,r1
	bne	_Label_2935
	mov	1191,r13		! source line 1191
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_380 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
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
_RoutineDescriptor__function_196_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_381
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_382
	.word	8
	.word	4
	.word	_Label_383
	.word	-12
	.word	4
	.word	0
_Label_381:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_382:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_380\0"
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
_Label_2936:
	push	r0
	sub	r1,1,r1
	bne	_Label_2936
	mov	1201,r13		! source line 1201
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_384 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
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
	.ascii	"ProcessFinish\0"
	.align
_Label_386:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_384\0"
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
_Label_2937:
	push	r0
	sub	r1,1,r1
	bne	_Label_2937
	mov	1710,r13		! source line 1710
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1722,r13		! source line 1722
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
	mov	1723,r13		! source line 1723
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1723,r13		! source line 1723
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
	.word	_Label_388
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_388:
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
	mov	2,r1
_Label_2938:
	push	r0
	sub	r1,1,r1
	bne	_Label_2938
	mov	1728,r13		! source line 1728
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_389 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1738,r13		! source line 1738
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_390
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_391
	.word	-12
	.word	4
	.word	0
_Label_390:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_389\0"
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
	mov	1750,r13		! source line 1750
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
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
	.word	_Label_392
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_392:
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
_Label_2939:
	push	r0
	sub	r1,1,r1
	bne	_Label_2939
	mov	1764,r13		! source line 1764
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_393 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1771,r13		! source line 1771
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
	.word	_Label_394
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_395
	.word	-12
	.word	4
	.word	0
_Label_394:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_393\0"
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
_Label_2940:
	push	r0
	sub	r1,1,r1
	bne	_Label_2940
	mov	1776,r13		! source line 1776
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_396 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1783,r13		! source line 1783
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1783,r13		! source line 1783
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
	.word	_Label_397
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_398
	.word	-12
	.word	4
	.word	0
_Label_397:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_396\0"
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
_Label_2941:
	push	r0
	sub	r1,1,r1
	bne	_Label_2941
	mov	1788,r13		! source line 1788
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_399 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
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
	.word	_Label_400
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_401
	.word	-12
	.word	4
	.word	0
_Label_400:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_399\0"
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
_Label_2942:
	push	r0
	sub	r1,1,r1
	bne	_Label_2942
	mov	1800,r13		! source line 1800
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_402 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
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
	.word	_Label_403
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_404
	.word	-12
	.word	4
	.word	0
_Label_403:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_402\0"
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
_Label_2943:
	push	r0
	sub	r1,1,r1
	bne	_Label_2943
	mov	1812,r13		! source line 1812
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_405 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1819,r13		! source line 1819
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
	.word	_Label_406
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_407
	.word	-12
	.word	4
	.word	0
_Label_406:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_405\0"
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
_Label_2944:
	push	r0
	sub	r1,1,r1
	bne	_Label_2944
	mov	1824,r13		! source line 1824
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_408 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1831,r13		! source line 1831
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
	.word	_Label_409
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_410
	.word	-12
	.word	4
	.word	0
_Label_409:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_408\0"
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
_Label_2945:
	push	r0
	sub	r1,1,r1
	bne	_Label_2945
	mov	1836,r13		! source line 1836
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_411 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1843,r13		! source line 1843
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
	.word	_Label_412
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_413
	.word	-12
	.word	4
	.word	0
_Label_412:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_195_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2946:
	push	r0
	sub	r1,1,r1
	bne	_Label_2946
	mov	1848,r13		! source line 1848
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_414 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1853,r13		! source line 1853
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1854,r13		! source line 1854
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_415 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1855,r13		! source line 1855
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_419 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_418 = *_temp_419  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_418 == 0 then goto _Label_417		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_417
!	jmp	_Label_416
_Label_416:
! THEN...
	mov	1859,r13		! source line 1859
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_421 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_420 = *_temp_421  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_420) then goto _runtimeErrorNullPointer
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
	jmp	_Label_422
_Label_417:
! ELSE...
	mov	1861,r13		! source line 1861
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_423 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_422:
! SEND STATEMENT...
	mov	1863,r13		! source line 1863
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
	mov	1869,r13		! source line 1869
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_424
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	-12
	.word	4
	.word	_Label_427
	.word	-16
	.word	4
	.word	_Label_428
	.word	-20
	.word	4
	.word	_Label_429
	.word	-24
	.word	4
	.word	_Label_430
	.word	-28
	.word	4
	.word	_Label_431
	.word	-32
	.word	4
	.word	_Label_432
	.word	-36
	.word	4
	.word	0
_Label_424:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_414\0"
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
_Label_2947:
	push	r0
	sub	r1,1,r1
	bne	_Label_2947
	mov	1874,r13		! source line 1874
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1895,r13		! source line 1895
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2948
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_433
_Label_2948:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_433
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_433
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_447,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_447:
	jmp	_Label_439	! 1:	
	jmp	_Label_446	! 2:	
	jmp	_Label_436	! 3:	
	jmp	_Label_435	! 4:	
	jmp	_Label_438	! 5:	
	jmp	_Label_437	! 6:	
	jmp	_Label_440	! 7:	
	jmp	_Label_441	! 8:	
	jmp	_Label_442	! 9:	
	jmp	_Label_443	! 10:	
	jmp	_Label_444	! 11:	
	jmp	_Label_445	! 12:	
! CASE 4...
_Label_435:
! RETURN STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0RE",r10
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_448  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_448  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_436:
! CALL STATEMENT...
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_437:
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_449  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_449  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_438:
! RETURN STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_450  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_450  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_439:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_440:
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_451  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_451  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_441:
! RETURN STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_452  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_452  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_442:
! RETURN STATEMENT...
	mov	1913,r13		! source line 1913
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
	mov	1913,r13		! source line 1913
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_453  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_453  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_443:
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
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
	mov	1915,r13		! source line 1915
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_454  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_454  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_444:
! RETURN STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_455  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_455  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_445:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_446:
! CALL STATEMENT...
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_433:
! CALL STATEMENT...
!   _temp_456 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1926,r13		! source line 1926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_457 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1928,r13		! source line 1928
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_434:
! RETURN STATEMENT...
	mov	1930,r13		! source line 1930
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
	.word	_Label_458
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_459
	.word	8
	.word	4
	.word	_Label_460
	.word	12
	.word	4
	.word	_Label_461
	.word	16
	.word	4
	.word	_Label_462
	.word	20
	.word	4
	.word	_Label_463
	.word	24
	.word	4
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	_Label_466
	.word	-20
	.word	4
	.word	_Label_467
	.word	-24
	.word	4
	.word	_Label_468
	.word	-28
	.word	4
	.word	_Label_469
	.word	-32
	.word	4
	.word	_Label_470
	.word	-36
	.word	4
	.word	_Label_471
	.word	-40
	.word	4
	.word	_Label_472
	.word	-44
	.word	4
	.word	_Label_473
	.word	-48
	.word	4
	.word	0
_Label_458:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_459:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_460:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_462:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_463:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_448\0"
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
	mov	1935,r13		! source line 1935
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1935,r13		! source line 1935
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
	.word	_Label_474
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_475
	.word	8
	.word	4
	.word	0
_Label_474:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_475:
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
	mov	1941,r13		! source line 1941
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1941,r13		! source line 1941
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
	.word	_Label_476
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_476:
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
	mov	1947,r13		! source line 1947
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1947,r13		! source line 1947
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
	.word	_Label_477
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_477:
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
	mov	1953,r13		! source line 1953
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1955,r13		! source line 1955
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
	.word	_Label_478
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_478:
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
	mov	1960,r13		! source line 1960
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1962,r13		! source line 1962
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
	.word	_Label_479
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_480
	.word	8
	.word	4
	.word	0
_Label_479:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_480:
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
	mov	1967,r13		! source line 1967
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
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
	.word	_Label_481
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_482
	.word	8
	.word	4
	.word	0
_Label_481:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_482:
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
	mov	1974,r13		! source line 1974
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1976,r13		! source line 1976
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
	.word	_Label_483
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_484
	.word	8
	.word	4
	.word	0
_Label_483:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_484:
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
	mov	1981,r13		! source line 1981
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1983,r13		! source line 1983
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
	.word	_Label_485
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_486
	.word	8
	.word	4
	.word	0
_Label_485:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_486:
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
	mov	1988,r13		! source line 1988
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1990,r13		! source line 1990
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
	.word	_Label_487
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_488
	.word	8
	.word	4
	.word	_Label_489
	.word	12
	.word	4
	.word	_Label_490
	.word	16
	.word	4
	.word	0
_Label_487:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_488:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_489:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_490:
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
	mov	1995,r13		! source line 1995
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1997,r13		! source line 1997
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
	.word	_Label_491
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_492
	.word	8
	.word	4
	.word	_Label_493
	.word	12
	.word	4
	.word	_Label_494
	.word	16
	.word	4
	.word	0
_Label_491:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_493:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_494:
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
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_495
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_496
	.word	8
	.word	4
	.word	_Label_497
	.word	12
	.word	4
	.word	0
_Label_495:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_496:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_497:
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
	mov	2009,r13		! source line 2009
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2009,r13		! source line 2009
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
	.word	_Label_498
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_499
	.word	8
	.word	4
	.word	0
_Label_498:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_499:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_194_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2949:
	push	r0
	sub	r1,1,r1
	bne	_Label_2949
	mov	2601,r13		! source line 2601
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_500 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_500  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   _temp_501 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_501) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_503 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_503) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_502 = *_temp_503  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_501 = _temp_502  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   _temp_504 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_504) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_506 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_506) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_505 = *_temp_506  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_504 = _temp_505  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   _temp_507 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_507) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_509 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_509) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_508 = *_temp_509  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_507 = _temp_508  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_194_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_510
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_511
	.word	8
	.word	4
	.word	_Label_512
	.word	12
	.word	4
	.word	_Label_513
	.word	-16
	.word	4
	.word	_Label_514
	.word	-9
	.word	1
	.word	_Label_515
	.word	-20
	.word	4
	.word	_Label_516
	.word	-24
	.word	4
	.word	_Label_517
	.word	-10
	.word	1
	.word	_Label_518
	.word	-28
	.word	4
	.word	_Label_519
	.word	-32
	.word	4
	.word	_Label_520
	.word	-11
	.word	1
	.word	_Label_521
	.word	-36
	.word	4
	.word	_Label_522
	.word	-12
	.word	1
	.word	_Label_523
	.word	-40
	.word	4
	.word	_Label_524
	.word	-44
	.word	4
	.word	0
_Label_510:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_511:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_512:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_514:
	.byte	'C'
	.ascii	"_temp_508\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_517:
	.byte	'C'
	.ascii	"_temp_505\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_520:
	.byte	'C'
	.ascii	"_temp_502\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_522:
	.byte	'C'
	.ascii	"_temp_500\0"
	.align
_Label_523:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_524:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_193_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_printFCB,r1
	push	r1
	mov	3,r1
_Label_2950:
	push	r0
	sub	r1,1,r1
	bne	_Label_2950
	mov	2611,r13		! source line 2611
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_526 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_525 = *_temp_526  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2612,r13		! source line 2612
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2613,r13		! source line 2613
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_193_printFCB:
	.word	_sourceFileName
	.word	_Label_527
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_528
	.word	8
	.word	4
	.word	_Label_529
	.word	-12
	.word	4
	.word	_Label_530
	.word	-16
	.word	4
	.word	0
_Label_527:
	.ascii	"printFCB\0"
	.align
_Label_528:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_192_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_printOpen,r1
	push	r1
	mov	4,r1
_Label_2951:
	push	r0
	sub	r1,1,r1
	bne	_Label_2951
	mov	2616,r13		! source line 2616
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_531 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2617,r13		! source line 2617
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_532 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2618,r13		! source line 2618
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_533 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2619,r13		! source line 2619
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2620,r13		! source line 2620
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
	mov	2620,r13		! source line 2620
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_printOpen:
	.word	_sourceFileName
	.word	_Label_534
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_535
	.word	8
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
	.word	0
_Label_534:
	.ascii	"printOpen\0"
	.align
_Label_535:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_539
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_539:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_540
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_540:
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
_Label_2952:
	push	r0
	sub	r1,1,r1
	bne	_Label_2952
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_542		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_542
!	jmp	_Label_541
_Label_541:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_543 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
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
_Label_542:
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
	.word	_Label_545
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_546
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_547
	.word	12
	.word	4
	.word	_Label_548
	.word	-12
	.word	4
	.word	_Label_549
	.word	-16
	.word	4
	.word	0
_Label_545:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_546:
	.ascii	"Pself\0"
	.align
_Label_547:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_543\0"
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
_Label_2953:
	push	r0
	sub	r1,1,r1
	bne	_Label_2953
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
!   if count != 2147483647 then goto _Label_551		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_551
!	jmp	_Label_550
_Label_550:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_552 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
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
_Label_551:
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
!   if count > 0 then goto _Label_554		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_554
!	jmp	_Label_553
_Label_553:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_555 = &waitingThreads
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
!   _temp_556 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_556 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_557 = &_P_Kernel_readyList
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
_Label_554:
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
	.word	_Label_558
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_560
	.word	-12
	.word	4
	.word	_Label_561
	.word	-16
	.word	4
	.word	_Label_562
	.word	-20
	.word	4
	.word	_Label_563
	.word	-24
	.word	4
	.word	_Label_564
	.word	-28
	.word	4
	.word	_Label_565
	.word	-32
	.word	4
	.word	0
_Label_558:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_559:
	.ascii	"Pself\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_565:
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
_Label_2954:
	push	r0
	sub	r1,1,r1
	bne	_Label_2954
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
!   if count != -2147483648 then goto _Label_567		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_567
!	jmp	_Label_566
_Label_566:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_568 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
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
_Label_567:
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
!   if count >= 0 then goto _Label_570		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_570
!	jmp	_Label_569
_Label_569:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_571 = &waitingThreads
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
_Label_570:
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
	.word	_Label_572
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_573
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_574
	.word	-12
	.word	4
	.word	_Label_575
	.word	-16
	.word	4
	.word	_Label_576
	.word	-20
	.word	4
	.word	0
_Label_572:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_573:
	.ascii	"Pself\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_576:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_577
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_577:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_578
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_578:
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
_Label_2955:
	push	r0
	sub	r1,1,r1
	bne	_Label_2955
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
	.word	_Label_580
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_581
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_582
	.word	-12
	.word	4
	.word	0
_Label_580:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_581:
	.ascii	"Pself\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_579\0"
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
_Label_2956:
	push	r0
	sub	r1,1,r1
	bne	_Label_2956
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_584		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_584
!	jmp	_Label_583
_Label_583:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_585 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_585  sizeInBytes=4
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
_Label_584:
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
!   if heldBy == 0 then goto _Label_589		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_589
!   _temp_588 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_590
_Label_589:
!   _temp_588 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_590:
!   if _temp_588 then goto _Label_587 else goto _Label_586
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_586
	jmp	_Label_587
_Label_586:
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
	jmp	_Label_591
_Label_587:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_592 = &waitingThreads
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
_Label_591:
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
	.word	_Label_593
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_594
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_595
	.word	-16
	.word	4
	.word	_Label_596
	.word	-9
	.word	1
	.word	_Label_597
	.word	-20
	.word	4
	.word	_Label_598
	.word	-24
	.word	4
	.word	0
_Label_593:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_594:
	.ascii	"Pself\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_596:
	.byte	'C'
	.ascii	"_temp_588\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_598:
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
_Label_2957:
	push	r0
	sub	r1,1,r1
	bne	_Label_2957
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_600		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_600
!	jmp	_Label_599
_Label_599:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_601 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
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
_Label_600:
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
!   _temp_602 = &waitingThreads
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
!   if t == 0 then goto _Label_604		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_604
!	jmp	_Label_603
_Label_603:
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
!   _temp_605 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_605 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_606 = &_P_Kernel_readyList
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
	jmp	_Label_607
_Label_604:
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
_Label_607:
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
	.word	_Label_608
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_610
	.word	-12
	.word	4
	.word	_Label_611
	.word	-16
	.word	4
	.word	_Label_612
	.word	-20
	.word	4
	.word	_Label_613
	.word	-24
	.word	4
	.word	_Label_614
	.word	-28
	.word	4
	.word	_Label_615
	.word	-32
	.word	4
	.word	0
_Label_608:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_609:
	.ascii	"Pself\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_614:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_615:
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
_Label_2958:
	push	r0
	sub	r1,1,r1
	bne	_Label_2958
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_618		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_618
!	jmp	_Label_617
_Label_617:
!   _temp_616 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_619
_Label_618:
!   _temp_616 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_619:
!   ReturnResult: _temp_616  (sizeInBytes=1)
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
	.word	_Label_620
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_622
	.word	-9
	.word	1
	.word	0
_Label_620:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_621:
	.ascii	"Pself\0"
	.align
_Label_622:
	.byte	'C'
	.ascii	"_temp_616\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_623
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	printHeldBy
	.word	0
! 
! Class descriptor:
! 
_Label_623:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_624
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_624:
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
_Label_2959:
	push	r0
	sub	r1,1,r1
	bne	_Label_2959
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
	.word	_Label_626
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_628
	.word	-12
	.word	4
	.word	0
_Label_626:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_627:
	.ascii	"Pself\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_625\0"
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
_Label_2960:
	push	r0
	sub	r1,1,r1
	bne	_Label_2960
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
!   if heldBy == 0 then goto _Label_632		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_632
!   _temp_631 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_633
_Label_632:
!   _temp_631 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_633:
!   if _temp_631 then goto _Label_630 else goto _Label_629
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_629
	jmp	_Label_630
_Label_629:
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
	jmp	_Label_634
_Label_630:
! ELSE...
	mov	485,r13		! source line 485
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_636		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_636
!	jmp	_Label_635
_Label_635:
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
_Label_636:
! SEND STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   _temp_637 = &waitingThreads
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
_Label_634:
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
	.word	_Label_638
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_639
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_640
	.word	12
	.word	4
	.word	_Label_641
	.word	-16
	.word	4
	.word	_Label_642
	.word	-9
	.word	1
	.word	_Label_643
	.word	-20
	.word	4
	.word	0
_Label_638:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_639:
	.ascii	"Pself\0"
	.align
_Label_640:
	.byte	'P'
	.ascii	"transfer\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_642:
	.byte	'C'
	.ascii	"_temp_631\0"
	.align
_Label_643:
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
_Label_2961:
	push	r0
	sub	r1,1,r1
	bne	_Label_2961
	mov	496,r13		! source line 496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_645		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_645
!	jmp	_Label_644
_Label_644:
! THEN...
	mov	501,r13		! source line 501
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_646 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_646  sizeInBytes=4
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
_Label_645:
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
!   _temp_647 = &waitingThreads
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
!   if t == 0 then goto _Label_649		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_649
!	jmp	_Label_648
_Label_648:
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
!   _temp_650 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_650 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0SE",r10
!   _temp_651 = &_P_Kernel_readyList
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
	jmp	_Label_652
_Label_649:
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
_Label_652:
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
	.word	_Label_653
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_655
	.word	-12
	.word	4
	.word	_Label_656
	.word	-16
	.word	4
	.word	_Label_657
	.word	-20
	.word	4
	.word	_Label_658
	.word	-24
	.word	4
	.word	_Label_659
	.word	-28
	.word	4
	.word	_Label_660
	.word	-32
	.word	4
	.word	0
_Label_653:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_654:
	.ascii	"Pself\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_659:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_660:
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
_Label_2962:
	push	r0
	sub	r1,1,r1
	bne	_Label_2962
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_663		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_663
!	jmp	_Label_662
_Label_662:
!   _temp_661 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_664
_Label_663:
!   _temp_661 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_664:
!   ReturnResult: _temp_661  (sizeInBytes=1)
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
	.word	_Label_665
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_666
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_667
	.word	-9
	.word	1
	.word	0
_Label_665:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_666:
	.ascii	"Pself\0"
	.align
_Label_667:
	.byte	'C'
	.ascii	"_temp_661\0"
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
_Label_2963:
	push	r0
	sub	r1,1,r1
	bne	_Label_2963
	mov	521,r13		! source line 521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (heldBy) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_669 = heldBy + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_668 = *_temp_669  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
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
	.word	_Label_670
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_671
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_672
	.word	-12
	.word	4
	.word	_Label_673
	.word	-16
	.word	4
	.word	0
_Label_670:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"printHeldBy\0"
	.align
_Label_671:
	.ascii	"Pself\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_674
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_674:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_675
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_675:
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
_Label_2964:
	push	r0
	sub	r1,1,r1
	bne	_Label_2964
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
	.word	_Label_677
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_678
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_679
	.word	-12
	.word	4
	.word	0
_Label_677:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_678:
	.ascii	"Pself\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_676\0"
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
_Label_2965:
	push	r0
	sub	r1,1,r1
	bne	_Label_2965
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
!   Retrieve Result: targetName=_temp_682  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_682 then goto _Label_681 else goto _Label_680
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_680
	jmp	_Label_681
_Label_680:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_683 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
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
_Label_681:
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
!   _temp_684 = &waitingThreads
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
	.word	_Label_685
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_686
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_687
	.word	12
	.word	4
	.word	_Label_688
	.word	-16
	.word	4
	.word	_Label_689
	.word	-20
	.word	4
	.word	_Label_690
	.word	-9
	.word	1
	.word	_Label_691
	.word	-24
	.word	4
	.word	0
_Label_685:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_686:
	.ascii	"Pself\0"
	.align
_Label_687:
	.byte	'P'
	.ascii	"mutex\0"
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
	.byte	'C'
	.ascii	"_temp_682\0"
	.align
_Label_691:
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
_Label_2966:
	push	r0
	sub	r1,1,r1
	bne	_Label_2966
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
!   Retrieve Result: targetName=_temp_694  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_694 then goto _Label_693 else goto _Label_692
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_692
	jmp	_Label_693
_Label_692:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_695 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
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
_Label_693:
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
!   _temp_696 = &waitingThreads
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
!   if t == 0 then goto _Label_698		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_698
!	jmp	_Label_697
_Label_697:
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
!   _temp_699 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_699 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_700 = &_P_Kernel_readyList
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
_Label_698:
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
	.word	_Label_701
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_703
	.word	12
	.word	4
	.word	_Label_704
	.word	-16
	.word	4
	.word	_Label_705
	.word	-20
	.word	4
	.word	_Label_706
	.word	-24
	.word	4
	.word	_Label_707
	.word	-28
	.word	4
	.word	_Label_708
	.word	-9
	.word	1
	.word	_Label_709
	.word	-32
	.word	4
	.word	_Label_710
	.word	-36
	.word	4
	.word	0
_Label_701:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_702:
	.ascii	"Pself\0"
	.align
_Label_703:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_708:
	.byte	'C'
	.ascii	"_temp_694\0"
	.align
_Label_709:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_710:
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
_Label_2967:
	push	r0
	sub	r1,1,r1
	bne	_Label_2967
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
!   Retrieve Result: targetName=_temp_713  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_713 then goto _Label_712 else goto _Label_711
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_711
	jmp	_Label_712
_Label_711:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_714 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
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
_Label_712:
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
_Label_715:
!	jmp	_Label_716
_Label_716:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_718 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_719
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_719
	jmp	_Label_720
_Label_719:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_717
! END IF...
_Label_720:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_721 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_721 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_722 = &_P_Kernel_readyList
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
	jmp	_Label_715
_Label_717:
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
	.word	_Label_723
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_724
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_725
	.word	12
	.word	4
	.word	_Label_726
	.word	-16
	.word	4
	.word	_Label_727
	.word	-20
	.word	4
	.word	_Label_728
	.word	-24
	.word	4
	.word	_Label_729
	.word	-28
	.word	4
	.word	_Label_730
	.word	-9
	.word	1
	.word	_Label_731
	.word	-32
	.word	4
	.word	_Label_732
	.word	-36
	.word	4
	.word	0
_Label_723:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_724:
	.ascii	"Pself\0"
	.align
_Label_725:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_730:
	.byte	'C'
	.ascii	"_temp_713\0"
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
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_733
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	HoareTest
	.word	0
! 
! Class descriptor:
! 
_Label_733:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_734
	.word	_sourceFileName
	.word	181		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_734:
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
_Label_2968:
	push	r0
	sub	r1,1,r1
	bne	_Label_2968
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
	.word	_Label_736
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_737
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_738
	.word	-12
	.word	4
	.word	0
_Label_736:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_737:
	.ascii	"Pself\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_735\0"
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
_Label_2969:
	push	r0
	sub	r1,1,r1
	bne	_Label_2969
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
!   Retrieve Result: targetName=_temp_741  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_741 then goto _Label_740 else goto _Label_739
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_739
	jmp	_Label_740
_Label_739:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_742 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
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
_Label_740:
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
!   _temp_743 = &waitingThreads
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
	.word	_Label_744
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_745
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_746
	.word	12
	.word	4
	.word	_Label_747
	.word	-16
	.word	4
	.word	_Label_748
	.word	-20
	.word	4
	.word	_Label_749
	.word	-9
	.word	1
	.word	_Label_750
	.word	-24
	.word	4
	.word	0
_Label_744:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_745:
	.ascii	"Pself\0"
	.align
_Label_746:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_749:
	.byte	'C'
	.ascii	"_temp_741\0"
	.align
_Label_750:
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
_Label_2970:
	push	r0
	sub	r1,1,r1
	bne	_Label_2970
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
!   Retrieve Result: targetName=_temp_753  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_753 then goto _Label_752 else goto _Label_751
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_751
	jmp	_Label_752
_Label_751:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_754 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
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
_Label_752:
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
!   _temp_755 = &waitingThreads
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
!   if t == 0 then goto _Label_757		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_757
!	jmp	_Label_756
_Label_756:
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
!   _temp_758 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_758 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0SE",r10
!   _temp_759 = &_P_Kernel_readyList
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
_Label_757:
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
	.word	_Label_760
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_761
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_762
	.word	12
	.word	4
	.word	_Label_763
	.word	-16
	.word	4
	.word	_Label_764
	.word	-20
	.word	4
	.word	_Label_765
	.word	-24
	.word	4
	.word	_Label_766
	.word	-28
	.word	4
	.word	_Label_767
	.word	-9
	.word	1
	.word	_Label_768
	.word	-32
	.word	4
	.word	_Label_769
	.word	-36
	.word	4
	.word	0
_Label_760:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_761:
	.ascii	"Pself\0"
	.align
_Label_762:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_767:
	.byte	'C'
	.ascii	"_temp_753\0"
	.align
_Label_768:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_769:
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
_Label_2971:
	push	r0
	sub	r1,1,r1
	bne	_Label_2971
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
!   if test == _P_Kernel_currentThread then goto _Label_771		(int)
	load	[r14+12],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_771
!	jmp	_Label_770
_Label_770:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_772 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
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
_Label_771:
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
!   _temp_776 = &waitingThreads
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
!   Retrieve Result: targetName=_temp_775  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_777 = _temp_775 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_777 then goto _Label_774 else goto _Label_773
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_773
	jmp	_Label_774
_Label_773:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_778 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_779
_Label_774:
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
	call	_function_197_ThreadPrintShort
! END IF...
_Label_779:
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
	.word	_Label_780
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_782
	.word	12
	.word	4
	.word	_Label_783
	.word	16
	.word	4
	.word	_Label_784
	.word	-16
	.word	4
	.word	_Label_785
	.word	-9
	.word	1
	.word	_Label_786
	.word	-20
	.word	4
	.word	_Label_787
	.word	-10
	.word	1
	.word	_Label_788
	.word	-24
	.word	4
	.word	_Label_789
	.word	-28
	.word	4
	.word	0
_Label_780:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"HoareTest\0"
	.align
_Label_781:
	.ascii	"Pself\0"
	.align
_Label_782:
	.byte	'P'
	.ascii	"test\0"
	.align
_Label_783:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_785:
	.byte	'C'
	.ascii	"_temp_777\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_787:
	.byte	'C'
	.ascii	"_temp_775\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_789:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_790
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
_Label_790:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_791
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_791:
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
_Label_2972:
	push	r0
	sub	r1,1,r1
	bne	_Label_2972
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
!   _temp_792 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_792) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_792 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   _temp_793 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_793 [0 ] into _temp_794
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
!   Data Move: *_temp_794 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_795 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_795 [999 ] into _temp_796
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
!   Data Move: *_temp_796 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_797 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_797 [999 ] into _temp_798
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
!   stackTop = _temp_798		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_799 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_801 = &_temp_800
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_801 = _temp_801 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_803:
!   Data Move: *_temp_801 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_801 = _temp_801 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_802 = _temp_802 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_802) then goto _Label_803
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_803
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_804 = &_temp_800
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2973
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2973:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_799 = *_temp_804  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2974:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2974
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
!   _temp_805 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_807 = &_temp_806
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_807 = _temp_807 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_809:
!   Data Move: *_temp_807 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_807 = _temp_807 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_808 = _temp_808 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_808) then goto _Label_809
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_809
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_810 = &_temp_806
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2975
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2975:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_805 = *_temp_810  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2976:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2976
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
	.word	_Label_811
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_812
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_813
	.word	12
	.word	4
	.word	_Label_814
	.word	-12
	.word	4
	.word	_Label_815
	.word	-16
	.word	4
	.word	_Label_816
	.word	-20
	.word	4
	.word	_Label_817
	.word	-84
	.word	64
	.word	_Label_818
	.word	-88
	.word	4
	.word	_Label_819
	.word	-92
	.word	4
	.word	_Label_820
	.word	-96
	.word	4
	.word	_Label_821
	.word	-100
	.word	4
	.word	_Label_822
	.word	-156
	.word	56
	.word	_Label_823
	.word	-160
	.word	4
	.word	_Label_824
	.word	-164
	.word	4
	.word	_Label_825
	.word	-168
	.word	4
	.word	_Label_826
	.word	-172
	.word	4
	.word	_Label_827
	.word	-176
	.word	4
	.word	_Label_828
	.word	-180
	.word	4
	.word	_Label_829
	.word	-184
	.word	4
	.word	_Label_830
	.word	-188
	.word	4
	.word	0
_Label_811:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_812:
	.ascii	"Pself\0"
	.align
_Label_813:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_792\0"
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
_Label_2977:
	push	r0
	sub	r1,1,r1
	bne	_Label_2977
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
!   _temp_831 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_831  (sizeInBytes=4)
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
!   _temp_833 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_832  sizeInBytes=4
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
	.word	_Label_834
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_836
	.word	12
	.word	4
	.word	_Label_837
	.word	16
	.word	4
	.word	_Label_838
	.word	-12
	.word	4
	.word	_Label_839
	.word	-16
	.word	4
	.word	_Label_840
	.word	-20
	.word	4
	.word	_Label_841
	.word	-24
	.word	4
	.word	_Label_842
	.word	-28
	.word	4
	.word	0
_Label_834:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_835:
	.ascii	"Pself\0"
	.align
_Label_836:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_837:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_841:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_842:
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
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
	mov	673,r13		! source line 673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_845 == _P_Kernel_currentThread then goto _Label_844		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_844
!	jmp	_Label_843
_Label_843:
! THEN...
	mov	690,r13		! source line 690
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_846 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
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
_Label_844:
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
!   _temp_847 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_849		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_849
!	jmp	_Label_848
_Label_848:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_851		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_851
!	jmp	_Label_850
_Label_850:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_852 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
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
_Label_851:
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
!   _temp_854 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_853  sizeInBytes=4
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
_Label_849:
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
	.word	_Label_855
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_856
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_857
	.word	-12
	.word	4
	.word	_Label_858
	.word	-16
	.word	4
	.word	_Label_859
	.word	-20
	.word	4
	.word	_Label_860
	.word	-24
	.word	4
	.word	_Label_861
	.word	-28
	.word	4
	.word	_Label_862
	.word	-32
	.word	4
	.word	_Label_863
	.word	-36
	.word	4
	.word	_Label_864
	.word	-40
	.word	4
	.word	_Label_865
	.word	-44
	.word	4
	.word	0
_Label_855:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_856:
	.ascii	"Pself\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_863:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_864:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_865:
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
_Label_2979:
	push	r0
	sub	r1,1,r1
	bne	_Label_2979
	mov	713,r13		! source line 713
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_867		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_867
!	jmp	_Label_866
_Label_866:
! THEN...
	mov	726,r13		! source line 726
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_868 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
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
_Label_867:
! IF STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_871 == _P_Kernel_currentThread then goto _Label_870		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_870
!	jmp	_Label_869
_Label_869:
! THEN...
	mov	730,r13		! source line 730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_872 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
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
_Label_870:
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
!   _temp_873 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_874
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_874
	jmp	_Label_875
_Label_874:
! THEN...
	mov	738,r13		! source line 738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_876 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
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
_Label_875:
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
	.word	_Label_877
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_879
	.word	-12
	.word	4
	.word	_Label_880
	.word	-16
	.word	4
	.word	_Label_881
	.word	-20
	.word	4
	.word	_Label_882
	.word	-24
	.word	4
	.word	_Label_883
	.word	-28
	.word	4
	.word	_Label_884
	.word	-32
	.word	4
	.word	0
_Label_877:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_878:
	.ascii	"Pself\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_884:
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
_Label_2980:
	push	r0
	sub	r1,1,r1
	bne	_Label_2980
	mov	745,r13		! source line 745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0IF",r10
!   _temp_888 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_888 [0 ] into _temp_889
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
!   Data Move: _temp_887 = *_temp_889  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_887 == 606348324 then goto _Label_886		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_886
!	jmp	_Label_885
_Label_885:
! THEN...
	mov	752,r13		! source line 752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_890 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_890  sizeInBytes=4
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
	jmp	_Label_891
_Label_886:
! ELSE...
	mov	753,r13		! source line 753
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0IF",r10
!   _temp_895 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_895 [999 ] into _temp_896
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
!   Data Move: _temp_894 = *_temp_896  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_894 == 606348324 then goto _Label_893		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_893
!	jmp	_Label_892
_Label_892:
! THEN...
	mov	754,r13		! source line 754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_897 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
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
_Label_893:
! END IF...
_Label_891:
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
	.word	_Label_898
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_900
	.word	-12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-20
	.word	4
	.word	_Label_903
	.word	-24
	.word	4
	.word	_Label_904
	.word	-28
	.word	4
	.word	_Label_905
	.word	-32
	.word	4
	.word	_Label_906
	.word	-36
	.word	4
	.word	_Label_907
	.word	-40
	.word	4
	.word	0
_Label_898:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_899:
	.ascii	"Pself\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_887\0"
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
_Label_2981:
	push	r0
	sub	r1,1,r1
	bne	_Label_2981
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
!   _temp_908 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
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
!   _temp_909 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_911 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_912 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
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
!   _temp_917 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_918 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_917  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_913:
!   Perform the FOR-LOOP termination test
!   if i > _temp_918 then goto _Label_916		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_916
_Label_914:
	mov	773,r13		! source line 773
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_919 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_919  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_920 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_920  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_921 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_921  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_923 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_923 [i ] into _temp_924
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
!   Data Move: _temp_922 = *_temp_924  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_925 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_925  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_927 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_927 [i ] into _temp_928
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
!   Data Move: _temp_926 = *_temp_928  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_926  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_929 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_929  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_915:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_913
! END FOR
_Label_916:
! CALL STATEMENT...
!   _temp_930 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-116]
!   _temp_931 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_931  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_932 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-108]
!   _temp_934 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_934 [0 ] into _temp_935
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
!   _temp_933 = _temp_935		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_933  sizeInBytes=4
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
	be	_Label_938
	cmp	r1,2
	be	_Label_939
	cmp	r1,3
	be	_Label_940
	cmp	r1,4
	be	_Label_941
	cmp	r1,5
	be	_Label_942
	jmp	_Label_936
! CASE 1...
_Label_938:
! CALL STATEMENT...
!   _temp_943 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_943  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0BR",r10
	jmp	_Label_937
! CASE 2...
_Label_939:
! CALL STATEMENT...
!   _temp_944 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0BR",r10
	jmp	_Label_937
! CASE 3...
_Label_940:
! CALL STATEMENT...
!   _temp_945 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_945  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0BR",r10
	jmp	_Label_937
! CASE 4...
_Label_941:
! CALL STATEMENT...
!   _temp_946 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_946  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0BR",r10
	jmp	_Label_937
! CASE 5...
_Label_942:
! CALL STATEMENT...
!   _temp_947 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_947  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0BR",r10
	jmp	_Label_937
! DEFAULT CASE...
_Label_936:
! CALL STATEMENT...
!   _temp_948 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_948  sizeInBytes=4
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
_Label_937:
! CALL STATEMENT...
!   _temp_949 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
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
!   _temp_950 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_950  sizeInBytes=4
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
!   _temp_955 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_956 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_955  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_951:
!   Perform the FOR-LOOP termination test
!   if i > _temp_956 then goto _Label_954		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_954
_Label_952:
	mov	807,r13		! source line 807
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_957 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_957  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_958 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_959 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_959  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_961 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_961 [i ] into _temp_962
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
!   Data Move: _temp_960 = *_temp_962  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_963 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_963  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_965 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_965 [i ] into _temp_966
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
!   Data Move: _temp_964 = *_temp_966  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_967 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_967  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_953:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_951
! END FOR
_Label_954:
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
	.word	_Label_968
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_970
	.word	-12
	.word	4
	.word	_Label_971
	.word	-16
	.word	4
	.word	_Label_972
	.word	-20
	.word	4
	.word	_Label_973
	.word	-24
	.word	4
	.word	_Label_974
	.word	-28
	.word	4
	.word	_Label_975
	.word	-32
	.word	4
	.word	_Label_976
	.word	-36
	.word	4
	.word	_Label_977
	.word	-40
	.word	4
	.word	_Label_978
	.word	-44
	.word	4
	.word	_Label_979
	.word	-48
	.word	4
	.word	_Label_980
	.word	-52
	.word	4
	.word	_Label_981
	.word	-56
	.word	4
	.word	_Label_982
	.word	-60
	.word	4
	.word	_Label_983
	.word	-64
	.word	4
	.word	_Label_984
	.word	-68
	.word	4
	.word	_Label_985
	.word	-72
	.word	4
	.word	_Label_986
	.word	-76
	.word	4
	.word	_Label_987
	.word	-80
	.word	4
	.word	_Label_988
	.word	-84
	.word	4
	.word	_Label_989
	.word	-88
	.word	4
	.word	_Label_990
	.word	-92
	.word	4
	.word	_Label_991
	.word	-96
	.word	4
	.word	_Label_992
	.word	-100
	.word	4
	.word	_Label_993
	.word	-104
	.word	4
	.word	_Label_994
	.word	-108
	.word	4
	.word	_Label_995
	.word	-112
	.word	4
	.word	_Label_996
	.word	-116
	.word	4
	.word	_Label_997
	.word	-120
	.word	4
	.word	_Label_998
	.word	-124
	.word	4
	.word	_Label_999
	.word	-128
	.word	4
	.word	_Label_1000
	.word	-132
	.word	4
	.word	_Label_1001
	.word	-136
	.word	4
	.word	_Label_1002
	.word	-140
	.word	4
	.word	_Label_1003
	.word	-144
	.word	4
	.word	_Label_1004
	.word	-148
	.word	4
	.word	_Label_1005
	.word	-152
	.word	4
	.word	_Label_1006
	.word	-156
	.word	4
	.word	_Label_1007
	.word	-160
	.word	4
	.word	_Label_1008
	.word	-164
	.word	4
	.word	_Label_1009
	.word	-168
	.word	4
	.word	_Label_1010
	.word	-172
	.word	4
	.word	_Label_1011
	.word	-176
	.word	4
	.word	_Label_1012
	.word	-180
	.word	4
	.word	_Label_1013
	.word	-184
	.word	4
	.word	_Label_1014
	.word	-188
	.word	4
	.word	_Label_1015
	.word	-192
	.word	4
	.word	_Label_1016
	.word	-196
	.word	4
	.word	0
_Label_968:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_969:
	.ascii	"Pself\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_1015:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1016:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1017
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1017:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1018
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1018:
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
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
	mov	875,r13		! source line 875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1019 = _StringConst_81
	set	_StringConst_81,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
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
!   _temp_1021 = &threadManLock
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
!   _temp_1023 = &threadBecameFree
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
!   _temp_1024 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1026 = &_temp_1025
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_1026 = _temp_1026 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1028 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_2983:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2983
!   _temp_1028 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_1030:
!   Data Move: *_temp_1026 = _temp_1028  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_2984:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2984
!   _temp_1026 = _temp_1026 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_1027 = _temp_1027 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_1027) then goto _Label_1030
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_1030
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_1031 = &_temp_1025
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2985
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2985:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1024 = *_temp_1031  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2986:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2986
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1032 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-168]
!   _temp_1033 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_1033 [0 ] into _temp_1034
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
!   Prepare Argument: offset=12  value=_temp_1032  sizeInBytes=4
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
!   _temp_1035 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-156]
!   _temp_1036 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_1036 [1 ] into _temp_1037
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
!   Prepare Argument: offset=12  value=_temp_1035  sizeInBytes=4
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
!   _temp_1038 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-144]
!   _temp_1039 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_1039 [2 ] into _temp_1040
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
!   Prepare Argument: offset=12  value=_temp_1038  sizeInBytes=4
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
!   _temp_1041 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-132]
!   _temp_1042 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_1042 [3 ] into _temp_1043
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
!   Prepare Argument: offset=12  value=_temp_1041  sizeInBytes=4
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
!   _temp_1044 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-120]
!   _temp_1045 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_1045 [4 ] into _temp_1046
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
!   Prepare Argument: offset=12  value=_temp_1044  sizeInBytes=4
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
!   _temp_1047 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-108]
!   _temp_1048 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_1048 [5 ] into _temp_1049
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
!   Prepare Argument: offset=12  value=_temp_1047  sizeInBytes=4
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
!   _temp_1050 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-96]
!   _temp_1051 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_1051 [6 ] into _temp_1052
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
!   Prepare Argument: offset=12  value=_temp_1050  sizeInBytes=4
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
!   _temp_1053 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-84]
!   _temp_1054 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_1054 [7 ] into _temp_1055
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
!   Prepare Argument: offset=12  value=_temp_1053  sizeInBytes=4
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
!   _temp_1056 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-72]
!   _temp_1057 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_1057 [8 ] into _temp_1058
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
!   Prepare Argument: offset=12  value=_temp_1056  sizeInBytes=4
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
!   _temp_1059 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-60]
!   _temp_1060 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_1060 [9 ] into _temp_1061
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
!   Prepare Argument: offset=12  value=_temp_1059  sizeInBytes=4
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
!   _temp_1067 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1068 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1067  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1063:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1068 then goto _Label_1066		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1066
_Label_1064:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_1069 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_1069 [i ] into _temp_1070
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
!   _temp_1071 = _temp_1070 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1071 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1073 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_1073 [i ] into _temp_1074
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
!   _temp_1072 = _temp_1074		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1075 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1072  sizeInBytes=4
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
_Label_1065:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1063
! END FOR
_Label_1066:
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
	.word	_Label_1076
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_1077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1078
	.word	-12
	.word	4
	.word	_Label_1079
	.word	-16
	.word	4
	.word	_Label_1080
	.word	-20
	.word	4
	.word	_Label_1081
	.word	-24
	.word	4
	.word	_Label_1082
	.word	-28
	.word	4
	.word	_Label_1083
	.word	-32
	.word	4
	.word	_Label_1084
	.word	-36
	.word	4
	.word	_Label_1085
	.word	-40
	.word	4
	.word	_Label_1086
	.word	-44
	.word	4
	.word	_Label_1087
	.word	-48
	.word	4
	.word	_Label_1088
	.word	-52
	.word	4
	.word	_Label_1089
	.word	-56
	.word	4
	.word	_Label_1090
	.word	-60
	.word	4
	.word	_Label_1091
	.word	-64
	.word	4
	.word	_Label_1092
	.word	-68
	.word	4
	.word	_Label_1093
	.word	-72
	.word	4
	.word	_Label_1094
	.word	-76
	.word	4
	.word	_Label_1095
	.word	-80
	.word	4
	.word	_Label_1096
	.word	-84
	.word	4
	.word	_Label_1097
	.word	-88
	.word	4
	.word	_Label_1098
	.word	-92
	.word	4
	.word	_Label_1099
	.word	-96
	.word	4
	.word	_Label_1100
	.word	-100
	.word	4
	.word	_Label_1101
	.word	-104
	.word	4
	.word	_Label_1102
	.word	-108
	.word	4
	.word	_Label_1103
	.word	-112
	.word	4
	.word	_Label_1104
	.word	-116
	.word	4
	.word	_Label_1105
	.word	-120
	.word	4
	.word	_Label_1106
	.word	-124
	.word	4
	.word	_Label_1107
	.word	-128
	.word	4
	.word	_Label_1108
	.word	-132
	.word	4
	.word	_Label_1109
	.word	-136
	.word	4
	.word	_Label_1110
	.word	-140
	.word	4
	.word	_Label_1111
	.word	-144
	.word	4
	.word	_Label_1112
	.word	-148
	.word	4
	.word	_Label_1113
	.word	-152
	.word	4
	.word	_Label_1114
	.word	-156
	.word	4
	.word	_Label_1115
	.word	-160
	.word	4
	.word	_Label_1116
	.word	-164
	.word	4
	.word	_Label_1117
	.word	-168
	.word	4
	.word	_Label_1118
	.word	-172
	.word	4
	.word	_Label_1119
	.word	-176
	.word	4
	.word	_Label_1120
	.word	-4340
	.word	4164
	.word	_Label_1121
	.word	-4344
	.word	4
	.word	_Label_1122
	.word	-4348
	.word	4
	.word	_Label_1123
	.word	-45992
	.word	41644
	.word	_Label_1124
	.word	-45996
	.word	4
	.word	_Label_1125
	.word	-46000
	.word	4
	.word	_Label_1126
	.word	-46004
	.word	4
	.word	_Label_1127
	.word	-46008
	.word	4
	.word	_Label_1128
	.word	-46012
	.word	4
	.word	_Label_1129
	.word	-46016
	.word	4
	.word	_Label_1130
	.word	-46020
	.word	4
	.word	_Label_1131
	.word	-46024
	.word	4
	.word	0
_Label_1076:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1077:
	.ascii	"Pself\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1130:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1131:
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
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
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
!   _temp_1132 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
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
!   _temp_1137 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1138 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1137  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1133:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1138 then goto _Label_1136		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1136
_Label_1134:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1139 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1139  sizeInBytes=4
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
!   _temp_1140 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1142 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_1142 [i ] into _temp_1143
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
!   _temp_1141 = _temp_1143		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_function_197_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1135:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1133
! END FOR
_Label_1136:
! CALL STATEMENT...
!   _temp_1144 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1145 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1146 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1145  sizeInBytes=4
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
	.word	_Label_1147
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1148
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1149
	.word	-12
	.word	4
	.word	_Label_1150
	.word	-16
	.word	4
	.word	_Label_1151
	.word	-20
	.word	4
	.word	_Label_1152
	.word	-24
	.word	4
	.word	_Label_1153
	.word	-28
	.word	4
	.word	_Label_1154
	.word	-32
	.word	4
	.word	_Label_1155
	.word	-36
	.word	4
	.word	_Label_1156
	.word	-40
	.word	4
	.word	_Label_1157
	.word	-44
	.word	4
	.word	_Label_1158
	.word	-48
	.word	4
	.word	_Label_1159
	.word	-52
	.word	4
	.word	_Label_1160
	.word	-56
	.word	4
	.word	_Label_1161
	.word	-60
	.word	4
	.word	0
_Label_1147:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1148:
	.ascii	"Pself\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1160:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1161:
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
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
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
!   _temp_1162 = &threadManLock
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
!   _temp_1166 = &freeList
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
!   Retrieve Result: targetName=_temp_1165  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1167 = _temp_1165 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1167 then goto _Label_1164 else goto _Label_1163
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1163
	jmp	_Label_1164
_Label_1163:
! THEN...
	mov	951,r13		! source line 951
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1168 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1169 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1168  sizeInBytes=4
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
_Label_1164:
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1170 = &freeList
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
!   _temp_1171 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1171 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1172 = &threadManLock
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
	.word	_Label_1173
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1175
	.word	-16
	.word	4
	.word	_Label_1176
	.word	-20
	.word	4
	.word	_Label_1177
	.word	-24
	.word	4
	.word	_Label_1178
	.word	-28
	.word	4
	.word	_Label_1179
	.word	-32
	.word	4
	.word	_Label_1180
	.word	-9
	.word	1
	.word	_Label_1181
	.word	-36
	.word	4
	.word	_Label_1182
	.word	-10
	.word	1
	.word	_Label_1183
	.word	-40
	.word	4
	.word	_Label_1184
	.word	-44
	.word	4
	.word	0
_Label_1173:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1174:
	.ascii	"Pself\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1180:
	.byte	'C'
	.ascii	"_temp_1167\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1182:
	.byte	'C'
	.ascii	"_temp_1165\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1184:
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
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	965,r13		! source line 965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1185 = &threadManLock
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
!   _temp_1186 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1186 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1187 = &freeList
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
!   _temp_1188 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1189 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1188  sizeInBytes=4
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
!   _temp_1190 = &threadManLock
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
	.word	_Label_1191
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1193
	.word	12
	.word	4
	.word	_Label_1194
	.word	-12
	.word	4
	.word	_Label_1195
	.word	-16
	.word	4
	.word	_Label_1196
	.word	-20
	.word	4
	.word	_Label_1197
	.word	-24
	.word	4
	.word	_Label_1198
	.word	-28
	.word	4
	.word	_Label_1199
	.word	-32
	.word	4
	.word	0
_Label_1191:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1192:
	.ascii	"Pself\0"
	.align
_Label_1193:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1200
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1200:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1201
	.word	_sourceFileName
	.word	242		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1201:
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
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
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
_Label_2991:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2991
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0SE",r10
!   _temp_1203 = &addrSpace
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
	.word	_Label_1204
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1205
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1206
	.word	-12
	.word	4
	.word	_Label_1207
	.word	-16
	.word	4
	.word	0
_Label_1204:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1205:
	.ascii	"Pself\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1202\0"
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
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1208) then goto _runtimeErrorNullPointer
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
!   _temp_1209 = &addrSpace
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
!   _temp_1210 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1210  sizeInBytes=4
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
	call	_function_197_ThreadPrintShort
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
	.word	_Label_1211
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1212
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1213
	.word	-12
	.word	4
	.word	_Label_1214
	.word	-16
	.word	4
	.word	_Label_1215
	.word	-20
	.word	4
	.word	0
_Label_1211:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1212:
	.ascii	"Pself\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1208\0"
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
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
	mov	1029,r13		! source line 1029
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1216 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1218 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
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
!   _temp_1219 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1221		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1221
!	jmp	_Label_1220
_Label_1220:
! THEN...
	mov	1039,r13		! source line 1039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1222 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1223
_Label_1221:
! ELSE...
	mov	1040,r13		! source line 1040
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1225		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1225
!	jmp	_Label_1224
_Label_1224:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1226 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1227
_Label_1225:
! ELSE...
	mov	1042,r13		! source line 1042
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1229		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1229
!	jmp	_Label_1228
_Label_1228:
! THEN...
	mov	1043,r13		! source line 1043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1230 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1231
_Label_1229:
! ELSE...
	mov	1045,r13		! source line 1045
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1232 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
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
_Label_1231:
! END IF...
_Label_1227:
! END IF...
_Label_1223:
! CALL STATEMENT...
!   _temp_1233 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
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
!   _temp_1234 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1234  sizeInBytes=4
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
	.word	_Label_1235
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1236
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1237
	.word	-12
	.word	4
	.word	_Label_1238
	.word	-16
	.word	4
	.word	_Label_1239
	.word	-20
	.word	4
	.word	_Label_1240
	.word	-24
	.word	4
	.word	_Label_1241
	.word	-28
	.word	4
	.word	_Label_1242
	.word	-32
	.word	4
	.word	_Label_1243
	.word	-36
	.word	4
	.word	_Label_1244
	.word	-40
	.word	4
	.word	_Label_1245
	.word	-44
	.word	4
	.word	_Label_1246
	.word	-48
	.word	4
	.word	0
_Label_1235:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1236:
	.ascii	"Pself\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1247
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1247:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1248
	.word	_sourceFileName
	.word	262		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1248:
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
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
	mov	1067,r13		! source line 1067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   _temp_1249 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1251 = &_temp_1250
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1251 = _temp_1251 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1253 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_2995:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2995
!   _temp_1253 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1255:
!   Data Move: *_temp_1251 = _temp_1253  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_2996:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2996
!   _temp_1251 = _temp_1251 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1252 = _temp_1252 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1252) then goto _Label_1255
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1255
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1256 = &_temp_1250
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2997
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2997:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1249 = *_temp_1256  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_2998:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2998
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
!   _temp_1258 = &processManagerLock
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
!   _temp_1260 = &aProcessBecameFree
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
!   _temp_1263 = &aProcessDied
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
!   _temp_1268 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1269 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1268  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1264:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1269 then goto _Label_1267		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1267
_Label_1265:
	mov	1087,r13		! source line 1087
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1270 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1270 [i ] into _temp_1271
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
!   _temp_1273 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1273 [i ] into _temp_1274
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
!   _temp_1272 = _temp_1274		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1275 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1272  sizeInBytes=4
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
_Label_1266:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1264
! END FOR
_Label_1267:
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   _temp_1276 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1276 [0 ] into _temp_1277
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
!   _temp_1278 = _temp_1277 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1278  (sizeInBytes=4)
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
	.word	_Label_1279
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1280
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1281
	.word	-12
	.word	4
	.word	_Label_1282
	.word	-16
	.word	4
	.word	_Label_1283
	.word	-20
	.word	4
	.word	_Label_1284
	.word	-24
	.word	4
	.word	_Label_1285
	.word	-28
	.word	4
	.word	_Label_1286
	.word	-32
	.word	4
	.word	_Label_1287
	.word	-36
	.word	4
	.word	_Label_1288
	.word	-40
	.word	4
	.word	_Label_1289
	.word	-44
	.word	4
	.word	_Label_1290
	.word	-48
	.word	4
	.word	_Label_1291
	.word	-52
	.word	4
	.word	_Label_1292
	.word	-56
	.word	4
	.word	_Label_1293
	.word	-60
	.word	4
	.word	_Label_1294
	.word	-64
	.word	4
	.word	_Label_1295
	.word	-68
	.word	4
	.word	_Label_1296
	.word	-72
	.word	4
	.word	_Label_1297
	.word	-76
	.word	4
	.word	_Label_1298
	.word	-80
	.word	4
	.word	_Label_1299
	.word	-84
	.word	4
	.word	_Label_1300
	.word	-88
	.word	4
	.word	_Label_1301
	.word	-212
	.word	124
	.word	_Label_1302
	.word	-216
	.word	4
	.word	_Label_1303
	.word	-220
	.word	4
	.word	_Label_1304
	.word	-1464
	.word	1244
	.word	_Label_1305
	.word	-1468
	.word	4
	.word	_Label_1306
	.word	-1472
	.word	4
	.word	0
_Label_1279:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1280:
	.ascii	"Pself\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1306:
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
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
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
!   _temp_1307 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
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
!   _temp_1312 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1313 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1312  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1308:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1313 then goto _Label_1311		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1311
_Label_1309:
	mov	1105,r13		! source line 1105
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1314 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
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
!   _temp_1315 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1316 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1316 [i ] into _temp_1317
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
_Label_1310:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1308
! END FOR
_Label_1311:
! CALL STATEMENT...
!   _temp_1318 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1319 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1320 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1319  sizeInBytes=4
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
	.word	_Label_1321
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1322
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1323
	.word	-12
	.word	4
	.word	_Label_1324
	.word	-16
	.word	4
	.word	_Label_1325
	.word	-20
	.word	4
	.word	_Label_1326
	.word	-24
	.word	4
	.word	_Label_1327
	.word	-28
	.word	4
	.word	_Label_1328
	.word	-32
	.word	4
	.word	_Label_1329
	.word	-36
	.word	4
	.word	_Label_1330
	.word	-40
	.word	4
	.word	_Label_1331
	.word	-44
	.word	4
	.word	_Label_1332
	.word	-48
	.word	4
	.word	_Label_1333
	.word	-52
	.word	4
	.word	_Label_1334
	.word	-56
	.word	4
	.word	0
_Label_1321:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1322:
	.ascii	"Pself\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1333:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1334:
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
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
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
!   _temp_1335 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1335  sizeInBytes=4
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
!   _temp_1340 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1341 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1340  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1336:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1341 then goto _Label_1339		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1339
_Label_1337:
	mov	1128,r13		! source line 1128
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1342 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1342  sizeInBytes=4
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
!   _temp_1343 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1343 [i ] into _temp_1344
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
_Label_1338:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1336
! END FOR
_Label_1339:
! CALL STATEMENT...
!   _temp_1345 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1345  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1346 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1347 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1346  sizeInBytes=4
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
	.word	_Label_1348
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1349
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1350
	.word	-12
	.word	4
	.word	_Label_1351
	.word	-16
	.word	4
	.word	_Label_1352
	.word	-20
	.word	4
	.word	_Label_1353
	.word	-24
	.word	4
	.word	_Label_1354
	.word	-28
	.word	4
	.word	_Label_1355
	.word	-32
	.word	4
	.word	_Label_1356
	.word	-36
	.word	4
	.word	_Label_1357
	.word	-40
	.word	4
	.word	_Label_1358
	.word	-44
	.word	4
	.word	_Label_1359
	.word	-48
	.word	4
	.word	_Label_1360
	.word	-52
	.word	4
	.word	0
_Label_1348:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1349:
	.ascii	"Pself\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1359:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1360:
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
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
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
!   _temp_1361 = &processManagerLock
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
_Label_1362:
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1366 = &freeList
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
!   Retrieve Result: targetName=_temp_1365  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1367 = _temp_1365 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1367 then goto _Label_1364 else goto _Label_1363
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1363
	jmp	_Label_1364
_Label_1363:
	mov	1151,r13		! source line 1151
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1368 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1369 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1368  sizeInBytes=4
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
	jmp	_Label_1362
_Label_1364:
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1370 = &freeList
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
!   _temp_1371 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1371 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0IF",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1375 = &freeList
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
!   Retrieve Result: targetName=_temp_1374  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1376 = _temp_1374 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1376 then goto _Label_1373 else goto _Label_1372
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1372
	jmp	_Label_1373
_Label_1372:
! THEN...
	mov	1159,r13		! source line 1159
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_1377 = &freeList
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
!   _temp_1378 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1378  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1379 = &freeList
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
	jmp	_Label_1380
_Label_1373:
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
_Label_1380:
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1381 = &processManagerLock
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
	.word	_Label_1382
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1383
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1384
	.word	-16
	.word	4
	.word	_Label_1385
	.word	-20
	.word	4
	.word	_Label_1386
	.word	-24
	.word	4
	.word	_Label_1387
	.word	-28
	.word	4
	.word	_Label_1388
	.word	-9
	.word	1
	.word	_Label_1389
	.word	-32
	.word	4
	.word	_Label_1390
	.word	-10
	.word	1
	.word	_Label_1391
	.word	-36
	.word	4
	.word	_Label_1392
	.word	-40
	.word	4
	.word	_Label_1393
	.word	-44
	.word	4
	.word	_Label_1394
	.word	-48
	.word	4
	.word	_Label_1395
	.word	-11
	.word	1
	.word	_Label_1396
	.word	-52
	.word	4
	.word	_Label_1397
	.word	-12
	.word	1
	.word	_Label_1398
	.word	-56
	.word	4
	.word	_Label_1399
	.word	-60
	.word	4
	.word	_Label_1400
	.word	-64
	.word	4
	.word	0
_Label_1382:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1383:
	.ascii	"Pself\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1388:
	.byte	'C'
	.ascii	"_temp_1376\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1390:
	.byte	'C'
	.ascii	"_temp_1374\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1395:
	.byte	'C'
	.ascii	"_temp_1367\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1397:
	.byte	'C'
	.ascii	"_temp_1365\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1399:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1400:
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
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	1171,r13		! source line 1171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1401 = &processManagerLock
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
!   _temp_1405 = &freeList
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
!   Retrieve Result: targetName=_temp_1404  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1406 = _temp_1404 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1406 then goto _Label_1403 else goto _Label_1402
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1402
	jmp	_Label_1403
_Label_1402:
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
!   _temp_1407 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1407  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1403:
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1408 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1408 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1409 = &freeList
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
!   _temp_1410 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1411 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1410  sizeInBytes=4
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
!   _temp_1412 = &processManagerLock
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
	.word	_Label_1413
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1414
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1415
	.word	12
	.word	4
	.word	_Label_1416
	.word	-16
	.word	4
	.word	_Label_1417
	.word	-20
	.word	4
	.word	_Label_1418
	.word	-24
	.word	4
	.word	_Label_1419
	.word	-28
	.word	4
	.word	_Label_1420
	.word	-32
	.word	4
	.word	_Label_1421
	.word	-36
	.word	4
	.word	_Label_1422
	.word	-9
	.word	1
	.word	_Label_1423
	.word	-40
	.word	4
	.word	_Label_1424
	.word	-10
	.word	1
	.word	_Label_1425
	.word	-44
	.word	4
	.word	0
_Label_1413:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1414:
	.ascii	"Pself\0"
	.align
_Label_1415:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1422:
	.byte	'C'
	.ascii	"_temp_1406\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1424:
	.byte	'C'
	.ascii	"_temp_1404\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1426
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1426:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1427
	.word	_sourceFileName
	.word	285		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1427:
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
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	1225,r13		! source line 1225
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1428 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
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
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_1430 = &framesInUse
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
	mov	1234,r13		! source line 1234
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1235,r13		! source line 1235
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
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_1432 = &frameManagerLock
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
	mov	1237,r13		! source line 1237
	mov	"\0\0AS",r10
!   waiting = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! ASSIGNMENT STATEMENT...
	mov	1238,r13		! source line 1238
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
	mov	1239,r13		! source line 1239
	mov	"\0\0SE",r10
!   _temp_1434 = &restOfLine
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
	mov	1240,r13		! source line 1240
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
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
!   _temp_1436 = &newFramesAvailable
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
	mov	1247,r13		! source line 1247
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1441 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1442 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1441  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1437:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1442 then goto _Label_1440		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1440
_Label_1438:
	mov	1247,r13		! source line 1247
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1445 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1445) then goto _Label_1444
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1444
!	jmp	_Label_1443
_Label_1443:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1446 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1446  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1251,r13		! source line 1251
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1444:
!   Increment the FOR-LOOP index variable and jump back
_Label_1439:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1437
! END FOR
_Label_1440:
! RETURN STATEMENT...
	mov	1247,r13		! source line 1247
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
	.word	_Label_1447
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1449
	.word	-12
	.word	4
	.word	_Label_1450
	.word	-16
	.word	4
	.word	_Label_1451
	.word	-20
	.word	4
	.word	_Label_1452
	.word	-24
	.word	4
	.word	_Label_1453
	.word	-28
	.word	4
	.word	_Label_1454
	.word	-32
	.word	4
	.word	_Label_1455
	.word	-36
	.word	4
	.word	_Label_1456
	.word	-40
	.word	4
	.word	_Label_1457
	.word	-44
	.word	4
	.word	_Label_1458
	.word	-48
	.word	4
	.word	_Label_1459
	.word	-52
	.word	4
	.word	_Label_1460
	.word	-56
	.word	4
	.word	_Label_1461
	.word	-60
	.word	4
	.word	_Label_1462
	.word	-64
	.word	4
	.word	0
_Label_1447:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1448:
	.ascii	"Pself\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1462:
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
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   _temp_1463 = &frameManagerLock
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
!   _temp_1464 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1464  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1465 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1465  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1466 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1466  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0SE",r10
!   _temp_1467 = &framesInUse
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
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
!   _temp_1468 = &frameManagerLock
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
	mov	1267,r13		! source line 1267
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
	.word	_Label_1469
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1471
	.word	-12
	.word	4
	.word	_Label_1472
	.word	-16
	.word	4
	.word	_Label_1473
	.word	-20
	.word	4
	.word	_Label_1474
	.word	-24
	.word	4
	.word	_Label_1475
	.word	-28
	.word	4
	.word	_Label_1476
	.word	-32
	.word	4
	.word	0
_Label_1469:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1470:
	.ascii	"Pself\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1463\0"
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
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1477 = &frameManagerLock
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
	mov	1283,r13		! source line 1283
	mov	"\0\0WH",r10
_Label_1478:
!   if numberFreeFrames >= 1 then goto _Label_1480		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1480
!	jmp	_Label_1479
_Label_1479:
	mov	1283,r13		! source line 1283
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
!   _temp_1481 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1482 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1481  sizeInBytes=4
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
	jmp	_Label_1478
_Label_1480:
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
!   _temp_1483 = &framesInUse
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
	mov	1289,r13		! source line 1289
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
	mov	1292,r13		! source line 1292
	mov	"\0\0SE",r10
!   _temp_1484 = &frameManagerLock
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
	mov	1295,r13		! source line 1295
	mov	"\0\0AS",r10
!   _temp_1485 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1485		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
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
	.word	_Label_1486
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1488
	.word	-12
	.word	4
	.word	_Label_1489
	.word	-16
	.word	4
	.word	_Label_1490
	.word	-20
	.word	4
	.word	_Label_1491
	.word	-24
	.word	4
	.word	_Label_1492
	.word	-28
	.word	4
	.word	_Label_1493
	.word	-32
	.word	4
	.word	_Label_1494
	.word	-36
	.word	4
	.word	_Label_1495
	.word	-40
	.word	4
	.word	0
_Label_1486:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1487:
	.ascii	"Pself\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1494:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1495:
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
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0SE",r10
!   _temp_1496 = &frameManagerLock
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
	mov	1307,r13		! source line 1307
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
	mov	1308,r13		! source line 1308
	mov	"\0\0IF",r10
!   if waiting <= 1 then goto _Label_1498		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1498
!	jmp	_Label_1497
_Label_1497:
! THEN...
	mov	1309,r13		! source line 1309
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0SE",r10
!   _temp_1499 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1500 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1499  sizeInBytes=4
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
_Label_1498:
! WHILE STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0WH",r10
_Label_1501:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1503		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1503
!	jmp	_Label_1502
_Label_1502:
	mov	1312,r13		! source line 1312
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0SE",r10
!   _temp_1504 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1505 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1504  sizeInBytes=4
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
	jmp	_Label_1501
_Label_1503:
! FOR STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1510 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1511 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1510  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1506:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1511 then goto _Label_1509		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1509
_Label_1507:
	mov	1316,r13		! source line 1316
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0AS",r10
	mov	1317,r13		! source line 1317
	mov	"\0\0SE",r10
!   _temp_1512 = &framesInUse
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
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
!   _temp_1513 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1513		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1319,r13		! source line 1319
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
_Label_1508:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1506
! END FOR
_Label_1509:
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
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
	mov	1323,r13		! source line 1323
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1514 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1514 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
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
	mov	1325,r13		! source line 1325
	mov	"\0\0SE",r10
!   _temp_1515 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1516 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1515  sizeInBytes=4
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
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
!   _temp_1517 = &frameManagerLock
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
	mov	1327,r13		! source line 1327
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
	.word	_Label_1518
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1520
	.word	12
	.word	4
	.word	_Label_1521
	.word	16
	.word	4
	.word	_Label_1522
	.word	-12
	.word	4
	.word	_Label_1523
	.word	-16
	.word	4
	.word	_Label_1524
	.word	-20
	.word	4
	.word	_Label_1525
	.word	-24
	.word	4
	.word	_Label_1526
	.word	-28
	.word	4
	.word	_Label_1527
	.word	-32
	.word	4
	.word	_Label_1528
	.word	-36
	.word	4
	.word	_Label_1529
	.word	-40
	.word	4
	.word	_Label_1530
	.word	-44
	.word	4
	.word	_Label_1531
	.word	-48
	.word	4
	.word	_Label_1532
	.word	-52
	.word	4
	.word	_Label_1533
	.word	-56
	.word	4
	.word	_Label_1534
	.word	-60
	.word	4
	.word	_Label_1535
	.word	-64
	.word	4
	.word	_Label_1536
	.word	-68
	.word	4
	.word	0
_Label_1518:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1519:
	.ascii	"Pself\0"
	.align
_Label_1520:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1521:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1535:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1536:
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
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	1332,r13		! source line 1332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0SE",r10
!   _temp_1537 = &frameManagerLock
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
	mov	1337,r13		! source line 1337
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1542 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1545 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1544 = *_temp_1545  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1543 = _temp_1544 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1542  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1538:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1543 then goto _Label_1541		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1541
_Label_1539:
	mov	1337,r13		! source line 1337
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
	mov	1338,r13		! source line 1338
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
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_1546 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1546 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0SE",r10
!   _temp_1547 = &framesInUse
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
_Label_1540:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1538
! END FOR
_Label_1541:
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1549 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1548 = *_temp_1549  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1548		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0SE",r10
!   _temp_1550 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1551 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1550  sizeInBytes=4
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
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1552 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1552 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0SE",r10
!   _temp_1553 = &frameManagerLock
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
	mov	1347,r13		! source line 1347
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
	.word	_Label_1554
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1556
	.word	12
	.word	4
	.word	_Label_1557
	.word	-12
	.word	4
	.word	_Label_1558
	.word	-16
	.word	4
	.word	_Label_1559
	.word	-20
	.word	4
	.word	_Label_1560
	.word	-24
	.word	4
	.word	_Label_1561
	.word	-28
	.word	4
	.word	_Label_1562
	.word	-32
	.word	4
	.word	_Label_1563
	.word	-36
	.word	4
	.word	_Label_1564
	.word	-40
	.word	4
	.word	_Label_1565
	.word	-44
	.word	4
	.word	_Label_1566
	.word	-48
	.word	4
	.word	_Label_1567
	.word	-52
	.word	4
	.word	_Label_1568
	.word	-56
	.word	4
	.word	_Label_1569
	.word	-60
	.word	4
	.word	_Label_1570
	.word	-64
	.word	4
	.word	_Label_1571
	.word	-68
	.word	4
	.word	_Label_1572
	.word	-72
	.word	4
	.word	0
_Label_1554:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1555:
	.ascii	"Pself\0"
	.align
_Label_1556:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1571:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1573
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
_Label_1573:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1574
	.word	_sourceFileName
	.word	306		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1574:
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
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	1358,r13		! source line 1358
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0AS",r10
!   _temp_1575 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1577 = &_temp_1576
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1577 = _temp_1577 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1579:
!   Data Move: *_temp_1577 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1577 = _temp_1577 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1578 = _temp_1578 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1578) then goto _Label_1579
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1579
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1580 = &_temp_1576
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3009
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3009:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1575 = *_temp_1580  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3010:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3010
! RETURN STATEMENT...
	mov	1363,r13		! source line 1363
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
	.word	_Label_1581
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1583
	.word	-12
	.word	4
	.word	_Label_1584
	.word	-16
	.word	4
	.word	_Label_1585
	.word	-20
	.word	4
	.word	_Label_1586
	.word	-104
	.word	84
	.word	_Label_1587
	.word	-108
	.word	4
	.word	0
_Label_1581:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1582:
	.ascii	"Pself\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1575\0"
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
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	1368,r13		! source line 1368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1588 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1373,r13		! source line 1373
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1589 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1589  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1594 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1595 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1594  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1590:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1595 then goto _Label_1593		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1593
_Label_1591:
	mov	1375,r13		! source line 1375
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1596 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1596  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1598 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1598 [i ] into _temp_1599
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
!   _temp_1597 = _temp_1599		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1377,r13		! source line 1377
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1600 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1600  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1378,r13		! source line 1378
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1602 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1602 [i ] into _temp_1603
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
!   Data Move: _temp_1601 = *_temp_1603  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1379,r13		! source line 1379
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1604 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1604  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1605 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1606 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1606  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1608) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1607  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1607  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1383,r13		! source line 1383
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1609 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1609  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0IF",r10
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1613) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1612  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1612) then goto _Label_1611
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1611
!	jmp	_Label_1610
_Label_1610:
! THEN...
	mov	1386,r13		! source line 1386
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1615) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1614  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1614  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1616
_Label_1611:
! ELSE...
	mov	1388,r13		! source line 1388
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1617 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1617  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1616:
! CALL STATEMENT...
!   _temp_1618 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1618  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0IF",r10
	mov	1391,r13		! source line 1391
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1621) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1619 else goto _Label_1620
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1620
	jmp	_Label_1619
_Label_1619:
! THEN...
	mov	1392,r13		! source line 1392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1622 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1622  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1623
_Label_1620:
! ELSE...
	mov	1394,r13		! source line 1394
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1624 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1624  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1623:
! CALL STATEMENT...
!   _temp_1625 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0IF",r10
	mov	1397,r13		! source line 1397
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1628) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1626 else goto _Label_1627
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1627
	jmp	_Label_1626
_Label_1626:
! THEN...
	mov	1398,r13		! source line 1398
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1629 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1629  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1630
_Label_1627:
! ELSE...
	mov	1400,r13		! source line 1400
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1631 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1630:
! CALL STATEMENT...
!   _temp_1632 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1632  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0IF",r10
	mov	1403,r13		! source line 1403
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1635) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1633 else goto _Label_1634
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1634
	jmp	_Label_1633
_Label_1633:
! THEN...
	mov	1404,r13		! source line 1404
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1636 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1636  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1404,r13		! source line 1404
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1637
_Label_1634:
! ELSE...
	mov	1406,r13		! source line 1406
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1638 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1638  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1637:
! CALL STATEMENT...
!   _temp_1639 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0IF",r10
	mov	1409,r13		! source line 1409
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1642) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1640 else goto _Label_1641
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1641
	jmp	_Label_1640
_Label_1640:
! THEN...
	mov	1410,r13		! source line 1410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1643 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1644
_Label_1641:
! ELSE...
	mov	1412,r13		! source line 1412
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1645 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1645  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1644:
! CALL STATEMENT...
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1592:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1590
! END FOR
_Label_1593:
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
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
	.word	_Label_1646
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1648
	.word	-12
	.word	4
	.word	_Label_1649
	.word	-16
	.word	4
	.word	_Label_1650
	.word	-20
	.word	4
	.word	_Label_1651
	.word	-24
	.word	4
	.word	_Label_1652
	.word	-28
	.word	4
	.word	_Label_1653
	.word	-32
	.word	4
	.word	_Label_1654
	.word	-36
	.word	4
	.word	_Label_1655
	.word	-40
	.word	4
	.word	_Label_1656
	.word	-44
	.word	4
	.word	_Label_1657
	.word	-48
	.word	4
	.word	_Label_1658
	.word	-52
	.word	4
	.word	_Label_1659
	.word	-56
	.word	4
	.word	_Label_1660
	.word	-60
	.word	4
	.word	_Label_1661
	.word	-64
	.word	4
	.word	_Label_1662
	.word	-68
	.word	4
	.word	_Label_1663
	.word	-72
	.word	4
	.word	_Label_1664
	.word	-76
	.word	4
	.word	_Label_1665
	.word	-80
	.word	4
	.word	_Label_1666
	.word	-84
	.word	4
	.word	_Label_1667
	.word	-88
	.word	4
	.word	_Label_1668
	.word	-92
	.word	4
	.word	_Label_1669
	.word	-96
	.word	4
	.word	_Label_1670
	.word	-100
	.word	4
	.word	_Label_1671
	.word	-104
	.word	4
	.word	_Label_1672
	.word	-108
	.word	4
	.word	_Label_1673
	.word	-112
	.word	4
	.word	_Label_1674
	.word	-116
	.word	4
	.word	_Label_1675
	.word	-120
	.word	4
	.word	_Label_1676
	.word	-124
	.word	4
	.word	_Label_1677
	.word	-128
	.word	4
	.word	_Label_1678
	.word	-132
	.word	4
	.word	_Label_1679
	.word	-136
	.word	4
	.word	_Label_1680
	.word	-140
	.word	4
	.word	_Label_1681
	.word	-144
	.word	4
	.word	_Label_1682
	.word	-148
	.word	4
	.word	_Label_1683
	.word	-152
	.word	4
	.word	_Label_1684
	.word	-156
	.word	4
	.word	_Label_1685
	.word	-160
	.word	4
	.word	_Label_1686
	.word	-164
	.word	4
	.word	_Label_1687
	.word	-168
	.word	4
	.word	0
_Label_1646:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1647:
	.ascii	"Pself\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1687:
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
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0RE",r10
!   _temp_1690 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1690 [entry ] into _temp_1691
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
!   Data Move: _temp_1689 = *_temp_1691  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1688 = _temp_1689 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1688  (sizeInBytes=4)
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
	.word	_Label_1692
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1694
	.word	12
	.word	4
	.word	_Label_1695
	.word	-12
	.word	4
	.word	_Label_1696
	.word	-16
	.word	4
	.word	_Label_1697
	.word	-20
	.word	4
	.word	_Label_1698
	.word	-24
	.word	4
	.word	0
_Label_1692:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1693:
	.ascii	"Pself\0"
	.align
_Label_1694:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1688\0"
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
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1430,r13		! source line 1430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0RE",r10
!   _temp_1701 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1701 [entry ] into _temp_1702
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
!   Data Move: _temp_1700 = *_temp_1702  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1699 = _temp_1700 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1699  (sizeInBytes=4)
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
	.word	_Label_1703
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1705
	.word	12
	.word	4
	.word	_Label_1706
	.word	-12
	.word	4
	.word	_Label_1707
	.word	-16
	.word	4
	.word	_Label_1708
	.word	-20
	.word	4
	.word	_Label_1709
	.word	-24
	.word	4
	.word	0
_Label_1703:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1704:
	.ascii	"Pself\0"
	.align
_Label_1705:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1699\0"
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
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	1439,r13		! source line 1439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
!   _temp_1710 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1710 [entry ] into _temp_1711
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
!   _temp_1715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1715 [entry ] into _temp_1716
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
!   Data Move: _temp_1714 = *_temp_1716  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1713 = _temp_1714 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1712 = _temp_1713 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1711 = _temp_1712  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
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
	.word	_Label_1717
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1718
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1719
	.word	12
	.word	4
	.word	_Label_1720
	.word	16
	.word	4
	.word	_Label_1721
	.word	-12
	.word	4
	.word	_Label_1722
	.word	-16
	.word	4
	.word	_Label_1723
	.word	-20
	.word	4
	.word	_Label_1724
	.word	-24
	.word	4
	.word	_Label_1725
	.word	-28
	.word	4
	.word	_Label_1726
	.word	-32
	.word	4
	.word	_Label_1727
	.word	-36
	.word	4
	.word	0
_Label_1717:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1718:
	.ascii	"Pself\0"
	.align
_Label_1719:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1720:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1710\0"
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
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	1449,r13		! source line 1449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
!   _temp_1731 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1731 [entry ] into _temp_1732
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
!   Data Move: _temp_1730 = *_temp_1732  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1729 = _temp_1730 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1729) then goto _Label_1733
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1733
!   _temp_1728 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1734
_Label_1733:
!   _temp_1728 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1734:
!   ReturnResult: _temp_1728  (sizeInBytes=1)
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
	.word	_Label_1735
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1736
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1737
	.word	12
	.word	4
	.word	_Label_1738
	.word	-16
	.word	4
	.word	_Label_1739
	.word	-20
	.word	4
	.word	_Label_1740
	.word	-24
	.word	4
	.word	_Label_1741
	.word	-28
	.word	4
	.word	_Label_1742
	.word	-9
	.word	1
	.word	0
_Label_1735:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1736:
	.ascii	"Pself\0"
	.align
_Label_1737:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1742:
	.byte	'C'
	.ascii	"_temp_1728\0"
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
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	1458,r13		! source line 1458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0RE",r10
!   _temp_1746 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1746 [entry ] into _temp_1747
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
!   Data Move: _temp_1745 = *_temp_1747  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1744 = _temp_1745 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1744) then goto _Label_1748
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1748
!   _temp_1743 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1749
_Label_1748:
!   _temp_1743 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1749:
!   ReturnResult: _temp_1743  (sizeInBytes=1)
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
	.word	_Label_1750
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1752
	.word	12
	.word	4
	.word	_Label_1753
	.word	-16
	.word	4
	.word	_Label_1754
	.word	-20
	.word	4
	.word	_Label_1755
	.word	-24
	.word	4
	.word	_Label_1756
	.word	-28
	.word	4
	.word	_Label_1757
	.word	-9
	.word	1
	.word	0
_Label_1750:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1751:
	.ascii	"Pself\0"
	.align
_Label_1752:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1757:
	.byte	'C'
	.ascii	"_temp_1743\0"
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
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	1467,r13		! source line 1467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
!   _temp_1761 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1761 [entry ] into _temp_1762
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
!   Data Move: _temp_1760 = *_temp_1762  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1759 = _temp_1760 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1759) then goto _Label_1763
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1763
!   _temp_1758 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1764
_Label_1763:
!   _temp_1758 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1764:
!   ReturnResult: _temp_1758  (sizeInBytes=1)
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
	.word	_Label_1765
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1767
	.word	12
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
	.word	_Label_1771
	.word	-28
	.word	4
	.word	_Label_1772
	.word	-9
	.word	1
	.word	0
_Label_1765:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1766:
	.ascii	"Pself\0"
	.align
_Label_1767:
	.byte	'I'
	.ascii	"entry\0"
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
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1772:
	.byte	'C'
	.ascii	"_temp_1758\0"
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
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	1476,r13		! source line 1476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0RE",r10
!   _temp_1776 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1776 [entry ] into _temp_1777
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
!   Data Move: _temp_1775 = *_temp_1777  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1774 = _temp_1775 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1774) then goto _Label_1778
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1778
!   _temp_1773 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1779
_Label_1778:
!   _temp_1773 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1779:
!   ReturnResult: _temp_1773  (sizeInBytes=1)
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
	.word	_Label_1780
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1782
	.word	12
	.word	4
	.word	_Label_1783
	.word	-16
	.word	4
	.word	_Label_1784
	.word	-20
	.word	4
	.word	_Label_1785
	.word	-24
	.word	4
	.word	_Label_1786
	.word	-28
	.word	4
	.word	_Label_1787
	.word	-9
	.word	1
	.word	0
_Label_1780:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1781:
	.ascii	"Pself\0"
	.align
_Label_1782:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1787:
	.byte	'C'
	.ascii	"_temp_1773\0"
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
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   _temp_1788 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1788 [entry ] into _temp_1789
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
!   _temp_1792 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1792 [entry ] into _temp_1793
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
!   Data Move: _temp_1791 = *_temp_1793  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1790 = _temp_1791 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1789 = _temp_1790  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
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
	.word	_Label_1794
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1796
	.word	12
	.word	4
	.word	_Label_1797
	.word	-12
	.word	4
	.word	_Label_1798
	.word	-16
	.word	4
	.word	_Label_1799
	.word	-20
	.word	4
	.word	_Label_1800
	.word	-24
	.word	4
	.word	_Label_1801
	.word	-28
	.word	4
	.word	_Label_1802
	.word	-32
	.word	4
	.word	0
_Label_1794:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1795:
	.ascii	"Pself\0"
	.align
_Label_1796:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1788\0"
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
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	1494,r13		! source line 1494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   _temp_1803 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1803 [entry ] into _temp_1804
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
!   _temp_1807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1807 [entry ] into _temp_1808
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
!   Data Move: _temp_1806 = *_temp_1808  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1805 = _temp_1806 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1804 = _temp_1805  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1498,r13		! source line 1498
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
	.word	_Label_1809
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1811
	.word	12
	.word	4
	.word	_Label_1812
	.word	-12
	.word	4
	.word	_Label_1813
	.word	-16
	.word	4
	.word	_Label_1814
	.word	-20
	.word	4
	.word	_Label_1815
	.word	-24
	.word	4
	.word	_Label_1816
	.word	-28
	.word	4
	.word	_Label_1817
	.word	-32
	.word	4
	.word	0
_Label_1809:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1810:
	.ascii	"Pself\0"
	.align
_Label_1811:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1803\0"
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
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	1503,r13		! source line 1503
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   _temp_1818 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1818 [entry ] into _temp_1819
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
!   _temp_1822 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1822 [entry ] into _temp_1823
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
!   Data Move: _temp_1821 = *_temp_1823  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1820 = _temp_1821 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1819 = _temp_1820  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1507,r13		! source line 1507
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
	.word	_Label_1824
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1826
	.word	12
	.word	4
	.word	_Label_1827
	.word	-12
	.word	4
	.word	_Label_1828
	.word	-16
	.word	4
	.word	_Label_1829
	.word	-20
	.word	4
	.word	_Label_1830
	.word	-24
	.word	4
	.word	_Label_1831
	.word	-28
	.word	4
	.word	_Label_1832
	.word	-32
	.word	4
	.word	0
_Label_1824:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1825:
	.ascii	"Pself\0"
	.align
_Label_1826:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1818\0"
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
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	1512,r13		! source line 1512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   _temp_1833 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1833 [entry ] into _temp_1834
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
!   _temp_1837 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1837 [entry ] into _temp_1838
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
!   Data Move: _temp_1836 = *_temp_1838  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1835 = _temp_1836 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1834 = _temp_1835  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1516,r13		! source line 1516
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
	.word	_Label_1839
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1841
	.word	12
	.word	4
	.word	_Label_1842
	.word	-12
	.word	4
	.word	_Label_1843
	.word	-16
	.word	4
	.word	_Label_1844
	.word	-20
	.word	4
	.word	_Label_1845
	.word	-24
	.word	4
	.word	_Label_1846
	.word	-28
	.word	4
	.word	_Label_1847
	.word	-32
	.word	4
	.word	0
_Label_1839:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1840:
	.ascii	"Pself\0"
	.align
_Label_1841:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1833\0"
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
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	1521,r13		! source line 1521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0AS",r10
!   _temp_1848 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1848 [entry ] into _temp_1849
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
!   _temp_1852 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1852 [entry ] into _temp_1853
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
!   Data Move: _temp_1851 = *_temp_1853  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1850 = _temp_1851 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1849 = _temp_1850  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1525,r13		! source line 1525
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
	.word	_Label_1854
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1856
	.word	12
	.word	4
	.word	_Label_1857
	.word	-12
	.word	4
	.word	_Label_1858
	.word	-16
	.word	4
	.word	_Label_1859
	.word	-20
	.word	4
	.word	_Label_1860
	.word	-24
	.word	4
	.word	_Label_1861
	.word	-28
	.word	4
	.word	_Label_1862
	.word	-32
	.word	4
	.word	0
_Label_1854:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1855:
	.ascii	"Pself\0"
	.align
_Label_1856:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1848\0"
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
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	1530,r13		! source line 1530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0AS",r10
!   _temp_1863 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1863 [entry ] into _temp_1864
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
!   _temp_1867 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1867 [entry ] into _temp_1868
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
!   Data Move: _temp_1866 = *_temp_1868  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1865 = _temp_1866 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1864 = _temp_1865  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
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
	.word	_Label_1869
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1871
	.word	12
	.word	4
	.word	_Label_1872
	.word	-12
	.word	4
	.word	_Label_1873
	.word	-16
	.word	4
	.word	_Label_1874
	.word	-20
	.word	4
	.word	_Label_1875
	.word	-24
	.word	4
	.word	_Label_1876
	.word	-28
	.word	4
	.word	_Label_1877
	.word	-32
	.word	4
	.word	0
_Label_1869:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1870:
	.ascii	"Pself\0"
	.align
_Label_1871:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1863\0"
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
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	1539,r13		! source line 1539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0AS",r10
!   _temp_1878 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1878 [entry ] into _temp_1879
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
!   _temp_1882 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1882 [entry ] into _temp_1883
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
!   Data Move: _temp_1881 = *_temp_1883  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1880 = _temp_1881 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1879 = _temp_1880  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
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
	.word	_Label_1884
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1886
	.word	12
	.word	4
	.word	_Label_1887
	.word	-12
	.word	4
	.word	_Label_1888
	.word	-16
	.word	4
	.word	_Label_1889
	.word	-20
	.word	4
	.word	_Label_1890
	.word	-24
	.word	4
	.word	_Label_1891
	.word	-28
	.word	4
	.word	_Label_1892
	.word	-32
	.word	4
	.word	0
_Label_1884:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1885:
	.ascii	"Pself\0"
	.align
_Label_1886:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1878\0"
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
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	1548,r13		! source line 1548
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   _temp_1893 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1893 [entry ] into _temp_1894
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
!   _temp_1897 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1897 [entry ] into _temp_1898
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
!   Data Move: _temp_1896 = *_temp_1898  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1895 = _temp_1896 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1894 = _temp_1895  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1552,r13		! source line 1552
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
	.word	_Label_1899
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1901
	.word	12
	.word	4
	.word	_Label_1902
	.word	-12
	.word	4
	.word	_Label_1903
	.word	-16
	.word	4
	.word	_Label_1904
	.word	-20
	.word	4
	.word	_Label_1905
	.word	-24
	.word	4
	.word	_Label_1906
	.word	-28
	.word	4
	.word	_Label_1907
	.word	-32
	.word	4
	.word	0
_Label_1899:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1900:
	.ascii	"Pself\0"
	.align
_Label_1901:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1893\0"
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
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	1557,r13		! source line 1557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1909 [0 ] into _temp_1910
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
!   _temp_1908 = _temp_1910		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1911 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1908  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1911  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1563,r13		! source line 1563
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1563,r13		! source line 1563
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
	.word	_Label_1912
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1913
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_1912:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1913:
	.ascii	"Pself\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1908\0"
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
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	1568,r13		! source line 1568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1918
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1918
	jmp	_Label_1919
_Label_1918:
! THEN...
	mov	1584,r13		! source line 1584
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1920
_Label_1919:
! ELSE...
	mov	1585,r13		! source line 1585
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1922		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1922
!	jmp	_Label_1921
_Label_1921:
! THEN...
	mov	1586,r13		! source line 1586
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1922:
! END IF...
_Label_1920:
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
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
	mov	1589,r13		! source line 1589
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
	mov	1592,r13		! source line 1592
	mov	"\0\0WH",r10
_Label_1923:
!	jmp	_Label_1924
_Label_1924:
	mov	1592,r13		! source line 1592
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1927		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1927
!	jmp	_Label_1926
_Label_1926:
! THEN...
	mov	1594,r13		! source line 1594
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1928 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1928  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1594,r13		! source line 1594
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1927:
! IF STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0IF",r10
	mov	1597,r13		! source line 1597
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1932) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1931  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1931 then goto _Label_1930 else goto _Label_1929
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1929
	jmp	_Label_1930
_Label_1929:
! THEN...
	mov	1598,r13		! source line 1598
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1933 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1933  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1598,r13		! source line 1598
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1930:
! ASSIGNMENT STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0AS",r10
	mov	1601,r13		! source line 1601
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1935) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1934  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1934 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0WH",r10
_Label_1936:
!   if offset >= 8192 then goto _Label_1938		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1938
!	jmp	_Label_1937
_Label_1937:
	mov	1603,r13		! source line 1603
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1939 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1939  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1941		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1941
!	jmp	_Label_1940
_Label_1940:
! THEN...
	mov	1612,r13		! source line 1612
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1941:
! END WHILE...
	jmp	_Label_1936
_Label_1938:
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1923
_Label_1925:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1942
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1944
	.word	12
	.word	4
	.word	_Label_1945
	.word	16
	.word	4
	.word	_Label_1946
	.word	20
	.word	4
	.word	_Label_1947
	.word	-9
	.word	1
	.word	_Label_1948
	.word	-16
	.word	4
	.word	_Label_1949
	.word	-20
	.word	4
	.word	_Label_1950
	.word	-24
	.word	4
	.word	_Label_1951
	.word	-28
	.word	4
	.word	_Label_1952
	.word	-10
	.word	1
	.word	_Label_1953
	.word	-32
	.word	4
	.word	_Label_1954
	.word	-36
	.word	4
	.word	_Label_1955
	.word	-40
	.word	4
	.word	_Label_1956
	.word	-44
	.word	4
	.word	_Label_1957
	.word	-48
	.word	4
	.word	0
_Label_1942:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1943:
	.ascii	"Pself\0"
	.align
_Label_1944:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1945:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1946:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1947:
	.byte	'C'
	.ascii	"_temp_1939\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1952:
	.byte	'C'
	.ascii	"_temp_1931\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1954:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1955:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1956:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1957:
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
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	1622,r13		! source line 1622
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1958
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1958
	jmp	_Label_1959
_Label_1958:
! THEN...
	mov	1634,r13		! source line 1634
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1960
_Label_1959:
! ELSE...
	mov	1635,r13		! source line 1635
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1962		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1962
!	jmp	_Label_1961
_Label_1961:
! THEN...
	mov	1636,r13		! source line 1636
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1962:
! END IF...
_Label_1960:
! ASSIGNMENT STATEMENT...
	mov	1638,r13		! source line 1638
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
	mov	1639,r13		! source line 1639
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
	mov	1640,r13		! source line 1640
	mov	"\0\0WH",r10
_Label_1963:
!	jmp	_Label_1964
_Label_1964:
	mov	1640,r13		! source line 1640
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1969		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1969
	jmp	_Label_1966
_Label_1969:
	mov	1642,r13		! source line 1642
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1971) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1970  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1970 then goto _Label_1968 else goto _Label_1966
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1966
	jmp	_Label_1968
_Label_1968:
	mov	1643,r13		! source line 1643
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1973) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1972  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1972 then goto _Label_1967 else goto _Label_1966
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1966
	jmp	_Label_1967
_Label_1966:
! THEN...
	mov	1644,r13		! source line 1644
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1967:
! ASSIGNMENT STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0AS",r10
	mov	1646,r13		! source line 1646
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1975) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1974  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1974 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0WH",r10
_Label_1976:
!   if offset >= 8192 then goto _Label_1978		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1978
!	jmp	_Label_1977
_Label_1977:
	mov	1647,r13		! source line 1647
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1979 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1979  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1981		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1981
!	jmp	_Label_1980
_Label_1980:
! THEN...
	mov	1654,r13		! source line 1654
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1981:
! END WHILE...
	jmp	_Label_1976
_Label_1978:
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1963
_Label_1965:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1982
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1984
	.word	12
	.word	4
	.word	_Label_1985
	.word	16
	.word	4
	.word	_Label_1986
	.word	20
	.word	4
	.word	_Label_1987
	.word	-9
	.word	1
	.word	_Label_1988
	.word	-16
	.word	4
	.word	_Label_1989
	.word	-20
	.word	4
	.word	_Label_1990
	.word	-24
	.word	4
	.word	_Label_1991
	.word	-10
	.word	1
	.word	_Label_1992
	.word	-28
	.word	4
	.word	_Label_1993
	.word	-11
	.word	1
	.word	_Label_1994
	.word	-32
	.word	4
	.word	_Label_1995
	.word	-36
	.word	4
	.word	_Label_1996
	.word	-40
	.word	4
	.word	_Label_1997
	.word	-44
	.word	4
	.word	0
_Label_1982:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1983:
	.ascii	"Pself\0"
	.align
_Label_1984:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1985:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1986:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1987:
	.byte	'C'
	.ascii	"_temp_1979\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1991:
	.byte	'C'
	.ascii	"_temp_1972\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1993:
	.byte	'C'
	.ascii	"_temp_1970\0"
	.align
_Label_1994:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1995:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1996:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1997:
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
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	1664,r13		! source line 1664
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0IF",r10
	mov	1688,r13		! source line 1688
	mov	"\0\0SE",r10
!   _temp_2001 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2002) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2001  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2000  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2000 >= 4 then goto _Label_1999		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1999
!	jmp	_Label_1998
_Label_1998:
! THEN...
	mov	1691,r13		! source line 1691
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1999:
! IF STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2004		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2004
!	jmp	_Label_2003
_Label_2003:
! THEN...
	mov	1696,r13		! source line 1696
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2004:
! ASSIGNMENT STATEMENT...
	mov	1699,r13		! source line 1699
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
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
	mov	1701,r13		! source line 1701
	mov	"\0\0SE",r10
!   _temp_2007 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2006 = _temp_2007 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2008 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2009) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2006  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2008  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2005  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2005  (sizeInBytes=4)
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
	.word	_Label_2010
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2012
	.word	12
	.word	4
	.word	_Label_2013
	.word	16
	.word	4
	.word	_Label_2014
	.word	20
	.word	4
	.word	_Label_2015
	.word	-12
	.word	4
	.word	_Label_2016
	.word	-16
	.word	4
	.word	_Label_2017
	.word	-20
	.word	4
	.word	_Label_2018
	.word	-24
	.word	4
	.word	_Label_2019
	.word	-28
	.word	4
	.word	_Label_2020
	.word	-32
	.word	4
	.word	_Label_2021
	.word	-36
	.word	4
	.word	_Label_2022
	.word	-40
	.word	4
	.word	_Label_2023
	.word	-44
	.word	4
	.word	0
_Label_2010:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2011:
	.ascii	"Pself\0"
	.align
_Label_2012:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2013:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2014:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2023:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2024
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2024:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2025
	.word	_sourceFileName
	.word	339		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2025:
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
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	2037,r13		! source line 2037
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2026 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2038,r13		! source line 2038
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
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
	mov	2046,r13		! source line 2046
	mov	"\0\0SE",r10
!   _temp_2028 = &semUsedInSynchMethods
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
	mov	2047,r13		! source line 2047
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
	mov	2048,r13		! source line 2048
	mov	"\0\0SE",r10
!   _temp_2030 = &diskBusy
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
	mov	2048,r13		! source line 2048
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
	.word	_Label_2031
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2033
	.word	-12
	.word	4
	.word	_Label_2034
	.word	-16
	.word	4
	.word	_Label_2035
	.word	-20
	.word	4
	.word	_Label_2036
	.word	-24
	.word	4
	.word	_Label_2037
	.word	-28
	.word	4
	.word	0
_Label_2031:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2032:
	.ascii	"Pself\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2026\0"
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
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	2053,r13		! source line 2053
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0SE",r10
!   _temp_2038 = &diskBusy
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
	mov	2067,r13		! source line 2067
	mov	"\0\0WH",r10
_Label_2039:
!	jmp	_Label_2040
_Label_2040:
	mov	2067,r13		! source line 2067
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   _temp_2042 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2043) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2042  sizeInBytes=4
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
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_2044 = &semUsedInSynchMethods
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
	mov	2074,r13		! source line 2074
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2053 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2047
	cmp	r1,2
	be	_Label_2048
	cmp	r1,3
	be	_Label_2049
	cmp	r1,4
	be	_Label_2050
	cmp	r1,5
	be	_Label_2051
	cmp	r1,6
	be	_Label_2052
	jmp	_Label_2045
! CASE 1...
_Label_2047:
! SEND STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0SE",r10
!   _temp_2054 = &diskBusy
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
	mov	2077,r13		! source line 2077
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2048:
! CALL STATEMENT...
!   _temp_2055 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2079,r13		! source line 2079
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2049:
! CALL STATEMENT...
!   _temp_2056 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2081,r13		! source line 2081
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2050:
! CALL STATEMENT...
!   _temp_2057 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2083,r13		! source line 2083
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2051:
! BREAK STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0BR",r10
	jmp	_Label_2046
! CASE 6...
_Label_2052:
! CALL STATEMENT...
!   _temp_2058 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2089,r13		! source line 2089
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2045:
! CALL STATEMENT...
!   _temp_2059 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2059  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2091,r13		! source line 2091
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2046:
! END WHILE...
	jmp	_Label_2039
_Label_2041:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2060
	.word	16		! total size of parameters
	.word	64		! frame size = 64
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
	.word	-12
	.word	4
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
	.word	-28
	.word	4
	.word	_Label_2070
	.word	-32
	.word	4
	.word	_Label_2071
	.word	-36
	.word	4
	.word	_Label_2072
	.word	-40
	.word	4
	.word	_Label_2073
	.word	-44
	.word	4
	.word	_Label_2074
	.word	-48
	.word	4
	.word	_Label_2075
	.word	-52
	.word	4
	.word	0
_Label_2060:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2061:
	.ascii	"Pself\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2063:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2064:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2038\0"
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
	mov	2100,r13		! source line 2100
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
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
	mov	2119,r13		! source line 2119
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
	mov	2120,r13		! source line 2120
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
	mov	2121,r13		! source line 2121
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
	mov	2121,r13		! source line 2121
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
	.word	_Label_2076
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2078
	.word	12
	.word	4
	.word	_Label_2079
	.word	16
	.word	4
	.word	_Label_2080
	.word	20
	.word	4
	.word	_Label_2081
	.word	24
	.word	4
	.word	0
_Label_2076:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2077:
	.ascii	"Pself\0"
	.align
_Label_2078:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2079:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2080:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2081:
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
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	2126,r13		! source line 2126
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0SE",r10
!   _temp_2082 = &diskBusy
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
	mov	2139,r13		! source line 2139
	mov	"\0\0WH",r10
_Label_2083:
!	jmp	_Label_2084
_Label_2084:
	mov	2139,r13		! source line 2139
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_2086 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2087) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2086  sizeInBytes=4
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
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   _temp_2088 = &semUsedInSynchMethods
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
	mov	2145,r13		! source line 2145
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2097 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2091
	cmp	r1,2
	be	_Label_2092
	cmp	r1,3
	be	_Label_2093
	cmp	r1,4
	be	_Label_2094
	cmp	r1,5
	be	_Label_2095
	cmp	r1,6
	be	_Label_2096
	jmp	_Label_2089
! CASE 1...
_Label_2091:
! SEND STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0SE",r10
!   _temp_2098 = &diskBusy
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
	mov	2148,r13		! source line 2148
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2092:
! CALL STATEMENT...
!   _temp_2099 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2150,r13		! source line 2150
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2093:
! CALL STATEMENT...
!   _temp_2100 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2100  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2152,r13		! source line 2152
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2094:
! CALL STATEMENT...
!   _temp_2101 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2154,r13		! source line 2154
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2095:
! BREAK STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0BR",r10
	jmp	_Label_2090
! CASE 6...
_Label_2096:
! CALL STATEMENT...
!   _temp_2102 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2160,r13		! source line 2160
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2089:
! CALL STATEMENT...
!   _temp_2103 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2162,r13		! source line 2162
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2090:
! END WHILE...
	jmp	_Label_2083
_Label_2085:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2104
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2106
	.word	12
	.word	4
	.word	_Label_2107
	.word	16
	.word	4
	.word	_Label_2108
	.word	20
	.word	4
	.word	_Label_2109
	.word	-12
	.word	4
	.word	_Label_2110
	.word	-16
	.word	4
	.word	_Label_2111
	.word	-20
	.word	4
	.word	_Label_2112
	.word	-24
	.word	4
	.word	_Label_2113
	.word	-28
	.word	4
	.word	_Label_2114
	.word	-32
	.word	4
	.word	_Label_2115
	.word	-36
	.word	4
	.word	_Label_2116
	.word	-40
	.word	4
	.word	_Label_2117
	.word	-44
	.word	4
	.word	_Label_2118
	.word	-48
	.word	4
	.word	_Label_2119
	.word	-52
	.word	4
	.word	0
_Label_2104:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2105:
	.ascii	"Pself\0"
	.align
_Label_2106:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2107:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2108:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2082\0"
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
	mov	2171,r13		! source line 2171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
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
	mov	2189,r13		! source line 2189
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
	mov	2190,r13		! source line 2190
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
	mov	2191,r13		! source line 2191
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
	mov	2191,r13		! source line 2191
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
	.word	_Label_2120
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2122
	.word	12
	.word	4
	.word	_Label_2123
	.word	16
	.word	4
	.word	_Label_2124
	.word	20
	.word	4
	.word	_Label_2125
	.word	24
	.word	4
	.word	0
_Label_2120:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2121:
	.ascii	"Pself\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2123:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2125:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2126
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
_Label_2126:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2127
	.word	_sourceFileName
	.word	362		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2127:
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
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	2202,r13		! source line 2202
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2128 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2128  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2209,r13		! source line 2209
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
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
	mov	2211,r13		! source line 2211
	mov	"\0\0SE",r10
!   _temp_2130 = &fileManagerLock
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
	mov	2214,r13		! source line 2214
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
	mov	2215,r13		! source line 2215
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
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   _temp_2133 = &anFCBBecameFree
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
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   _temp_2134 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2136 = &_temp_2135
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2136 = _temp_2136 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2138 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3035:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3035
!   _temp_2138 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2140:
!   Data Move: *_temp_2136 = _temp_2138  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3036:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3036
!   _temp_2136 = _temp_2136 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2137 = _temp_2137 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2137) then goto _Label_2140
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2140
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2141 = &_temp_2135
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3037
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3037:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2134 = *_temp_2141  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3038:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3038
! FOR STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2146 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2147 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2146  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2142:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2147 then goto _Label_2145		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2145
_Label_2143:
	mov	2219,r13		! source line 2219
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   _temp_2148 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2148 [i ] into _temp_2149
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
!   _temp_2150 = _temp_2149 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2150 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0SE",r10
!   _temp_2151 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2151 [i ] into _temp_2152
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
	mov	2222,r13		! source line 2222
	mov	"\0\0SE",r10
!   _temp_2154 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2154 [i ] into _temp_2155
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
!   _temp_2153 = _temp_2155		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2156 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2153  sizeInBytes=4
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
_Label_2144:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2142
! END FOR
_Label_2145:
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
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
	mov	2227,r13		! source line 2227
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
	mov	2228,r13		! source line 2228
	mov	"\0\0SE",r10
!   _temp_2159 = &anOpenFileBecameFree
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
	mov	2229,r13		! source line 2229
	mov	"\0\0AS",r10
!   _temp_2160 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2162 = &_temp_2161
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2162 = _temp_2162 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2164 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3039:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3039
!   _temp_2164 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2166:
!   Data Move: *_temp_2162 = _temp_2164  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3040:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3040
!   _temp_2162 = _temp_2162 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2163 = _temp_2163 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2163) then goto _Label_2166
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2166
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2167 = &_temp_2161
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3041
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3041:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2160 = *_temp_2167  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3042:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3042
! FOR STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2172 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2173 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2172  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2173 then goto _Label_2171		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2171
_Label_2169:
	mov	2231,r13		! source line 2231
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
!   _temp_2174 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2174 [i ] into _temp_2175
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
!   _temp_2176 = _temp_2175 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2176 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0SE",r10
!   _temp_2178 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2178 [i ] into _temp_2179
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
!   _temp_2177 = _temp_2179		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2180 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2177  sizeInBytes=4
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
_Label_2170:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2168
! END FOR
_Label_2171:
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3043:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3043
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   _temp_2182 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2183 = _temp_2182 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2183 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
!   _temp_2184 = &_P_Kernel_frameManager
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
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   _temp_2185 = &_P_Kernel_diskDriver
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
	mov	2244,r13		! source line 2244
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
	.word	_Label_2186
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2187
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2188
	.word	-12
	.word	4
	.word	_Label_2189
	.word	-16
	.word	4
	.word	_Label_2190
	.word	-20
	.word	4
	.word	_Label_2191
	.word	-24
	.word	4
	.word	_Label_2192
	.word	-28
	.word	4
	.word	_Label_2193
	.word	-32
	.word	4
	.word	_Label_2194
	.word	-36
	.word	4
	.word	_Label_2195
	.word	-40
	.word	4
	.word	_Label_2196
	.word	-44
	.word	4
	.word	_Label_2197
	.word	-48
	.word	4
	.word	_Label_2198
	.word	-52
	.word	4
	.word	_Label_2199
	.word	-56
	.word	4
	.word	_Label_2200
	.word	-60
	.word	4
	.word	_Label_2201
	.word	-64
	.word	4
	.word	_Label_2202
	.word	-68
	.word	4
	.word	_Label_2203
	.word	-72
	.word	4
	.word	_Label_2204
	.word	-100
	.word	28
	.word	_Label_2205
	.word	-104
	.word	4
	.word	_Label_2206
	.word	-108
	.word	4
	.word	_Label_2207
	.word	-392
	.word	284
	.word	_Label_2208
	.word	-396
	.word	4
	.word	_Label_2209
	.word	-400
	.word	4
	.word	_Label_2210
	.word	-404
	.word	4
	.word	_Label_2211
	.word	-408
	.word	4
	.word	_Label_2212
	.word	-412
	.word	4
	.word	_Label_2213
	.word	-416
	.word	4
	.word	_Label_2214
	.word	-420
	.word	4
	.word	_Label_2215
	.word	-424
	.word	4
	.word	_Label_2216
	.word	-428
	.word	4
	.word	_Label_2217
	.word	-432
	.word	4
	.word	_Label_2218
	.word	-436
	.word	4
	.word	_Label_2219
	.word	-440
	.word	4
	.word	_Label_2220
	.word	-444
	.word	4
	.word	_Label_2221
	.word	-448
	.word	4
	.word	_Label_2222
	.word	-452
	.word	4
	.word	_Label_2223
	.word	-456
	.word	4
	.word	_Label_2224
	.word	-460
	.word	4
	.word	_Label_2225
	.word	-500
	.word	40
	.word	_Label_2226
	.word	-504
	.word	4
	.word	_Label_2227
	.word	-508
	.word	4
	.word	_Label_2228
	.word	-912
	.word	404
	.word	_Label_2229
	.word	-916
	.word	4
	.word	_Label_2230
	.word	-920
	.word	4
	.word	_Label_2231
	.word	-924
	.word	4
	.word	_Label_2232
	.word	-928
	.word	4
	.word	_Label_2233
	.word	-932
	.word	4
	.word	_Label_2234
	.word	-936
	.word	4
	.word	_Label_2235
	.word	-940
	.word	4
	.word	_Label_2236
	.word	-944
	.word	4
	.word	0
_Label_2186:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2187:
	.ascii	"Pself\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2236:
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
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	2251,r13		! source line 2251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0SE",r10
!   _temp_2237 = &fileManagerLock
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
!   _temp_2238 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2238  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2254,r13		! source line 2254
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2243 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2244 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2243  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2239:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2244 then goto _Label_2242		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2242
_Label_2240:
	mov	2255,r13		! source line 2255
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2245 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2245  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2256,r13		! source line 2256
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2257,r13		! source line 2257
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2246 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2246  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2258,r13		! source line 2258
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0SE",r10
!   _temp_2247 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2247 [i ] into _temp_2248
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
_Label_2241:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2239
! END FOR
_Label_2242:
! CALL STATEMENT...
!   _temp_2249 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2249  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2261,r13		! source line 2261
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_2250 = _function_193_printFCB
	set	_function_193_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2251 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2250  sizeInBytes=4
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
	mov	2263,r13		! source line 2263
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2252 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2252  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2264,r13		! source line 2264
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2257 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2258 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2257  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2253:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2258 then goto _Label_2256		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2256
_Label_2254:
	mov	2265,r13		! source line 2265
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2259 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2259  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2266,r13		! source line 2266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2267,r13		! source line 2267
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2260 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2260  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2268,r13		! source line 2268
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2262 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2262 [i ] into _temp_2263
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
!   _temp_2261 = _temp_2263		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2261  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2269,r13		! source line 2269
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2264 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2264  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2270,r13		! source line 2270
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0SE",r10
!   _temp_2265 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2265 [i ] into _temp_2266
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
_Label_2255:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2253
! END FOR
_Label_2256:
! CALL STATEMENT...
!   _temp_2267 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2267  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2273,r13		! source line 2273
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0SE",r10
!   _temp_2268 = _function_192_printOpen
	set	_function_192_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2269 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2268  sizeInBytes=4
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
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   _temp_2270 = &fileManagerLock
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
	mov	2275,r13		! source line 2275
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
	.word	_Label_2271
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2273
	.word	-12
	.word	4
	.word	_Label_2274
	.word	-16
	.word	4
	.word	_Label_2275
	.word	-20
	.word	4
	.word	_Label_2276
	.word	-24
	.word	4
	.word	_Label_2277
	.word	-28
	.word	4
	.word	_Label_2278
	.word	-32
	.word	4
	.word	_Label_2279
	.word	-36
	.word	4
	.word	_Label_2280
	.word	-40
	.word	4
	.word	_Label_2281
	.word	-44
	.word	4
	.word	_Label_2282
	.word	-48
	.word	4
	.word	_Label_2283
	.word	-52
	.word	4
	.word	_Label_2284
	.word	-56
	.word	4
	.word	_Label_2285
	.word	-60
	.word	4
	.word	_Label_2286
	.word	-64
	.word	4
	.word	_Label_2287
	.word	-68
	.word	4
	.word	_Label_2288
	.word	-72
	.word	4
	.word	_Label_2289
	.word	-76
	.word	4
	.word	_Label_2290
	.word	-80
	.word	4
	.word	_Label_2291
	.word	-84
	.word	4
	.word	_Label_2292
	.word	-88
	.word	4
	.word	_Label_2293
	.word	-92
	.word	4
	.word	_Label_2294
	.word	-96
	.word	4
	.word	_Label_2295
	.word	-100
	.word	4
	.word	_Label_2296
	.word	-104
	.word	4
	.word	_Label_2297
	.word	-108
	.word	4
	.word	_Label_2298
	.word	-112
	.word	4
	.word	_Label_2299
	.word	-116
	.word	4
	.word	0
_Label_2271:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2272:
	.ascii	"Pself\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2299:
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
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	2280,r13		! source line 2280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_2300 = &_P_Kernel_fileManager
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
	mov	2297,r13		! source line 2297
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2301
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2301
	jmp	_Label_2302
_Label_2301:
! THEN...
	mov	2298,r13		! source line 2298
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2302:
! SEND STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2303 = &fileManagerLock
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
	mov	2303,r13		! source line 2303
	mov	"\0\0WH",r10
_Label_2304:
	mov	2303,r13		! source line 2303
	mov	"\0\0SE",r10
!   _temp_2307 = &openFileFreeList
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
!   if result==true then goto _Label_2305 else goto _Label_2306
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2306
	jmp	_Label_2305
_Label_2305:
	mov	2303,r13		! source line 2303
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2308 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2309 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2308  sizeInBytes=4
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
	jmp	_Label_2304
_Label_2306:
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_2310 = &openFileFreeList
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
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2311 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2311 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2312 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2312 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2313 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2313 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0SE",r10
!   _temp_2314 = &fileManagerLock
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
	mov	2316,r13		! source line 2316
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
	.word	_Label_2315
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2316
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2317
	.word	12
	.word	4
	.word	_Label_2318
	.word	-12
	.word	4
	.word	_Label_2319
	.word	-16
	.word	4
	.word	_Label_2320
	.word	-20
	.word	4
	.word	_Label_2321
	.word	-24
	.word	4
	.word	_Label_2322
	.word	-28
	.word	4
	.word	_Label_2323
	.word	-32
	.word	4
	.word	_Label_2324
	.word	-36
	.word	4
	.word	_Label_2325
	.word	-40
	.word	4
	.word	_Label_2326
	.word	-44
	.word	4
	.word	_Label_2327
	.word	-48
	.word	4
	.word	_Label_2328
	.word	-52
	.word	4
	.word	_Label_2329
	.word	-56
	.word	4
	.word	0
_Label_2315:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2316:
	.ascii	"Pself\0"
	.align
_Label_2317:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2328:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2329:
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	2321,r13		! source line 2321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2349,r13		! source line 2349
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
	mov	2350,r13		! source line 2350
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2331		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2331
!	jmp	_Label_2330
_Label_2330:
! THEN...
	mov	2352,r13		! source line 2352
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2332 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2352,r13		! source line 2352
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2331:
! ASSIGNMENT STATEMENT...
	mov	2356,r13		! source line 2356
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
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2358,r13		! source line 2358
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
	mov	2359,r13		! source line 2359
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0WH",r10
_Label_2333:
!   if numFiles <= 0 then goto _Label_2335		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2335
!	jmp	_Label_2334
_Label_2334:
	mov	2362,r13		! source line 2362
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2336 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2336  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2363,r13		! source line 2363
	mov	"\0\0CA",r10
	call	_function_194_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2337 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2365,r13		! source line 2365
	mov	"\0\0CA",r10
	call	_function_194_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2338 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2367,r13		! source line 2367
	mov	"\0\0CA",r10
	call	_function_194_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2342 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2342 then goto _Label_2340		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2340
!	jmp	_Label_2341
_Label_2341:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2344
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
!   _temp_2343 = _temp_2344		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2343  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2370,r13		! source line 2370
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2339 else goto _Label_2340
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2340
	jmp	_Label_2339
_Label_2339:
! THEN...
	mov	2371,r13		! source line 2371
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0BR",r10
	jmp	_Label_2335
! END IF...
_Label_2340:
! ASSIGNMENT STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2333
_Label_2335:
! IF STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2346		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2346
!	jmp	_Label_2345
_Label_2345:
! THEN...
	mov	2379,r13		! source line 2379
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2346:
! SEND STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0SE",r10
!   _temp_2347 = &fileManagerLock
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
	mov	2384,r13		! source line 2384
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2352 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2353 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2352  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2348:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2353 then goto _Label_2351		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2351
_Label_2349:
	mov	2384,r13		! source line 2384
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   _temp_2354 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2354 [i ] into _temp_2355
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
!   fcb = _temp_2355		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2359 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2358 = *_temp_2359  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2358 != start then goto _Label_2357		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2357
!	jmp	_Label_2356
_Label_2356:
! THEN...
	mov	2387,r13		! source line 2387
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2360 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2363 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2362 = *_temp_2363  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2361 = _temp_2362 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2360 = _temp_2361  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0SE",r10
!   _temp_2364 = &fileManagerLock
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
	mov	2389,r13		! source line 2389
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2357:
!   Increment the FOR-LOOP index variable and jump back
_Label_2350:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2348
! END FOR
_Label_2351:
! WHILE STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0WH",r10
_Label_2365:
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
!   _temp_2368 = &fcbFreeList
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
!   if result==true then goto _Label_2366 else goto _Label_2367
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2367
	jmp	_Label_2366
_Label_2366:
	mov	2394,r13		! source line 2394
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0SE",r10
!   _temp_2369 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2370 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2369  sizeInBytes=4
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
	jmp	_Label_2365
_Label_2367:
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
	mov	2397,r13		! source line 2397
	mov	"\0\0SE",r10
!   _temp_2371 = &fcbFreeList
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
	mov	2400,r13		! source line 2400
	mov	"\0\0SE",r10
!   _temp_2372 = &fileManagerLock
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
	mov	2403,r13		! source line 2403
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2373 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2373 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2374 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2374 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2375 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2375 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2380 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2379 = *_temp_2380  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2379 < 0 then goto _Label_2378		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2378
	jmp	_Label_2376
_Label_2378:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2381 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2381 ) then goto _Label_2377		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2377
!	jmp	_Label_2376
_Label_2376:
! THEN...
	mov	2407,r13		! source line 2407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2382 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2382  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2407,r13		! source line 2407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2377:
! RETURN STATEMENT...
	mov	2409,r13		! source line 2409
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
	.word	_Label_2383
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2384
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2385
	.word	12
	.word	4
	.word	_Label_2386
	.word	-12
	.word	4
	.word	_Label_2387
	.word	-16
	.word	4
	.word	_Label_2388
	.word	-20
	.word	4
	.word	_Label_2389
	.word	-24
	.word	4
	.word	_Label_2390
	.word	-28
	.word	4
	.word	_Label_2391
	.word	-32
	.word	4
	.word	_Label_2392
	.word	-36
	.word	4
	.word	_Label_2393
	.word	-40
	.word	4
	.word	_Label_2394
	.word	-44
	.word	4
	.word	_Label_2395
	.word	-48
	.word	4
	.word	_Label_2396
	.word	-52
	.word	4
	.word	_Label_2397
	.word	-56
	.word	4
	.word	_Label_2398
	.word	-60
	.word	4
	.word	_Label_2399
	.word	-64
	.word	4
	.word	_Label_2400
	.word	-68
	.word	4
	.word	_Label_2401
	.word	-72
	.word	4
	.word	_Label_2402
	.word	-76
	.word	4
	.word	_Label_2403
	.word	-80
	.word	4
	.word	_Label_2404
	.word	-84
	.word	4
	.word	_Label_2405
	.word	-88
	.word	4
	.word	_Label_2406
	.word	-92
	.word	4
	.word	_Label_2407
	.word	-96
	.word	4
	.word	_Label_2408
	.word	-100
	.word	4
	.word	_Label_2409
	.word	-104
	.word	4
	.word	_Label_2410
	.word	-108
	.word	4
	.word	_Label_2411
	.word	-112
	.word	4
	.word	_Label_2412
	.word	-116
	.word	4
	.word	_Label_2413
	.word	-120
	.word	4
	.word	_Label_2414
	.word	-124
	.word	4
	.word	_Label_2415
	.word	-128
	.word	4
	.word	_Label_2416
	.word	-132
	.word	4
	.word	_Label_2417
	.word	-136
	.word	4
	.word	_Label_2418
	.word	-140
	.word	4
	.word	_Label_2419
	.word	-144
	.word	4
	.word	_Label_2420
	.word	-148
	.word	4
	.word	_Label_2421
	.word	-152
	.word	4
	.word	_Label_2422
	.word	-156
	.word	4
	.word	_Label_2423
	.word	-160
	.word	4
	.word	0
_Label_2383:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2384:
	.ascii	"Pself\0"
	.align
_Label_2385:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2417:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2418:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2419:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2420:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2421:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2422:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2423:
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
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	2422,r13		! source line 2422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0IF",r10
!   _temp_2426 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2426 then goto _Label_2425		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2425
!	jmp	_Label_2424
_Label_2424:
! THEN...
	mov	2425,r13		! source line 2425
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2425:
! SEND STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0SE",r10
!   _temp_2427 = &fileManagerLock
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
	mov	2428,r13		! source line 2428
	mov	"\0\0SE",r10
!   _temp_2428 = &_P_Kernel_fileManager
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
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2429  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2430 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2433 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2432 = *_temp_2433  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2431 = _temp_2432 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2430 = _temp_2431  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2437 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2436 = *_temp_2437  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2436 > 0 then goto _Label_2435		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2435
!	jmp	_Label_2434
_Label_2434:
! THEN...
	mov	2432,r13		! source line 2432
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0SE",r10
!   _temp_2438 = &openFileFreeList
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
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2439 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2440 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2439  sizeInBytes=4
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
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2441 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2444 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2443 = *_temp_2444  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2442 = _temp_2443 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2441 = _temp_2442  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2448 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2447 = *_temp_2448  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2447 > 0 then goto _Label_2446		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2446
!	jmp	_Label_2445
_Label_2445:
! THEN...
	mov	2436,r13		! source line 2436
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0SE",r10
!   _temp_2449 = &fcbFreeList
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
	mov	2437,r13		! source line 2437
	mov	"\0\0SE",r10
!   _temp_2450 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2451 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2450  sizeInBytes=4
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
_Label_2446:
! END IF...
_Label_2435:
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_2452 = &fileManagerLock
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
	mov	2440,r13		! source line 2440
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
	.word	_Label_2453
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2454
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2455
	.word	12
	.word	4
	.word	_Label_2456
	.word	-12
	.word	4
	.word	_Label_2457
	.word	-16
	.word	4
	.word	_Label_2458
	.word	-20
	.word	4
	.word	_Label_2459
	.word	-24
	.word	4
	.word	_Label_2460
	.word	-28
	.word	4
	.word	_Label_2461
	.word	-32
	.word	4
	.word	_Label_2462
	.word	-36
	.word	4
	.word	_Label_2463
	.word	-40
	.word	4
	.word	_Label_2464
	.word	-44
	.word	4
	.word	_Label_2465
	.word	-48
	.word	4
	.word	_Label_2466
	.word	-52
	.word	4
	.word	_Label_2467
	.word	-56
	.word	4
	.word	_Label_2468
	.word	-60
	.word	4
	.word	_Label_2469
	.word	-64
	.word	4
	.word	_Label_2470
	.word	-68
	.word	4
	.word	_Label_2471
	.word	-72
	.word	4
	.word	_Label_2472
	.word	-76
	.word	4
	.word	_Label_2473
	.word	-80
	.word	4
	.word	_Label_2474
	.word	-84
	.word	4
	.word	_Label_2475
	.word	-88
	.word	4
	.word	_Label_2476
	.word	-92
	.word	4
	.word	_Label_2477
	.word	-96
	.word	4
	.word	_Label_2478
	.word	-100
	.word	4
	.word	_Label_2479
	.word	-104
	.word	4
	.word	0
_Label_2453:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2454:
	.ascii	"Pself\0"
	.align
_Label_2455:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2428\0"
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	2445,r13		! source line 2445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2482 = *_temp_2483  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2482) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2484 = _temp_2482 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2484 ) then goto _Label_2481		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2481
!	jmp	_Label_2480
_Label_2480:
! THEN...
	mov	2451,r13		! source line 2451
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2489 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2488 = *_temp_2489  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2488) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = _temp_2488 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2487 = *_temp_2490  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2487 >= 0 then goto _Label_2486		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2486
!	jmp	_Label_2485
_Label_2485:
! THEN...
	mov	2452,r13		! source line 2452
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2491 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2491  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2452,r13		! source line 2452
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2486:
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2493 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2492 = *_temp_2493  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2492) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2494 = _temp_2492 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2494 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2497 = *_temp_2498  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2497) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = _temp_2497 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2496 = *_temp_2499  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2502 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2501 = *_temp_2502  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2501) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2503 = _temp_2501 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2500 = *_temp_2503  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2495 = _temp_2496 + _temp_2500		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2506 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2505 = *_temp_2506  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2505) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2507 = _temp_2505 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2504 = *_temp_2507  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2508 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2495  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2504  sizeInBytes=4
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
_Label_2481:
! RETURN STATEMENT...
	mov	2450,r13		! source line 2450
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
	.word	_Label_2509
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2511
	.word	12
	.word	4
	.word	_Label_2512
	.word	-12
	.word	4
	.word	_Label_2513
	.word	-16
	.word	4
	.word	_Label_2514
	.word	-20
	.word	4
	.word	_Label_2515
	.word	-24
	.word	4
	.word	_Label_2516
	.word	-28
	.word	4
	.word	_Label_2517
	.word	-32
	.word	4
	.word	_Label_2518
	.word	-36
	.word	4
	.word	_Label_2519
	.word	-40
	.word	4
	.word	_Label_2520
	.word	-44
	.word	4
	.word	_Label_2521
	.word	-48
	.word	4
	.word	_Label_2522
	.word	-52
	.word	4
	.word	_Label_2523
	.word	-56
	.word	4
	.word	_Label_2524
	.word	-60
	.word	4
	.word	_Label_2525
	.word	-64
	.word	4
	.word	_Label_2526
	.word	-68
	.word	4
	.word	_Label_2527
	.word	-72
	.word	4
	.word	_Label_2528
	.word	-76
	.word	4
	.word	_Label_2529
	.word	-80
	.word	4
	.word	_Label_2530
	.word	-84
	.word	4
	.word	_Label_2531
	.word	-88
	.word	4
	.word	_Label_2532
	.word	-92
	.word	4
	.word	_Label_2533
	.word	-96
	.word	4
	.word	_Label_2534
	.word	-100
	.word	4
	.word	_Label_2535
	.word	-104
	.word	4
	.word	_Label_2536
	.word	-108
	.word	4
	.word	0
_Label_2509:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2510:
	.ascii	"Pself\0"
	.align
_Label_2511:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2482\0"
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	2464,r13		! source line 2464
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_2537 = &fileManagerLock
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
	mov	2480,r13		! source line 2480
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2543		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2543
!   _temp_2542 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2544
_Label_2543:
!   _temp_2542 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2544:
!   if _temp_2542 then goto _Label_2541 else goto _Label_2538
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2538
	jmp	_Label_2541
_Label_2541:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2546 = *_temp_2547  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2546 == 0 then goto _Label_2548		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2548
!   _temp_2545 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2549
_Label_2548:
!   _temp_2545 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2549:
!   if _temp_2545 then goto _Label_2540 else goto _Label_2538
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2538
	jmp	_Label_2540
_Label_2540:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2552 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2551 = *_temp_2552  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2551) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2553 = _temp_2551 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2550 = *_temp_2553  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2550 >= 0 then goto _Label_2539		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2539
!	jmp	_Label_2538
_Label_2538:
! THEN...
	mov	2481,r13		! source line 2481
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2554 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2554  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2481,r13		! source line 2481
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2539:
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2555 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2555  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0WH",r10
_Label_2556:
!   if numBytes <= 0 then goto _Label_2558		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2558
!	jmp	_Label_2557
_Label_2557:
	mov	2484,r13		! source line 2484
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2493,r13		! source line 2493
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
	mov	2494,r13		! source line 2494
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
	mov	2498,r13		! source line 2498
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2562 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2561 = *_temp_2562  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2561 == sector then goto _Label_2560		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2560
!	jmp	_Label_2559
_Label_2559:
! THEN...
	mov	2499,r13		! source line 2499
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2563) then goto _runtimeErrorNullPointer
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
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2566 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2565 = *_temp_2566  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2564 = sector + _temp_2565		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2568 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2567 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2569 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2564  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2567  sizeInBytes=4
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
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2570 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2570 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2571 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2571 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2560:
! ASSIGNMENT STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2573 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2572 = *_temp_2573  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2572 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   _temp_2574 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2574  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2508,r13		! source line 2508
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
	mov	2512,r13		! source line 2512
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2556
_Label_2558:
! SEND STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   _temp_2575 = &fileManagerLock
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
	mov	2523,r13		! source line 2523
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
	.word	_Label_2576
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2578
	.word	12
	.word	4
	.word	_Label_2579
	.word	16
	.word	4
	.word	_Label_2580
	.word	20
	.word	4
	.word	_Label_2581
	.word	24
	.word	4
	.word	_Label_2582
	.word	-16
	.word	4
	.word	_Label_2583
	.word	-20
	.word	4
	.word	_Label_2584
	.word	-24
	.word	4
	.word	_Label_2585
	.word	-28
	.word	4
	.word	_Label_2586
	.word	-32
	.word	4
	.word	_Label_2587
	.word	-36
	.word	4
	.word	_Label_2588
	.word	-40
	.word	4
	.word	_Label_2589
	.word	-44
	.word	4
	.word	_Label_2590
	.word	-48
	.word	4
	.word	_Label_2591
	.word	-52
	.word	4
	.word	_Label_2592
	.word	-56
	.word	4
	.word	_Label_2593
	.word	-60
	.word	4
	.word	_Label_2594
	.word	-64
	.word	4
	.word	_Label_2595
	.word	-68
	.word	4
	.word	_Label_2596
	.word	-72
	.word	4
	.word	_Label_2597
	.word	-76
	.word	4
	.word	_Label_2598
	.word	-80
	.word	4
	.word	_Label_2599
	.word	-84
	.word	4
	.word	_Label_2600
	.word	-88
	.word	4
	.word	_Label_2601
	.word	-92
	.word	4
	.word	_Label_2602
	.word	-96
	.word	4
	.word	_Label_2603
	.word	-100
	.word	4
	.word	_Label_2604
	.word	-104
	.word	4
	.word	_Label_2605
	.word	-9
	.word	1
	.word	_Label_2606
	.word	-10
	.word	1
	.word	_Label_2607
	.word	-108
	.word	4
	.word	_Label_2608
	.word	-112
	.word	4
	.word	_Label_2609
	.word	-116
	.word	4
	.word	_Label_2610
	.word	-120
	.word	4
	.word	_Label_2611
	.word	-124
	.word	4
	.word	_Label_2612
	.word	-128
	.word	4
	.word	0
_Label_2576:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2577:
	.ascii	"Pself\0"
	.align
_Label_2578:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2579:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2580:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2581:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2605:
	.byte	'C'
	.ascii	"_temp_2545\0"
	.align
_Label_2606:
	.byte	'C'
	.ascii	"_temp_2542\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2608:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2609:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2610:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2611:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2612:
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	2528,r13		! source line 2528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0SE",r10
!   _temp_2613 = &fileManagerLock
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
	mov	2545,r13		! source line 2545
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2619		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2619
!   _temp_2618 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2620
_Label_2619:
!   _temp_2618 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2620:
!   if _temp_2618 then goto _Label_2617 else goto _Label_2614
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2614
	jmp	_Label_2617
_Label_2617:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2623 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2622 = *_temp_2623  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2622 == 0 then goto _Label_2624		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2624
!   _temp_2621 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2625
_Label_2624:
!   _temp_2621 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2625:
!   if _temp_2621 then goto _Label_2616 else goto _Label_2614
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2614
	jmp	_Label_2616
_Label_2616:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2628 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2627 = *_temp_2628  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2627) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = _temp_2627 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2626 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2626 >= 0 then goto _Label_2615		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2615
!	jmp	_Label_2614
_Label_2614:
! THEN...
	mov	2546,r13		! source line 2546
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2630 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2630  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2546,r13		! source line 2546
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2615:
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2631 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2631  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0WH",r10
_Label_2632:
!   if numBytes <= 0 then goto _Label_2634		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2634
!	jmp	_Label_2633
_Label_2633:
	mov	2549,r13		! source line 2549
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
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
	mov	2559,r13		! source line 2559
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
	mov	2563,r13		! source line 2563
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2638 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2637 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2637 == sector then goto _Label_2636		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2636
!	jmp	_Label_2635
_Label_2635:
! THEN...
	mov	2565,r13		! source line 2565
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2639) then goto _runtimeErrorNullPointer
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
_Label_2636:
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2641 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2640 = *_temp_2641  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2640 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   _temp_2642 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2642  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2568,r13		! source line 2568
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2646 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2645 = *_temp_2646  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2645 != sector then goto _Label_2644		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2644
!	jmp	_Label_2643
_Label_2643:
	jmp	_Label_2647
_Label_2644:
! ELSE...
	mov	2571,r13		! source line 2571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2650
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2650
	jmp	_Label_2649
_Label_2650:
!   if bytesToMove != 8192 then goto _Label_2649		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2649
!	jmp	_Label_2648
_Label_2648:
	jmp	_Label_2651
_Label_2649:
! ELSE...
	mov	2575,r13		! source line 2575
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2654 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2653 = *_temp_2654  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2652 = sector + _temp_2653		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2656 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2655 = *_temp_2656  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2657 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2652  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2655  sizeInBytes=4
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
_Label_2651:
! END IF...
_Label_2647:
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2658 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2658 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2659 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2659 = 1  (sizeInBytes=1)
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
	mov	2584,r13		! source line 2584
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2632
_Label_2634:
! SEND STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0SE",r10
!   _temp_2660 = &fileManagerLock
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
	mov	2596,r13		! source line 2596
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
	.word	_Label_2661
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2663
	.word	12
	.word	4
	.word	_Label_2664
	.word	16
	.word	4
	.word	_Label_2665
	.word	20
	.word	4
	.word	_Label_2666
	.word	24
	.word	4
	.word	_Label_2667
	.word	-16
	.word	4
	.word	_Label_2668
	.word	-20
	.word	4
	.word	_Label_2669
	.word	-24
	.word	4
	.word	_Label_2670
	.word	-28
	.word	4
	.word	_Label_2671
	.word	-32
	.word	4
	.word	_Label_2672
	.word	-36
	.word	4
	.word	_Label_2673
	.word	-40
	.word	4
	.word	_Label_2674
	.word	-44
	.word	4
	.word	_Label_2675
	.word	-48
	.word	4
	.word	_Label_2676
	.word	-52
	.word	4
	.word	_Label_2677
	.word	-56
	.word	4
	.word	_Label_2678
	.word	-60
	.word	4
	.word	_Label_2679
	.word	-64
	.word	4
	.word	_Label_2680
	.word	-68
	.word	4
	.word	_Label_2681
	.word	-72
	.word	4
	.word	_Label_2682
	.word	-76
	.word	4
	.word	_Label_2683
	.word	-80
	.word	4
	.word	_Label_2684
	.word	-84
	.word	4
	.word	_Label_2685
	.word	-88
	.word	4
	.word	_Label_2686
	.word	-92
	.word	4
	.word	_Label_2687
	.word	-96
	.word	4
	.word	_Label_2688
	.word	-100
	.word	4
	.word	_Label_2689
	.word	-104
	.word	4
	.word	_Label_2690
	.word	-108
	.word	4
	.word	_Label_2691
	.word	-112
	.word	4
	.word	_Label_2692
	.word	-9
	.word	1
	.word	_Label_2693
	.word	-10
	.word	1
	.word	_Label_2694
	.word	-116
	.word	4
	.word	_Label_2695
	.word	-120
	.word	4
	.word	_Label_2696
	.word	-124
	.word	4
	.word	_Label_2697
	.word	-128
	.word	4
	.word	_Label_2698
	.word	-132
	.word	4
	.word	_Label_2699
	.word	-136
	.word	4
	.word	0
_Label_2661:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2662:
	.ascii	"Pself\0"
	.align
_Label_2663:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2664:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2665:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2666:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2692:
	.byte	'C'
	.ascii	"_temp_2621\0"
	.align
_Label_2693:
	.byte	'C'
	.ascii	"_temp_2618\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2695:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2696:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2697:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2698:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2699:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2700
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2700:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2701
	.word	_sourceFileName
	.word	387		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2701:
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
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	2632,r13		! source line 2632
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
	mov	2634,r13		! source line 2634
	mov	"\0\0SE",r10
!   _temp_2702 = &_P_Kernel_frameManager
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
	mov	2635,r13		! source line 2635
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2637,r13		! source line 2637
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
	.word	_Label_2703
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2705
	.word	-12
	.word	4
	.word	0
_Label_2703:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2704:
	.ascii	"Pself\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2702\0"
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
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	2642,r13		! source line 2642
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2706 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2706  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2707 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2707  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2645,r13		! source line 2645
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2646,r13		! source line 2646
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2708 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2708  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2647,r13		! source line 2647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2648,r13		! source line 2648
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2709 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2709  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2710 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2710  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2651,r13		! source line 2651
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2652,r13		! source line 2652
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2711 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2711  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2654,r13		! source line 2654
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2655,r13		! source line 2655
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2655,r13		! source line 2655
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
	.word	_Label_2712
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2714
	.word	-12
	.word	4
	.word	_Label_2715
	.word	-16
	.word	4
	.word	_Label_2716
	.word	-20
	.word	4
	.word	_Label_2717
	.word	-24
	.word	4
	.word	_Label_2718
	.word	-28
	.word	4
	.word	_Label_2719
	.word	-32
	.word	4
	.word	0
_Label_2712:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2713:
	.ascii	"Pself\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2720
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2720:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2721
	.word	_sourceFileName
	.word	404		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2721:
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	2666,r13		! source line 2666
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2722 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2722  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2667,r13		! source line 2667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2723 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2723  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2725		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2725
!	jmp	_Label_2724
_Label_2724:
! THEN...
	mov	2671,r13		! source line 2671
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2671,r13		! source line 2671
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
	jmp	_Label_2726
_Label_2725:
! ELSE...
	mov	2673,r13		! source line 2673
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2727 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2727  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2726:
! RETURN STATEMENT...
	mov	2670,r13		! source line 2670
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
	.word	_Label_2728
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2730
	.word	-12
	.word	4
	.word	_Label_2731
	.word	-16
	.word	4
	.word	_Label_2732
	.word	-20
	.word	4
	.word	0
_Label_2728:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2729:
	.ascii	"Pself\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2722\0"
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	2679,r13		! source line 2679
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
!   _temp_2733 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2734 = _temp_2733 + 4
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
	mov	2690,r13		! source line 2690
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2691,r13		! source line 2691
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
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_2735 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2736 = _temp_2735 + 4
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
	mov	2693,r13		! source line 2693
	mov	"\0\0RE",r10
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2739 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2738  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2737  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2737  (sizeInBytes=1)
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
	.word	_Label_2740
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2741
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2742
	.word	12
	.word	4
	.word	_Label_2743
	.word	16
	.word	4
	.word	_Label_2744
	.word	-16
	.word	4
	.word	_Label_2745
	.word	-20
	.word	4
	.word	_Label_2746
	.word	-9
	.word	1
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
	.word	0
_Label_2740:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2741:
	.ascii	"Pself\0"
	.align
_Label_2742:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2743:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2746:
	.byte	'C'
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
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	2698,r13		! source line 2698
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0IF",r10
	mov	2703,r13		! source line 2703
	mov	"\0\0SE",r10
!   _temp_2755 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2756) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2755  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2754  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2754 then goto _Label_2753 else goto _Label_2752
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2752
	jmp	_Label_2753
_Label_2752:
! THEN...
	mov	2704,r13		! source line 2704
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2757 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2757  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2704,r13		! source line 2704
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2753:
! RETURN STATEMENT...
	mov	2706,r13		! source line 2706
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
	.word	_Label_2758
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2760
	.word	-16
	.word	4
	.word	_Label_2761
	.word	-20
	.word	4
	.word	_Label_2762
	.word	-24
	.word	4
	.word	_Label_2763
	.word	-9
	.word	1
	.word	_Label_2764
	.word	-28
	.word	4
	.word	0
_Label_2758:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2759:
	.ascii	"Pself\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2763:
	.byte	'C'
	.ascii	"_temp_2754\0"
	.align
_Label_2764:
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
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	2711,r13		! source line 2711
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2768 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2767 = *_temp_2768  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2767) then goto _Label_2766
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2766
!	jmp	_Label_2765
_Label_2765:
! THEN...
	mov	2738,r13		! source line 2738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2769 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2738,r13		! source line 2738
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2766:
! IF STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0IF",r10
	mov	2742,r13		! source line 2742
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2773) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2772  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2772 == 1112300152 then goto _Label_2771		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2771
!	jmp	_Label_2770
_Label_2770:
! THEN...
	mov	2743,r13		! source line 2743
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2774 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2774  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2743,r13		! source line 2743
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2771:
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
	mov	2748,r13		! source line 2748
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2775) then goto _runtimeErrorNullPointer
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
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
	mov	2749,r13		! source line 2749
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2776) then goto _runtimeErrorNullPointer
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
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
	mov	2750,r13		! source line 2750
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2777) then goto _runtimeErrorNullPointer
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
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2778) then goto _runtimeErrorNullPointer
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
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
	mov	2752,r13		! source line 2752
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2779) then goto _runtimeErrorNullPointer
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
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2780) then goto _runtimeErrorNullPointer
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
	mov	2756,r13		! source line 2756
	mov	"\0\0IF",r10
!   _temp_2783 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2783) then goto _Label_2782
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2782
!	jmp	_Label_2781
_Label_2781:
! THEN...
	mov	2757,r13		! source line 2757
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2784 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2784  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2757,r13		! source line 2757
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2782:
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
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
	mov	2764,r13		! source line 2764
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2786
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2786
!	jmp	_Label_2785
_Label_2785:
! THEN...
	mov	2765,r13		! source line 2765
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2787 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2787  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2765,r13		! source line 2765
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2786:
! IF STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0IF",r10
!   _temp_2790 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2790) then goto _Label_2789
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2789
!	jmp	_Label_2788
_Label_2788:
! THEN...
	mov	2771,r13		! source line 2771
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2791 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2791  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2771,r13		! source line 2771
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2789:
! IF STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0IF",r10
!   _temp_2794 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2794 then goto _Label_2793		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2793
!	jmp	_Label_2792
_Label_2792:
! THEN...
	mov	2775,r13		! source line 2775
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2795 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2795  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2793:
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
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
	mov	2781,r13		! source line 2781
	mov	"\0\0IF",r10
!   _temp_2798 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2798) then goto _Label_2797
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2797
!	jmp	_Label_2796
_Label_2796:
! THEN...
	mov	2782,r13		! source line 2782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2799 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2799  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2782,r13		! source line 2782
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2797:
! IF STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0IF",r10
!   _temp_2802 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2802 then goto _Label_2801		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2801
!	jmp	_Label_2800
_Label_2800:
! THEN...
	mov	2786,r13		! source line 2786
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2803 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2803  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2786,r13		! source line 2786
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2801:
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
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
	mov	2792,r13		! source line 2792
	mov	"\0\0AS",r10
!   _temp_2806 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2805 = _temp_2806 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2804 = _temp_2805 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2804 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2808		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2808
!	jmp	_Label_2807
_Label_2807:
! THEN...
	mov	2808,r13		! source line 2808
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2809 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2809  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2810 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2810  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2811 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2811  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2808:
! SEND STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0SE",r10
!   _temp_2812 = &_P_Kernel_frameManager
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
	mov	2819,r13		! source line 2819
	mov	"\0\0IF",r10
	mov	2819,r13		! source line 2819
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2816) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2815  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2815 == 707406378 then goto _Label_2814		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2814
!	jmp	_Label_2813
_Label_2813:
! THEN...
	mov	2820,r13		! source line 2820
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2817 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2817  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2820,r13		! source line 2820
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0SE",r10
!   _temp_2818 = &_P_Kernel_frameManager
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
	mov	2822,r13		! source line 2822
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2814:
! ASSIGNMENT STATEMENT...
	mov	2826,r13		! source line 2826
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
	mov	2827,r13		! source line 2827
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2823 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2824 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2823  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2819:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2824 then goto _Label_2822		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2822
_Label_2820:
	mov	2827,r13		! source line 2827
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
	mov	2828,r13		! source line 2828
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
	mov	2831,r13		! source line 2831
	mov	"\0\0IF",r10
	mov	2831,r13		! source line 2831
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2828) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2827  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2827 then goto _Label_2826 else goto _Label_2825
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2825
	jmp	_Label_2826
_Label_2825:
! THEN...
	mov	2832,r13		! source line 2832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2829 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2829  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0SE",r10
!   _temp_2830 = &_P_Kernel_frameManager
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
	mov	2834,r13		! source line 2834
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2826:
! SEND STATEMENT...
	mov	2836,r13		! source line 2836
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
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2821:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2819
! END FOR
_Label_2822:
! IF STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0IF",r10
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2834) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2833  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2833 == 707406378 then goto _Label_2832		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2832
!	jmp	_Label_2831
_Label_2831:
! THEN...
	mov	2842,r13		! source line 2842
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2835 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2835  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2842,r13		! source line 2842
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0SE",r10
!   _temp_2836 = &_P_Kernel_frameManager
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
	mov	2844,r13		! source line 2844
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2832:
! FOR STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2841 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2842 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2841  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2837:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2842 then goto _Label_2840		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2840
_Label_2838:
	mov	2848,r13		! source line 2848
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
	mov	2849,r13		! source line 2849
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
	mov	2852,r13		! source line 2852
	mov	"\0\0IF",r10
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2846) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2845  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2845 then goto _Label_2844 else goto _Label_2843
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2843
	jmp	_Label_2844
_Label_2843:
! THEN...
	mov	2853,r13		! source line 2853
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2847 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2847  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2853,r13		! source line 2853
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0SE",r10
!   _temp_2848 = &_P_Kernel_frameManager
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
	mov	2855,r13		! source line 2855
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2844:
! ASSIGNMENT STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2839:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2837
! END FOR
_Label_2840:
! IF STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0IF",r10
	mov	2861,r13		! source line 2861
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2852) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2851  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2851 == 707406378 then goto _Label_2850		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2850
!	jmp	_Label_2849
_Label_2849:
! THEN...
	mov	2862,r13		! source line 2862
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2853 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2862,r13		! source line 2862
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0SE",r10
!   _temp_2854 = &_P_Kernel_frameManager
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
	mov	2864,r13		! source line 2864
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2850:
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
	mov	2868,r13		! source line 2868
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
	mov	2872,r13		! source line 2872
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2875,r13		! source line 2875
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
	.word	_Label_2855
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2856
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2857
	.word	12
	.word	4
	.word	_Label_2858
	.word	-16
	.word	4
	.word	_Label_2859
	.word	-20
	.word	4
	.word	_Label_2860
	.word	-24
	.word	4
	.word	_Label_2861
	.word	-28
	.word	4
	.word	_Label_2862
	.word	-32
	.word	4
	.word	_Label_2863
	.word	-36
	.word	4
	.word	_Label_2864
	.word	-40
	.word	4
	.word	_Label_2865
	.word	-9
	.word	1
	.word	_Label_2866
	.word	-44
	.word	4
	.word	_Label_2867
	.word	-48
	.word	4
	.word	_Label_2868
	.word	-52
	.word	4
	.word	_Label_2869
	.word	-56
	.word	4
	.word	_Label_2870
	.word	-60
	.word	4
	.word	_Label_2871
	.word	-64
	.word	4
	.word	_Label_2872
	.word	-68
	.word	4
	.word	_Label_2873
	.word	-72
	.word	4
	.word	_Label_2874
	.word	-76
	.word	4
	.word	_Label_2875
	.word	-10
	.word	1
	.word	_Label_2876
	.word	-80
	.word	4
	.word	_Label_2877
	.word	-84
	.word	4
	.word	_Label_2878
	.word	-88
	.word	4
	.word	_Label_2879
	.word	-92
	.word	4
	.word	_Label_2880
	.word	-96
	.word	4
	.word	_Label_2881
	.word	-100
	.word	4
	.word	_Label_2882
	.word	-104
	.word	4
	.word	_Label_2883
	.word	-108
	.word	4
	.word	_Label_2884
	.word	-112
	.word	4
	.word	_Label_2885
	.word	-116
	.word	4
	.word	_Label_2886
	.word	-120
	.word	4
	.word	_Label_2887
	.word	-124
	.word	4
	.word	_Label_2888
	.word	-128
	.word	4
	.word	_Label_2889
	.word	-132
	.word	4
	.word	_Label_2890
	.word	-136
	.word	4
	.word	_Label_2891
	.word	-140
	.word	4
	.word	_Label_2892
	.word	-144
	.word	4
	.word	_Label_2893
	.word	-148
	.word	4
	.word	_Label_2894
	.word	-152
	.word	4
	.word	_Label_2895
	.word	-156
	.word	4
	.word	_Label_2896
	.word	-160
	.word	4
	.word	_Label_2897
	.word	-164
	.word	4
	.word	_Label_2898
	.word	-168
	.word	4
	.word	_Label_2899
	.word	-172
	.word	4
	.word	_Label_2900
	.word	-176
	.word	4
	.word	_Label_2901
	.word	-180
	.word	4
	.word	_Label_2902
	.word	-184
	.word	4
	.word	_Label_2903
	.word	-188
	.word	4
	.word	_Label_2904
	.word	-192
	.word	4
	.word	_Label_2905
	.word	-196
	.word	4
	.word	_Label_2906
	.word	-200
	.word	4
	.word	_Label_2907
	.word	-204
	.word	4
	.word	_Label_2908
	.word	-208
	.word	4
	.word	_Label_2909
	.word	-212
	.word	4
	.word	_Label_2910
	.word	-216
	.word	4
	.word	_Label_2911
	.word	-220
	.word	4
	.word	_Label_2912
	.word	-224
	.word	4
	.word	_Label_2913
	.word	-228
	.word	4
	.word	_Label_2914
	.word	-232
	.word	4
	.word	_Label_2915
	.word	-236
	.word	4
	.word	_Label_2916
	.word	-240
	.word	4
	.word	_Label_2917
	.word	-244
	.word	4
	.word	_Label_2918
	.word	-248
	.word	4
	.word	_Label_2919
	.word	-252
	.word	4
	.word	_Label_2920
	.word	-256
	.word	4
	.word	_Label_2921
	.word	-260
	.word	4
	.word	_Label_2922
	.word	-264
	.word	4
	.word	_Label_2923
	.word	-268
	.word	4
	.word	0
_Label_2855:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2856:
	.ascii	"Pself\0"
	.align
_Label_2857:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2865:
	.byte	'C'
	.ascii	"_temp_2845\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2875:
	.byte	'C'
	.ascii	"_temp_2827\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2912:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2913:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2914:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2915:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2916:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2917:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2918:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2919:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2920:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2921:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2922:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2923:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
