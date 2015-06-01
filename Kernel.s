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
_StringConst_225:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_224:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_223:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_222:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_221:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_220:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_219:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_218:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_217:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_216:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_215:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_214:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_213:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_212:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_211:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_210:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_209:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_208:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_207:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_206:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_205:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_204:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_203:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_202:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_201:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_200:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_199:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_198:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_197:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_196:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_195:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_194:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_193:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_192:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_191:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_190:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_189:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_188:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_187:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_186:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_185:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_184:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_183:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_182:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_181:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_180:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_179:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_178:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_177:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_176:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_175:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_174:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_173:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_172:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_171:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_170:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_169:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_168:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_167:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_166:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_165:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_164:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_163:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_161:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_160:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_159:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_158:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_157:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_156:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_155:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_154:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_153:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_152:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_151:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_150:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_149:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_148:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_147:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_146:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_145:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_144:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_143:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_142:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_141:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_140:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_139:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_138:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_137:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_136:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_135:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_134:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_133:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_132:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_131:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_130:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_129:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_128:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_127:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_126:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"T9"
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"T8"
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"T7"
	.align
_StringConst_122:
	.word	2			! length
	.ascii	"T6"
	.align
_StringConst_121:
	.word	2			! length
	.ascii	"T5"
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"T4"
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"T3"
	.align
_StringConst_118:
	.word	2			! length
	.ascii	"T2"
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"T1"
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"T0"
	.align
_StringConst_115:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_114:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_113:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_112:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_111:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_110:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_109:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_108:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_107:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_106:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_105:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_104:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_103:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_102:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_101:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_100:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_99:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_98:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_97:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_96:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_95:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_94:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_93:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_92:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_91:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_90:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_89:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_88:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_87:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_86:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_85:
	.word	20			! length
	.ascii	"\nNO WAITING THREADS\n"
	.align
_StringConst_84:
	.word	54			! length
	.ascii	"HoareTest called by a thread other than current thread"
	.align
_StringConst_83:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_82:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_81:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_80:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_79:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_78:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_76:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_74:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_73:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_71:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_70:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_69:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_68:
	.word	13			! length
	.ascii	"newCurrentPos"
	.align
_StringConst_67:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_66:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_65:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_64:
	.word	19			! length
	.ascii	"virt addr of buffer"
	.align
_StringConst_63:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_61:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_60:
	.word	19			! length
	.ascii	"virt addr of buffer"
	.align
_StringConst_59:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_58:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_57:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_56:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_53:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_52:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_51:
	.word	35			! length
	.ascii	"Not meant to continue to this point"
	.align
_StringConst_50:
	.word	45			! length
	.ascii	"Encountered problem trying to load executable"
	.align
_StringConst_49:
	.word	1			! length
	.ascii	"b"
	.align
_StringConst_48:
	.word	1			! length
	.ascii	"a"
	.align
_StringConst_47:
	.word	9			! length
	.ascii	"processID"
	.align
_StringConst_46:
	.word	25			! length
	.ascii	"Handle_Sys_Join invoked!\n"
	.align
_StringConst_45:
	.word	25			! length
	.ascii	"Handle_Sys_Fork invoked!\n"
	.align
_StringConst_44:
	.word	26			! length
	.ascii	"Handle_Sys_Yield invoked!\n"
	.align
_StringConst_43:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_42:
	.word	12			! length
	.ascii	"returnStatus"
	.align
_StringConst_41:
	.word	25			! length
	.ascii	"Handel_Sys_Exit invoked!\n"
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
	.word	43			! length
	.ascii	"Program not meant to continue to this point"
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
	.word	12			! length
	.ascii	"TestProgram1"
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
	be	_Label_235
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
_Label_235:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_236
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_236
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_236
_Label_236:
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
_Label_3190:
	push	r0
	sub	r1,1,r1
	bne	_Label_3190
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_237 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
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
_Label_3191:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3191
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_241 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_242 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_241  sizeInBytes=4
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
!   _temp_243 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_244 = _temp_243 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_244 = 3  (sizeInBytes=4)
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
_Label_3192:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3192
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_246 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_247 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_246  sizeInBytes=4
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
!   _temp_248 = _function_234_IdleFunction
	set	_function_234_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_249 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_248  sizeInBytes=4
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
	.word	_Label_250
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_251
	.word	-12
	.word	4
	.word	_Label_252
	.word	-16
	.word	4
	.word	_Label_253
	.word	-20
	.word	4
	.word	_Label_254
	.word	-24
	.word	4
	.word	_Label_255
	.word	-28
	.word	4
	.word	_Label_256
	.word	-32
	.word	4
	.word	_Label_257
	.word	-36
	.word	4
	.word	_Label_258
	.word	-40
	.word	4
	.word	_Label_259
	.word	-44
	.word	4
	.word	_Label_260
	.word	-48
	.word	4
	.word	_Label_261
	.word	-52
	.word	4
	.word	_Label_262
	.word	-56
	.word	4
	.word	_Label_263
	.word	-60
	.word	4
	.word	0
_Label_250:
	.ascii	"InitializeScheduler\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_234_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_234_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3193:
	push	r0
	sub	r1,1,r1
	bne	_Label_3193
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_264:
!	jmp	_Label_265
_Label_265:
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
!   _temp_269 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_267 else goto _Label_268
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_268
	jmp	_Label_267
_Label_267:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_270
_Label_268:
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
_Label_270:
! END WHILE...
	jmp	_Label_264
_Label_266:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_234_IdleFunction:
	.word	_sourceFileName
	.word	_Label_271
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_272
	.word	8
	.word	4
	.word	_Label_273
	.word	-12
	.word	4
	.word	_Label_274
	.word	-16
	.word	4
	.word	0
_Label_271:
	.ascii	"IdleFunction\0"
	.align
_Label_272:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_274:
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
_Label_3194:
	push	r0
	sub	r1,1,r1
	bne	_Label_3194
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
!   _temp_277 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_277 ) then goto _Label_276		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_276
!	jmp	_Label_275
_Label_275:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_279 [0 ] into _temp_280
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
!   _temp_278 = _temp_280		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_276:
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
!   _temp_281 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_281 = 3  (sizeInBytes=4)
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
_Label_282:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_286 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_285  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_285 then goto _Label_284 else goto _Label_283
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_283
	jmp	_Label_284
_Label_283:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_287 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_288 = &_P_Kernel_threadManager
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
	jmp	_Label_282
_Label_284:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_291 ) then goto _Label_290		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_290
!	jmp	_Label_289
_Label_289:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_293 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_293 [0 ] into _temp_294
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
!   _temp_292 = _temp_294		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
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
!   _temp_296 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_295 = *_temp_296  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_295) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_297 = _temp_295 + 32
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
_Label_290:
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
	.word	_Label_298
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_299
	.word	8
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
	.word	_Label_305
	.word	-36
	.word	4
	.word	_Label_306
	.word	-40
	.word	4
	.word	_Label_307
	.word	-44
	.word	4
	.word	_Label_308
	.word	-48
	.word	4
	.word	_Label_309
	.word	-52
	.word	4
	.word	_Label_310
	.word	-9
	.word	1
	.word	_Label_311
	.word	-56
	.word	4
	.word	_Label_312
	.word	-60
	.word	4
	.word	_Label_313
	.word	-64
	.word	4
	.word	_Label_314
	.word	-68
	.word	4
	.word	_Label_315
	.word	-72
	.word	4
	.word	_Label_316
	.word	-76
	.word	4
	.word	_Label_317
	.word	-80
	.word	4
	.word	0
_Label_298:
	.ascii	"Run\0"
	.align
_Label_299:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_310:
	.byte	'C'
	.ascii	"_temp_285\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_316:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_317:
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
_Label_3195:
	push	r0
	sub	r1,1,r1
	bne	_Label_3195
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
!   _temp_318 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_319 = _function_233_ThreadPrintShort
	set	_function_233_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_320 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_319  sizeInBytes=4
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
	.word	_Label_321
	.word	0		! total size of parameters
	.word	24		! frame size = 24
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
	.word	0
_Label_321:
	.ascii	"PrintReadyList\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_325:
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
_Label_3196:
	push	r0
	sub	r1,1,r1
	bne	_Label_3196
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
!   _temp_326 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_326  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_328 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_327 = *_temp_328  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
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
!   _temp_329 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
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
	.word	_Label_330
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_331
	.word	-12
	.word	4
	.word	_Label_332
	.word	-16
	.word	4
	.word	_Label_333
	.word	-20
	.word	4
	.word	_Label_334
	.word	-24
	.word	4
	.word	_Label_335
	.word	-28
	.word	4
	.word	_Label_336
	.word	-32
	.word	4
	.word	0
_Label_330:
	.ascii	"ThreadStartMain\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_335:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_336:
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
_Label_3197:
	push	r0
	sub	r1,1,r1
	bne	_Label_3197
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
!   _temp_337 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_338 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
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
	.word	_Label_339
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_340
	.word	-12
	.word	4
	.word	_Label_341
	.word	-16
	.word	4
	.word	_Label_342
	.word	-20
	.word	4
	.word	0
_Label_339:
	.ascii	"ThreadFinish\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_342:
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
_Label_3198:
	push	r0
	sub	r1,1,r1
	bne	_Label_3198
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
!   _temp_343 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_345		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_345
!	jmp	_Label_344
_Label_344:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_346 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
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
!   _temp_348 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_345:
! CALL STATEMENT...
!   _temp_349 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
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
!   _temp_350 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_351 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
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
	.word	_Label_352
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_353
	.word	8
	.word	4
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	_Label_360
	.word	-36
	.word	4
	.word	_Label_361
	.word	-40
	.word	4
	.word	0
_Label_352:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_353:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_361:
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
_Label_3199:
	push	r0
	sub	r1,1,r1
	bne	_Label_3199
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
!   if newStatus != 1 then goto _Label_363		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_363
!	jmp	_Label_362
_Label_362:
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
	jmp	_Label_364
_Label_363:
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
_Label_364:
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
	.word	_Label_365
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_366
	.word	8
	.word	4
	.word	_Label_367
	.word	-12
	.word	4
	.word	0
_Label_365:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_367:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_233_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_233_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3200:
	push	r0
	sub	r1,1,r1
	bne	_Label_3200
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
!   if t == 0 then goto _Label_371		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_371
!   _temp_370 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_372
_Label_371:
!   _temp_370 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_372:
!   if _temp_370 then goto _Label_369 else goto _Label_368
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_368
	jmp	_Label_369
_Label_368:
! THEN...
	mov	832,r13		! source line 832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_373 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
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
_Label_369:
! CALL STATEMENT...
!   _temp_374 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
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
!   _temp_376 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_375 = *_temp_376  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_377 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
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
!   _temp_386 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_385 = *_temp_386  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_380
	cmp	r1,2
	be	_Label_381
	cmp	r1,3
	be	_Label_382
	cmp	r1,4
	be	_Label_383
	cmp	r1,5
	be	_Label_384
	jmp	_Label_378
! CASE 1...
_Label_380:
! CALL STATEMENT...
!   _temp_387 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0BR",r10
	jmp	_Label_379
! CASE 2...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0BR",r10
	jmp	_Label_379
! CASE 3...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0BR",r10
	jmp	_Label_379
! CASE 4...
_Label_383:
! CALL STATEMENT...
!   _temp_390 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0BR",r10
	jmp	_Label_379
! CASE 5...
_Label_384:
! CALL STATEMENT...
!   _temp_391 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0BR",r10
	jmp	_Label_379
! DEFAULT CASE...
_Label_378:
! CALL STATEMENT...
!   _temp_392 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
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
_Label_379:
! CALL STATEMENT...
!   _temp_393 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_394 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_395 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
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
_RoutineDescriptor__function_233_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_396
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_397
	.word	8
	.word	4
	.word	_Label_398
	.word	-16
	.word	4
	.word	_Label_399
	.word	-20
	.word	4
	.word	_Label_400
	.word	-24
	.word	4
	.word	_Label_401
	.word	-28
	.word	4
	.word	_Label_402
	.word	-32
	.word	4
	.word	_Label_403
	.word	-36
	.word	4
	.word	_Label_404
	.word	-40
	.word	4
	.word	_Label_405
	.word	-44
	.word	4
	.word	_Label_406
	.word	-48
	.word	4
	.word	_Label_407
	.word	-52
	.word	4
	.word	_Label_408
	.word	-56
	.word	4
	.word	_Label_409
	.word	-60
	.word	4
	.word	_Label_410
	.word	-64
	.word	4
	.word	_Label_411
	.word	-68
	.word	4
	.word	_Label_412
	.word	-72
	.word	4
	.word	_Label_413
	.word	-76
	.word	4
	.word	_Label_414
	.word	-9
	.word	1
	.word	_Label_415
	.word	-80
	.word	4
	.word	0
_Label_396:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_397:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_414:
	.byte	'C'
	.ascii	"_temp_370\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_232_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_232_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3201:
	push	r0
	sub	r1,1,r1
	bne	_Label_3201
	mov	1191,r13		! source line 1191
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_416 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
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
_RoutineDescriptor__function_232_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_417
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_418
	.word	8
	.word	4
	.word	_Label_419
	.word	-12
	.word	4
	.word	0
_Label_417:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_416\0"
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
_Label_3202:
	push	r0
	sub	r1,1,r1
	bne	_Label_3202
	mov	1201,r13		! source line 1201
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_420 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
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
	.word	_Label_421
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	-12
	.word	4
	.word	0
_Label_421:
	.ascii	"ProcessFinish\0"
	.align
_Label_422:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
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
_Label_3203:
	push	r0
	sub	r1,1,r1
	bne	_Label_3203
	mov	1215,r13		! source line 1215
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0AS",r10
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_424 = &_P_Kernel_threadManager
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
!   _temp_425 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_425  sizeInBytes=4
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
!   _temp_426 = _function_231_StartUserProcess
	set	_function_231_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_426  sizeInBytes=4
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
	.word	_Label_427
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_428
	.word	-12
	.word	4
	.word	_Label_429
	.word	-16
	.word	4
	.word	_Label_430
	.word	-20
	.word	4
	.word	_Label_431
	.word	-24
	.word	4
	.word	0
_Label_427:
	.ascii	"InitFirstProcess\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_431:
	.byte	'P'
	.ascii	"obtainedThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_231_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_StartUserProcess,r1
	push	r1
	mov	28,r1
_Label_3204:
	push	r0
	sub	r1,1,r1
	bne	_Label_3204
	mov	1242,r13		! source line 1242
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0AS",r10
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
!   _temp_432 = &_P_Kernel_processManager
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
	mov	1251,r13		! source line 1251
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
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = obtainedPCB + 24
	load	[r14+-104],r1
	add	r1,24,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_433 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-80],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_434 = obtainedPCB  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
	mov	1256,r13		! source line 1256
	mov	"\0\0SE",r10
!   _temp_435 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-72]
!   _temp_436 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_435  sizeInBytes=4
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
	mov	1258,r13		! source line 1258
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_437
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_437
	jmp	_Label_438
_Label_437:
! THEN...
	mov	1259,r13		! source line 1259
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_439 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1259,r13		! source line 1259
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_438:
! ASSIGNMENT STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0AS",r10
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_440 = _temp_441		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-60]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_440  sizeInBytes=4
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
	mov	1264,r13		! source line 1264
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_443		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	1265,r13		! source line 1265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_444 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1265,r13		! source line 1265
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_443:
! SEND STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0SE",r10
!   _temp_445 = &_P_Kernel_fileManager
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
	mov	1270,r13		! source line 1270
	mov	"\0\0AS",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   _temp_448 = _temp_447 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_446 = *_temp_448  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initStackTop = _temp_446 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_449 [999 ] into _temp_450
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
!   initSystemStackTop = _temp_450		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = obtainedPCB + 32
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
! ASSIGNMENT STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_452 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_452 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_453 = initSystemStackTop		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_453  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	BecomeUserThread
! CALL STATEMENT...
!   _temp_454 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1277,r13		! source line 1277
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_231_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_455
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_456
	.word	8
	.word	4
	.word	_Label_457
	.word	-12
	.word	4
	.word	_Label_458
	.word	-16
	.word	4
	.word	_Label_459
	.word	-20
	.word	4
	.word	_Label_460
	.word	-24
	.word	4
	.word	_Label_461
	.word	-28
	.word	4
	.word	_Label_462
	.word	-32
	.word	4
	.word	_Label_463
	.word	-36
	.word	4
	.word	_Label_464
	.word	-40
	.word	4
	.word	_Label_465
	.word	-44
	.word	4
	.word	_Label_466
	.word	-48
	.word	4
	.word	_Label_467
	.word	-52
	.word	4
	.word	_Label_468
	.word	-56
	.word	4
	.word	_Label_469
	.word	-60
	.word	4
	.word	_Label_470
	.word	-64
	.word	4
	.word	_Label_471
	.word	-68
	.word	4
	.word	_Label_472
	.word	-72
	.word	4
	.word	_Label_473
	.word	-76
	.word	4
	.word	_Label_474
	.word	-80
	.word	4
	.word	_Label_475
	.word	-84
	.word	4
	.word	_Label_476
	.word	-88
	.word	4
	.word	_Label_477
	.word	-92
	.word	4
	.word	_Label_478
	.word	-96
	.word	4
	.word	_Label_479
	.word	-100
	.word	4
	.word	_Label_480
	.word	-104
	.word	4
	.word	_Label_481
	.word	-108
	.word	4
	.word	0
_Label_455:
	.ascii	"StartUserProcess\0"
	.align
_Label_456:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_477:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_478:
	.byte	'I'
	.ascii	"initStackTop\0"
	.align
_Label_479:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_480:
	.byte	'P'
	.ascii	"obtainedPCB\0"
	.align
_Label_481:
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
_Label_3205:
	push	r0
	sub	r1,1,r1
	bne	_Label_3205
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1792,r13		! source line 1792
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
	mov	1793,r13		! source line 1793
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
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
	.word	_Label_482
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_482:
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
_Label_3206:
	push	r0
	sub	r1,1,r1
	bne	_Label_3206
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0IF",r10
!   _temp_486 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_487 = _temp_486 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_485 = *_temp_487  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_485 == 0 then goto _Label_484		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_484
!	jmp	_Label_483
_Label_483:
! THEN...
	mov	1810,r13		! source line 1810
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0SE",r10
!   _temp_489 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_490 = _temp_489 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_488 = *_temp_490  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_488) then goto _runtimeErrorNullPointer
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
_Label_484:
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
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
	.word	_Label_491
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_492
	.word	-12
	.word	4
	.word	_Label_493
	.word	-16
	.word	4
	.word	_Label_494
	.word	-20
	.word	4
	.word	_Label_495
	.word	-24
	.word	4
	.word	_Label_496
	.word	-28
	.word	4
	.word	_Label_497
	.word	-32
	.word	4
	.word	0
_Label_491:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_485\0"
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
	mov	1817,r13		! source line 1817
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1826,r13		! source line 1826
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
	.word	_Label_498
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_498:
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
_Label_3207:
	push	r0
	sub	r1,1,r1
	bne	_Label_3207
	mov	1831,r13		! source line 1831
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_499 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1838,r13		! source line 1838
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
	.word	_Label_500
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_501
	.word	-12
	.word	4
	.word	0
_Label_500:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_499\0"
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
_Label_3208:
	push	r0
	sub	r1,1,r1
	bne	_Label_3208
	mov	1843,r13		! source line 1843
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1850,r13		! source line 1850
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
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
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
_Label_3209:
	push	r0
	sub	r1,1,r1
	bne	_Label_3209
	mov	1855,r13		! source line 1855
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
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
_Label_3210:
	push	r0
	sub	r1,1,r1
	bne	_Label_3210
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_508 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
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
	.word	_Label_509
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_510
	.word	-12
	.word	4
	.word	0
_Label_509:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_508\0"
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
_Label_3211:
	push	r0
	sub	r1,1,r1
	bne	_Label_3211
	mov	1879,r13		! source line 1879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_511 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1886,r13		! source line 1886
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
	.word	_Label_512
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_513
	.word	-12
	.word	4
	.word	0
_Label_512:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
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
_Label_3212:
	push	r0
	sub	r1,1,r1
	bne	_Label_3212
	mov	1891,r13		! source line 1891
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_514 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1898,r13		! source line 1898
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
	.word	_Label_515
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_516
	.word	-12
	.word	4
	.word	0
_Label_515:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_514\0"
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
_Label_3213:
	push	r0
	sub	r1,1,r1
	bne	_Label_3213
	mov	1903,r13		! source line 1903
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_517 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1910,r13		! source line 1910
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
	.word	_Label_518
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_519
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_230_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3214:
	push	r0
	sub	r1,1,r1
	bne	_Label_3214
	mov	1915,r13		! source line 1915
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_520 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_521 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_525 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_524 = *_temp_525  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_524 == 0 then goto _Label_523		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_523
!	jmp	_Label_522
_Label_522:
! THEN...
	mov	1926,r13		! source line 1926
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_527 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_526 = *_temp_527  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_526) then goto _runtimeErrorNullPointer
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
	jmp	_Label_528
_Label_523:
! ELSE...
	mov	1928,r13		! source line 1928
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_529 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1928,r13		! source line 1928
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_528:
! SEND STATEMENT...
	mov	1930,r13		! source line 1930
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
	mov	1936,r13		! source line 1936
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_230_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_530
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_531
	.word	8
	.word	4
	.word	_Label_532
	.word	-12
	.word	4
	.word	_Label_533
	.word	-16
	.word	4
	.word	_Label_534
	.word	-20
	.word	4
	.word	_Label_535
	.word	-24
	.word	4
	.word	_Label_536
	.word	-28
	.word	4
	.word	_Label_537
	.word	-32
	.word	4
	.word	_Label_538
	.word	-36
	.word	4
	.word	0
_Label_530:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_531:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_520\0"
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
_Label_3215:
	push	r0
	sub	r1,1,r1
	bne	_Label_3215
	mov	1941,r13		! source line 1941
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1962,r13		! source line 1962
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3216
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_539
_Label_3216:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_539
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_539
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_553,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_553:
	jmp	_Label_545	! 1:	
	jmp	_Label_552	! 2:	
	jmp	_Label_542	! 3:	
	jmp	_Label_541	! 4:	
	jmp	_Label_544	! 5:	
	jmp	_Label_543	! 6:	
	jmp	_Label_546	! 7:	
	jmp	_Label_547	! 8:	
	jmp	_Label_548	! 9:	
	jmp	_Label_549	! 10:	
	jmp	_Label_550	! 11:	
	jmp	_Label_551	! 12:	
! CASE 4...
_Label_541:
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0RE",r10
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_542:
! CALL STATEMENT...
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_543:
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_544:
! RETURN STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_545:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
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
! CASE 7...
_Label_546:
! RETURN STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_557  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_547:
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_558  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_548:
! RETURN STATEMENT...
	mov	1980,r13		! source line 1980
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
	mov	1980,r13		! source line 1980
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_559  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_549:
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
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
	mov	1982,r13		! source line 1982
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_560  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_550:
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_561  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_551:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_552:
! CALL STATEMENT...
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_539:
! CALL STATEMENT...
!   _temp_562 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_563 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1995,r13		! source line 1995
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_540:
! RETURN STATEMENT...
	mov	1997,r13		! source line 1997
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
	.word	_Label_564
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_565
	.word	8
	.word	4
	.word	_Label_566
	.word	12
	.word	4
	.word	_Label_567
	.word	16
	.word	4
	.word	_Label_568
	.word	20
	.word	4
	.word	_Label_569
	.word	24
	.word	4
	.word	_Label_570
	.word	-12
	.word	4
	.word	_Label_571
	.word	-16
	.word	4
	.word	_Label_572
	.word	-20
	.word	4
	.word	_Label_573
	.word	-24
	.word	4
	.word	_Label_574
	.word	-28
	.word	4
	.word	_Label_575
	.word	-32
	.word	4
	.word	_Label_576
	.word	-36
	.word	4
	.word	_Label_577
	.word	-40
	.word	4
	.word	_Label_578
	.word	-44
	.word	4
	.word	_Label_579
	.word	-48
	.word	4
	.word	0
_Label_564:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_567:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
! 
! ===============  FUNCTION LocalizeVirtualString  ===============
! 
_function_229_LocalizeVirtualString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_229_LocalizeVirtualString,r1
	push	r1
	mov	17,r1
_Label_3217:
	push	r0
	sub	r1,1,r1
	bne	_Label_3217
	mov	2005,r13		! source line 2005
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   _temp_580 = &strBuff
	add	r14,-56,r1
	store	r1,[r14+-32]
!   _temp_581 = src		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_582 = *_temp_583  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_582) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = _temp_582 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_580  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_581  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0IF",r10
!   if retVal >= 0 then goto _Label_586		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_586
!	jmp	_Label_585
_Label_585:
! THEN...
	mov	2014,r13		! source line 2014
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_586:
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0RE",r10
!   _temp_587 = &strBuff
	add	r14,-56,r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_587  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_229_LocalizeVirtualString:
	.word	_sourceFileName
	.word	_Label_588
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_589
	.word	8
	.word	4
	.word	_Label_590
	.word	-12
	.word	4
	.word	_Label_591
	.word	-16
	.word	4
	.word	_Label_592
	.word	-20
	.word	4
	.word	_Label_593
	.word	-24
	.word	4
	.word	_Label_594
	.word	-28
	.word	4
	.word	_Label_595
	.word	-32
	.word	4
	.word	_Label_596
	.word	-56
	.word	24
	.word	_Label_597
	.word	-60
	.word	4
	.word	0
_Label_588:
	.ascii	"LocalizeVirtualString\0"
	.align
_Label_589:
	.byte	'P'
	.ascii	"src\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_596:
	.byte	'A'
	.ascii	"strBuff\0"
	.align
_Label_597:
	.byte	'I'
	.ascii	"retVal\0"
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
	mov	4,r1
_Label_3218:
	push	r0
	sub	r1,1,r1
	bne	_Label_3218
	mov	2021,r13		! source line 2021
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_598 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_599 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2023,r13		! source line 2023
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_600
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_601
	.word	8
	.word	4
	.word	_Label_602
	.word	-12
	.word	4
	.word	_Label_603
	.word	-16
	.word	4
	.word	0
_Label_600:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_601:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_598\0"
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
_Label_3219:
	push	r0
	sub	r1,1,r1
	bne	_Label_3219
	mov	2030,r13		! source line 2030
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_604 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2031,r13		! source line 2031
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2031,r13		! source line 2031
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
	.word	_Label_605
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_606
	.word	-12
	.word	4
	.word	0
_Label_605:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_604\0"
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
	mov	2,r1
_Label_3220:
	push	r0
	sub	r1,1,r1
	bne	_Label_3220
	mov	2036,r13		! source line 2036
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_607 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_607  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_608
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_609
	.word	-12
	.word	4
	.word	0
_Label_608:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_607\0"
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
	mov	2,r1
_Label_3221:
	push	r0
	sub	r1,1,r1
	bne	_Label_3221
	mov	2042,r13		! source line 2042
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_610 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_610  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_611
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_612
	.word	-12
	.word	4
	.word	0
_Label_611:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_610\0"
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
	mov	4,r1
_Label_3222:
	push	r0
	sub	r1,1,r1
	bne	_Label_3222
	mov	2049,r13		! source line 2049
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_613 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_613  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_614 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_614  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_615
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_616
	.word	8
	.word	4
	.word	_Label_617
	.word	-12
	.word	4
	.word	_Label_618
	.word	-16
	.word	4
	.word	0
_Label_615:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_616:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_613\0"
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
	mov	71,r1
_Label_3223:
	push	r0
	sub	r1,1,r1
	bne	_Label_3223
	mov	2057,r13		! source line 2057
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-248,r4
	mov	23,r3
_Label_3224:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3224
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   _temp_620 = &localString
	add	r14,-272,r1
	store	r1,[r14+-132]
!   _temp_621 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_622 = *_temp_623  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_622) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = _temp_622 + 32
	load	[r14+-124],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_620  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_621  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0IF",r10
!   _temp_627 = &localString
	add	r14,-272,r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_627) then goto _Label_625
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_625
	jmp	_Label_626
_Label_625:
! THEN...
	mov	2076,r13		! source line 2076
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_628 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_628  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,288,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_626:
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   _temp_629 = &localString
	add	r14,-272,r1
	store	r1,[r14+-104]
!   _temp_630 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_629  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_631
	load	[r14+-156],r1
	cmp	r1,r0
	be	_Label_631
	jmp	_Label_632
_Label_631:
! THEN...
	mov	2084,r13		! source line 2084
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_633 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2084,r13		! source line 2084
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,288,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_632:
! SEND STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   _temp_634 = &newAddrSpace
	add	r14,-248,r1
	store	r1,[r14+-92]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   _temp_635 = &newAddrSpace
	add	r14,-248,r1
	store	r1,[r14+-88]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_635  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_637		(int)
	load	[r14+-144],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_637
!	jmp	_Label_636
_Label_636:
! THEN...
	mov	2093,r13		! source line 2093
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_638 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2093,r13		! source line 2093
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_637:
! SEND STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0SE",r10
!   _temp_639 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_641 = *_temp_642  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_641) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _temp_641 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_640 = _temp_643		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_644 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_640  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_645 = *_temp_646  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_645) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = _temp_645 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_647 = newAddrSpace  (sizeInBytes=92)
	add	r14,-248,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3225:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3225
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   _temp_649 = &newAddrSpace
	add	r14,-248,r1
	store	r1,[r14+-40]
!   _temp_650 = _temp_649 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_648 = *_temp_650  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initStackTop = _temp_648 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_651 [999 ] into _temp_652
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
!   initSystemStackTop = _temp_652		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-152]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2104,r13		! source line 2104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! SEND STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0SE",r10
!   _temp_653 = &newAddrSpace
	add	r14,-248,r1
	store	r1,[r14+-24]
!   Send message SetToThisPageTable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_654 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_655 = initSystemStackTop		(4 bytes)
	load	[r14+-152],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_655  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Call the function
	mov	2107,r13		! source line 2107
	mov	"\0\0CE",r10
	call	BecomeUserThread
! CALL STATEMENT...
!   _temp_656 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_656  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2108,r13		! source line 2108
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,288,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_657
	.word	4		! total size of parameters
	.word	284		! frame size = 284
	.word	_Label_658
	.word	8
	.word	4
	.word	_Label_659
	.word	-12
	.word	4
	.word	_Label_660
	.word	-16
	.word	4
	.word	_Label_661
	.word	-20
	.word	4
	.word	_Label_662
	.word	-24
	.word	4
	.word	_Label_663
	.word	-28
	.word	4
	.word	_Label_664
	.word	-32
	.word	4
	.word	_Label_665
	.word	-36
	.word	4
	.word	_Label_666
	.word	-40
	.word	4
	.word	_Label_667
	.word	-44
	.word	4
	.word	_Label_668
	.word	-48
	.word	4
	.word	_Label_669
	.word	-52
	.word	4
	.word	_Label_670
	.word	-56
	.word	4
	.word	_Label_671
	.word	-60
	.word	4
	.word	_Label_672
	.word	-64
	.word	4
	.word	_Label_673
	.word	-68
	.word	4
	.word	_Label_674
	.word	-72
	.word	4
	.word	_Label_675
	.word	-76
	.word	4
	.word	_Label_676
	.word	-80
	.word	4
	.word	_Label_677
	.word	-84
	.word	4
	.word	_Label_678
	.word	-88
	.word	4
	.word	_Label_679
	.word	-92
	.word	4
	.word	_Label_680
	.word	-96
	.word	4
	.word	_Label_681
	.word	-100
	.word	4
	.word	_Label_682
	.word	-104
	.word	4
	.word	_Label_683
	.word	-108
	.word	4
	.word	_Label_684
	.word	-112
	.word	4
	.word	_Label_685
	.word	-116
	.word	4
	.word	_Label_686
	.word	-120
	.word	4
	.word	_Label_687
	.word	-124
	.word	4
	.word	_Label_688
	.word	-128
	.word	4
	.word	_Label_689
	.word	-132
	.word	4
	.word	_Label_690
	.word	-136
	.word	4
	.word	_Label_691
	.word	-140
	.word	4
	.word	_Label_692
	.word	-144
	.word	4
	.word	_Label_693
	.word	-148
	.word	4
	.word	_Label_694
	.word	-152
	.word	4
	.word	_Label_695
	.word	-156
	.word	4
	.word	_Label_696
	.word	-248
	.word	92
	.word	_Label_697
	.word	-272
	.word	24
	.word	_Label_698
	.word	-276
	.word	4
	.word	0
_Label_657:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_658:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_691:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_692:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_693:
	.byte	'I'
	.ascii	"initStackTop\0"
	.align
_Label_694:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_695:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_696:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_697:
	.byte	'A'
	.ascii	"localString\0"
	.align
_Label_698:
	.byte	'I'
	.ascii	"retVal\0"
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
	mov	7,r1
_Label_3226:
	push	r0
	sub	r1,1,r1
	bne	_Label_3226
	mov	2114,r13		! source line 2114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_699 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2115,r13		! source line 2115
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_700 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   _temp_701 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_701  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2116,r13		! source line 2116
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_702 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2117,r13		! source line 2117
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2118,r13		! source line 2118
	mov	"\0\0CA",r10
	call	_function_229_LocalizeVirtualString
!   Retrieve Result: targetName=_temp_703  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2118,r13		! source line 2118
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2119,r13		! source line 2119
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_704
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_705
	.word	8
	.word	4
	.word	_Label_706
	.word	-12
	.word	4
	.word	_Label_707
	.word	-16
	.word	4
	.word	_Label_708
	.word	-20
	.word	4
	.word	_Label_709
	.word	-24
	.word	4
	.word	_Label_710
	.word	-28
	.word	4
	.word	0
_Label_704:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_705:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_699\0"
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
	mov	7,r1
_Label_3227:
	push	r0
	sub	r1,1,r1
	bne	_Label_3227
	mov	2125,r13		! source line 2125
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_711 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2126,r13		! source line 2126
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_712 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   _temp_713 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_713  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2127,r13		! source line 2127
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_714 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2128,r13		! source line 2128
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2129,r13		! source line 2129
	mov	"\0\0CA",r10
	call	_function_229_LocalizeVirtualString
!   Retrieve Result: targetName=_temp_715  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2129,r13		! source line 2129
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2130,r13		! source line 2130
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_716
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_717
	.word	8
	.word	4
	.word	_Label_718
	.word	-12
	.word	4
	.word	_Label_719
	.word	-16
	.word	4
	.word	_Label_720
	.word	-20
	.word	4
	.word	_Label_721
	.word	-24
	.word	4
	.word	_Label_722
	.word	-28
	.word	4
	.word	0
_Label_716:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_717:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_711\0"
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
	mov	7,r1
_Label_3228:
	push	r0
	sub	r1,1,r1
	bne	_Label_3228
	mov	2137,r13		! source line 2137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_723 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2138,r13		! source line 2138
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_724 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2139,r13		! source line 2139
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_725 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   _temp_726 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_726  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2140,r13		! source line 2140
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_727 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2141,r13		! source line 2141
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_728
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_729
	.word	8
	.word	4
	.word	_Label_730
	.word	12
	.word	4
	.word	_Label_731
	.word	16
	.word	4
	.word	_Label_732
	.word	-12
	.word	4
	.word	_Label_733
	.word	-16
	.word	4
	.word	_Label_734
	.word	-20
	.word	4
	.word	_Label_735
	.word	-24
	.word	4
	.word	_Label_736
	.word	-28
	.word	4
	.word	0
_Label_728:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_729:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_730:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_723\0"
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
	mov	7,r1
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
	mov	2148,r13		! source line 2148
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_737 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2149,r13		! source line 2149
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_738 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2150,r13		! source line 2150
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_739 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   _temp_740 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_740  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2151,r13		! source line 2151
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_741 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2152,r13		! source line 2152
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_742
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_743
	.word	8
	.word	4
	.word	_Label_744
	.word	12
	.word	4
	.word	_Label_745
	.word	16
	.word	4
	.word	_Label_746
	.word	-12
	.word	4
	.word	_Label_747
	.word	-16
	.word	4
	.word	_Label_748
	.word	-20
	.word	4
	.word	_Label_749
	.word	-24
	.word	4
	.word	_Label_750
	.word	-28
	.word	4
	.word	0
_Label_742:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_743:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_744:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_737\0"
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
	mov	5,r1
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
	mov	2158,r13		! source line 2158
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_751 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2159,r13		! source line 2159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_752 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2160,r13		! source line 2160
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_753 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_754
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_755
	.word	8
	.word	4
	.word	_Label_756
	.word	12
	.word	4
	.word	_Label_757
	.word	-12
	.word	4
	.word	_Label_758
	.word	-16
	.word	4
	.word	_Label_759
	.word	-20
	.word	4
	.word	0
_Label_754:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_755:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_756:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_751\0"
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
	mov	4,r1
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
	mov	2167,r13		! source line 2167
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_760 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2168,r13		! source line 2168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_761 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2169,r13		! source line 2169
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_762
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_763
	.word	8
	.word	4
	.word	_Label_764
	.word	-12
	.word	4
	.word	_Label_765
	.word	-16
	.word	4
	.word	0
_Label_762:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_763:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_228_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
	mov	2760,r13		! source line 2760
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_766 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_766  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   _temp_767 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_767) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_769 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_769) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_768 = *_temp_769  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_767 = _temp_768  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   _temp_770 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_770) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_772 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_772) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_771 = *_temp_772  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_770 = _temp_771  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   _temp_773 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_773) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_775 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_775) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_774 = *_temp_775  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_773 = _temp_774  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_776
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_777
	.word	8
	.word	4
	.word	_Label_778
	.word	12
	.word	4
	.word	_Label_779
	.word	-16
	.word	4
	.word	_Label_780
	.word	-9
	.word	1
	.word	_Label_781
	.word	-20
	.word	4
	.word	_Label_782
	.word	-24
	.word	4
	.word	_Label_783
	.word	-10
	.word	1
	.word	_Label_784
	.word	-28
	.word	4
	.word	_Label_785
	.word	-32
	.word	4
	.word	_Label_786
	.word	-11
	.word	1
	.word	_Label_787
	.word	-36
	.word	4
	.word	_Label_788
	.word	-12
	.word	1
	.word	_Label_789
	.word	-40
	.word	4
	.word	_Label_790
	.word	-44
	.word	4
	.word	0
_Label_776:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_777:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_778:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_780:
	.byte	'C'
	.ascii	"_temp_774\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_783:
	.byte	'C'
	.ascii	"_temp_771\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_786:
	.byte	'C'
	.ascii	"_temp_768\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_788:
	.byte	'C'
	.ascii	"_temp_766\0"
	.align
_Label_789:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_790:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_227_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_227_printFCB,r1
	push	r1
	mov	3,r1
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
	mov	2770,r13		! source line 2770
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_792 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_791 = *_temp_792  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2771,r13		! source line 2771
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2772,r13		! source line 2772
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_227_printFCB:
	.word	_sourceFileName
	.word	_Label_793
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_794
	.word	8
	.word	4
	.word	_Label_795
	.word	-12
	.word	4
	.word	_Label_796
	.word	-16
	.word	4
	.word	0
_Label_793:
	.ascii	"printFCB\0"
	.align
_Label_794:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_226_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_226_printOpen,r1
	push	r1
	mov	4,r1
_Label_3234:
	push	r0
	sub	r1,1,r1
	bne	_Label_3234
	mov	2775,r13		! source line 2775
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_797 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_798 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2777,r13		! source line 2777
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_799 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2778,r13		! source line 2778
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2779,r13		! source line 2779
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
	mov	2779,r13		! source line 2779
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_226_printOpen:
	.word	_sourceFileName
	.word	_Label_800
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_801
	.word	8
	.word	4
	.word	_Label_802
	.word	-12
	.word	4
	.word	_Label_803
	.word	-16
	.word	4
	.word	_Label_804
	.word	-20
	.word	4
	.word	0
_Label_800:
	.ascii	"printOpen\0"
	.align
_Label_801:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_805
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_805:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_806
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_806:
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
_Label_3235:
	push	r0
	sub	r1,1,r1
	bne	_Label_3235
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_808		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_808
!	jmp	_Label_807
_Label_807:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_809 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
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
_Label_808:
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
	.word	_Label_811
	.word	8		! total size of parameters
	.word	12		! frame size = 12
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
	.word	0
_Label_811:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_812:
	.ascii	"Pself\0"
	.align
_Label_813:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_809\0"
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
_Label_3236:
	push	r0
	sub	r1,1,r1
	bne	_Label_3236
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
!   if count != 2147483647 then goto _Label_817		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_817
!	jmp	_Label_816
_Label_816:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_818 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
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
_Label_817:
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
!   if count > 0 then goto _Label_820		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_820
!	jmp	_Label_819
_Label_819:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_821 = &waitingThreads
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
!   _temp_822 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_822 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_823 = &_P_Kernel_readyList
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
_Label_820:
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
	.word	_Label_824
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_826
	.word	-12
	.word	4
	.word	_Label_827
	.word	-16
	.word	4
	.word	_Label_828
	.word	-20
	.word	4
	.word	_Label_829
	.word	-24
	.word	4
	.word	_Label_830
	.word	-28
	.word	4
	.word	_Label_831
	.word	-32
	.word	4
	.word	0
_Label_824:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_825:
	.ascii	"Pself\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_830:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_831:
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
_Label_3237:
	push	r0
	sub	r1,1,r1
	bne	_Label_3237
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
!   if count != -2147483648 then goto _Label_833		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_833
!	jmp	_Label_832
_Label_832:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_834 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
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
_Label_833:
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
!   if count >= 0 then goto _Label_836		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_836
!	jmp	_Label_835
_Label_835:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_837 = &waitingThreads
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
_Label_836:
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
	.word	_Label_838
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_840
	.word	-12
	.word	4
	.word	_Label_841
	.word	-16
	.word	4
	.word	_Label_842
	.word	-20
	.word	4
	.word	0
_Label_838:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_839:
	.ascii	"Pself\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_842:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_843
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_843:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_844
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_844:
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
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
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
	.word	_Label_846
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_848
	.word	-12
	.word	4
	.word	0
_Label_846:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_847:
	.ascii	"Pself\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_845\0"
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
_Label_3239:
	push	r0
	sub	r1,1,r1
	bne	_Label_3239
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_850		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_850
!	jmp	_Label_849
_Label_849:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_851 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
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
_Label_850:
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
!   if heldBy == 0 then goto _Label_855		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_855
!   _temp_854 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_856
_Label_855:
!   _temp_854 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_856:
!   if _temp_854 then goto _Label_853 else goto _Label_852
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_852
	jmp	_Label_853
_Label_852:
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
	jmp	_Label_857
_Label_853:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_858 = &waitingThreads
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
_Label_857:
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
	.word	_Label_859
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_861
	.word	-16
	.word	4
	.word	_Label_862
	.word	-9
	.word	1
	.word	_Label_863
	.word	-20
	.word	4
	.word	_Label_864
	.word	-24
	.word	4
	.word	0
_Label_859:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_860:
	.ascii	"Pself\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_862:
	.byte	'C'
	.ascii	"_temp_854\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_864:
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
_Label_3240:
	push	r0
	sub	r1,1,r1
	bne	_Label_3240
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_866		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_866
!	jmp	_Label_865
_Label_865:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_867 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
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
_Label_866:
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
!   _temp_868 = &waitingThreads
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
!   if t == 0 then goto _Label_870		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_870
!	jmp	_Label_869
_Label_869:
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
!   _temp_871 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_871 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_872 = &_P_Kernel_readyList
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
	jmp	_Label_873
_Label_870:
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
_Label_873:
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
	.word	_Label_874
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_876
	.word	-12
	.word	4
	.word	_Label_877
	.word	-16
	.word	4
	.word	_Label_878
	.word	-20
	.word	4
	.word	_Label_879
	.word	-24
	.word	4
	.word	_Label_880
	.word	-28
	.word	4
	.word	_Label_881
	.word	-32
	.word	4
	.word	0
_Label_874:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_875:
	.ascii	"Pself\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_880:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_881:
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
_Label_3241:
	push	r0
	sub	r1,1,r1
	bne	_Label_3241
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_884		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_884
!	jmp	_Label_883
_Label_883:
!   _temp_882 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_885
_Label_884:
!   _temp_882 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_885:
!   ReturnResult: _temp_882  (sizeInBytes=1)
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
	.word	_Label_886
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_888
	.word	-9
	.word	1
	.word	0
_Label_886:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_887:
	.ascii	"Pself\0"
	.align
_Label_888:
	.byte	'C'
	.ascii	"_temp_882\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_889
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	printHeldBy
	.word	0
! 
! Class descriptor:
! 
_Label_889:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_890
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_890:
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
_Label_3242:
	push	r0
	sub	r1,1,r1
	bne	_Label_3242
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
	.word	_Label_892
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_894
	.word	-12
	.word	4
	.word	0
_Label_892:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_893:
	.ascii	"Pself\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_891\0"
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
_Label_3243:
	push	r0
	sub	r1,1,r1
	bne	_Label_3243
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
!   if heldBy == 0 then goto _Label_898		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_898
!   _temp_897 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_899
_Label_898:
!   _temp_897 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_899:
!   if _temp_897 then goto _Label_896 else goto _Label_895
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_895
	jmp	_Label_896
_Label_895:
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
	jmp	_Label_900
_Label_896:
! ELSE...
	mov	485,r13		! source line 485
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_902		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_902
!	jmp	_Label_901
_Label_901:
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
_Label_902:
! SEND STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   _temp_903 = &waitingThreads
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
_Label_900:
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
	.word	_Label_904
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_906
	.word	12
	.word	4
	.word	_Label_907
	.word	-16
	.word	4
	.word	_Label_908
	.word	-9
	.word	1
	.word	_Label_909
	.word	-20
	.word	4
	.word	0
_Label_904:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_905:
	.ascii	"Pself\0"
	.align
_Label_906:
	.byte	'P'
	.ascii	"transfer\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_908:
	.byte	'C'
	.ascii	"_temp_897\0"
	.align
_Label_909:
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
_Label_3244:
	push	r0
	sub	r1,1,r1
	bne	_Label_3244
	mov	496,r13		! source line 496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_911		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_911
!	jmp	_Label_910
_Label_910:
! THEN...
	mov	501,r13		! source line 501
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_912 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
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
_Label_911:
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
!   _temp_913 = &waitingThreads
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
!   if t == 0 then goto _Label_915		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_915
!	jmp	_Label_914
_Label_914:
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
!   _temp_916 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_916 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0SE",r10
!   _temp_917 = &_P_Kernel_readyList
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
	jmp	_Label_918
_Label_915:
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
_Label_918:
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
	.word	_Label_919
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_920
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_921
	.word	-12
	.word	4
	.word	_Label_922
	.word	-16
	.word	4
	.word	_Label_923
	.word	-20
	.word	4
	.word	_Label_924
	.word	-24
	.word	4
	.word	_Label_925
	.word	-28
	.word	4
	.word	_Label_926
	.word	-32
	.word	4
	.word	0
_Label_919:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_920:
	.ascii	"Pself\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_925:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_926:
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
_Label_3245:
	push	r0
	sub	r1,1,r1
	bne	_Label_3245
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_929		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_929
!	jmp	_Label_928
_Label_928:
!   _temp_927 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_930
_Label_929:
!   _temp_927 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_930:
!   ReturnResult: _temp_927  (sizeInBytes=1)
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
	.word	_Label_931
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_933
	.word	-9
	.word	1
	.word	0
_Label_931:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_932:
	.ascii	"Pself\0"
	.align
_Label_933:
	.byte	'C'
	.ascii	"_temp_927\0"
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
_Label_3246:
	push	r0
	sub	r1,1,r1
	bne	_Label_3246
	mov	521,r13		! source line 521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (heldBy) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = heldBy + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_934 = *_temp_935  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_934  sizeInBytes=4
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
	.word	_Label_936
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_938
	.word	-12
	.word	4
	.word	_Label_939
	.word	-16
	.word	4
	.word	0
_Label_936:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"printHeldBy\0"
	.align
_Label_937:
	.ascii	"Pself\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_940
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_940:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_941
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_941:
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
_Label_3247:
	push	r0
	sub	r1,1,r1
	bne	_Label_3247
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
	.word	_Label_943
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_944
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_945
	.word	-12
	.word	4
	.word	0
_Label_943:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_944:
	.ascii	"Pself\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_942\0"
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
_Label_3248:
	push	r0
	sub	r1,1,r1
	bne	_Label_3248
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
!   Retrieve Result: targetName=_temp_948  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_948 then goto _Label_947 else goto _Label_946
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_946
	jmp	_Label_947
_Label_946:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_949 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
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
_Label_947:
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
!   _temp_950 = &waitingThreads
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
	.word	_Label_951
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_952
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_953
	.word	12
	.word	4
	.word	_Label_954
	.word	-16
	.word	4
	.word	_Label_955
	.word	-20
	.word	4
	.word	_Label_956
	.word	-9
	.word	1
	.word	_Label_957
	.word	-24
	.word	4
	.word	0
_Label_951:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_952:
	.ascii	"Pself\0"
	.align
_Label_953:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_956:
	.byte	'C'
	.ascii	"_temp_948\0"
	.align
_Label_957:
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
_Label_3249:
	push	r0
	sub	r1,1,r1
	bne	_Label_3249
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
!   Retrieve Result: targetName=_temp_960  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_960 then goto _Label_959 else goto _Label_958
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_958
	jmp	_Label_959
_Label_958:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_961 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_961  sizeInBytes=4
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
_Label_959:
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
!   _temp_962 = &waitingThreads
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
!   if t == 0 then goto _Label_964		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_964
!	jmp	_Label_963
_Label_963:
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
!   _temp_965 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_965 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_966 = &_P_Kernel_readyList
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
_Label_964:
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
	.word	_Label_967
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_968
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_969
	.word	12
	.word	4
	.word	_Label_970
	.word	-16
	.word	4
	.word	_Label_971
	.word	-20
	.word	4
	.word	_Label_972
	.word	-24
	.word	4
	.word	_Label_973
	.word	-28
	.word	4
	.word	_Label_974
	.word	-9
	.word	1
	.word	_Label_975
	.word	-32
	.word	4
	.word	_Label_976
	.word	-36
	.word	4
	.word	0
_Label_967:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_968:
	.ascii	"Pself\0"
	.align
_Label_969:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_974:
	.byte	'C'
	.ascii	"_temp_960\0"
	.align
_Label_975:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_976:
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
_Label_3250:
	push	r0
	sub	r1,1,r1
	bne	_Label_3250
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
!   Retrieve Result: targetName=_temp_979  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_979 then goto _Label_978 else goto _Label_977
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_977
	jmp	_Label_978
_Label_977:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_980 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
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
_Label_978:
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
_Label_981:
!	jmp	_Label_982
_Label_982:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_984 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_985
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_985
	jmp	_Label_986
_Label_985:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_983
! END IF...
_Label_986:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_987 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_988 = &_P_Kernel_readyList
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
	jmp	_Label_981
_Label_983:
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
	.word	_Label_989
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_991
	.word	12
	.word	4
	.word	_Label_992
	.word	-16
	.word	4
	.word	_Label_993
	.word	-20
	.word	4
	.word	_Label_994
	.word	-24
	.word	4
	.word	_Label_995
	.word	-28
	.word	4
	.word	_Label_996
	.word	-9
	.word	1
	.word	_Label_997
	.word	-32
	.word	4
	.word	_Label_998
	.word	-36
	.word	4
	.word	0
_Label_989:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_990:
	.ascii	"Pself\0"
	.align
_Label_991:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_996:
	.byte	'C'
	.ascii	"_temp_979\0"
	.align
_Label_997:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_998:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_999
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	HoareTest
	.word	0
! 
! Class descriptor:
! 
_Label_999:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1000
	.word	_sourceFileName
	.word	181		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_1000:
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
_Label_3251:
	push	r0
	sub	r1,1,r1
	bne	_Label_3251
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
	.word	_Label_1002
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1003
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1004
	.word	-12
	.word	4
	.word	0
_Label_1002:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1003:
	.ascii	"Pself\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_1001\0"
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
_Label_3252:
	push	r0
	sub	r1,1,r1
	bne	_Label_3252
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
!   Retrieve Result: targetName=_temp_1007  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1007 then goto _Label_1006 else goto _Label_1005
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1005
	jmp	_Label_1006
_Label_1005:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1008 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
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
_Label_1006:
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
!   _temp_1009 = &waitingThreads
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
	.word	_Label_1010
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1012
	.word	12
	.word	4
	.word	_Label_1013
	.word	-16
	.word	4
	.word	_Label_1014
	.word	-20
	.word	4
	.word	_Label_1015
	.word	-9
	.word	1
	.word	_Label_1016
	.word	-24
	.word	4
	.word	0
_Label_1010:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1011:
	.ascii	"Pself\0"
	.align
_Label_1012:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1015:
	.byte	'C'
	.ascii	"_temp_1007\0"
	.align
_Label_1016:
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
_Label_3253:
	push	r0
	sub	r1,1,r1
	bne	_Label_3253
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
!   Retrieve Result: targetName=_temp_1019  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1019 then goto _Label_1018 else goto _Label_1017
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1017
	jmp	_Label_1018
_Label_1017:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1020 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
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
_Label_1018:
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
!   _temp_1021 = &waitingThreads
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
!   if t == 0 then goto _Label_1023		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1023
!	jmp	_Label_1022
_Label_1022:
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
!   _temp_1024 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1024 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0SE",r10
!   _temp_1025 = &_P_Kernel_readyList
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
_Label_1023:
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
	.word	_Label_1026
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1027
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1028
	.word	12
	.word	4
	.word	_Label_1029
	.word	-16
	.word	4
	.word	_Label_1030
	.word	-20
	.word	4
	.word	_Label_1031
	.word	-24
	.word	4
	.word	_Label_1032
	.word	-28
	.word	4
	.word	_Label_1033
	.word	-9
	.word	1
	.word	_Label_1034
	.word	-32
	.word	4
	.word	_Label_1035
	.word	-36
	.word	4
	.word	0
_Label_1026:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1027:
	.ascii	"Pself\0"
	.align
_Label_1028:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1033:
	.byte	'C'
	.ascii	"_temp_1019\0"
	.align
_Label_1034:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1035:
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
_Label_3254:
	push	r0
	sub	r1,1,r1
	bne	_Label_3254
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
!   if test == _P_Kernel_currentThread then goto _Label_1037		(int)
	load	[r14+12],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1037
!	jmp	_Label_1036
_Label_1036:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1038 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
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
_Label_1037:
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
!   _temp_1042 = &waitingThreads
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
!   Retrieve Result: targetName=_temp_1041  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1043 = _temp_1041 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1043 then goto _Label_1040 else goto _Label_1039
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1039
	jmp	_Label_1040
_Label_1039:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1044 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1045
_Label_1040:
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
	call	_function_233_ThreadPrintShort
! END IF...
_Label_1045:
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
	.word	_Label_1046
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1048
	.word	12
	.word	4
	.word	_Label_1049
	.word	16
	.word	4
	.word	_Label_1050
	.word	-16
	.word	4
	.word	_Label_1051
	.word	-9
	.word	1
	.word	_Label_1052
	.word	-20
	.word	4
	.word	_Label_1053
	.word	-10
	.word	1
	.word	_Label_1054
	.word	-24
	.word	4
	.word	_Label_1055
	.word	-28
	.word	4
	.word	0
_Label_1046:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"HoareTest\0"
	.align
_Label_1047:
	.ascii	"Pself\0"
	.align
_Label_1048:
	.byte	'P'
	.ascii	"test\0"
	.align
_Label_1049:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1051:
	.byte	'C'
	.ascii	"_temp_1043\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1053:
	.byte	'C'
	.ascii	"_temp_1041\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1055:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1056
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
_Label_1056:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1057
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1057:
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
_Label_3255:
	push	r0
	sub	r1,1,r1
	bne	_Label_3255
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
!   _temp_1058 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1058) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1058 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   _temp_1059 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1059 [0 ] into _temp_1060
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
!   Data Move: *_temp_1060 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_1061 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1061 [999 ] into _temp_1062
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
!   Data Move: *_temp_1062 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_1063 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1063 [999 ] into _temp_1064
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
!   stackTop = _temp_1064		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_1065 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1067 = &_temp_1066
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1067 = _temp_1067 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1069:
!   Data Move: *_temp_1067 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1067 = _temp_1067 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1068 = _temp_1068 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1068) then goto _Label_1069
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1069
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1070 = &_temp_1066
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3256
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3256:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1065 = *_temp_1070  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3257:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3257
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
!   _temp_1071 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1073 = &_temp_1072
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1073 = _temp_1073 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1075:
!   Data Move: *_temp_1073 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1073 = _temp_1073 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1074 = _temp_1074 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1074) then goto _Label_1075
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1075
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1076 = &_temp_1072
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3258
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3258:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1071 = *_temp_1076  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3259:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3259
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
	.word	_Label_1077
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1079
	.word	12
	.word	4
	.word	_Label_1080
	.word	-12
	.word	4
	.word	_Label_1081
	.word	-16
	.word	4
	.word	_Label_1082
	.word	-20
	.word	4
	.word	_Label_1083
	.word	-84
	.word	64
	.word	_Label_1084
	.word	-88
	.word	4
	.word	_Label_1085
	.word	-92
	.word	4
	.word	_Label_1086
	.word	-96
	.word	4
	.word	_Label_1087
	.word	-100
	.word	4
	.word	_Label_1088
	.word	-156
	.word	56
	.word	_Label_1089
	.word	-160
	.word	4
	.word	_Label_1090
	.word	-164
	.word	4
	.word	_Label_1091
	.word	-168
	.word	4
	.word	_Label_1092
	.word	-172
	.word	4
	.word	_Label_1093
	.word	-176
	.word	4
	.word	_Label_1094
	.word	-180
	.word	4
	.word	_Label_1095
	.word	-184
	.word	4
	.word	_Label_1096
	.word	-188
	.word	4
	.word	0
_Label_1077:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1078:
	.ascii	"Pself\0"
	.align
_Label_1079:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1058\0"
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
_Label_3260:
	push	r0
	sub	r1,1,r1
	bne	_Label_3260
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
!   _temp_1097 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1097  (sizeInBytes=4)
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
!   _temp_1099 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1098  sizeInBytes=4
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
	.word	_Label_1100
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1101
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1102
	.word	12
	.word	4
	.word	_Label_1103
	.word	16
	.word	4
	.word	_Label_1104
	.word	-12
	.word	4
	.word	_Label_1105
	.word	-16
	.word	4
	.word	_Label_1106
	.word	-20
	.word	4
	.word	_Label_1107
	.word	-24
	.word	4
	.word	_Label_1108
	.word	-28
	.word	4
	.word	0
_Label_1100:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1101:
	.ascii	"Pself\0"
	.align
_Label_1102:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1103:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1107:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1108:
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
_Label_3261:
	push	r0
	sub	r1,1,r1
	bne	_Label_3261
	mov	673,r13		! source line 673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1111 == _P_Kernel_currentThread then goto _Label_1110		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1110
!	jmp	_Label_1109
_Label_1109:
! THEN...
	mov	690,r13		! source line 690
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1112 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1112  sizeInBytes=4
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
_Label_1110:
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
!   _temp_1113 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1115		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1115
!	jmp	_Label_1114
_Label_1114:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1117		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1117
!	jmp	_Label_1116
_Label_1116:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1118 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
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
_Label_1117:
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
!   _temp_1120 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1119  sizeInBytes=4
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
_Label_1115:
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
	.word	_Label_1121
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1123
	.word	-12
	.word	4
	.word	_Label_1124
	.word	-16
	.word	4
	.word	_Label_1125
	.word	-20
	.word	4
	.word	_Label_1126
	.word	-24
	.word	4
	.word	_Label_1127
	.word	-28
	.word	4
	.word	_Label_1128
	.word	-32
	.word	4
	.word	_Label_1129
	.word	-36
	.word	4
	.word	_Label_1130
	.word	-40
	.word	4
	.word	_Label_1131
	.word	-44
	.word	4
	.word	0
_Label_1121:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1122:
	.ascii	"Pself\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1129:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1130:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1131:
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
_Label_3262:
	push	r0
	sub	r1,1,r1
	bne	_Label_3262
	mov	713,r13		! source line 713
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1133		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1133
!	jmp	_Label_1132
_Label_1132:
! THEN...
	mov	726,r13		! source line 726
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1134 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
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
_Label_1133:
! IF STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1137 == _P_Kernel_currentThread then goto _Label_1136		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1136
!	jmp	_Label_1135
_Label_1135:
! THEN...
	mov	730,r13		! source line 730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1138 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
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
_Label_1136:
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
!   _temp_1139 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1140
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1140
	jmp	_Label_1141
_Label_1140:
! THEN...
	mov	738,r13		! source line 738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1142 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
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
_Label_1141:
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
	.word	_Label_1143
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1144
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1145
	.word	-12
	.word	4
	.word	_Label_1146
	.word	-16
	.word	4
	.word	_Label_1147
	.word	-20
	.word	4
	.word	_Label_1148
	.word	-24
	.word	4
	.word	_Label_1149
	.word	-28
	.word	4
	.word	_Label_1150
	.word	-32
	.word	4
	.word	0
_Label_1143:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1144:
	.ascii	"Pself\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1150:
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
_Label_3263:
	push	r0
	sub	r1,1,r1
	bne	_Label_3263
	mov	745,r13		! source line 745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0IF",r10
!   _temp_1154 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1154 [0 ] into _temp_1155
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
!   Data Move: _temp_1153 = *_temp_1155  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1153 == 606348324 then goto _Label_1152		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1152
!	jmp	_Label_1151
_Label_1151:
! THEN...
	mov	752,r13		! source line 752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1156 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1156  sizeInBytes=4
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
	jmp	_Label_1157
_Label_1152:
! ELSE...
	mov	753,r13		! source line 753
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0IF",r10
!   _temp_1161 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1161 [999 ] into _temp_1162
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
!   Data Move: _temp_1160 = *_temp_1162  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1160 == 606348324 then goto _Label_1159		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1159
!	jmp	_Label_1158
_Label_1158:
! THEN...
	mov	754,r13		! source line 754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1163 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
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
_Label_1159:
! END IF...
_Label_1157:
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
	.word	_Label_1164
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1166
	.word	-12
	.word	4
	.word	_Label_1167
	.word	-16
	.word	4
	.word	_Label_1168
	.word	-20
	.word	4
	.word	_Label_1169
	.word	-24
	.word	4
	.word	_Label_1170
	.word	-28
	.word	4
	.word	_Label_1171
	.word	-32
	.word	4
	.word	_Label_1172
	.word	-36
	.word	4
	.word	_Label_1173
	.word	-40
	.word	4
	.word	0
_Label_1164:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1165:
	.ascii	"Pself\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1153\0"
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
_Label_3264:
	push	r0
	sub	r1,1,r1
	bne	_Label_3264
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
!   _temp_1174 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1174  sizeInBytes=4
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
!   _temp_1175 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1175  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1177 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1178 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
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
!   _temp_1183 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1184 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1183  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1179:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1184 then goto _Label_1182		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1182
_Label_1180:
	mov	773,r13		! source line 773
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1185 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1186 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1187 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1187  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1189 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1189 [i ] into _temp_1190
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
!   Data Move: _temp_1188 = *_temp_1190  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1188  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1191 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1191  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1193 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1193 [i ] into _temp_1194
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
!   Data Move: _temp_1192 = *_temp_1194  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1195 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1181:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1179
! END FOR
_Label_1182:
! CALL STATEMENT...
!   _temp_1196 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-116]
!   _temp_1197 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1197  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1198 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-108]
!   _temp_1200 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1200 [0 ] into _temp_1201
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
!   _temp_1199 = _temp_1201		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1199  sizeInBytes=4
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
	be	_Label_1204
	cmp	r1,2
	be	_Label_1205
	cmp	r1,3
	be	_Label_1206
	cmp	r1,4
	be	_Label_1207
	cmp	r1,5
	be	_Label_1208
	jmp	_Label_1202
! CASE 1...
_Label_1204:
! CALL STATEMENT...
!   _temp_1209 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1209  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0BR",r10
	jmp	_Label_1203
! CASE 2...
_Label_1205:
! CALL STATEMENT...
!   _temp_1210 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1210  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0BR",r10
	jmp	_Label_1203
! CASE 3...
_Label_1206:
! CALL STATEMENT...
!   _temp_1211 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0BR",r10
	jmp	_Label_1203
! CASE 4...
_Label_1207:
! CALL STATEMENT...
!   _temp_1212 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0BR",r10
	jmp	_Label_1203
! CASE 5...
_Label_1208:
! CALL STATEMENT...
!   _temp_1213 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0BR",r10
	jmp	_Label_1203
! DEFAULT CASE...
_Label_1202:
! CALL STATEMENT...
!   _temp_1214 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
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
_Label_1203:
! CALL STATEMENT...
!   _temp_1215 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
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
!   _temp_1216 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
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
!   _temp_1221 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1222 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1221  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1217:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1222 then goto _Label_1220		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1220
_Label_1218:
	mov	807,r13		! source line 807
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1223 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1224 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1225 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1227 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1227 [i ] into _temp_1228
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
!   Data Move: _temp_1226 = *_temp_1228  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1229 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1229  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1231 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1231 [i ] into _temp_1232
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
!   Data Move: _temp_1230 = *_temp_1232  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1233 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1219:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1217
! END FOR
_Label_1220:
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
	.word	_Label_1234
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1235
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1236
	.word	-12
	.word	4
	.word	_Label_1237
	.word	-16
	.word	4
	.word	_Label_1238
	.word	-20
	.word	4
	.word	_Label_1239
	.word	-24
	.word	4
	.word	_Label_1240
	.word	-28
	.word	4
	.word	_Label_1241
	.word	-32
	.word	4
	.word	_Label_1242
	.word	-36
	.word	4
	.word	_Label_1243
	.word	-40
	.word	4
	.word	_Label_1244
	.word	-44
	.word	4
	.word	_Label_1245
	.word	-48
	.word	4
	.word	_Label_1246
	.word	-52
	.word	4
	.word	_Label_1247
	.word	-56
	.word	4
	.word	_Label_1248
	.word	-60
	.word	4
	.word	_Label_1249
	.word	-64
	.word	4
	.word	_Label_1250
	.word	-68
	.word	4
	.word	_Label_1251
	.word	-72
	.word	4
	.word	_Label_1252
	.word	-76
	.word	4
	.word	_Label_1253
	.word	-80
	.word	4
	.word	_Label_1254
	.word	-84
	.word	4
	.word	_Label_1255
	.word	-88
	.word	4
	.word	_Label_1256
	.word	-92
	.word	4
	.word	_Label_1257
	.word	-96
	.word	4
	.word	_Label_1258
	.word	-100
	.word	4
	.word	_Label_1259
	.word	-104
	.word	4
	.word	_Label_1260
	.word	-108
	.word	4
	.word	_Label_1261
	.word	-112
	.word	4
	.word	_Label_1262
	.word	-116
	.word	4
	.word	_Label_1263
	.word	-120
	.word	4
	.word	_Label_1264
	.word	-124
	.word	4
	.word	_Label_1265
	.word	-128
	.word	4
	.word	_Label_1266
	.word	-132
	.word	4
	.word	_Label_1267
	.word	-136
	.word	4
	.word	_Label_1268
	.word	-140
	.word	4
	.word	_Label_1269
	.word	-144
	.word	4
	.word	_Label_1270
	.word	-148
	.word	4
	.word	_Label_1271
	.word	-152
	.word	4
	.word	_Label_1272
	.word	-156
	.word	4
	.word	_Label_1273
	.word	-160
	.word	4
	.word	_Label_1274
	.word	-164
	.word	4
	.word	_Label_1275
	.word	-168
	.word	4
	.word	_Label_1276
	.word	-172
	.word	4
	.word	_Label_1277
	.word	-176
	.word	4
	.word	_Label_1278
	.word	-180
	.word	4
	.word	_Label_1279
	.word	-184
	.word	4
	.word	_Label_1280
	.word	-188
	.word	4
	.word	_Label_1281
	.word	-192
	.word	4
	.word	_Label_1282
	.word	-196
	.word	4
	.word	0
_Label_1234:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1235:
	.ascii	"Pself\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1281:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1282:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1283
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1283:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1284
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1284:
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
_Label_3265:
	push	r0
	sub	r1,1,r1
	bne	_Label_3265
	mov	875,r13		! source line 875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1285 = _StringConst_115
	set	_StringConst_115,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1285  sizeInBytes=4
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
!   _temp_1287 = &threadManLock
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
!   _temp_1289 = &threadBecameFree
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
!   _temp_1290 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1292 = &_temp_1291
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_1292 = _temp_1292 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1294 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_3266:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3266
!   _temp_1294 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_1296:
!   Data Move: *_temp_1292 = _temp_1294  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_3267:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3267
!   _temp_1292 = _temp_1292 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_1293 = _temp_1293 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_1293) then goto _Label_1296
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_1296
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_1297 = &_temp_1291
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3268
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3268:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1290 = *_temp_1297  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3269:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3269
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1298 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-168]
!   _temp_1299 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_1299 [0 ] into _temp_1300
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
!   Prepare Argument: offset=12  value=_temp_1298  sizeInBytes=4
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
!   _temp_1301 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-156]
!   _temp_1302 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_1302 [1 ] into _temp_1303
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
!   Prepare Argument: offset=12  value=_temp_1301  sizeInBytes=4
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
!   _temp_1304 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-144]
!   _temp_1305 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_1305 [2 ] into _temp_1306
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
!   Prepare Argument: offset=12  value=_temp_1304  sizeInBytes=4
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
!   _temp_1307 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-132]
!   _temp_1308 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_1308 [3 ] into _temp_1309
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
!   Prepare Argument: offset=12  value=_temp_1307  sizeInBytes=4
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
!   _temp_1310 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-120]
!   _temp_1311 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_1311 [4 ] into _temp_1312
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
!   Prepare Argument: offset=12  value=_temp_1310  sizeInBytes=4
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
!   _temp_1313 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-108]
!   _temp_1314 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_1314 [5 ] into _temp_1315
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
!   Prepare Argument: offset=12  value=_temp_1313  sizeInBytes=4
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
!   _temp_1316 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-96]
!   _temp_1317 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_1317 [6 ] into _temp_1318
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
!   Prepare Argument: offset=12  value=_temp_1316  sizeInBytes=4
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
!   _temp_1319 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-84]
!   _temp_1320 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_1320 [7 ] into _temp_1321
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
!   Prepare Argument: offset=12  value=_temp_1319  sizeInBytes=4
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
!   _temp_1322 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-72]
!   _temp_1323 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_1323 [8 ] into _temp_1324
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
!   Prepare Argument: offset=12  value=_temp_1322  sizeInBytes=4
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
!   _temp_1325 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-60]
!   _temp_1326 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_1326 [9 ] into _temp_1327
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
!   Prepare Argument: offset=12  value=_temp_1325  sizeInBytes=4
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
!   _temp_1333 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1334 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1333  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1329:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1334 then goto _Label_1332		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1332
_Label_1330:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_1335 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_1335 [i ] into _temp_1336
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
!   _temp_1337 = _temp_1336 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1337 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1339 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_1339 [i ] into _temp_1340
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
!   _temp_1338 = _temp_1340		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1341 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1338  sizeInBytes=4
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
_Label_1331:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1329
! END FOR
_Label_1332:
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
	.word	_Label_1342
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_1343
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1344
	.word	-12
	.word	4
	.word	_Label_1345
	.word	-16
	.word	4
	.word	_Label_1346
	.word	-20
	.word	4
	.word	_Label_1347
	.word	-24
	.word	4
	.word	_Label_1348
	.word	-28
	.word	4
	.word	_Label_1349
	.word	-32
	.word	4
	.word	_Label_1350
	.word	-36
	.word	4
	.word	_Label_1351
	.word	-40
	.word	4
	.word	_Label_1352
	.word	-44
	.word	4
	.word	_Label_1353
	.word	-48
	.word	4
	.word	_Label_1354
	.word	-52
	.word	4
	.word	_Label_1355
	.word	-56
	.word	4
	.word	_Label_1356
	.word	-60
	.word	4
	.word	_Label_1357
	.word	-64
	.word	4
	.word	_Label_1358
	.word	-68
	.word	4
	.word	_Label_1359
	.word	-72
	.word	4
	.word	_Label_1360
	.word	-76
	.word	4
	.word	_Label_1361
	.word	-80
	.word	4
	.word	_Label_1362
	.word	-84
	.word	4
	.word	_Label_1363
	.word	-88
	.word	4
	.word	_Label_1364
	.word	-92
	.word	4
	.word	_Label_1365
	.word	-96
	.word	4
	.word	_Label_1366
	.word	-100
	.word	4
	.word	_Label_1367
	.word	-104
	.word	4
	.word	_Label_1368
	.word	-108
	.word	4
	.word	_Label_1369
	.word	-112
	.word	4
	.word	_Label_1370
	.word	-116
	.word	4
	.word	_Label_1371
	.word	-120
	.word	4
	.word	_Label_1372
	.word	-124
	.word	4
	.word	_Label_1373
	.word	-128
	.word	4
	.word	_Label_1374
	.word	-132
	.word	4
	.word	_Label_1375
	.word	-136
	.word	4
	.word	_Label_1376
	.word	-140
	.word	4
	.word	_Label_1377
	.word	-144
	.word	4
	.word	_Label_1378
	.word	-148
	.word	4
	.word	_Label_1379
	.word	-152
	.word	4
	.word	_Label_1380
	.word	-156
	.word	4
	.word	_Label_1381
	.word	-160
	.word	4
	.word	_Label_1382
	.word	-164
	.word	4
	.word	_Label_1383
	.word	-168
	.word	4
	.word	_Label_1384
	.word	-172
	.word	4
	.word	_Label_1385
	.word	-176
	.word	4
	.word	_Label_1386
	.word	-4340
	.word	4164
	.word	_Label_1387
	.word	-4344
	.word	4
	.word	_Label_1388
	.word	-4348
	.word	4
	.word	_Label_1389
	.word	-45992
	.word	41644
	.word	_Label_1390
	.word	-45996
	.word	4
	.word	_Label_1391
	.word	-46000
	.word	4
	.word	_Label_1392
	.word	-46004
	.word	4
	.word	_Label_1393
	.word	-46008
	.word	4
	.word	_Label_1394
	.word	-46012
	.word	4
	.word	_Label_1395
	.word	-46016
	.word	4
	.word	_Label_1396
	.word	-46020
	.word	4
	.word	_Label_1397
	.word	-46024
	.word	4
	.word	0
_Label_1342:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1343:
	.ascii	"Pself\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1396:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1397:
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
_Label_3270:
	push	r0
	sub	r1,1,r1
	bne	_Label_3270
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
!   _temp_1398 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1398  sizeInBytes=4
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
!   _temp_1403 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1404 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1403  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1399:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1404 then goto _Label_1402		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1402
_Label_1400:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1405 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1405  sizeInBytes=4
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
!   _temp_1406 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1406  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1408 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_1408 [i ] into _temp_1409
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
!   _temp_1407 = _temp_1409		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1407  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_function_233_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1401:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1399
! END FOR
_Label_1402:
! CALL STATEMENT...
!   _temp_1410 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1410  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1411 = _function_232_PrintObjectAddr
	set	_function_232_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1412 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1411  sizeInBytes=4
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
	.word	_Label_1413
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1414
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1415
	.word	-12
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
	.word	-40
	.word	4
	.word	_Label_1423
	.word	-44
	.word	4
	.word	_Label_1424
	.word	-48
	.word	4
	.word	_Label_1425
	.word	-52
	.word	4
	.word	_Label_1426
	.word	-56
	.word	4
	.word	_Label_1427
	.word	-60
	.word	4
	.word	0
_Label_1413:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1414:
	.ascii	"Pself\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1426:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1427:
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
_Label_3271:
	push	r0
	sub	r1,1,r1
	bne	_Label_3271
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
!   _temp_1428 = &threadManLock
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
!   _temp_1432 = &freeList
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
!   Retrieve Result: targetName=_temp_1431  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1433 = _temp_1431 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1433 then goto _Label_1430 else goto _Label_1429
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1429
	jmp	_Label_1430
_Label_1429:
! THEN...
	mov	951,r13		! source line 951
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1434 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1435 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1434  sizeInBytes=4
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
_Label_1430:
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1436 = &freeList
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
!   _temp_1437 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1437 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1438 = &threadManLock
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
	.word	_Label_1439
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1440
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1441
	.word	-16
	.word	4
	.word	_Label_1442
	.word	-20
	.word	4
	.word	_Label_1443
	.word	-24
	.word	4
	.word	_Label_1444
	.word	-28
	.word	4
	.word	_Label_1445
	.word	-32
	.word	4
	.word	_Label_1446
	.word	-9
	.word	1
	.word	_Label_1447
	.word	-36
	.word	4
	.word	_Label_1448
	.word	-10
	.word	1
	.word	_Label_1449
	.word	-40
	.word	4
	.word	_Label_1450
	.word	-44
	.word	4
	.word	0
_Label_1439:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1440:
	.ascii	"Pself\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1446:
	.byte	'C'
	.ascii	"_temp_1433\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1448:
	.byte	'C'
	.ascii	"_temp_1431\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1450:
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
_Label_3272:
	push	r0
	sub	r1,1,r1
	bne	_Label_3272
	mov	965,r13		! source line 965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1451 = &threadManLock
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
!   _temp_1452 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1452 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1453 = &freeList
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
!   _temp_1454 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1455 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1454  sizeInBytes=4
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
!   _temp_1456 = &threadManLock
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
	.word	_Label_1457
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1459
	.word	12
	.word	4
	.word	_Label_1460
	.word	-12
	.word	4
	.word	_Label_1461
	.word	-16
	.word	4
	.word	_Label_1462
	.word	-20
	.word	4
	.word	_Label_1463
	.word	-24
	.word	4
	.word	_Label_1464
	.word	-28
	.word	4
	.word	_Label_1465
	.word	-32
	.word	4
	.word	0
_Label_1457:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1458:
	.ascii	"Pself\0"
	.align
_Label_1459:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1466
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1466:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1467
	.word	_sourceFileName
	.word	242		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1467:
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
_Label_3273:
	push	r0
	sub	r1,1,r1
	bne	_Label_3273
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
_Label_3274:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3274
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0SE",r10
!   _temp_1469 = &addrSpace
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
	.word	_Label_1470
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1471
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1472
	.word	-12
	.word	4
	.word	_Label_1473
	.word	-16
	.word	4
	.word	0
_Label_1470:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1471:
	.ascii	"Pself\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1468\0"
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
_Label_3275:
	push	r0
	sub	r1,1,r1
	bne	_Label_3275
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1474) then goto _runtimeErrorNullPointer
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
!   _temp_1475 = &addrSpace
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
!   _temp_1476 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1476  sizeInBytes=4
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
	call	_function_233_ThreadPrintShort
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
	.word	_Label_1477
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1478
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1479
	.word	-12
	.word	4
	.word	_Label_1480
	.word	-16
	.word	4
	.word	_Label_1481
	.word	-20
	.word	4
	.word	0
_Label_1477:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1478:
	.ascii	"Pself\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1474\0"
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
_Label_3276:
	push	r0
	sub	r1,1,r1
	bne	_Label_3276
	mov	1029,r13		! source line 1029
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1482 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1482  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1484 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1484  sizeInBytes=4
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
!   _temp_1485 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1487		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1487
!	jmp	_Label_1486
_Label_1486:
! THEN...
	mov	1039,r13		! source line 1039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1488 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1489
_Label_1487:
! ELSE...
	mov	1040,r13		! source line 1040
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1491		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1491
!	jmp	_Label_1490
_Label_1490:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1492 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1493
_Label_1491:
! ELSE...
	mov	1042,r13		! source line 1042
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1495		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1495
!	jmp	_Label_1494
_Label_1494:
! THEN...
	mov	1043,r13		! source line 1043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1496 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1497
_Label_1495:
! ELSE...
	mov	1045,r13		! source line 1045
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1498 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
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
_Label_1497:
! END IF...
_Label_1493:
! END IF...
_Label_1489:
! CALL STATEMENT...
!   _temp_1499 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
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
!   _temp_1500 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
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
	.word	_Label_1501
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1503
	.word	-12
	.word	4
	.word	_Label_1504
	.word	-16
	.word	4
	.word	_Label_1505
	.word	-20
	.word	4
	.word	_Label_1506
	.word	-24
	.word	4
	.word	_Label_1507
	.word	-28
	.word	4
	.word	_Label_1508
	.word	-32
	.word	4
	.word	_Label_1509
	.word	-36
	.word	4
	.word	_Label_1510
	.word	-40
	.word	4
	.word	_Label_1511
	.word	-44
	.word	4
	.word	_Label_1512
	.word	-48
	.word	4
	.word	0
_Label_1501:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1502:
	.ascii	"Pself\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1513
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1513:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1514
	.word	_sourceFileName
	.word	262		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1514:
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
_Label_3277:
	push	r0
	sub	r1,1,r1
	bne	_Label_3277
	mov	1067,r13		! source line 1067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   _temp_1515 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1517 = &_temp_1516
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1517 = _temp_1517 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1519 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3278:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3278
!   _temp_1519 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1521:
!   Data Move: *_temp_1517 = _temp_1519  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3279:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3279
!   _temp_1517 = _temp_1517 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1518 = _temp_1518 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1518) then goto _Label_1521
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1521
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1522 = &_temp_1516
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3280
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3280:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1515 = *_temp_1522  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3281:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3281
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
!   _temp_1524 = &processManagerLock
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
!   _temp_1526 = &aProcessBecameFree
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
!   _temp_1529 = &aProcessDied
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
!   _temp_1534 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1535 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1534  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1530:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1535 then goto _Label_1533		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1533
_Label_1531:
	mov	1087,r13		! source line 1087
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1536 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1536 [i ] into _temp_1537
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
!   _temp_1539 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1539 [i ] into _temp_1540
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
!   _temp_1538 = _temp_1540		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1541 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1538  sizeInBytes=4
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
_Label_1532:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1530
! END FOR
_Label_1533:
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   _temp_1542 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1542 [0 ] into _temp_1543
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
!   _temp_1544 = _temp_1543 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1544  (sizeInBytes=4)
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
	.word	_Label_1545
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1546
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1547
	.word	-12
	.word	4
	.word	_Label_1548
	.word	-16
	.word	4
	.word	_Label_1549
	.word	-20
	.word	4
	.word	_Label_1550
	.word	-24
	.word	4
	.word	_Label_1551
	.word	-28
	.word	4
	.word	_Label_1552
	.word	-32
	.word	4
	.word	_Label_1553
	.word	-36
	.word	4
	.word	_Label_1554
	.word	-40
	.word	4
	.word	_Label_1555
	.word	-44
	.word	4
	.word	_Label_1556
	.word	-48
	.word	4
	.word	_Label_1557
	.word	-52
	.word	4
	.word	_Label_1558
	.word	-56
	.word	4
	.word	_Label_1559
	.word	-60
	.word	4
	.word	_Label_1560
	.word	-64
	.word	4
	.word	_Label_1561
	.word	-68
	.word	4
	.word	_Label_1562
	.word	-72
	.word	4
	.word	_Label_1563
	.word	-76
	.word	4
	.word	_Label_1564
	.word	-80
	.word	4
	.word	_Label_1565
	.word	-84
	.word	4
	.word	_Label_1566
	.word	-88
	.word	4
	.word	_Label_1567
	.word	-212
	.word	124
	.word	_Label_1568
	.word	-216
	.word	4
	.word	_Label_1569
	.word	-220
	.word	4
	.word	_Label_1570
	.word	-1464
	.word	1244
	.word	_Label_1571
	.word	-1468
	.word	4
	.word	_Label_1572
	.word	-1472
	.word	4
	.word	0
_Label_1545:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1546:
	.ascii	"Pself\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1572:
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
_Label_3282:
	push	r0
	sub	r1,1,r1
	bne	_Label_3282
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
!   _temp_1573 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1573  sizeInBytes=4
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
!   _temp_1578 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1579 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1578  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1574:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1579 then goto _Label_1577		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1577
_Label_1575:
	mov	1105,r13		! source line 1105
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1580 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1580  sizeInBytes=4
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
!   _temp_1581 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1581  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1582 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1582 [i ] into _temp_1583
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
_Label_1576:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1574
! END FOR
_Label_1577:
! CALL STATEMENT...
!   _temp_1584 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1585 = _function_232_PrintObjectAddr
	set	_function_232_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1586 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1585  sizeInBytes=4
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
	.word	_Label_1587
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1589
	.word	-12
	.word	4
	.word	_Label_1590
	.word	-16
	.word	4
	.word	_Label_1591
	.word	-20
	.word	4
	.word	_Label_1592
	.word	-24
	.word	4
	.word	_Label_1593
	.word	-28
	.word	4
	.word	_Label_1594
	.word	-32
	.word	4
	.word	_Label_1595
	.word	-36
	.word	4
	.word	_Label_1596
	.word	-40
	.word	4
	.word	_Label_1597
	.word	-44
	.word	4
	.word	_Label_1598
	.word	-48
	.word	4
	.word	_Label_1599
	.word	-52
	.word	4
	.word	_Label_1600
	.word	-56
	.word	4
	.word	0
_Label_1587:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1588:
	.ascii	"Pself\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1599:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1600:
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
_Label_3283:
	push	r0
	sub	r1,1,r1
	bne	_Label_3283
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
!   _temp_1601 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
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
!   _temp_1606 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1607 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1606  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1602:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1607 then goto _Label_1605		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1605
_Label_1603:
	mov	1128,r13		! source line 1128
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1608 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1608  sizeInBytes=4
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
!   _temp_1609 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1609 [i ] into _temp_1610
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
_Label_1604:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1602
! END FOR
_Label_1605:
! CALL STATEMENT...
!   _temp_1611 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1611  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1612 = _function_232_PrintObjectAddr
	set	_function_232_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1613 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1612  sizeInBytes=4
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
	.word	_Label_1614
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1616
	.word	-12
	.word	4
	.word	_Label_1617
	.word	-16
	.word	4
	.word	_Label_1618
	.word	-20
	.word	4
	.word	_Label_1619
	.word	-24
	.word	4
	.word	_Label_1620
	.word	-28
	.word	4
	.word	_Label_1621
	.word	-32
	.word	4
	.word	_Label_1622
	.word	-36
	.word	4
	.word	_Label_1623
	.word	-40
	.word	4
	.word	_Label_1624
	.word	-44
	.word	4
	.word	_Label_1625
	.word	-48
	.word	4
	.word	_Label_1626
	.word	-52
	.word	4
	.word	0
_Label_1614:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1615:
	.ascii	"Pself\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1626:
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
_Label_3284:
	push	r0
	sub	r1,1,r1
	bne	_Label_3284
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
!   _temp_1627 = &processManagerLock
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
_Label_1628:
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1632 = &freeList
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
!   Retrieve Result: targetName=_temp_1631  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1633 = _temp_1631 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1633 then goto _Label_1630 else goto _Label_1629
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1629
	jmp	_Label_1630
_Label_1629:
	mov	1151,r13		! source line 1151
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1634 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1635 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1634  sizeInBytes=4
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
	jmp	_Label_1628
_Label_1630:
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1636 = &freeList
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
!   _temp_1637 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1637 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0IF",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1641 = &freeList
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
!   Retrieve Result: targetName=_temp_1640  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1642 = _temp_1640 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1642 then goto _Label_1639 else goto _Label_1638
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1638
	jmp	_Label_1639
_Label_1638:
! THEN...
	mov	1159,r13		! source line 1159
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_1643 = &freeList
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
!   _temp_1644 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1644  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1645 = &freeList
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
	jmp	_Label_1646
_Label_1639:
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
_Label_1646:
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1647 = &processManagerLock
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
	.word	_Label_1648
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1650
	.word	-16
	.word	4
	.word	_Label_1651
	.word	-20
	.word	4
	.word	_Label_1652
	.word	-24
	.word	4
	.word	_Label_1653
	.word	-28
	.word	4
	.word	_Label_1654
	.word	-9
	.word	1
	.word	_Label_1655
	.word	-32
	.word	4
	.word	_Label_1656
	.word	-10
	.word	1
	.word	_Label_1657
	.word	-36
	.word	4
	.word	_Label_1658
	.word	-40
	.word	4
	.word	_Label_1659
	.word	-44
	.word	4
	.word	_Label_1660
	.word	-48
	.word	4
	.word	_Label_1661
	.word	-11
	.word	1
	.word	_Label_1662
	.word	-52
	.word	4
	.word	_Label_1663
	.word	-12
	.word	1
	.word	_Label_1664
	.word	-56
	.word	4
	.word	_Label_1665
	.word	-60
	.word	4
	.word	_Label_1666
	.word	-64
	.word	4
	.word	0
_Label_1648:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1649:
	.ascii	"Pself\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1654:
	.byte	'C'
	.ascii	"_temp_1642\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1656:
	.byte	'C'
	.ascii	"_temp_1640\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1661:
	.byte	'C'
	.ascii	"_temp_1633\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1663:
	.byte	'C'
	.ascii	"_temp_1631\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1665:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1666:
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
_Label_3285:
	push	r0
	sub	r1,1,r1
	bne	_Label_3285
	mov	1171,r13		! source line 1171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1667 = &processManagerLock
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
!   _temp_1671 = &freeList
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
!   Retrieve Result: targetName=_temp_1670  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1672 = _temp_1670 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1672 then goto _Label_1669 else goto _Label_1668
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1668
	jmp	_Label_1669
_Label_1668:
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
!   _temp_1673 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1673  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1669:
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1674 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1674 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1675 = &freeList
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
!   _temp_1676 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1677 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1676  sizeInBytes=4
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
!   _temp_1678 = &processManagerLock
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
	.word	_Label_1679
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	12
	.word	4
	.word	_Label_1682
	.word	-16
	.word	4
	.word	_Label_1683
	.word	-20
	.word	4
	.word	_Label_1684
	.word	-24
	.word	4
	.word	_Label_1685
	.word	-28
	.word	4
	.word	_Label_1686
	.word	-32
	.word	4
	.word	_Label_1687
	.word	-36
	.word	4
	.word	_Label_1688
	.word	-9
	.word	1
	.word	_Label_1689
	.word	-40
	.word	4
	.word	_Label_1690
	.word	-10
	.word	1
	.word	_Label_1691
	.word	-44
	.word	4
	.word	0
_Label_1679:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1688:
	.byte	'C'
	.ascii	"_temp_1672\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1690:
	.byte	'C'
	.ascii	"_temp_1670\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1692
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1692:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1693
	.word	_sourceFileName
	.word	285		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1693:
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
_Label_3286:
	push	r0
	sub	r1,1,r1
	bne	_Label_3286
	mov	1295,r13		! source line 1295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1694 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1302,r13		! source line 1302
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
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_1696 = &framesInUse
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
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1305,r13		! source line 1305
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
	mov	1306,r13		! source line 1306
	mov	"\0\0SE",r10
!   _temp_1698 = &frameManagerLock
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
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   waiting = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! ASSIGNMENT STATEMENT...
	mov	1308,r13		! source line 1308
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
	mov	1309,r13		! source line 1309
	mov	"\0\0SE",r10
!   _temp_1700 = &restOfLine
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
	mov	1310,r13		! source line 1310
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
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_1702 = &newFramesAvailable
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
	mov	1317,r13		! source line 1317
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1707 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1708 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1707  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1703:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1708 then goto _Label_1706		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1706
_Label_1704:
	mov	1317,r13		! source line 1317
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1711 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1711) then goto _Label_1710
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1710
!	jmp	_Label_1709
_Label_1709:
! THEN...
	mov	1321,r13		! source line 1321
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1712 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1712  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1321,r13		! source line 1321
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1710:
!   Increment the FOR-LOOP index variable and jump back
_Label_1705:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1703
! END FOR
_Label_1706:
! RETURN STATEMENT...
	mov	1317,r13		! source line 1317
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
	.word	_Label_1713
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1714
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1715
	.word	-12
	.word	4
	.word	_Label_1716
	.word	-16
	.word	4
	.word	_Label_1717
	.word	-20
	.word	4
	.word	_Label_1718
	.word	-24
	.word	4
	.word	_Label_1719
	.word	-28
	.word	4
	.word	_Label_1720
	.word	-32
	.word	4
	.word	_Label_1721
	.word	-36
	.word	4
	.word	_Label_1722
	.word	-40
	.word	4
	.word	_Label_1723
	.word	-44
	.word	4
	.word	_Label_1724
	.word	-48
	.word	4
	.word	_Label_1725
	.word	-52
	.word	4
	.word	_Label_1726
	.word	-56
	.word	4
	.word	_Label_1727
	.word	-60
	.word	4
	.word	_Label_1728
	.word	-64
	.word	4
	.word	0
_Label_1713:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1714:
	.ascii	"Pself\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1728:
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
_Label_3287:
	push	r0
	sub	r1,1,r1
	bne	_Label_3287
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0SE",r10
!   _temp_1729 = &frameManagerLock
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
!   _temp_1730 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1730  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1333,r13		! source line 1333
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1731 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1334,r13		! source line 1334
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1732 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1732  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1335,r13		! source line 1335
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0SE",r10
!   _temp_1733 = &framesInUse
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
	mov	1337,r13		! source line 1337
	mov	"\0\0SE",r10
!   _temp_1734 = &frameManagerLock
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
	mov	1337,r13		! source line 1337
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
	.word	_Label_1735
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1736
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1737
	.word	-12
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
	.word	-32
	.word	4
	.word	0
_Label_1735:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1736:
	.ascii	"Pself\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1729\0"
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
_Label_3288:
	push	r0
	sub	r1,1,r1
	bne	_Label_3288
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0SE",r10
!   _temp_1743 = &frameManagerLock
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
	mov	1353,r13		! source line 1353
	mov	"\0\0WH",r10
_Label_1744:
!   if numberFreeFrames >= 1 then goto _Label_1746		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1746
!	jmp	_Label_1745
_Label_1745:
	mov	1353,r13		! source line 1353
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0SE",r10
!   _temp_1747 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1748 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1747  sizeInBytes=4
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
	jmp	_Label_1744
_Label_1746:
! ASSIGNMENT STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0AS",r10
	mov	1358,r13		! source line 1358
	mov	"\0\0SE",r10
!   _temp_1749 = &framesInUse
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
	mov	1359,r13		! source line 1359
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
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_1750 = &frameManagerLock
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
	mov	1365,r13		! source line 1365
	mov	"\0\0AS",r10
!   _temp_1751 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1751		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
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
	.word	_Label_1752
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1753
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1754
	.word	-12
	.word	4
	.word	_Label_1755
	.word	-16
	.word	4
	.word	_Label_1756
	.word	-20
	.word	4
	.word	_Label_1757
	.word	-24
	.word	4
	.word	_Label_1758
	.word	-28
	.word	4
	.word	_Label_1759
	.word	-32
	.word	4
	.word	_Label_1760
	.word	-36
	.word	4
	.word	_Label_1761
	.word	-40
	.word	4
	.word	0
_Label_1752:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1753:
	.ascii	"Pself\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1760:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1761:
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
_Label_3289:
	push	r0
	sub	r1,1,r1
	bne	_Label_3289
	mov	1372,r13		! source line 1372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
!   _temp_1762 = &frameManagerLock
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
	mov	1377,r13		! source line 1377
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
	mov	1378,r13		! source line 1378
	mov	"\0\0IF",r10
!   if waiting <= 1 then goto _Label_1764		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1764
!	jmp	_Label_1763
_Label_1763:
! THEN...
	mov	1379,r13		! source line 1379
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
!   _temp_1765 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1766 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1765  sizeInBytes=4
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
_Label_1764:
! WHILE STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0WH",r10
_Label_1767:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1769		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1769
!	jmp	_Label_1768
_Label_1768:
	mov	1382,r13		! source line 1382
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0SE",r10
!   _temp_1770 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1771 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1770  sizeInBytes=4
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
	jmp	_Label_1767
_Label_1769:
! FOR STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1776 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1777 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1776  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1772:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1777 then goto _Label_1775		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1775
_Label_1773:
	mov	1386,r13		! source line 1386
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
	mov	1387,r13		! source line 1387
	mov	"\0\0SE",r10
!   _temp_1778 = &framesInUse
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
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_1779 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1779		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1389,r13		! source line 1389
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
_Label_1774:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1772
! END FOR
_Label_1775:
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
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
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1780 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1780 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
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
	mov	1395,r13		! source line 1395
	mov	"\0\0SE",r10
!   _temp_1781 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1782 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1781  sizeInBytes=4
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
	mov	1397,r13		! source line 1397
	mov	"\0\0SE",r10
!   _temp_1783 = &frameManagerLock
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
	mov	1397,r13		! source line 1397
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
	.word	_Label_1784
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1786
	.word	12
	.word	4
	.word	_Label_1787
	.word	16
	.word	4
	.word	_Label_1788
	.word	-12
	.word	4
	.word	_Label_1789
	.word	-16
	.word	4
	.word	_Label_1790
	.word	-20
	.word	4
	.word	_Label_1791
	.word	-24
	.word	4
	.word	_Label_1792
	.word	-28
	.word	4
	.word	_Label_1793
	.word	-32
	.word	4
	.word	_Label_1794
	.word	-36
	.word	4
	.word	_Label_1795
	.word	-40
	.word	4
	.word	_Label_1796
	.word	-44
	.word	4
	.word	_Label_1797
	.word	-48
	.word	4
	.word	_Label_1798
	.word	-52
	.word	4
	.word	_Label_1799
	.word	-56
	.word	4
	.word	_Label_1800
	.word	-60
	.word	4
	.word	_Label_1801
	.word	-64
	.word	4
	.word	_Label_1802
	.word	-68
	.word	4
	.word	0
_Label_1784:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1785:
	.ascii	"Pself\0"
	.align
_Label_1786:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1787:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1801:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1802:
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
_Label_3290:
	push	r0
	sub	r1,1,r1
	bne	_Label_3290
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0SE",r10
!   _temp_1803 = &frameManagerLock
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
	mov	1407,r13		! source line 1407
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1808 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1811 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1810 = *_temp_1811  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1809 = _temp_1810 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1808  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1804:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1809 then goto _Label_1807		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1807
_Label_1805:
	mov	1407,r13		! source line 1407
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0AS",r10
	mov	1408,r13		! source line 1408
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
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
!   _temp_1812 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1812 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0SE",r10
!   _temp_1813 = &framesInUse
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
_Label_1806:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1804
! END FOR
_Label_1807:
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1815 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1814 = *_temp_1815  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1814		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0SE",r10
!   _temp_1816 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1817 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1816  sizeInBytes=4
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
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1818 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1818 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0SE",r10
!   _temp_1819 = &frameManagerLock
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
	mov	1417,r13		! source line 1417
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
	.word	_Label_1820
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1822
	.word	12
	.word	4
	.word	_Label_1823
	.word	-12
	.word	4
	.word	_Label_1824
	.word	-16
	.word	4
	.word	_Label_1825
	.word	-20
	.word	4
	.word	_Label_1826
	.word	-24
	.word	4
	.word	_Label_1827
	.word	-28
	.word	4
	.word	_Label_1828
	.word	-32
	.word	4
	.word	_Label_1829
	.word	-36
	.word	4
	.word	_Label_1830
	.word	-40
	.word	4
	.word	_Label_1831
	.word	-44
	.word	4
	.word	_Label_1832
	.word	-48
	.word	4
	.word	_Label_1833
	.word	-52
	.word	4
	.word	_Label_1834
	.word	-56
	.word	4
	.word	_Label_1835
	.word	-60
	.word	4
	.word	_Label_1836
	.word	-64
	.word	4
	.word	_Label_1837
	.word	-68
	.word	4
	.word	_Label_1838
	.word	-72
	.word	4
	.word	0
_Label_1820:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1821:
	.ascii	"Pself\0"
	.align
_Label_1822:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1836:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1837:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1838:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1839
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
_Label_1839:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1840
	.word	_sourceFileName
	.word	306		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1840:
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
_Label_3291:
	push	r0
	sub	r1,1,r1
	bne	_Label_3291
	mov	1428,r13		! source line 1428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   _temp_1841 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1843 = &_temp_1842
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1843 = _temp_1843 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1845:
!   Data Move: *_temp_1843 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1843 = _temp_1843 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1844 = _temp_1844 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1844) then goto _Label_1845
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1845
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1846 = &_temp_1842
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3292
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3292:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1841 = *_temp_1846  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3293:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3293
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
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
	.word	_Label_1847
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1849
	.word	-12
	.word	4
	.word	_Label_1850
	.word	-16
	.word	4
	.word	_Label_1851
	.word	-20
	.word	4
	.word	_Label_1852
	.word	-104
	.word	84
	.word	_Label_1853
	.word	-108
	.word	4
	.word	0
_Label_1847:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1848:
	.ascii	"Pself\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1841\0"
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
_Label_3294:
	push	r0
	sub	r1,1,r1
	bne	_Label_3294
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1854 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1854  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1855 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1855  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1444,r13		! source line 1444
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1860 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1861 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1860  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1856:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1861 then goto _Label_1859		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1859
_Label_1857:
	mov	1445,r13		! source line 1445
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1862 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1446,r13		! source line 1446
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1864 [i ] into _temp_1865
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
!   _temp_1863 = _temp_1865		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1863  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1866 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1448,r13		! source line 1448
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1868 [i ] into _temp_1869
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
!   Data Move: _temp_1867 = *_temp_1869  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1870 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1870  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1450,r13		! source line 1450
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1871 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1871  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1872 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1872  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1452,r13		! source line 1452
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1874) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1873  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1873  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1875 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-96],r1
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
	store	r1,[r14+-88]
!   if intIsZero (_temp_1879) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1878  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1878) then goto _Label_1877
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1877
!	jmp	_Label_1876
_Label_1876:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1881) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1880  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1880  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1456,r13		! source line 1456
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1882
_Label_1877:
! ELSE...
	mov	1458,r13		! source line 1458
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1883 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1458,r13		! source line 1458
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1882:
! CALL STATEMENT...
!   _temp_1884 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
	load	[r14+-72],r1
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
	store	r1,[r14+-68]
!   if intIsZero (_temp_1887) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1885 else goto _Label_1886
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1886
	jmp	_Label_1885
_Label_1885:
! THEN...
	mov	1462,r13		! source line 1462
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1888 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1888  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1462,r13		! source line 1462
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1889
_Label_1886:
! ELSE...
	mov	1464,r13		! source line 1464
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1890 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1464,r13		! source line 1464
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1889:
! CALL STATEMENT...
!   _temp_1891 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1466,r13		! source line 1466
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0IF",r10
	mov	1467,r13		! source line 1467
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1894) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1892 else goto _Label_1893
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1893
	jmp	_Label_1892
_Label_1892:
! THEN...
	mov	1468,r13		! source line 1468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1895 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1468,r13		! source line 1468
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1896
_Label_1893:
! ELSE...
	mov	1470,r13		! source line 1470
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1897 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1897  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1470,r13		! source line 1470
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1896:
! CALL STATEMENT...
!   _temp_1898 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1898  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1472,r13		! source line 1472
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
	mov	1473,r13		! source line 1473
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1901) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1899 else goto _Label_1900
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1900
	jmp	_Label_1899
_Label_1899:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1902 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1902  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1474,r13		! source line 1474
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1903
_Label_1900:
! ELSE...
	mov	1476,r13		! source line 1476
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1904 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1904  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1476,r13		! source line 1476
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1903:
! CALL STATEMENT...
!   _temp_1905 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1905  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1478,r13		! source line 1478
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0IF",r10
	mov	1479,r13		! source line 1479
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1908) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1906 else goto _Label_1907
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1907
	jmp	_Label_1906
_Label_1906:
! THEN...
	mov	1480,r13		! source line 1480
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1909 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1909  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1480,r13		! source line 1480
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1910
_Label_1907:
! ELSE...
	mov	1482,r13		! source line 1482
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1911 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1911  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1482,r13		! source line 1482
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1910:
! CALL STATEMENT...
!   Call the function
	mov	1484,r13		! source line 1484
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1858:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1856
! END FOR
_Label_1859:
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
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
	.word	_Label_1912
	.word	4		! total size of parameters
	.word	168		! frame size = 168
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
	.word	_Label_1918
	.word	-28
	.word	4
	.word	_Label_1919
	.word	-32
	.word	4
	.word	_Label_1920
	.word	-36
	.word	4
	.word	_Label_1921
	.word	-40
	.word	4
	.word	_Label_1922
	.word	-44
	.word	4
	.word	_Label_1923
	.word	-48
	.word	4
	.word	_Label_1924
	.word	-52
	.word	4
	.word	_Label_1925
	.word	-56
	.word	4
	.word	_Label_1926
	.word	-60
	.word	4
	.word	_Label_1927
	.word	-64
	.word	4
	.word	_Label_1928
	.word	-68
	.word	4
	.word	_Label_1929
	.word	-72
	.word	4
	.word	_Label_1930
	.word	-76
	.word	4
	.word	_Label_1931
	.word	-80
	.word	4
	.word	_Label_1932
	.word	-84
	.word	4
	.word	_Label_1933
	.word	-88
	.word	4
	.word	_Label_1934
	.word	-92
	.word	4
	.word	_Label_1935
	.word	-96
	.word	4
	.word	_Label_1936
	.word	-100
	.word	4
	.word	_Label_1937
	.word	-104
	.word	4
	.word	_Label_1938
	.word	-108
	.word	4
	.word	_Label_1939
	.word	-112
	.word	4
	.word	_Label_1940
	.word	-116
	.word	4
	.word	_Label_1941
	.word	-120
	.word	4
	.word	_Label_1942
	.word	-124
	.word	4
	.word	_Label_1943
	.word	-128
	.word	4
	.word	_Label_1944
	.word	-132
	.word	4
	.word	_Label_1945
	.word	-136
	.word	4
	.word	_Label_1946
	.word	-140
	.word	4
	.word	_Label_1947
	.word	-144
	.word	4
	.word	_Label_1948
	.word	-148
	.word	4
	.word	_Label_1949
	.word	-152
	.word	4
	.word	_Label_1950
	.word	-156
	.word	4
	.word	_Label_1951
	.word	-160
	.word	4
	.word	_Label_1952
	.word	-164
	.word	4
	.word	_Label_1953
	.word	-168
	.word	4
	.word	0
_Label_1912:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_1909\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1953:
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
_Label_3295:
	push	r0
	sub	r1,1,r1
	bne	_Label_3295
	mov	1490,r13		! source line 1490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0RE",r10
!   _temp_1956 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1956 [entry ] into _temp_1957
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
!   Data Move: _temp_1955 = *_temp_1957  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1954 = _temp_1955 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1954  (sizeInBytes=4)
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
	.word	_Label_1958
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1959
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1960
	.word	12
	.word	4
	.word	_Label_1961
	.word	-12
	.word	4
	.word	_Label_1962
	.word	-16
	.word	4
	.word	_Label_1963
	.word	-20
	.word	4
	.word	_Label_1964
	.word	-24
	.word	4
	.word	0
_Label_1958:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1959:
	.ascii	"Pself\0"
	.align
_Label_1960:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1954\0"
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
_Label_3296:
	push	r0
	sub	r1,1,r1
	bne	_Label_3296
	mov	1500,r13		! source line 1500
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0RE",r10
!   _temp_1967 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1967 [entry ] into _temp_1968
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
!   Data Move: _temp_1966 = *_temp_1968  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1965 = _temp_1966 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1965  (sizeInBytes=4)
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
	.word	_Label_1969
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1971
	.word	12
	.word	4
	.word	_Label_1972
	.word	-12
	.word	4
	.word	_Label_1973
	.word	-16
	.word	4
	.word	_Label_1974
	.word	-20
	.word	4
	.word	_Label_1975
	.word	-24
	.word	4
	.word	0
_Label_1969:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1970:
	.ascii	"Pself\0"
	.align
_Label_1971:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1965\0"
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
_Label_3297:
	push	r0
	sub	r1,1,r1
	bne	_Label_3297
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   _temp_1976 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1976 [entry ] into _temp_1977
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
!   _temp_1981 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1981 [entry ] into _temp_1982
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
!   Data Move: _temp_1980 = *_temp_1982  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1979 = _temp_1980 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1978 = _temp_1979 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1977 = _temp_1978  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1514,r13		! source line 1514
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
	.word	_Label_1983
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1985
	.word	12
	.word	4
	.word	_Label_1986
	.word	16
	.word	4
	.word	_Label_1987
	.word	-12
	.word	4
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
	.word	-28
	.word	4
	.word	_Label_1992
	.word	-32
	.word	4
	.word	_Label_1993
	.word	-36
	.word	4
	.word	0
_Label_1983:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1984:
	.ascii	"Pself\0"
	.align
_Label_1985:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1986:
	.byte	'I'
	.ascii	"frameAddr\0"
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
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1976\0"
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
_Label_3298:
	push	r0
	sub	r1,1,r1
	bne	_Label_3298
	mov	1519,r13		! source line 1519
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   _temp_1997 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1997 [entry ] into _temp_1998
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
!   Data Move: _temp_1996 = *_temp_1998  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1995 = _temp_1996 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1995) then goto _Label_1999
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1999
!   _temp_1994 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2000
_Label_1999:
!   _temp_1994 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2000:
!   ReturnResult: _temp_1994  (sizeInBytes=1)
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
	.word	_Label_2001
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2003
	.word	12
	.word	4
	.word	_Label_2004
	.word	-16
	.word	4
	.word	_Label_2005
	.word	-20
	.word	4
	.word	_Label_2006
	.word	-24
	.word	4
	.word	_Label_2007
	.word	-28
	.word	4
	.word	_Label_2008
	.word	-9
	.word	1
	.word	0
_Label_2001:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2002:
	.ascii	"Pself\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2008:
	.byte	'C'
	.ascii	"_temp_1994\0"
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
_Label_3299:
	push	r0
	sub	r1,1,r1
	bne	_Label_3299
	mov	1528,r13		! source line 1528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
!   _temp_2012 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2012 [entry ] into _temp_2013
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
!   Data Move: _temp_2011 = *_temp_2013  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2010 = _temp_2011 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2010) then goto _Label_2014
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2014
!   _temp_2009 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2015
_Label_2014:
!   _temp_2009 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2015:
!   ReturnResult: _temp_2009  (sizeInBytes=1)
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
	.word	_Label_2016
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2018
	.word	12
	.word	4
	.word	_Label_2019
	.word	-16
	.word	4
	.word	_Label_2020
	.word	-20
	.word	4
	.word	_Label_2021
	.word	-24
	.word	4
	.word	_Label_2022
	.word	-28
	.word	4
	.word	_Label_2023
	.word	-9
	.word	1
	.word	0
_Label_2016:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2017:
	.ascii	"Pself\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2023:
	.byte	'C'
	.ascii	"_temp_2009\0"
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
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
	mov	1537,r13		! source line 1537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0RE",r10
!   _temp_2027 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2027 [entry ] into _temp_2028
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
!   Data Move: _temp_2026 = *_temp_2028  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2025 = _temp_2026 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2025) then goto _Label_2029
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2029
!   _temp_2024 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2030
_Label_2029:
!   _temp_2024 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2030:
!   ReturnResult: _temp_2024  (sizeInBytes=1)
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
	.word	_Label_2031
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2033
	.word	12
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
	.word	_Label_2038
	.word	-9
	.word	1
	.word	0
_Label_2031:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2032:
	.ascii	"Pself\0"
	.align
_Label_2033:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2038:
	.byte	'C'
	.ascii	"_temp_2024\0"
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
_Label_3301:
	push	r0
	sub	r1,1,r1
	bne	_Label_3301
	mov	1546,r13		! source line 1546
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0RE",r10
!   _temp_2042 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2042 [entry ] into _temp_2043
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
!   Data Move: _temp_2041 = *_temp_2043  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2040 = _temp_2041 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2040) then goto _Label_2044
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2044
!   _temp_2039 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2045
_Label_2044:
!   _temp_2039 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2045:
!   ReturnResult: _temp_2039  (sizeInBytes=1)
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
	.word	_Label_2046
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2048
	.word	12
	.word	4
	.word	_Label_2049
	.word	-16
	.word	4
	.word	_Label_2050
	.word	-20
	.word	4
	.word	_Label_2051
	.word	-24
	.word	4
	.word	_Label_2052
	.word	-28
	.word	4
	.word	_Label_2053
	.word	-9
	.word	1
	.word	0
_Label_2046:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2047:
	.ascii	"Pself\0"
	.align
_Label_2048:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2053:
	.byte	'C'
	.ascii	"_temp_2039\0"
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
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
	mov	1555,r13		! source line 1555
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0AS",r10
!   _temp_2054 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2054 [entry ] into _temp_2055
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
!   _temp_2058 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2058 [entry ] into _temp_2059
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
!   Data Move: _temp_2057 = *_temp_2059  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2056 = _temp_2057 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2055 = _temp_2056  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2060
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2062
	.word	12
	.word	4
	.word	_Label_2063
	.word	-12
	.word	4
	.word	_Label_2064
	.word	-16
	.word	4
	.word	_Label_2065
	.word	-20
	.word	4
	.word	_Label_2066
	.word	-24
	.word	4
	.word	_Label_2067
	.word	-28
	.word	4
	.word	_Label_2068
	.word	-32
	.word	4
	.word	0
_Label_2060:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2061:
	.ascii	"Pself\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2054\0"
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
_Label_3303:
	push	r0
	sub	r1,1,r1
	bne	_Label_3303
	mov	1564,r13		! source line 1564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   _temp_2069 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2069 [entry ] into _temp_2070
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
!   _temp_2073 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2073 [entry ] into _temp_2074
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
!   Data Move: _temp_2072 = *_temp_2074  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2071 = _temp_2072 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2070 = _temp_2071  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2075
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2077
	.word	12
	.word	4
	.word	_Label_2078
	.word	-12
	.word	4
	.word	_Label_2079
	.word	-16
	.word	4
	.word	_Label_2080
	.word	-20
	.word	4
	.word	_Label_2081
	.word	-24
	.word	4
	.word	_Label_2082
	.word	-28
	.word	4
	.word	_Label_2083
	.word	-32
	.word	4
	.word	0
_Label_2075:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2076:
	.ascii	"Pself\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2069\0"
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
_Label_3304:
	push	r0
	sub	r1,1,r1
	bne	_Label_3304
	mov	1573,r13		! source line 1573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0AS",r10
!   _temp_2084 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2084 [entry ] into _temp_2085
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
!   _temp_2088 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2088 [entry ] into _temp_2089
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
!   Data Move: _temp_2087 = *_temp_2089  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2086 = _temp_2087 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2085 = _temp_2086  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2090
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2092
	.word	12
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
	.word	0
_Label_2090:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2091:
	.ascii	"Pself\0"
	.align
_Label_2092:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2084\0"
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
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
	mov	1582,r13		! source line 1582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0AS",r10
!   _temp_2099 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2099 [entry ] into _temp_2100
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
!   _temp_2103 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2103 [entry ] into _temp_2104
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
!   Data Move: _temp_2102 = *_temp_2104  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2101 = _temp_2102 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2100 = _temp_2101  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2105
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2107
	.word	12
	.word	4
	.word	_Label_2108
	.word	-12
	.word	4
	.word	_Label_2109
	.word	-16
	.word	4
	.word	_Label_2110
	.word	-20
	.word	4
	.word	_Label_2111
	.word	-24
	.word	4
	.word	_Label_2112
	.word	-28
	.word	4
	.word	_Label_2113
	.word	-32
	.word	4
	.word	0
_Label_2105:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2106:
	.ascii	"Pself\0"
	.align
_Label_2107:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2104\0"
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
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
	mov	1591,r13		! source line 1591
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0AS",r10
!   _temp_2114 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2114 [entry ] into _temp_2115
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
!   _temp_2118 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2118 [entry ] into _temp_2119
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
!   Data Move: _temp_2117 = *_temp_2119  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2116 = _temp_2117 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2115 = _temp_2116  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2120
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2122
	.word	12
	.word	4
	.word	_Label_2123
	.word	-12
	.word	4
	.word	_Label_2124
	.word	-16
	.word	4
	.word	_Label_2125
	.word	-20
	.word	4
	.word	_Label_2126
	.word	-24
	.word	4
	.word	_Label_2127
	.word	-28
	.word	4
	.word	_Label_2128
	.word	-32
	.word	4
	.word	0
_Label_2120:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2121:
	.ascii	"Pself\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2114\0"
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
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
	mov	1600,r13		! source line 1600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0AS",r10
!   _temp_2129 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2129 [entry ] into _temp_2130
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
!   _temp_2133 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2133 [entry ] into _temp_2134
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
!   Data Move: _temp_2132 = *_temp_2134  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2131 = _temp_2132 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2130 = _temp_2131  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2135
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2137
	.word	12
	.word	4
	.word	_Label_2138
	.word	-12
	.word	4
	.word	_Label_2139
	.word	-16
	.word	4
	.word	_Label_2140
	.word	-20
	.word	4
	.word	_Label_2141
	.word	-24
	.word	4
	.word	_Label_2142
	.word	-28
	.word	4
	.word	_Label_2143
	.word	-32
	.word	4
	.word	0
_Label_2135:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2136:
	.ascii	"Pself\0"
	.align
_Label_2137:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2129\0"
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
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
	mov	1609,r13		! source line 1609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   _temp_2144 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2144 [entry ] into _temp_2145
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
!   _temp_2148 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2148 [entry ] into _temp_2149
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
!   Data Move: _temp_2147 = *_temp_2149  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2146 = _temp_2147 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2145 = _temp_2146  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
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
	.word	_Label_2150
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	12
	.word	4
	.word	_Label_2153
	.word	-12
	.word	4
	.word	_Label_2154
	.word	-16
	.word	4
	.word	_Label_2155
	.word	-20
	.word	4
	.word	_Label_2156
	.word	-24
	.word	4
	.word	_Label_2157
	.word	-28
	.word	4
	.word	_Label_2158
	.word	-32
	.word	4
	.word	0
_Label_2150:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2144\0"
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
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
	mov	1618,r13		! source line 1618
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
!   _temp_2159 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2159 [entry ] into _temp_2160
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
!   _temp_2163 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2163 [entry ] into _temp_2164
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
!   Data Move: _temp_2162 = *_temp_2164  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2161 = _temp_2162 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2160 = _temp_2161  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
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
	.word	_Label_2165
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2167
	.word	12
	.word	4
	.word	_Label_2168
	.word	-12
	.word	4
	.word	_Label_2169
	.word	-16
	.word	4
	.word	_Label_2170
	.word	-20
	.word	4
	.word	_Label_2171
	.word	-24
	.word	4
	.word	_Label_2172
	.word	-28
	.word	4
	.word	_Label_2173
	.word	-32
	.word	4
	.word	0
_Label_2165:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2166:
	.ascii	"Pself\0"
	.align
_Label_2167:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2159\0"
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
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
	mov	1627,r13		! source line 1627
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2175 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2175 [0 ] into _temp_2176
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
!   _temp_2174 = _temp_2176		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2177 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2177  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1633,r13		! source line 1633
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1633,r13		! source line 1633
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
	.word	_Label_2178
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2179
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2180
	.word	-12
	.word	4
	.word	_Label_2181
	.word	-16
	.word	4
	.word	_Label_2182
	.word	-20
	.word	4
	.word	_Label_2183
	.word	-24
	.word	4
	.word	0
_Label_2178:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2179:
	.ascii	"Pself\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2174\0"
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
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
	mov	1638,r13		! source line 1638
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2184
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2184
	jmp	_Label_2185
_Label_2184:
! THEN...
	mov	1654,r13		! source line 1654
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2186
_Label_2185:
! ELSE...
	mov	1655,r13		! source line 1655
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2188		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2188
!	jmp	_Label_2187
_Label_2187:
! THEN...
	mov	1656,r13		! source line 1656
	mov	"\0\0TN",r10
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
_Label_2188:
! END IF...
_Label_2186:
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
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
	mov	1659,r13		! source line 1659
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
	mov	1662,r13		! source line 1662
	mov	"\0\0WH",r10
_Label_2189:
!	jmp	_Label_2190
_Label_2190:
	mov	1662,r13		! source line 1662
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2193		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2193
!	jmp	_Label_2192
_Label_2192:
! THEN...
	mov	1664,r13		! source line 1664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2194 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2194  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1664,r13		! source line 1664
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2193:
! IF STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0IF",r10
	mov	1667,r13		! source line 1667
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2198) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2197  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2197 then goto _Label_2196 else goto _Label_2195
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2195
	jmp	_Label_2196
_Label_2195:
! THEN...
	mov	1668,r13		! source line 1668
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2199 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1668,r13		! source line 1668
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2196:
! ASSIGNMENT STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0AS",r10
	mov	1671,r13		! source line 1671
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2201) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2200  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2200 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0WH",r10
_Label_2202:
!   if offset >= 8192 then goto _Label_2204		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2204
!	jmp	_Label_2203
_Label_2203:
	mov	1673,r13		! source line 1673
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2205 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2205  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2207		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2207
!	jmp	_Label_2206
_Label_2206:
! THEN...
	mov	1682,r13		! source line 1682
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2207:
! END WHILE...
	jmp	_Label_2202
_Label_2204:
! ASSIGNMENT STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2189
_Label_2191:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2208
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2209
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2210
	.word	12
	.word	4
	.word	_Label_2211
	.word	16
	.word	4
	.word	_Label_2212
	.word	20
	.word	4
	.word	_Label_2213
	.word	-9
	.word	1
	.word	_Label_2214
	.word	-16
	.word	4
	.word	_Label_2215
	.word	-20
	.word	4
	.word	_Label_2216
	.word	-24
	.word	4
	.word	_Label_2217
	.word	-28
	.word	4
	.word	_Label_2218
	.word	-10
	.word	1
	.word	_Label_2219
	.word	-32
	.word	4
	.word	_Label_2220
	.word	-36
	.word	4
	.word	_Label_2221
	.word	-40
	.word	4
	.word	_Label_2222
	.word	-44
	.word	4
	.word	_Label_2223
	.word	-48
	.word	4
	.word	0
_Label_2208:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2209:
	.ascii	"Pself\0"
	.align
_Label_2210:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2211:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2212:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2213:
	.byte	'C'
	.ascii	"_temp_2205\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2218:
	.byte	'C'
	.ascii	"_temp_2197\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2220:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2221:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2222:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2223:
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
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
	mov	1692,r13		! source line 1692
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2224
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2224
	jmp	_Label_2225
_Label_2224:
! THEN...
	mov	1704,r13		! source line 1704
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2226
_Label_2225:
! ELSE...
	mov	1705,r13		! source line 1705
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2228		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2228
!	jmp	_Label_2227
_Label_2227:
! THEN...
	mov	1706,r13		! source line 1706
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2228:
! END IF...
_Label_2226:
! ASSIGNMENT STATEMENT...
	mov	1708,r13		! source line 1708
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
	mov	1709,r13		! source line 1709
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
	mov	1710,r13		! source line 1710
	mov	"\0\0WH",r10
_Label_2229:
!	jmp	_Label_2230
_Label_2230:
	mov	1710,r13		! source line 1710
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2235		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2235
	jmp	_Label_2232
_Label_2235:
	mov	1712,r13		! source line 1712
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2237) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2236  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2236 then goto _Label_2234 else goto _Label_2232
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2232
	jmp	_Label_2234
_Label_2234:
	mov	1713,r13		! source line 1713
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2239) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2238  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2238 then goto _Label_2233 else goto _Label_2232
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2232
	jmp	_Label_2233
_Label_2232:
! THEN...
	mov	1714,r13		! source line 1714
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2233:
! ASSIGNMENT STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0AS",r10
	mov	1716,r13		! source line 1716
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2241) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2240  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2240 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0WH",r10
_Label_2242:
!   if offset >= 8192 then goto _Label_2244		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2244
!	jmp	_Label_2243
_Label_2243:
	mov	1717,r13		! source line 1717
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2245 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2245  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2247		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2247
!	jmp	_Label_2246
_Label_2246:
! THEN...
	mov	1724,r13		! source line 1724
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2247:
! END WHILE...
	jmp	_Label_2242
_Label_2244:
! ASSIGNMENT STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2229
_Label_2231:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2248
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2250
	.word	12
	.word	4
	.word	_Label_2251
	.word	16
	.word	4
	.word	_Label_2252
	.word	20
	.word	4
	.word	_Label_2253
	.word	-9
	.word	1
	.word	_Label_2254
	.word	-16
	.word	4
	.word	_Label_2255
	.word	-20
	.word	4
	.word	_Label_2256
	.word	-24
	.word	4
	.word	_Label_2257
	.word	-10
	.word	1
	.word	_Label_2258
	.word	-28
	.word	4
	.word	_Label_2259
	.word	-11
	.word	1
	.word	_Label_2260
	.word	-32
	.word	4
	.word	_Label_2261
	.word	-36
	.word	4
	.word	_Label_2262
	.word	-40
	.word	4
	.word	_Label_2263
	.word	-44
	.word	4
	.word	0
_Label_2248:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2249:
	.ascii	"Pself\0"
	.align
_Label_2250:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2251:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2252:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2253:
	.byte	'C'
	.ascii	"_temp_2245\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2257:
	.byte	'C'
	.ascii	"_temp_2238\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2259:
	.byte	'C'
	.ascii	"_temp_2236\0"
	.align
_Label_2260:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2261:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2262:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2263:
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
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
	mov	1734,r13		! source line 1734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0IF",r10
	mov	1758,r13		! source line 1758
	mov	"\0\0SE",r10
!   _temp_2267 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2268) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2267  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2266  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2266 >= 4 then goto _Label_2265		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2265
!	jmp	_Label_2264
_Label_2264:
! THEN...
	mov	1761,r13		! source line 1761
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2265:
! IF STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2270		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2270
!	jmp	_Label_2269
_Label_2269:
! THEN...
	mov	1766,r13		! source line 1766
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1766,r13		! source line 1766
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2270:
! ASSIGNMENT STATEMENT...
	mov	1769,r13		! source line 1769
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
	mov	1771,r13		! source line 1771
	mov	"\0\0RE",r10
	mov	1771,r13		! source line 1771
	mov	"\0\0SE",r10
!   _temp_2273 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2272 = _temp_2273 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2274 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2275) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2272  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2274  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2271  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2271  (sizeInBytes=4)
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
	.word	_Label_2276
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2278
	.word	12
	.word	4
	.word	_Label_2279
	.word	16
	.word	4
	.word	_Label_2280
	.word	20
	.word	4
	.word	_Label_2281
	.word	-12
	.word	4
	.word	_Label_2282
	.word	-16
	.word	4
	.word	_Label_2283
	.word	-20
	.word	4
	.word	_Label_2284
	.word	-24
	.word	4
	.word	_Label_2285
	.word	-28
	.word	4
	.word	_Label_2286
	.word	-32
	.word	4
	.word	_Label_2287
	.word	-36
	.word	4
	.word	_Label_2288
	.word	-40
	.word	4
	.word	_Label_2289
	.word	-44
	.word	4
	.word	0
_Label_2276:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2277:
	.ascii	"Pself\0"
	.align
_Label_2278:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2279:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2280:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2289:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2290
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2290:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2291
	.word	_sourceFileName
	.word	339		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2291:
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
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
	mov	2196,r13		! source line 2196
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2292 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2197,r13		! source line 2197
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
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
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_2294 = &semUsedInSynchMethods
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
	mov	2206,r13		! source line 2206
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
	mov	2207,r13		! source line 2207
	mov	"\0\0SE",r10
!   _temp_2296 = &diskBusy
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
	mov	2207,r13		! source line 2207
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
	.word	_Label_2297
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2298
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2299
	.word	-12
	.word	4
	.word	_Label_2300
	.word	-16
	.word	4
	.word	_Label_2301
	.word	-20
	.word	4
	.word	_Label_2302
	.word	-24
	.word	4
	.word	_Label_2303
	.word	-28
	.word	4
	.word	0
_Label_2297:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2298:
	.ascii	"Pself\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2292\0"
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
_Label_3315:
	push	r0
	sub	r1,1,r1
	bne	_Label_3315
	mov	2212,r13		! source line 2212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0SE",r10
!   _temp_2304 = &diskBusy
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
	mov	2226,r13		! source line 2226
	mov	"\0\0WH",r10
_Label_2305:
!	jmp	_Label_2306
_Label_2306:
	mov	2226,r13		! source line 2226
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0SE",r10
!   _temp_2308 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2309) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2308  sizeInBytes=4
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
	mov	2230,r13		! source line 2230
	mov	"\0\0SE",r10
!   _temp_2310 = &semUsedInSynchMethods
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
	mov	2233,r13		! source line 2233
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2319 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2313
	cmp	r1,2
	be	_Label_2314
	cmp	r1,3
	be	_Label_2315
	cmp	r1,4
	be	_Label_2316
	cmp	r1,5
	be	_Label_2317
	cmp	r1,6
	be	_Label_2318
	jmp	_Label_2311
! CASE 1...
_Label_2313:
! SEND STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   _temp_2320 = &diskBusy
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
	mov	2236,r13		! source line 2236
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2314:
! CALL STATEMENT...
!   _temp_2321 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2321  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2238,r13		! source line 2238
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2315:
! CALL STATEMENT...
!   _temp_2322 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2322  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2240,r13		! source line 2240
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2316:
! CALL STATEMENT...
!   _temp_2323 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2323  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2242,r13		! source line 2242
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2317:
! BREAK STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0BR",r10
	jmp	_Label_2312
! CASE 6...
_Label_2318:
! CALL STATEMENT...
!   _temp_2324 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2324  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2248,r13		! source line 2248
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2311:
! CALL STATEMENT...
!   _temp_2325 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2250,r13		! source line 2250
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2312:
! END WHILE...
	jmp	_Label_2305
_Label_2307:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2326
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2327
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2328
	.word	12
	.word	4
	.word	_Label_2329
	.word	16
	.word	4
	.word	_Label_2330
	.word	20
	.word	4
	.word	_Label_2331
	.word	-12
	.word	4
	.word	_Label_2332
	.word	-16
	.word	4
	.word	_Label_2333
	.word	-20
	.word	4
	.word	_Label_2334
	.word	-24
	.word	4
	.word	_Label_2335
	.word	-28
	.word	4
	.word	_Label_2336
	.word	-32
	.word	4
	.word	_Label_2337
	.word	-36
	.word	4
	.word	_Label_2338
	.word	-40
	.word	4
	.word	_Label_2339
	.word	-44
	.word	4
	.word	_Label_2340
	.word	-48
	.word	4
	.word	_Label_2341
	.word	-52
	.word	4
	.word	0
_Label_2326:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2327:
	.ascii	"Pself\0"
	.align
_Label_2328:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2329:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2330:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2304\0"
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
	mov	2259,r13		! source line 2259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
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
	mov	2278,r13		! source line 2278
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
	mov	2279,r13		! source line 2279
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
	mov	2280,r13		! source line 2280
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
	mov	2280,r13		! source line 2280
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
	.word	_Label_2342
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2343
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2344
	.word	12
	.word	4
	.word	_Label_2345
	.word	16
	.word	4
	.word	_Label_2346
	.word	20
	.word	4
	.word	_Label_2347
	.word	24
	.word	4
	.word	0
_Label_2342:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2343:
	.ascii	"Pself\0"
	.align
_Label_2344:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2345:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2346:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2347:
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
_Label_3316:
	push	r0
	sub	r1,1,r1
	bne	_Label_3316
	mov	2285,r13		! source line 2285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   _temp_2348 = &diskBusy
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
	mov	2298,r13		! source line 2298
	mov	"\0\0WH",r10
_Label_2349:
!	jmp	_Label_2350
_Label_2350:
	mov	2298,r13		! source line 2298
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   _temp_2352 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2353) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2352  sizeInBytes=4
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
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_2354 = &semUsedInSynchMethods
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
	mov	2304,r13		! source line 2304
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2363 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2357
	cmp	r1,2
	be	_Label_2358
	cmp	r1,3
	be	_Label_2359
	cmp	r1,4
	be	_Label_2360
	cmp	r1,5
	be	_Label_2361
	cmp	r1,6
	be	_Label_2362
	jmp	_Label_2355
! CASE 1...
_Label_2357:
! SEND STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_2364 = &diskBusy
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
	mov	2307,r13		! source line 2307
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2358:
! CALL STATEMENT...
!   _temp_2365 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2365  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2309,r13		! source line 2309
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2359:
! CALL STATEMENT...
!   _temp_2366 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2366  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2311,r13		! source line 2311
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2360:
! CALL STATEMENT...
!   _temp_2367 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2367  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2313,r13		! source line 2313
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2361:
! BREAK STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0BR",r10
	jmp	_Label_2356
! CASE 6...
_Label_2362:
! CALL STATEMENT...
!   _temp_2368 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2368  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2319,r13		! source line 2319
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2355:
! CALL STATEMENT...
!   _temp_2369 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2321,r13		! source line 2321
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2356:
! END WHILE...
	jmp	_Label_2349
_Label_2351:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2370
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2371
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2372
	.word	12
	.word	4
	.word	_Label_2373
	.word	16
	.word	4
	.word	_Label_2374
	.word	20
	.word	4
	.word	_Label_2375
	.word	-12
	.word	4
	.word	_Label_2376
	.word	-16
	.word	4
	.word	_Label_2377
	.word	-20
	.word	4
	.word	_Label_2378
	.word	-24
	.word	4
	.word	_Label_2379
	.word	-28
	.word	4
	.word	_Label_2380
	.word	-32
	.word	4
	.word	_Label_2381
	.word	-36
	.word	4
	.word	_Label_2382
	.word	-40
	.word	4
	.word	_Label_2383
	.word	-44
	.word	4
	.word	_Label_2384
	.word	-48
	.word	4
	.word	_Label_2385
	.word	-52
	.word	4
	.word	0
_Label_2370:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2371:
	.ascii	"Pself\0"
	.align
_Label_2372:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2373:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2374:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2348\0"
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
	mov	2330,r13		! source line 2330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
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
	mov	2348,r13		! source line 2348
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
	mov	2349,r13		! source line 2349
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
	mov	2350,r13		! source line 2350
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
	mov	2350,r13		! source line 2350
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
	.word	_Label_2386
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2387
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2388
	.word	12
	.word	4
	.word	_Label_2389
	.word	16
	.word	4
	.word	_Label_2390
	.word	20
	.word	4
	.word	_Label_2391
	.word	24
	.word	4
	.word	0
_Label_2386:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2387:
	.ascii	"Pself\0"
	.align
_Label_2388:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2389:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2390:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2391:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2392
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
_Label_2392:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2393
	.word	_sourceFileName
	.word	362		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2393:
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
_Label_3317:
	push	r0
	sub	r1,1,r1
	bne	_Label_3317
	mov	2361,r13		! source line 2361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2394 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2394  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2368,r13		! source line 2368
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
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
	mov	2370,r13		! source line 2370
	mov	"\0\0SE",r10
!   _temp_2396 = &fileManagerLock
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
	mov	2373,r13		! source line 2373
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
	mov	2374,r13		! source line 2374
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
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_2399 = &anFCBBecameFree
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
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   _temp_2400 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2402 = &_temp_2401
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2402 = _temp_2402 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2404 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3318:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3318
!   _temp_2404 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2406:
!   Data Move: *_temp_2402 = _temp_2404  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3319:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3319
!   _temp_2402 = _temp_2402 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2403 = _temp_2403 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2403) then goto _Label_2406
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2406
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2407 = &_temp_2401
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3320
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3320:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2400 = *_temp_2407  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3321:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3321
! FOR STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2412 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2413 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2412  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2408:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2413 then goto _Label_2411		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2411
_Label_2409:
	mov	2378,r13		! source line 2378
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   _temp_2414 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2414 [i ] into _temp_2415
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
!   _temp_2416 = _temp_2415 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2416 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0SE",r10
!   _temp_2417 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2417 [i ] into _temp_2418
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
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_2420 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2420 [i ] into _temp_2421
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
!   _temp_2419 = _temp_2421		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2422 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2419  sizeInBytes=4
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
_Label_2410:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2408
! END FOR
_Label_2411:
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
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
	mov	2386,r13		! source line 2386
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
	mov	2387,r13		! source line 2387
	mov	"\0\0SE",r10
!   _temp_2425 = &anOpenFileBecameFree
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
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   _temp_2426 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2428 = &_temp_2427
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2428 = _temp_2428 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2430 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3322:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3322
!   _temp_2430 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2432:
!   Data Move: *_temp_2428 = _temp_2430  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3323:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3323
!   _temp_2428 = _temp_2428 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2429 = _temp_2429 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2429) then goto _Label_2432
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2432
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2433 = &_temp_2427
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3324
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3324:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2426 = *_temp_2433  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3325:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3325
! FOR STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2438 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2439 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2438  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2434:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2439 then goto _Label_2437		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2437
_Label_2435:
	mov	2390,r13		! source line 2390
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   _temp_2440 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2440 [i ] into _temp_2441
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
!   _temp_2442 = _temp_2441 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2442 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0SE",r10
!   _temp_2444 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2444 [i ] into _temp_2445
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
!   _temp_2443 = _temp_2445		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2446 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2443  sizeInBytes=4
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
_Label_2436:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2434
! END FOR
_Label_2437:
! ASSIGNMENT STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3326:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3326
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   _temp_2448 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2449 = _temp_2448 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2449 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0AS",r10
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_2450 = &_P_Kernel_frameManager
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
	mov	2403,r13		! source line 2403
	mov	"\0\0SE",r10
!   _temp_2451 = &_P_Kernel_diskDriver
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
	mov	2403,r13		! source line 2403
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
	.word	_Label_2452
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2453
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2454
	.word	-12
	.word	4
	.word	_Label_2455
	.word	-16
	.word	4
	.word	_Label_2456
	.word	-20
	.word	4
	.word	_Label_2457
	.word	-24
	.word	4
	.word	_Label_2458
	.word	-28
	.word	4
	.word	_Label_2459
	.word	-32
	.word	4
	.word	_Label_2460
	.word	-36
	.word	4
	.word	_Label_2461
	.word	-40
	.word	4
	.word	_Label_2462
	.word	-44
	.word	4
	.word	_Label_2463
	.word	-48
	.word	4
	.word	_Label_2464
	.word	-52
	.word	4
	.word	_Label_2465
	.word	-56
	.word	4
	.word	_Label_2466
	.word	-60
	.word	4
	.word	_Label_2467
	.word	-64
	.word	4
	.word	_Label_2468
	.word	-68
	.word	4
	.word	_Label_2469
	.word	-72
	.word	4
	.word	_Label_2470
	.word	-100
	.word	28
	.word	_Label_2471
	.word	-104
	.word	4
	.word	_Label_2472
	.word	-108
	.word	4
	.word	_Label_2473
	.word	-392
	.word	284
	.word	_Label_2474
	.word	-396
	.word	4
	.word	_Label_2475
	.word	-400
	.word	4
	.word	_Label_2476
	.word	-404
	.word	4
	.word	_Label_2477
	.word	-408
	.word	4
	.word	_Label_2478
	.word	-412
	.word	4
	.word	_Label_2479
	.word	-416
	.word	4
	.word	_Label_2480
	.word	-420
	.word	4
	.word	_Label_2481
	.word	-424
	.word	4
	.word	_Label_2482
	.word	-428
	.word	4
	.word	_Label_2483
	.word	-432
	.word	4
	.word	_Label_2484
	.word	-436
	.word	4
	.word	_Label_2485
	.word	-440
	.word	4
	.word	_Label_2486
	.word	-444
	.word	4
	.word	_Label_2487
	.word	-448
	.word	4
	.word	_Label_2488
	.word	-452
	.word	4
	.word	_Label_2489
	.word	-456
	.word	4
	.word	_Label_2490
	.word	-460
	.word	4
	.word	_Label_2491
	.word	-500
	.word	40
	.word	_Label_2492
	.word	-504
	.word	4
	.word	_Label_2493
	.word	-508
	.word	4
	.word	_Label_2494
	.word	-912
	.word	404
	.word	_Label_2495
	.word	-916
	.word	4
	.word	_Label_2496
	.word	-920
	.word	4
	.word	_Label_2497
	.word	-924
	.word	4
	.word	_Label_2498
	.word	-928
	.word	4
	.word	_Label_2499
	.word	-932
	.word	4
	.word	_Label_2500
	.word	-936
	.word	4
	.word	_Label_2501
	.word	-940
	.word	4
	.word	_Label_2502
	.word	-944
	.word	4
	.word	0
_Label_2452:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2453:
	.ascii	"Pself\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2502:
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
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
	mov	2410,r13		! source line 2410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_2503 = &fileManagerLock
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
!   _temp_2504 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2413,r13		! source line 2413
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2509 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2510 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2509  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2505:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2510 then goto _Label_2508		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2508
_Label_2506:
	mov	2414,r13		! source line 2414
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2511 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2511  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2415,r13		! source line 2415
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2416,r13		! source line 2416
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2512 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2512  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2417,r13		! source line 2417
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_2513 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2513 [i ] into _temp_2514
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
_Label_2507:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2505
! END FOR
_Label_2508:
! CALL STATEMENT...
!   _temp_2515 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2515  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2420,r13		! source line 2420
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2516 = _function_227_printFCB
	set	_function_227_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2517 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2516  sizeInBytes=4
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
	mov	2422,r13		! source line 2422
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2518 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2518  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2423,r13		! source line 2423
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2523 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2524 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2523  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2519:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2524 then goto _Label_2522		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2522
_Label_2520:
	mov	2424,r13		! source line 2424
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2525 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2525  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2425,r13		! source line 2425
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2426,r13		! source line 2426
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2526 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2526  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2427,r13		! source line 2427
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2528 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2528 [i ] into _temp_2529
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
!   _temp_2527 = _temp_2529		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2527  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2428,r13		! source line 2428
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2530 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2530  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2429,r13		! source line 2429
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0SE",r10
!   _temp_2531 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2531 [i ] into _temp_2532
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
_Label_2521:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2519
! END FOR
_Label_2522:
! CALL STATEMENT...
!   _temp_2533 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2533  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2432,r13		! source line 2432
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2534 = _function_226_printOpen
	set	_function_226_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2535 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2534  sizeInBytes=4
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
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_2536 = &fileManagerLock
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
	mov	2434,r13		! source line 2434
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
	.word	_Label_2537
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2539
	.word	-12
	.word	4
	.word	_Label_2540
	.word	-16
	.word	4
	.word	_Label_2541
	.word	-20
	.word	4
	.word	_Label_2542
	.word	-24
	.word	4
	.word	_Label_2543
	.word	-28
	.word	4
	.word	_Label_2544
	.word	-32
	.word	4
	.word	_Label_2545
	.word	-36
	.word	4
	.word	_Label_2546
	.word	-40
	.word	4
	.word	_Label_2547
	.word	-44
	.word	4
	.word	_Label_2548
	.word	-48
	.word	4
	.word	_Label_2549
	.word	-52
	.word	4
	.word	_Label_2550
	.word	-56
	.word	4
	.word	_Label_2551
	.word	-60
	.word	4
	.word	_Label_2552
	.word	-64
	.word	4
	.word	_Label_2553
	.word	-68
	.word	4
	.word	_Label_2554
	.word	-72
	.word	4
	.word	_Label_2555
	.word	-76
	.word	4
	.word	_Label_2556
	.word	-80
	.word	4
	.word	_Label_2557
	.word	-84
	.word	4
	.word	_Label_2558
	.word	-88
	.word	4
	.word	_Label_2559
	.word	-92
	.word	4
	.word	_Label_2560
	.word	-96
	.word	4
	.word	_Label_2561
	.word	-100
	.word	4
	.word	_Label_2562
	.word	-104
	.word	4
	.word	_Label_2563
	.word	-108
	.word	4
	.word	_Label_2564
	.word	-112
	.word	4
	.word	_Label_2565
	.word	-116
	.word	4
	.word	0
_Label_2537:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2538:
	.ascii	"Pself\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2565:
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
_Label_3328:
	push	r0
	sub	r1,1,r1
	bne	_Label_3328
	mov	2439,r13		! source line 2439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   _temp_2566 = &_P_Kernel_fileManager
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
	mov	2456,r13		! source line 2456
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2567
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2567
	jmp	_Label_2568
_Label_2567:
! THEN...
	mov	2457,r13		! source line 2457
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2568:
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_2569 = &fileManagerLock
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
	mov	2462,r13		! source line 2462
	mov	"\0\0WH",r10
_Label_2570:
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_2573 = &openFileFreeList
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
!   if result==true then goto _Label_2571 else goto _Label_2572
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2572
	jmp	_Label_2571
_Label_2571:
	mov	2462,r13		! source line 2462
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   _temp_2574 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2575 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2574  sizeInBytes=4
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
	jmp	_Label_2570
_Label_2572:
! ASSIGNMENT STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0AS",r10
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_2576 = &openFileFreeList
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
	mov	2468,r13		! source line 2468
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2577 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2577 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2578 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2578 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2579 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2579 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   _temp_2580 = &fileManagerLock
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
	mov	2475,r13		! source line 2475
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
	.word	_Label_2581
	.word	8		! total size of parameters
	.word	56		! frame size = 56
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
	.word	0
_Label_2581:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2582:
	.ascii	"Pself\0"
	.align
_Label_2583:
	.byte	'P'
	.ascii	"filename\0"
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
	.ascii	"_temp_2569\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2594:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2595:
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
_Label_3329:
	push	r0
	sub	r1,1,r1
	bne	_Label_3329
	mov	2480,r13		! source line 2480
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
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
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2597		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2597
!	jmp	_Label_2596
_Label_2596:
! THEN...
	mov	2511,r13		! source line 2511
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2598 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2598  sizeInBytes=4
	load	[r14+-132],r1
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
_Label_2597:
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
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
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
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
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0WH",r10
_Label_2599:
!   if numFiles <= 0 then goto _Label_2601		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2601
!	jmp	_Label_2600
_Label_2600:
	mov	2521,r13		! source line 2521
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2602 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2602  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2522,r13		! source line 2522
	mov	"\0\0CA",r10
	call	_function_228_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2603 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2603  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CA",r10
	call	_function_228_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2604 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2604  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CA",r10
	call	_function_228_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2608 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2608 then goto _Label_2606		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2606
!	jmp	_Label_2607
_Label_2607:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2610
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
!   _temp_2609 = _temp_2610		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2609  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2529,r13		! source line 2529
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2605 else goto _Label_2606
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2606
	jmp	_Label_2605
_Label_2605:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0BR",r10
	jmp	_Label_2601
! END IF...
_Label_2606:
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2599
_Label_2601:
! IF STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2612		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2612
!	jmp	_Label_2611
_Label_2611:
! THEN...
	mov	2538,r13		! source line 2538
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2612:
! SEND STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0SE",r10
!   _temp_2613 = &fileManagerLock
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
	mov	2543,r13		! source line 2543
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2618 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2619 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2618  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2614:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2619 then goto _Label_2617		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2617
_Label_2615:
	mov	2543,r13		! source line 2543
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   _temp_2620 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2620 [i ] into _temp_2621
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
!   fcb = _temp_2621		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2625 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2624 = *_temp_2625  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2624 != start then goto _Label_2623		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2623
!	jmp	_Label_2622
_Label_2622:
! THEN...
	mov	2546,r13		! source line 2546
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2626 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2628 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2627 = _temp_2628 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2626 = _temp_2627  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   _temp_2630 = &fileManagerLock
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
	mov	2548,r13		! source line 2548
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2623:
!   Increment the FOR-LOOP index variable and jump back
_Label_2616:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2614
! END FOR
_Label_2617:
! WHILE STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0WH",r10
_Label_2631:
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   _temp_2634 = &fcbFreeList
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
!   if result==true then goto _Label_2632 else goto _Label_2633
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2633
	jmp	_Label_2632
_Label_2632:
	mov	2553,r13		! source line 2553
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0SE",r10
!   _temp_2635 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2636 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2635  sizeInBytes=4
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
	jmp	_Label_2631
_Label_2633:
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
	mov	2556,r13		! source line 2556
	mov	"\0\0SE",r10
!   _temp_2637 = &fcbFreeList
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
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_2638 = &fileManagerLock
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
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2639 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2639 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2640 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2640 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2641 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2641 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2646 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2645 = *_temp_2646  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2645 < 0 then goto _Label_2644		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2644
	jmp	_Label_2642
_Label_2644:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2647 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2647 ) then goto _Label_2643		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2643
!	jmp	_Label_2642
_Label_2642:
! THEN...
	mov	2566,r13		! source line 2566
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2648 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2648  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2566,r13		! source line 2566
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2643:
! RETURN STATEMENT...
	mov	2568,r13		! source line 2568
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
	.word	_Label_2649
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2651
	.word	12
	.word	4
	.word	_Label_2652
	.word	-12
	.word	4
	.word	_Label_2653
	.word	-16
	.word	4
	.word	_Label_2654
	.word	-20
	.word	4
	.word	_Label_2655
	.word	-24
	.word	4
	.word	_Label_2656
	.word	-28
	.word	4
	.word	_Label_2657
	.word	-32
	.word	4
	.word	_Label_2658
	.word	-36
	.word	4
	.word	_Label_2659
	.word	-40
	.word	4
	.word	_Label_2660
	.word	-44
	.word	4
	.word	_Label_2661
	.word	-48
	.word	4
	.word	_Label_2662
	.word	-52
	.word	4
	.word	_Label_2663
	.word	-56
	.word	4
	.word	_Label_2664
	.word	-60
	.word	4
	.word	_Label_2665
	.word	-64
	.word	4
	.word	_Label_2666
	.word	-68
	.word	4
	.word	_Label_2667
	.word	-72
	.word	4
	.word	_Label_2668
	.word	-76
	.word	4
	.word	_Label_2669
	.word	-80
	.word	4
	.word	_Label_2670
	.word	-84
	.word	4
	.word	_Label_2671
	.word	-88
	.word	4
	.word	_Label_2672
	.word	-92
	.word	4
	.word	_Label_2673
	.word	-96
	.word	4
	.word	_Label_2674
	.word	-100
	.word	4
	.word	_Label_2675
	.word	-104
	.word	4
	.word	_Label_2676
	.word	-108
	.word	4
	.word	_Label_2677
	.word	-112
	.word	4
	.word	_Label_2678
	.word	-116
	.word	4
	.word	_Label_2679
	.word	-120
	.word	4
	.word	_Label_2680
	.word	-124
	.word	4
	.word	_Label_2681
	.word	-128
	.word	4
	.word	_Label_2682
	.word	-132
	.word	4
	.word	_Label_2683
	.word	-136
	.word	4
	.word	_Label_2684
	.word	-140
	.word	4
	.word	_Label_2685
	.word	-144
	.word	4
	.word	_Label_2686
	.word	-148
	.word	4
	.word	_Label_2687
	.word	-152
	.word	4
	.word	_Label_2688
	.word	-156
	.word	4
	.word	_Label_2689
	.word	-160
	.word	4
	.word	0
_Label_2649:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2650:
	.ascii	"Pself\0"
	.align
_Label_2651:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2683:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2684:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2685:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2686:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2687:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2688:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2689:
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
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	2581,r13		! source line 2581
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0IF",r10
!   _temp_2692 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2692 then goto _Label_2691		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2691
!	jmp	_Label_2690
_Label_2690:
! THEN...
	mov	2584,r13		! source line 2584
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2691:
! SEND STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0SE",r10
!   _temp_2693 = &fileManagerLock
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
	mov	2587,r13		! source line 2587
	mov	"\0\0SE",r10
!   _temp_2694 = &_P_Kernel_fileManager
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
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2695 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2695  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2696 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2699 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2698 = *_temp_2699  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2697 = _temp_2698 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2696 = _temp_2697  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2703 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2702 = *_temp_2703  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2702 > 0 then goto _Label_2701		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2701
!	jmp	_Label_2700
_Label_2700:
! THEN...
	mov	2591,r13		! source line 2591
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_2704 = &openFileFreeList
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
	mov	2592,r13		! source line 2592
	mov	"\0\0SE",r10
!   _temp_2705 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2706 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2705  sizeInBytes=4
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
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2707 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2710 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2709 = *_temp_2710  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2708 = _temp_2709 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2707 = _temp_2708  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2714 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2713 = *_temp_2714  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2713 > 0 then goto _Label_2712		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2712
!	jmp	_Label_2711
_Label_2711:
! THEN...
	mov	2595,r13		! source line 2595
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_2715 = &fcbFreeList
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
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_2716 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2717 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2716  sizeInBytes=4
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
_Label_2712:
! END IF...
_Label_2701:
! SEND STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_2718 = &fileManagerLock
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
	mov	2599,r13		! source line 2599
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
	.word	_Label_2719
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2721
	.word	12
	.word	4
	.word	_Label_2722
	.word	-12
	.word	4
	.word	_Label_2723
	.word	-16
	.word	4
	.word	_Label_2724
	.word	-20
	.word	4
	.word	_Label_2725
	.word	-24
	.word	4
	.word	_Label_2726
	.word	-28
	.word	4
	.word	_Label_2727
	.word	-32
	.word	4
	.word	_Label_2728
	.word	-36
	.word	4
	.word	_Label_2729
	.word	-40
	.word	4
	.word	_Label_2730
	.word	-44
	.word	4
	.word	_Label_2731
	.word	-48
	.word	4
	.word	_Label_2732
	.word	-52
	.word	4
	.word	_Label_2733
	.word	-56
	.word	4
	.word	_Label_2734
	.word	-60
	.word	4
	.word	_Label_2735
	.word	-64
	.word	4
	.word	_Label_2736
	.word	-68
	.word	4
	.word	_Label_2737
	.word	-72
	.word	4
	.word	_Label_2738
	.word	-76
	.word	4
	.word	_Label_2739
	.word	-80
	.word	4
	.word	_Label_2740
	.word	-84
	.word	4
	.word	_Label_2741
	.word	-88
	.word	4
	.word	_Label_2742
	.word	-92
	.word	4
	.word	_Label_2743
	.word	-96
	.word	4
	.word	_Label_2744
	.word	-100
	.word	4
	.word	_Label_2745
	.word	-104
	.word	4
	.word	0
_Label_2719:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2720:
	.ascii	"Pself\0"
	.align
_Label_2721:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2745:
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
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	2604,r13		! source line 2604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2749 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2748 = *_temp_2749  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2748) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2750 = _temp_2748 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2750 ) then goto _Label_2747		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2747
!	jmp	_Label_2746
_Label_2746:
! THEN...
	mov	2610,r13		! source line 2610
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2755 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2754 = *_temp_2755  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2754) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2756 = _temp_2754 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2753 = *_temp_2756  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2753 >= 0 then goto _Label_2752		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2752
!	jmp	_Label_2751
_Label_2751:
! THEN...
	mov	2611,r13		! source line 2611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2757 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2757  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2611,r13		! source line 2611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2752:
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2759 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2758 = *_temp_2759  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2758) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2760 = _temp_2758 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2760 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2764 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2763 = *_temp_2764  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2763) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2765 = _temp_2763 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2762 = *_temp_2765  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2768 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2767 = *_temp_2768  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2767) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2769 = _temp_2767 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2766 = *_temp_2769  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2761 = _temp_2762 + _temp_2766		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2772 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2771 = *_temp_2772  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2771) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2773 = _temp_2771 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2770 = *_temp_2773  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2774 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2761  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2770  sizeInBytes=4
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
_Label_2747:
! RETURN STATEMENT...
	mov	2609,r13		! source line 2609
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
	.word	_Label_2775
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2777
	.word	12
	.word	4
	.word	_Label_2778
	.word	-12
	.word	4
	.word	_Label_2779
	.word	-16
	.word	4
	.word	_Label_2780
	.word	-20
	.word	4
	.word	_Label_2781
	.word	-24
	.word	4
	.word	_Label_2782
	.word	-28
	.word	4
	.word	_Label_2783
	.word	-32
	.word	4
	.word	_Label_2784
	.word	-36
	.word	4
	.word	_Label_2785
	.word	-40
	.word	4
	.word	_Label_2786
	.word	-44
	.word	4
	.word	_Label_2787
	.word	-48
	.word	4
	.word	_Label_2788
	.word	-52
	.word	4
	.word	_Label_2789
	.word	-56
	.word	4
	.word	_Label_2790
	.word	-60
	.word	4
	.word	_Label_2791
	.word	-64
	.word	4
	.word	_Label_2792
	.word	-68
	.word	4
	.word	_Label_2793
	.word	-72
	.word	4
	.word	_Label_2794
	.word	-76
	.word	4
	.word	_Label_2795
	.word	-80
	.word	4
	.word	_Label_2796
	.word	-84
	.word	4
	.word	_Label_2797
	.word	-88
	.word	4
	.word	_Label_2798
	.word	-92
	.word	4
	.word	_Label_2799
	.word	-96
	.word	4
	.word	_Label_2800
	.word	-100
	.word	4
	.word	_Label_2801
	.word	-104
	.word	4
	.word	_Label_2802
	.word	-108
	.word	4
	.word	0
_Label_2775:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2776:
	.ascii	"Pself\0"
	.align
_Label_2777:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2748\0"
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
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	2623,r13		! source line 2623
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0SE",r10
!   _temp_2803 = &fileManagerLock
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
	mov	2639,r13		! source line 2639
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2809		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2809
!   _temp_2808 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2810
_Label_2809:
!   _temp_2808 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2810:
!   if _temp_2808 then goto _Label_2807 else goto _Label_2804
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2804
	jmp	_Label_2807
_Label_2807:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2813 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2812 = *_temp_2813  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2812 == 0 then goto _Label_2814		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2814
!   _temp_2811 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2815
_Label_2814:
!   _temp_2811 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2815:
!   if _temp_2811 then goto _Label_2806 else goto _Label_2804
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2804
	jmp	_Label_2806
_Label_2806:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2818 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2817 = *_temp_2818  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2817) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2819 = _temp_2817 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2816 = *_temp_2819  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2816 >= 0 then goto _Label_2805		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2805
!	jmp	_Label_2804
_Label_2804:
! THEN...
	mov	2640,r13		! source line 2640
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2820 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2820  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2640,r13		! source line 2640
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2805:
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2821 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2821  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0WH",r10
_Label_2822:
!   if numBytes <= 0 then goto _Label_2824		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2824
!	jmp	_Label_2823
_Label_2823:
	mov	2643,r13		! source line 2643
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
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
	mov	2653,r13		! source line 2653
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
	mov	2657,r13		! source line 2657
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2828 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2827 = *_temp_2828  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2827 == sector then goto _Label_2826		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2826
!	jmp	_Label_2825
_Label_2825:
! THEN...
	mov	2658,r13		! source line 2658
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2829) then goto _runtimeErrorNullPointer
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
	mov	2660,r13		! source line 2660
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2832 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2831 = *_temp_2832  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2830 = sector + _temp_2831		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2834 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2833 = *_temp_2834  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2835 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2830  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2833  sizeInBytes=4
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
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2836 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2836 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2837 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2837 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2826:
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2839 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2838 = *_temp_2839  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2838 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   _temp_2840 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2840  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2667,r13		! source line 2667
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
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2822
_Label_2824:
! SEND STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0SE",r10
!   _temp_2841 = &fileManagerLock
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
	mov	2682,r13		! source line 2682
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
	.word	_Label_2842
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2843
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2844
	.word	12
	.word	4
	.word	_Label_2845
	.word	16
	.word	4
	.word	_Label_2846
	.word	20
	.word	4
	.word	_Label_2847
	.word	24
	.word	4
	.word	_Label_2848
	.word	-16
	.word	4
	.word	_Label_2849
	.word	-20
	.word	4
	.word	_Label_2850
	.word	-24
	.word	4
	.word	_Label_2851
	.word	-28
	.word	4
	.word	_Label_2852
	.word	-32
	.word	4
	.word	_Label_2853
	.word	-36
	.word	4
	.word	_Label_2854
	.word	-40
	.word	4
	.word	_Label_2855
	.word	-44
	.word	4
	.word	_Label_2856
	.word	-48
	.word	4
	.word	_Label_2857
	.word	-52
	.word	4
	.word	_Label_2858
	.word	-56
	.word	4
	.word	_Label_2859
	.word	-60
	.word	4
	.word	_Label_2860
	.word	-64
	.word	4
	.word	_Label_2861
	.word	-68
	.word	4
	.word	_Label_2862
	.word	-72
	.word	4
	.word	_Label_2863
	.word	-76
	.word	4
	.word	_Label_2864
	.word	-80
	.word	4
	.word	_Label_2865
	.word	-84
	.word	4
	.word	_Label_2866
	.word	-88
	.word	4
	.word	_Label_2867
	.word	-92
	.word	4
	.word	_Label_2868
	.word	-96
	.word	4
	.word	_Label_2869
	.word	-100
	.word	4
	.word	_Label_2870
	.word	-104
	.word	4
	.word	_Label_2871
	.word	-9
	.word	1
	.word	_Label_2872
	.word	-10
	.word	1
	.word	_Label_2873
	.word	-108
	.word	4
	.word	_Label_2874
	.word	-112
	.word	4
	.word	_Label_2875
	.word	-116
	.word	4
	.word	_Label_2876
	.word	-120
	.word	4
	.word	_Label_2877
	.word	-124
	.word	4
	.word	_Label_2878
	.word	-128
	.word	4
	.word	0
_Label_2842:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2843:
	.ascii	"Pself\0"
	.align
_Label_2844:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2845:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2846:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2847:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2871:
	.byte	'C'
	.ascii	"_temp_2811\0"
	.align
_Label_2872:
	.byte	'C'
	.ascii	"_temp_2808\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2874:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2875:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2876:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2877:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2878:
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
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	2687,r13		! source line 2687
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0SE",r10
!   _temp_2879 = &fileManagerLock
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
	mov	2704,r13		! source line 2704
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2885		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2885
!   _temp_2884 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2886
_Label_2885:
!   _temp_2884 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2886:
!   if _temp_2884 then goto _Label_2883 else goto _Label_2880
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2880
	jmp	_Label_2883
_Label_2883:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2889 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2888 = *_temp_2889  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2888 == 0 then goto _Label_2890		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2890
!   _temp_2887 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2891
_Label_2890:
!   _temp_2887 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2891:
!   if _temp_2887 then goto _Label_2882 else goto _Label_2880
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2880
	jmp	_Label_2882
_Label_2882:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2894 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2893 = *_temp_2894  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2893) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2895 = _temp_2893 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2892 = *_temp_2895  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2892 >= 0 then goto _Label_2881		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2881
!	jmp	_Label_2880
_Label_2880:
! THEN...
	mov	2705,r13		! source line 2705
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2896 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2705,r13		! source line 2705
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2881:
! ASSIGNMENT STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2897 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2897  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0WH",r10
_Label_2898:
!   if numBytes <= 0 then goto _Label_2900		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2900
!	jmp	_Label_2899
_Label_2899:
	mov	2708,r13		! source line 2708
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2717,r13		! source line 2717
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
	mov	2718,r13		! source line 2718
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
	mov	2722,r13		! source line 2722
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2904 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2903 = *_temp_2904  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2903 == sector then goto _Label_2902		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2902
!	jmp	_Label_2901
_Label_2901:
! THEN...
	mov	2724,r13		! source line 2724
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2905) then goto _runtimeErrorNullPointer
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
_Label_2902:
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2907 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2906 = *_temp_2907  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2906 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   _temp_2908 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2908  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2912 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2911 = *_temp_2912  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2911 != sector then goto _Label_2910		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2910
!	jmp	_Label_2909
_Label_2909:
	jmp	_Label_2913
_Label_2910:
! ELSE...
	mov	2730,r13		! source line 2730
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2916
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2916
	jmp	_Label_2915
_Label_2916:
!   if bytesToMove != 8192 then goto _Label_2915		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2915
!	jmp	_Label_2914
_Label_2914:
	jmp	_Label_2917
_Label_2915:
! ELSE...
	mov	2734,r13		! source line 2734
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2920 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2919 = *_temp_2920  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2918 = sector + _temp_2919		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2922 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2921 = *_temp_2922  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2923 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2918  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2921  sizeInBytes=4
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
_Label_2917:
! END IF...
_Label_2913:
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2924 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2924 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2925 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2925 = 1  (sizeInBytes=1)
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
	mov	2743,r13		! source line 2743
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2898
_Label_2900:
! SEND STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
!   _temp_2926 = &fileManagerLock
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
	mov	2755,r13		! source line 2755
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
	.word	_Label_2927
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2929
	.word	12
	.word	4
	.word	_Label_2930
	.word	16
	.word	4
	.word	_Label_2931
	.word	20
	.word	4
	.word	_Label_2932
	.word	24
	.word	4
	.word	_Label_2933
	.word	-16
	.word	4
	.word	_Label_2934
	.word	-20
	.word	4
	.word	_Label_2935
	.word	-24
	.word	4
	.word	_Label_2936
	.word	-28
	.word	4
	.word	_Label_2937
	.word	-32
	.word	4
	.word	_Label_2938
	.word	-36
	.word	4
	.word	_Label_2939
	.word	-40
	.word	4
	.word	_Label_2940
	.word	-44
	.word	4
	.word	_Label_2941
	.word	-48
	.word	4
	.word	_Label_2942
	.word	-52
	.word	4
	.word	_Label_2943
	.word	-56
	.word	4
	.word	_Label_2944
	.word	-60
	.word	4
	.word	_Label_2945
	.word	-64
	.word	4
	.word	_Label_2946
	.word	-68
	.word	4
	.word	_Label_2947
	.word	-72
	.word	4
	.word	_Label_2948
	.word	-76
	.word	4
	.word	_Label_2949
	.word	-80
	.word	4
	.word	_Label_2950
	.word	-84
	.word	4
	.word	_Label_2951
	.word	-88
	.word	4
	.word	_Label_2952
	.word	-92
	.word	4
	.word	_Label_2953
	.word	-96
	.word	4
	.word	_Label_2954
	.word	-100
	.word	4
	.word	_Label_2955
	.word	-104
	.word	4
	.word	_Label_2956
	.word	-108
	.word	4
	.word	_Label_2957
	.word	-112
	.word	4
	.word	_Label_2958
	.word	-9
	.word	1
	.word	_Label_2959
	.word	-10
	.word	1
	.word	_Label_2960
	.word	-116
	.word	4
	.word	_Label_2961
	.word	-120
	.word	4
	.word	_Label_2962
	.word	-124
	.word	4
	.word	_Label_2963
	.word	-128
	.word	4
	.word	_Label_2964
	.word	-132
	.word	4
	.word	_Label_2965
	.word	-136
	.word	4
	.word	0
_Label_2927:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2928:
	.ascii	"Pself\0"
	.align
_Label_2929:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2930:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2931:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2932:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2958:
	.byte	'C'
	.ascii	"_temp_2887\0"
	.align
_Label_2959:
	.byte	'C'
	.ascii	"_temp_2884\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2961:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2962:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2963:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2964:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2965:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2966
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2966:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2967
	.word	_sourceFileName
	.word	387		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2967:
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
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
	mov	2791,r13		! source line 2791
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
!   _temp_2968 = &_P_Kernel_frameManager
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
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2796,r13		! source line 2796
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
	.word	_Label_2969
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2971
	.word	-12
	.word	4
	.word	0
_Label_2969:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2970:
	.ascii	"Pself\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2968\0"
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
_Label_3335:
	push	r0
	sub	r1,1,r1
	bne	_Label_3335
	mov	2801,r13		! source line 2801
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2972 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2972  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2802,r13		! source line 2802
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2803,r13		! source line 2803
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2973 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2973  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2804,r13		! source line 2804
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2805,r13		! source line 2805
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2974 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2974  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2975 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2975  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2976 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2976  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2977 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2812,r13		! source line 2812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2814,r13		! source line 2814
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
	.word	_Label_2978
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2980
	.word	-12
	.word	4
	.word	_Label_2981
	.word	-16
	.word	4
	.word	_Label_2982
	.word	-20
	.word	4
	.word	_Label_2983
	.word	-24
	.word	4
	.word	_Label_2984
	.word	-28
	.word	4
	.word	_Label_2985
	.word	-32
	.word	4
	.word	0
_Label_2978:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2979:
	.ascii	"Pself\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2986
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2986:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2987
	.word	_sourceFileName
	.word	404		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2987:
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
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
	mov	2825,r13		! source line 2825
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2988 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2988  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2827,r13		! source line 2827
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2989 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2989  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2828,r13		! source line 2828
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2991		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2991
!	jmp	_Label_2990
_Label_2990:
! THEN...
	mov	2830,r13		! source line 2830
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2830,r13		! source line 2830
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
	jmp	_Label_2992
_Label_2991:
! ELSE...
	mov	2832,r13		! source line 2832
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2993 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2992:
! RETURN STATEMENT...
	mov	2829,r13		! source line 2829
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
	.word	_Label_2994
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2995
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2996
	.word	-12
	.word	4
	.word	_Label_2997
	.word	-16
	.word	4
	.word	_Label_2998
	.word	-20
	.word	4
	.word	0
_Label_2994:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2995:
	.ascii	"Pself\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2988\0"
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
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
	mov	2838,r13		! source line 2838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
!   _temp_2999 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3000 = _temp_2999 + 4
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
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
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
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   _temp_3001 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3002 = _temp_3001 + 4
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
	mov	2852,r13		! source line 2852
	mov	"\0\0RE",r10
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3005 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3004  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3003  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3003  (sizeInBytes=1)
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
	.word	_Label_3006
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3007
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3008
	.word	12
	.word	4
	.word	_Label_3009
	.word	16
	.word	4
	.word	_Label_3010
	.word	-16
	.word	4
	.word	_Label_3011
	.word	-20
	.word	4
	.word	_Label_3012
	.word	-9
	.word	1
	.word	_Label_3013
	.word	-24
	.word	4
	.word	_Label_3014
	.word	-28
	.word	4
	.word	_Label_3015
	.word	-32
	.word	4
	.word	_Label_3016
	.word	-36
	.word	4
	.word	_Label_3017
	.word	-40
	.word	4
	.word	0
_Label_3006:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3007:
	.ascii	"Pself\0"
	.align
_Label_3008:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3009:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3012:
	.byte	'C'
	.ascii	"_temp_3003\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3017:
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
_Label_3338:
	push	r0
	sub	r1,1,r1
	bne	_Label_3338
	mov	2857,r13		! source line 2857
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0IF",r10
	mov	2862,r13		! source line 2862
	mov	"\0\0SE",r10
!   _temp_3021 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3022) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3021  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3020  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3020 then goto _Label_3019 else goto _Label_3018
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3018
	jmp	_Label_3019
_Label_3018:
! THEN...
	mov	2863,r13		! source line 2863
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3023 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3023  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2863,r13		! source line 2863
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3019:
! RETURN STATEMENT...
	mov	2865,r13		! source line 2865
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
	.word	_Label_3024
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3026
	.word	-16
	.word	4
	.word	_Label_3027
	.word	-20
	.word	4
	.word	_Label_3028
	.word	-24
	.word	4
	.word	_Label_3029
	.word	-9
	.word	1
	.word	_Label_3030
	.word	-28
	.word	4
	.word	0
_Label_3024:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3025:
	.ascii	"Pself\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3029:
	.byte	'C'
	.ascii	"_temp_3020\0"
	.align
_Label_3030:
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
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	2870,r13		! source line 2870
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3034 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3033 = *_temp_3034  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3033) then goto _Label_3032
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3032
!	jmp	_Label_3031
_Label_3031:
! THEN...
	mov	2897,r13		! source line 2897
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3035 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3035  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2897,r13		! source line 2897
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3032:
! IF STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0IF",r10
	mov	2901,r13		! source line 2901
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3039) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3038  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3038 == 1112300152 then goto _Label_3037		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3037
!	jmp	_Label_3036
_Label_3036:
! THEN...
	mov	2902,r13		! source line 2902
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3040 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3040  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CE",r10
	call	print
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
_Label_3037:
! ASSIGNMENT STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0AS",r10
	mov	2907,r13		! source line 2907
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3041) then goto _runtimeErrorNullPointer
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
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
	mov	2908,r13		! source line 2908
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3042) then goto _runtimeErrorNullPointer
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
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
	mov	2909,r13		! source line 2909
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3043) then goto _runtimeErrorNullPointer
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
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
	mov	2910,r13		! source line 2910
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3044) then goto _runtimeErrorNullPointer
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
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3045) then goto _runtimeErrorNullPointer
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
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3046) then goto _runtimeErrorNullPointer
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
	mov	2915,r13		! source line 2915
	mov	"\0\0IF",r10
!   _temp_3049 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3049) then goto _Label_3048
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3048
!	jmp	_Label_3047
_Label_3047:
! THEN...
	mov	2916,r13		! source line 2916
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3050 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3050  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3048:
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
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
	mov	2923,r13		! source line 2923
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3052
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3052
!	jmp	_Label_3051
_Label_3051:
! THEN...
	mov	2924,r13		! source line 2924
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3053 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3053  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2924,r13		! source line 2924
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3052:
! IF STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0IF",r10
!   _temp_3056 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3056) then goto _Label_3055
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3055
!	jmp	_Label_3054
_Label_3054:
! THEN...
	mov	2930,r13		! source line 2930
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3057 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3057  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3055:
! IF STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0IF",r10
!   _temp_3060 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3060 then goto _Label_3059		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3059
!	jmp	_Label_3058
_Label_3058:
! THEN...
	mov	2934,r13		! source line 2934
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3061 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3061  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2934,r13		! source line 2934
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3059:
! ASSIGNMENT STATEMENT...
	mov	2937,r13		! source line 2937
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
	mov	2940,r13		! source line 2940
	mov	"\0\0IF",r10
!   _temp_3064 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3064) then goto _Label_3063
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3063
!	jmp	_Label_3062
_Label_3062:
! THEN...
	mov	2941,r13		! source line 2941
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3065 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3065  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2941,r13		! source line 2941
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2942,r13		! source line 2942
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3063:
! IF STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0IF",r10
!   _temp_3068 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3068 then goto _Label_3067		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3067
!	jmp	_Label_3066
_Label_3066:
! THEN...
	mov	2945,r13		! source line 2945
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3069 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3069  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3067:
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
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
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
!   _temp_3072 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3071 = _temp_3072 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3070 = _temp_3071 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3070 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3074		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3074
!	jmp	_Label_3073
_Label_3073:
! THEN...
	mov	2967,r13		! source line 2967
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3075 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3075  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2967,r13		! source line 2967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3076 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3076  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2968,r13		! source line 2968
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3077 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3077  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2969,r13		! source line 2969
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3074:
! SEND STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0SE",r10
!   _temp_3078 = &_P_Kernel_frameManager
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
	mov	2978,r13		! source line 2978
	mov	"\0\0IF",r10
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3082) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3081  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3081 == 707406378 then goto _Label_3080		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3080
!	jmp	_Label_3079
_Label_3079:
! THEN...
	mov	2979,r13		! source line 2979
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3083 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3083  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2979,r13		! source line 2979
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0SE",r10
!   _temp_3084 = &_P_Kernel_frameManager
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
	mov	2981,r13		! source line 2981
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3080:
! ASSIGNMENT STATEMENT...
	mov	2985,r13		! source line 2985
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
	mov	2986,r13		! source line 2986
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3089 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3090 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3089  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3085:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3090 then goto _Label_3088		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3088
_Label_3086:
	mov	2986,r13		! source line 2986
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0AS",r10
	mov	2987,r13		! source line 2987
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
	mov	2990,r13		! source line 2990
	mov	"\0\0IF",r10
	mov	2990,r13		! source line 2990
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3094) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3093  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3093 then goto _Label_3092 else goto _Label_3091
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3091
	jmp	_Label_3092
_Label_3091:
! THEN...
	mov	2991,r13		! source line 2991
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3095 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3095  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2991,r13		! source line 2991
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0SE",r10
!   _temp_3096 = &_P_Kernel_frameManager
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
	mov	2993,r13		! source line 2993
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3092:
! SEND STATEMENT...
	mov	2995,r13		! source line 2995
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
	mov	2996,r13		! source line 2996
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3087:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3085
! END FOR
_Label_3088:
! IF STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0IF",r10
	mov	3000,r13		! source line 3000
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3100) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3099  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3099 == 707406378 then goto _Label_3098		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3098
!	jmp	_Label_3097
_Label_3097:
! THEN...
	mov	3001,r13		! source line 3001
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3101 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3101  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3001,r13		! source line 3001
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0SE",r10
!   _temp_3102 = &_P_Kernel_frameManager
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
	mov	3003,r13		! source line 3003
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3098:
! FOR STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3107 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3108 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3107  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3103:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3108 then goto _Label_3106		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3106
_Label_3104:
	mov	3007,r13		! source line 3007
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0AS",r10
	mov	3008,r13		! source line 3008
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
	mov	3011,r13		! source line 3011
	mov	"\0\0IF",r10
	mov	3011,r13		! source line 3011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3112) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3111  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3111 then goto _Label_3110 else goto _Label_3109
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3109
	jmp	_Label_3110
_Label_3109:
! THEN...
	mov	3012,r13		! source line 3012
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3113 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3113  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3012,r13		! source line 3012
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0SE",r10
!   _temp_3114 = &_P_Kernel_frameManager
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
	mov	3014,r13		! source line 3014
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3110:
! ASSIGNMENT STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3105:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3103
! END FOR
_Label_3106:
! IF STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0IF",r10
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3118) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3117  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3117 == 707406378 then goto _Label_3116		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3116
!	jmp	_Label_3115
_Label_3115:
! THEN...
	mov	3021,r13		! source line 3021
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3119 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3119  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3021,r13		! source line 3021
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3022,r13		! source line 3022
	mov	"\0\0SE",r10
!   _temp_3120 = &_P_Kernel_frameManager
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
	mov	3023,r13		! source line 3023
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3116:
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
	mov	3027,r13		! source line 3027
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
	mov	3031,r13		! source line 3031
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3034,r13		! source line 3034
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
	.word	_Label_3121
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3123
	.word	12
	.word	4
	.word	_Label_3124
	.word	-16
	.word	4
	.word	_Label_3125
	.word	-20
	.word	4
	.word	_Label_3126
	.word	-24
	.word	4
	.word	_Label_3127
	.word	-28
	.word	4
	.word	_Label_3128
	.word	-32
	.word	4
	.word	_Label_3129
	.word	-36
	.word	4
	.word	_Label_3130
	.word	-40
	.word	4
	.word	_Label_3131
	.word	-9
	.word	1
	.word	_Label_3132
	.word	-44
	.word	4
	.word	_Label_3133
	.word	-48
	.word	4
	.word	_Label_3134
	.word	-52
	.word	4
	.word	_Label_3135
	.word	-56
	.word	4
	.word	_Label_3136
	.word	-60
	.word	4
	.word	_Label_3137
	.word	-64
	.word	4
	.word	_Label_3138
	.word	-68
	.word	4
	.word	_Label_3139
	.word	-72
	.word	4
	.word	_Label_3140
	.word	-76
	.word	4
	.word	_Label_3141
	.word	-10
	.word	1
	.word	_Label_3142
	.word	-80
	.word	4
	.word	_Label_3143
	.word	-84
	.word	4
	.word	_Label_3144
	.word	-88
	.word	4
	.word	_Label_3145
	.word	-92
	.word	4
	.word	_Label_3146
	.word	-96
	.word	4
	.word	_Label_3147
	.word	-100
	.word	4
	.word	_Label_3148
	.word	-104
	.word	4
	.word	_Label_3149
	.word	-108
	.word	4
	.word	_Label_3150
	.word	-112
	.word	4
	.word	_Label_3151
	.word	-116
	.word	4
	.word	_Label_3152
	.word	-120
	.word	4
	.word	_Label_3153
	.word	-124
	.word	4
	.word	_Label_3154
	.word	-128
	.word	4
	.word	_Label_3155
	.word	-132
	.word	4
	.word	_Label_3156
	.word	-136
	.word	4
	.word	_Label_3157
	.word	-140
	.word	4
	.word	_Label_3158
	.word	-144
	.word	4
	.word	_Label_3159
	.word	-148
	.word	4
	.word	_Label_3160
	.word	-152
	.word	4
	.word	_Label_3161
	.word	-156
	.word	4
	.word	_Label_3162
	.word	-160
	.word	4
	.word	_Label_3163
	.word	-164
	.word	4
	.word	_Label_3164
	.word	-168
	.word	4
	.word	_Label_3165
	.word	-172
	.word	4
	.word	_Label_3166
	.word	-176
	.word	4
	.word	_Label_3167
	.word	-180
	.word	4
	.word	_Label_3168
	.word	-184
	.word	4
	.word	_Label_3169
	.word	-188
	.word	4
	.word	_Label_3170
	.word	-192
	.word	4
	.word	_Label_3171
	.word	-196
	.word	4
	.word	_Label_3172
	.word	-200
	.word	4
	.word	_Label_3173
	.word	-204
	.word	4
	.word	_Label_3174
	.word	-208
	.word	4
	.word	_Label_3175
	.word	-212
	.word	4
	.word	_Label_3176
	.word	-216
	.word	4
	.word	_Label_3177
	.word	-220
	.word	4
	.word	_Label_3178
	.word	-224
	.word	4
	.word	_Label_3179
	.word	-228
	.word	4
	.word	_Label_3180
	.word	-232
	.word	4
	.word	_Label_3181
	.word	-236
	.word	4
	.word	_Label_3182
	.word	-240
	.word	4
	.word	_Label_3183
	.word	-244
	.word	4
	.word	_Label_3184
	.word	-248
	.word	4
	.word	_Label_3185
	.word	-252
	.word	4
	.word	_Label_3186
	.word	-256
	.word	4
	.word	_Label_3187
	.word	-260
	.word	4
	.word	_Label_3188
	.word	-264
	.word	4
	.word	_Label_3189
	.word	-268
	.word	4
	.word	0
_Label_3121:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3122:
	.ascii	"Pself\0"
	.align
_Label_3123:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3131:
	.byte	'C'
	.ascii	"_temp_3111\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3141:
	.byte	'C'
	.ascii	"_temp_3093\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3178:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3179:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3180:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3181:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3182:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3183:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3184:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3185:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3186:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3187:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3188:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3189:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
