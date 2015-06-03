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
_StringConst_224:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_223:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_222:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_221:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_220:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_219:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_218:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_217:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_216:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_215:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_214:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_213:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_212:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_211:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_210:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_209:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_208:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_207:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_206:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_205:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_204:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_203:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_202:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_201:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_200:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_199:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_198:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_197:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_196:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_195:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_194:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_193:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_192:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_191:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_190:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_189:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_188:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_187:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_186:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_185:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_184:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_183:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_182:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_181:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_180:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_179:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_178:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_177:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_176:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_175:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_174:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_173:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_172:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_171:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_170:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_169:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_168:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_167:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_166:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_165:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_164:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_163:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_162:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_161:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_160:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_159:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_158:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_157:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_156:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_155:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_154:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_153:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_152:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_151:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_150:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_149:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_148:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_147:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_146:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_145:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_144:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_143:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_142:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_141:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_140:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_139:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_138:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_137:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_136:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_135:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_134:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_133:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_132:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_131:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_130:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_129:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_128:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_127:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_126:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_125:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"T9"
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"T8"
	.align
_StringConst_122:
	.word	2			! length
	.ascii	"T7"
	.align
_StringConst_121:
	.word	2			! length
	.ascii	"T6"
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"T5"
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"T4"
	.align
_StringConst_118:
	.word	2			! length
	.ascii	"T3"
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"T2"
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"T1"
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"T0"
	.align
_StringConst_114:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_113:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_112:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_111:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_110:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_109:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_108:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_107:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_106:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_105:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_104:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_103:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_102:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_101:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_100:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_99:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_98:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_97:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_96:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_95:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_94:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_93:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_92:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_91:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_90:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_89:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_88:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_87:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_86:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_85:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_84:
	.word	20			! length
	.ascii	"\nNO WAITING THREADS\n"
	.align
_StringConst_83:
	.word	54			! length
	.ascii	"HoareTest called by a thread other than current thread"
	.align
_StringConst_82:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_81:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_80:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_79:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_78:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_76:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_75:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_74:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_73:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_72:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_71:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_70:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_69:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_68:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_67:
	.word	13			! length
	.ascii	"newCurrentPos"
	.align
_StringConst_66:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_65:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_64:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"virt addr of buffer"
	.align
_StringConst_62:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_61:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_59:
	.word	19			! length
	.ascii	"virt addr of buffer"
	.align
_StringConst_58:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_57:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_55:
	.word	64			! length
	.ascii	"A problem arose while localizing a string from a logical address"
	.align
_StringConst_54:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_53:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_51:
	.word	64			! length
	.ascii	"A problem arose while localizing a string from a logical address"
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_49:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_48:
	.word	35			! length
	.ascii	"Not meant to continue to this point"
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
	be	_Label_233
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
_Label_233:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_234
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_234
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_234
_Label_234:
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
_Label_3194:
	push	r0
	sub	r1,1,r1
	bne	_Label_3194
	mov	10,r13		! source line 10
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	17,r13		! source line 17
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_235 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_235  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
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
	mov	20,r13		! source line 20
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
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3195:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3195
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_239 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_240 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_239  sizeInBytes=4
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
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   _temp_241 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_242 = _temp_241 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_242 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3196:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3196
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_244 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_245 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_244  sizeInBytes=4
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
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_246 = _function_232_IdleFunction
	set	_function_232_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_247 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_246  sizeInBytes=4
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
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	30,r13		! source line 30
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	30,r13		! source line 30
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
	.word	_Label_248
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_249
	.word	-12
	.word	4
	.word	_Label_250
	.word	-16
	.word	4
	.word	_Label_251
	.word	-20
	.word	4
	.word	_Label_252
	.word	-24
	.word	4
	.word	_Label_253
	.word	-28
	.word	4
	.word	_Label_254
	.word	-32
	.word	4
	.word	_Label_255
	.word	-36
	.word	4
	.word	_Label_256
	.word	-40
	.word	4
	.word	_Label_257
	.word	-44
	.word	4
	.word	_Label_258
	.word	-48
	.word	4
	.word	_Label_259
	.word	-52
	.word	4
	.word	_Label_260
	.word	-56
	.word	4
	.word	_Label_261
	.word	-60
	.word	4
	.word	0
_Label_248:
	.ascii	"InitializeScheduler\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_232_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_232_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3197:
	push	r0
	sub	r1,1,r1
	bne	_Label_3197
	mov	35,r13		! source line 35
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0WH",r10
_Label_262:
!	jmp	_Label_263
_Label_263:
	mov	45,r13		! source line 45
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0IF",r10
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   _temp_267 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_265 else goto _Label_266
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_266
	jmp	_Label_265
_Label_265:
! THEN...
	mov	48,r13		! source line 48
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_268
_Label_266:
! ELSE...
	mov	50,r13		! source line 50
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	50,r13		! source line 50
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
_Label_268:
! END WHILE...
	jmp	_Label_262
_Label_264:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_232_IdleFunction:
	.word	_sourceFileName
	.word	_Label_269
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_270
	.word	8
	.word	4
	.word	_Label_271
	.word	-12
	.word	4
	.word	_Label_272
	.word	-16
	.word	4
	.word	0
_Label_269:
	.ascii	"IdleFunction\0"
	.align
_Label_270:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_272:
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
_Label_3198:
	push	r0
	sub	r1,1,r1
	bne	_Label_3198
	mov	57,r13		! source line 57
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	71,r13		! source line 71
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
	mov	73,r13		! source line 73
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_275 ) then goto _Label_274		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_274
!	jmp	_Label_273
_Label_273:
! THEN...
	mov	74,r13		! source line 74
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_277 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_277 [0 ] into _temp_278
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
!   _temp_276 = _temp_278		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_274:
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_279 = 3  (sizeInBytes=4)
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
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0WH",r10
_Label_280:
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_284 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_283  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_283 then goto _Label_282 else goto _Label_281
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_281
	jmp	_Label_282
_Label_281:
	mov	87,r13		! source line 87
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_285 = &_P_Kernel_threadsToBeDestroyed
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
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_286 = &_P_Kernel_threadManager
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
	jmp	_Label_280
_Label_282:
! IF STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_289 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_289 ) then goto _Label_288		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_288
!	jmp	_Label_287
_Label_287:
! THEN...
	mov	93,r13		! source line 93
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_291 [0 ] into _temp_292
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
!   _temp_290 = _temp_292		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_293 = *_temp_294  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_293) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_295 = _temp_293 + 32
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
_Label_288:
! RETURN STATEMENT...
	mov	92,r13		! source line 92
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
	.word	_Label_296
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_297
	.word	8
	.word	4
	.word	_Label_298
	.word	-16
	.word	4
	.word	_Label_299
	.word	-20
	.word	4
	.word	_Label_300
	.word	-24
	.word	4
	.word	_Label_301
	.word	-28
	.word	4
	.word	_Label_302
	.word	-32
	.word	4
	.word	_Label_303
	.word	-36
	.word	4
	.word	_Label_304
	.word	-40
	.word	4
	.word	_Label_305
	.word	-44
	.word	4
	.word	_Label_306
	.word	-48
	.word	4
	.word	_Label_307
	.word	-52
	.word	4
	.word	_Label_308
	.word	-9
	.word	1
	.word	_Label_309
	.word	-56
	.word	4
	.word	_Label_310
	.word	-60
	.word	4
	.word	_Label_311
	.word	-64
	.word	4
	.word	_Label_312
	.word	-68
	.word	4
	.word	_Label_313
	.word	-72
	.word	4
	.word	_Label_314
	.word	-76
	.word	4
	.word	_Label_315
	.word	-80
	.word	4
	.word	0
_Label_296:
	.ascii	"Run\0"
	.align
_Label_297:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_308:
	.byte	'C'
	.ascii	"_temp_283\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_314:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_315:
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
_Label_3199:
	push	r0
	sub	r1,1,r1
	bne	_Label_3199
	mov	100,r13		! source line 100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_316 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_317 = _function_231_ThreadPrintShort
	set	_function_231_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_318 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_317  sizeInBytes=4
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
	mov	110,r13		! source line 110
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	110,r13		! source line 110
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
	.word	_Label_319
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_320
	.word	-12
	.word	4
	.word	_Label_321
	.word	-16
	.word	4
	.word	_Label_322
	.word	-20
	.word	4
	.word	_Label_323
	.word	-24
	.word	4
	.word	0
_Label_319:
	.ascii	"PrintReadyList\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_323:
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
_Label_3200:
	push	r0
	sub	r1,1,r1
	bne	_Label_3200
	mov	115,r13		! source line 115
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_324 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_324  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_326 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_325 = *_temp_326  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	129,r13		! source line 129
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_327 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	131,r13		! source line 131
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	131,r13		! source line 131
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
	.word	_Label_328
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_329
	.word	-12
	.word	4
	.word	_Label_330
	.word	-16
	.word	4
	.word	_Label_331
	.word	-20
	.word	4
	.word	_Label_332
	.word	-24
	.word	4
	.word	_Label_333
	.word	-28
	.word	4
	.word	_Label_334
	.word	-32
	.word	4
	.word	0
_Label_328:
	.ascii	"ThreadStartMain\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_333:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_334:
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
_Label_3201:
	push	r0
	sub	r1,1,r1
	bne	_Label_3201
	mov	136,r13		! source line 136
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   _temp_335 = &_P_Kernel_threadsToBeDestroyed
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
	mov	152,r13		! source line 152
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
!   _temp_336 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	154,r13		! source line 154
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	154,r13		! source line 154
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
	.word	_Label_337
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_338
	.word	-12
	.word	4
	.word	_Label_339
	.word	-16
	.word	4
	.word	_Label_340
	.word	-20
	.word	4
	.word	0
_Label_337:
	.ascii	"ThreadFinish\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_340:
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
_Label_3202:
	push	r0
	sub	r1,1,r1
	bne	_Label_3202
	mov	159,r13		! source line 159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_341 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_343		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_343
!	jmp	_Label_342
_Label_342:
! THEN...
	mov	170,r13		! source line 170
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_344 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_346 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_345 = *_temp_346  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_343:
! CALL STATEMENT...
!   _temp_347 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_348 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_349 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	177,r13		! source line 177
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
	.word	_Label_350
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_351
	.word	8
	.word	4
	.word	_Label_352
	.word	-12
	.word	4
	.word	_Label_353
	.word	-16
	.word	4
	.word	_Label_354
	.word	-20
	.word	4
	.word	_Label_355
	.word	-24
	.word	4
	.word	_Label_356
	.word	-28
	.word	4
	.word	_Label_357
	.word	-32
	.word	4
	.word	_Label_358
	.word	-36
	.word	4
	.word	_Label_359
	.word	-40
	.word	4
	.word	0
_Label_350:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_351:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_359:
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
_Label_3203:
	push	r0
	sub	r1,1,r1
	bne	_Label_3203
	mov	182,r13		! source line 182
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_361		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_361
!	jmp	_Label_360
_Label_360:
! THEN...
	mov	198,r13		! source line 198
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_362
_Label_361:
! ELSE...
	mov	201,r13		! source line 201
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_362:
! RETURN STATEMENT...
	mov	204,r13		! source line 204
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
	.word	_Label_363
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_364
	.word	8
	.word	4
	.word	_Label_365
	.word	-12
	.word	4
	.word	0
_Label_363:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_231_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3204:
	push	r0
	sub	r1,1,r1
	bne	_Label_3204
	mov	826,r13		! source line 826
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_369		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_369
!   _temp_368 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_370
_Label_369:
!   _temp_368 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_370:
!   if _temp_368 then goto _Label_367 else goto _Label_366
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_366
	jmp	_Label_367
_Label_366:
! THEN...
	mov	835,r13		! source line 835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_371 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_367:
! CALL STATEMENT...
!   _temp_372 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_374 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_373 = *_temp_374  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_375 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	841,r13		! source line 841
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_384 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_383 = *_temp_384  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_378
	cmp	r1,2
	be	_Label_379
	cmp	r1,3
	be	_Label_380
	cmp	r1,4
	be	_Label_381
	cmp	r1,5
	be	_Label_382
	jmp	_Label_376
! CASE 1...
_Label_378:
! CALL STATEMENT...
!   _temp_385 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0BR",r10
	jmp	_Label_377
! CASE 2...
_Label_379:
! CALL STATEMENT...
!   _temp_386 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0BR",r10
	jmp	_Label_377
! CASE 3...
_Label_380:
! CALL STATEMENT...
!   _temp_387 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0BR",r10
	jmp	_Label_377
! CASE 4...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0BR",r10
	jmp	_Label_377
! CASE 5...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0BR",r10
	jmp	_Label_377
! DEFAULT CASE...
_Label_376:
! CALL STATEMENT...
!   _temp_390 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	858,r13		! source line 858
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_377:
! CALL STATEMENT...
!   _temp_391 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_392 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_393 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_231_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_394
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_395
	.word	8
	.word	4
	.word	_Label_396
	.word	-16
	.word	4
	.word	_Label_397
	.word	-20
	.word	4
	.word	_Label_398
	.word	-24
	.word	4
	.word	_Label_399
	.word	-28
	.word	4
	.word	_Label_400
	.word	-32
	.word	4
	.word	_Label_401
	.word	-36
	.word	4
	.word	_Label_402
	.word	-40
	.word	4
	.word	_Label_403
	.word	-44
	.word	4
	.word	_Label_404
	.word	-48
	.word	4
	.word	_Label_405
	.word	-52
	.word	4
	.word	_Label_406
	.word	-56
	.word	4
	.word	_Label_407
	.word	-60
	.word	4
	.word	_Label_408
	.word	-64
	.word	4
	.word	_Label_409
	.word	-68
	.word	4
	.word	_Label_410
	.word	-72
	.word	4
	.word	_Label_411
	.word	-76
	.word	4
	.word	_Label_412
	.word	-9
	.word	1
	.word	_Label_413
	.word	-80
	.word	4
	.word	0
_Label_394:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_395:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_412:
	.byte	'C'
	.ascii	"_temp_368\0"
	.align
_Label_413:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_230_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3205:
	push	r0
	sub	r1,1,r1
	bne	_Label_3205
	mov	1194,r13		! source line 1194
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_414 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1199,r13		! source line 1199
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_230_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_415
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_416
	.word	8
	.word	4
	.word	_Label_417
	.word	-12
	.word	4
	.word	0
_Label_415:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_416:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_414\0"
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
_Label_3206:
	push	r0
	sub	r1,1,r1
	bne	_Label_3206
	mov	1204,r13		! source line 1204
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_418 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1210,r13		! source line 1210
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1210,r13		! source line 1210
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
	.word	_Label_419
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_420
	.word	8
	.word	4
	.word	_Label_421
	.word	-12
	.word	4
	.word	0
_Label_419:
	.ascii	"ProcessFinish\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_418\0"
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
_Label_3207:
	push	r0
	sub	r1,1,r1
	bne	_Label_3207
	mov	1218,r13		! source line 1218
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0AS",r10
	mov	1222,r13		! source line 1222
	mov	"\0\0SE",r10
!   _temp_422 = &_P_Kernel_threadManager
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
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
!   _temp_423 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_423  sizeInBytes=4
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
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
!   _temp_424 = _function_229_StartUserProcess
	set	_function_229_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_424  sizeInBytes=4
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
	mov	1224,r13		! source line 1224
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
	.word	_Label_425
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_425:
	.ascii	"InitFirstProcess\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_429:
	.byte	'P'
	.ascii	"obtainedThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_229_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_229_StartUserProcess,r1
	push	r1
	mov	28,r1
_Label_3208:
	push	r0
	sub	r1,1,r1
	bne	_Label_3208
	mov	1244,r13		! source line 1244
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
	mov	1252,r13		! source line 1252
	mov	"\0\0SE",r10
!   _temp_430 = &_P_Kernel_processManager
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
	mov	1253,r13		! source line 1253
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
	mov	1255,r13		! source line 1255
	mov	"\0\0AS",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_431 = obtainedPCB + 24
	load	[r14+-104],r1
	add	r1,24,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_431 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-80],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_432 = obtainedPCB  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0AS",r10
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_433 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-72]
!   _temp_434 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_433  sizeInBytes=4
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
	mov	1260,r13		! source line 1260
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_435
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_435
	jmp	_Label_436
_Label_435:
! THEN...
	mov	1261,r13		! source line 1261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_437 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1261,r13		! source line 1261
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_436:
! ASSIGNMENT STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0AS",r10
	mov	1264,r13		! source line 1264
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_439 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_438 = _temp_439		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-60]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_438  sizeInBytes=4
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
	mov	1266,r13		! source line 1266
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_441		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_441
!	jmp	_Label_440
_Label_440:
! THEN...
	mov	1267,r13		! source line 1267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_442 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1267,r13		! source line 1267
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_441:
! SEND STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0SE",r10
!   _temp_443 = &_P_Kernel_fileManager
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
	mov	1272,r13		! source line 1272
	mov	"\0\0AS",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   _temp_446 = _temp_445 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_444 = *_temp_446  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initStackTop = _temp_444 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_447 [999 ] into _temp_448
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
!   initSystemStackTop = _temp_448		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = obtainedPCB + 32
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
	mov	1277,r13		! source line 1277
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_450 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_450 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_451 = initSystemStackTop		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_451  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	BecomeUserThread
! CALL STATEMENT...
!   _temp_452 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1279,r13		! source line 1279
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_229_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_453
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_454
	.word	8
	.word	4
	.word	_Label_455
	.word	-12
	.word	4
	.word	_Label_456
	.word	-16
	.word	4
	.word	_Label_457
	.word	-20
	.word	4
	.word	_Label_458
	.word	-24
	.word	4
	.word	_Label_459
	.word	-28
	.word	4
	.word	_Label_460
	.word	-32
	.word	4
	.word	_Label_461
	.word	-36
	.word	4
	.word	_Label_462
	.word	-40
	.word	4
	.word	_Label_463
	.word	-44
	.word	4
	.word	_Label_464
	.word	-48
	.word	4
	.word	_Label_465
	.word	-52
	.word	4
	.word	_Label_466
	.word	-56
	.word	4
	.word	_Label_467
	.word	-60
	.word	4
	.word	_Label_468
	.word	-64
	.word	4
	.word	_Label_469
	.word	-68
	.word	4
	.word	_Label_470
	.word	-72
	.word	4
	.word	_Label_471
	.word	-76
	.word	4
	.word	_Label_472
	.word	-80
	.word	4
	.word	_Label_473
	.word	-84
	.word	4
	.word	_Label_474
	.word	-88
	.word	4
	.word	_Label_475
	.word	-92
	.word	4
	.word	_Label_476
	.word	-96
	.word	4
	.word	_Label_477
	.word	-100
	.word	4
	.word	_Label_478
	.word	-104
	.word	4
	.word	_Label_479
	.word	-108
	.word	4
	.word	0
_Label_453:
	.ascii	"StartUserProcess\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_474:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_475:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"initStackTop\0"
	.align
_Label_477:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_478:
	.byte	'P'
	.ascii	"obtainedPCB\0"
	.align
_Label_479:
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
_Label_3209:
	push	r0
	sub	r1,1,r1
	bne	_Label_3209
	mov	1782,r13		! source line 1782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1794,r13		! source line 1794
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
	mov	1795,r13		! source line 1795
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
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
	.word	_Label_480
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_480:
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
_Label_3210:
	push	r0
	sub	r1,1,r1
	bne	_Label_3210
	mov	1800,r13		! source line 1800
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0IF",r10
!   _temp_484 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_485 = _temp_484 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_483 = *_temp_485  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_483 == 0 then goto _Label_482		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_482
!	jmp	_Label_481
_Label_481:
! THEN...
	mov	1812,r13		! source line 1812
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0SE",r10
!   _temp_487 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_488 = _temp_487 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_486 = *_temp_488  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_486) then goto _runtimeErrorNullPointer
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
_Label_482:
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
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
	.word	_Label_489
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_490
	.word	-12
	.word	4
	.word	_Label_491
	.word	-16
	.word	4
	.word	_Label_492
	.word	-20
	.word	4
	.word	_Label_493
	.word	-24
	.word	4
	.word	_Label_494
	.word	-28
	.word	4
	.word	_Label_495
	.word	-32
	.word	4
	.word	0
_Label_489:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_483\0"
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
	mov	1819,r13		! source line 1819
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
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
	.word	_Label_496
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_496:
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
_Label_3211:
	push	r0
	sub	r1,1,r1
	bne	_Label_3211
	mov	1833,r13		! source line 1833
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_497 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1840,r13		! source line 1840
	mov	"\0\0CA",r10
	call	_function_228_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1840,r13		! source line 1840
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
	.word	_Label_498
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_499
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
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
_Label_3212:
	push	r0
	sub	r1,1,r1
	bne	_Label_3212
	mov	1845,r13		! source line 1845
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_500 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CA",r10
	call	_function_228_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
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
	.word	_Label_501
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_502
	.word	-12
	.word	4
	.word	0
_Label_501:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
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
_Label_3213:
	push	r0
	sub	r1,1,r1
	bne	_Label_3213
	mov	1857,r13		! source line 1857
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_503 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CA",r10
	call	_function_228_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
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
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
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
_Label_3214:
	push	r0
	sub	r1,1,r1
	bne	_Label_3214
	mov	1869,r13		! source line 1869
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_506 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1876,r13		! source line 1876
	mov	"\0\0CA",r10
	call	_function_228_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1876,r13		! source line 1876
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
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
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
_Label_3215:
	push	r0
	sub	r1,1,r1
	bne	_Label_3215
	mov	1881,r13		! source line 1881
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_509 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_function_228_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
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
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
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
_Label_3216:
	push	r0
	sub	r1,1,r1
	bne	_Label_3216
	mov	1893,r13		! source line 1893
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_512 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CA",r10
	call	_function_228_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1900,r13		! source line 1900
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
	.word	_Label_513
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_512\0"
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
_Label_3217:
	push	r0
	sub	r1,1,r1
	bne	_Label_3217
	mov	1905,r13		! source line 1905
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_515 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CA",r10
	call	_function_228_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
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
	.word	_Label_516
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_228_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3218:
	push	r0
	sub	r1,1,r1
	bne	_Label_3218
	mov	1917,r13		! source line 1917
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_518 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_519 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_523 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_522 = *_temp_523  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_522 == 0 then goto _Label_521		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_521
!	jmp	_Label_520
_Label_520:
! THEN...
	mov	1928,r13		! source line 1928
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_525 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_524 = *_temp_525  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_524) then goto _runtimeErrorNullPointer
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
	jmp	_Label_526
_Label_521:
! ELSE...
	mov	1930,r13		! source line 1930
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_527 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1930,r13		! source line 1930
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_526:
! SEND STATEMENT...
	mov	1932,r13		! source line 1932
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
	mov	1938,r13		! source line 1938
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_528
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_529
	.word	8
	.word	4
	.word	_Label_530
	.word	-12
	.word	4
	.word	_Label_531
	.word	-16
	.word	4
	.word	_Label_532
	.word	-20
	.word	4
	.word	_Label_533
	.word	-24
	.word	4
	.word	_Label_534
	.word	-28
	.word	4
	.word	_Label_535
	.word	-32
	.word	4
	.word	_Label_536
	.word	-36
	.word	4
	.word	0
_Label_528:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_529:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_518\0"
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
_Label_3219:
	push	r0
	sub	r1,1,r1
	bne	_Label_3219
	mov	1943,r13		! source line 1943
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1964,r13		! source line 1964
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3220
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_537
_Label_3220:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_537
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_537
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_551,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_551:
	jmp	_Label_543	! 1:	
	jmp	_Label_550	! 2:	
	jmp	_Label_540	! 3:	
	jmp	_Label_539	! 4:	
	jmp	_Label_542	! 5:	
	jmp	_Label_541	! 6:	
	jmp	_Label_544	! 7:	
	jmp	_Label_545	! 8:	
	jmp	_Label_546	! 9:	
	jmp	_Label_547	! 10:	
	jmp	_Label_548	! 11:	
	jmp	_Label_549	! 12:	
! CASE 4...
_Label_539:
! RETURN STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0RE",r10
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_540:
! CALL STATEMENT...
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
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
! CASE 6...
_Label_541:
! RETURN STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_542:
! RETURN STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_543:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_544:
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_545:
! RETURN STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_546:
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
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_557  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_547:
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
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
	mov	1984,r13		! source line 1984
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_558  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_548:
! RETURN STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_559  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_549:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_550:
! CALL STATEMENT...
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_537:
! CALL STATEMENT...
!   _temp_560 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_560  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_561 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1997,r13		! source line 1997
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_538:
! RETURN STATEMENT...
	mov	1999,r13		! source line 1999
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
	.word	_Label_562
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_563
	.word	8
	.word	4
	.word	_Label_564
	.word	12
	.word	4
	.word	_Label_565
	.word	16
	.word	4
	.word	_Label_566
	.word	20
	.word	4
	.word	_Label_567
	.word	24
	.word	4
	.word	_Label_568
	.word	-12
	.word	4
	.word	_Label_569
	.word	-16
	.word	4
	.word	_Label_570
	.word	-20
	.word	4
	.word	_Label_571
	.word	-24
	.word	4
	.word	_Label_572
	.word	-28
	.word	4
	.word	_Label_573
	.word	-32
	.word	4
	.word	_Label_574
	.word	-36
	.word	4
	.word	_Label_575
	.word	-40
	.word	4
	.word	_Label_576
	.word	-44
	.word	4
	.word	_Label_577
	.word	-48
	.word	4
	.word	0
_Label_562:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_567:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_552\0"
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
_Label_3221:
	push	r0
	sub	r1,1,r1
	bne	_Label_3221
	mov	2035,r13		! source line 2035
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_578 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_578  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_579 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_579  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2038,r13		! source line 2038
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
	.word	_Label_580
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_581
	.word	8
	.word	4
	.word	_Label_582
	.word	-12
	.word	4
	.word	_Label_583
	.word	-16
	.word	4
	.word	0
_Label_580:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_581:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_578\0"
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
_Label_3222:
	push	r0
	sub	r1,1,r1
	bne	_Label_3222
	mov	2044,r13		! source line 2044
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_584 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2045,r13		! source line 2045
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2045,r13		! source line 2045
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
	.word	_Label_585
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_586
	.word	-12
	.word	4
	.word	0
_Label_585:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_584\0"
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
_Label_3223:
	push	r0
	sub	r1,1,r1
	bne	_Label_3223
	mov	2050,r13		! source line 2050
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_587 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2051,r13		! source line 2051
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
	.word	_Label_588
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_589
	.word	-12
	.word	4
	.word	0
_Label_588:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_587\0"
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
_Label_3224:
	push	r0
	sub	r1,1,r1
	bne	_Label_3224
	mov	2056,r13		! source line 2056
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_590 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2058,r13		! source line 2058
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
	.word	_Label_591
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_592
	.word	-12
	.word	4
	.word	0
_Label_591:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_590\0"
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
_Label_3225:
	push	r0
	sub	r1,1,r1
	bne	_Label_3225
	mov	2063,r13		! source line 2063
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_593 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2064,r13		! source line 2064
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_594 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2065,r13		! source line 2065
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2066,r13		! source line 2066
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
	.word	_Label_595
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_596
	.word	8
	.word	4
	.word	_Label_597
	.word	-12
	.word	4
	.word	_Label_598
	.word	-16
	.word	4
	.word	0
_Label_595:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_596:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_593\0"
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
	mov	67,r1
_Label_3226:
	push	r0
	sub	r1,1,r1
	bne	_Label_3226
	mov	2096,r13		! source line 2096
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-232,r4
	mov	23,r3
_Label_3227:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3227
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   _temp_600 = &localString
	add	r14,-256,r1
	store	r1,[r14+-116]
!   _temp_601 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-112]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_602 = *_temp_603  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_602) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = _temp_602 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_600  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_601  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0IF",r10
!   if retVal >= 0 then goto _Label_606		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_606
!	jmp	_Label_605
_Label_605:
! THEN...
	mov	2110,r13		! source line 2110
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_606:
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
	mov	2113,r13		! source line 2113
	mov	"\0\0SE",r10
!   _temp_607 = &localString
	add	r14,-256,r1
	store	r1,[r14+-96]
!   _temp_608 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_607  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_609
	load	[r14+-140],r1
	cmp	r1,r0
	be	_Label_609
	jmp	_Label_610
_Label_609:
! THEN...
	mov	2116,r13		! source line 2116
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_610:
! SEND STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0SE",r10
!   _temp_611 = &newAddrSpace
	add	r14,-232,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   _temp_612 = &newAddrSpace
	add	r14,-232,r1
	store	r1,[r14+-84]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_614		(int)
	load	[r14+-128],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_614
!	jmp	_Label_613
_Label_613:
! THEN...
	mov	2123,r13		! source line 2123
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_614:
! SEND STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0SE",r10
!   _temp_615 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-140],r1
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
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_617 = *_temp_618  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_617) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = _temp_617 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_616 = _temp_619		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_620 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_616  sizeInBytes=4
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
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _temp_621 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_623 = newAddrSpace  (sizeInBytes=92)
	add	r14,-232,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3228:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3228
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   _temp_625 = &newAddrSpace
	add	r14,-232,r1
	store	r1,[r14+-40]
!   _temp_626 = _temp_625 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_624 = *_temp_626  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initStackTop = _temp_624 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_627 [999 ] into _temp_628
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
!   initSystemStackTop = _temp_628		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2134,r13		! source line 2134
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! SEND STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0SE",r10
!   _temp_629 = &newAddrSpace
	add	r14,-232,r1
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
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_630 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_631 = initSystemStackTop		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_631  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Call the function
	mov	2137,r13		! source line 2137
	mov	"\0\0CE",r10
	call	BecomeUserThread
! CALL STATEMENT...
!   _temp_632 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2138,r13		! source line 2138
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_633
	.word	4		! total size of parameters
	.word	268		! frame size = 268
	.word	_Label_634
	.word	8
	.word	4
	.word	_Label_635
	.word	-12
	.word	4
	.word	_Label_636
	.word	-16
	.word	4
	.word	_Label_637
	.word	-20
	.word	4
	.word	_Label_638
	.word	-24
	.word	4
	.word	_Label_639
	.word	-28
	.word	4
	.word	_Label_640
	.word	-32
	.word	4
	.word	_Label_641
	.word	-36
	.word	4
	.word	_Label_642
	.word	-40
	.word	4
	.word	_Label_643
	.word	-44
	.word	4
	.word	_Label_644
	.word	-48
	.word	4
	.word	_Label_645
	.word	-52
	.word	4
	.word	_Label_646
	.word	-56
	.word	4
	.word	_Label_647
	.word	-60
	.word	4
	.word	_Label_648
	.word	-64
	.word	4
	.word	_Label_649
	.word	-68
	.word	4
	.word	_Label_650
	.word	-72
	.word	4
	.word	_Label_651
	.word	-76
	.word	4
	.word	_Label_652
	.word	-80
	.word	4
	.word	_Label_653
	.word	-84
	.word	4
	.word	_Label_654
	.word	-88
	.word	4
	.word	_Label_655
	.word	-92
	.word	4
	.word	_Label_656
	.word	-96
	.word	4
	.word	_Label_657
	.word	-100
	.word	4
	.word	_Label_658
	.word	-104
	.word	4
	.word	_Label_659
	.word	-108
	.word	4
	.word	_Label_660
	.word	-112
	.word	4
	.word	_Label_661
	.word	-116
	.word	4
	.word	_Label_662
	.word	-120
	.word	4
	.word	_Label_663
	.word	-124
	.word	4
	.word	_Label_664
	.word	-128
	.word	4
	.word	_Label_665
	.word	-132
	.word	4
	.word	_Label_666
	.word	-136
	.word	4
	.word	_Label_667
	.word	-140
	.word	4
	.word	_Label_668
	.word	-232
	.word	92
	.word	_Label_669
	.word	-256
	.word	24
	.word	_Label_670
	.word	-260
	.word	4
	.word	0
_Label_633:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_634:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_663:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"initStackTop\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_667:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_668:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_669:
	.byte	'A'
	.ascii	"localString\0"
	.align
_Label_670:
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
	mov	22,r1
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
	mov	2145,r13		! source line 2145
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_671 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_671  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2150,r13		! source line 2150
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_672 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-48]
!   _temp_673 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_672  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_673  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	2151,r13		! source line 2151
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
	mov	2152,r13		! source line 2152
	mov	"\0\0SE",r10
!   _temp_674 = &localString
	add	r14,-76,r1
	store	r1,[r14+-40]
!   _temp_675 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_676 = *_temp_677  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_676) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_678 = _temp_676 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_674  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_675  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0IF",r10
!   if retVal >= 0 then goto _Label_680		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_680
!	jmp	_Label_679
_Label_679:
! THEN...
	mov	2154,r13		! source line 2154
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_681 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
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
! END IF...
_Label_680:
! CALL STATEMENT...
!   _temp_682 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2156,r13		! source line 2156
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_683 = &localString
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2157,r13		! source line 2157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2158,r13		! source line 2158
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_684
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_685
	.word	8
	.word	4
	.word	_Label_686
	.word	-12
	.word	4
	.word	_Label_687
	.word	-16
	.word	4
	.word	_Label_688
	.word	-20
	.word	4
	.word	_Label_689
	.word	-24
	.word	4
	.word	_Label_690
	.word	-28
	.word	4
	.word	_Label_691
	.word	-32
	.word	4
	.word	_Label_692
	.word	-36
	.word	4
	.word	_Label_693
	.word	-40
	.word	4
	.word	_Label_694
	.word	-44
	.word	4
	.word	_Label_695
	.word	-48
	.word	4
	.word	_Label_696
	.word	-52
	.word	4
	.word	_Label_697
	.word	-76
	.word	24
	.word	_Label_698
	.word	-80
	.word	4
	.word	0
_Label_684:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_671\0"
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
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	22,r1
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
	mov	2165,r13		! source line 2165
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_699 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2170,r13		! source line 2170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_700 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-48]
!   _temp_701 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_701  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
	mov	2172,r13		! source line 2172
	mov	"\0\0SE",r10
!   _temp_702 = &localString
	add	r14,-76,r1
	store	r1,[r14+-40]
!   _temp_703 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_705 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_704 = *_temp_705  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_704) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_706 = _temp_704 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_702  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_703  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0IF",r10
!   if retVal >= 0 then goto _Label_708		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_708
!	jmp	_Label_707
_Label_707:
! THEN...
	mov	2174,r13		! source line 2174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_709 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2174,r13		! source line 2174
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_708:
! CALL STATEMENT...
!   _temp_710 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2176,r13		! source line 2176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_711 = &localString
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2177,r13		! source line 2177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2178,r13		! source line 2178
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_712
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_713
	.word	8
	.word	4
	.word	_Label_714
	.word	-12
	.word	4
	.word	_Label_715
	.word	-16
	.word	4
	.word	_Label_716
	.word	-20
	.word	4
	.word	_Label_717
	.word	-24
	.word	4
	.word	_Label_718
	.word	-28
	.word	4
	.word	_Label_719
	.word	-32
	.word	4
	.word	_Label_720
	.word	-36
	.word	4
	.word	_Label_721
	.word	-40
	.word	4
	.word	_Label_722
	.word	-44
	.word	4
	.word	_Label_723
	.word	-48
	.word	4
	.word	_Label_724
	.word	-52
	.word	4
	.word	_Label_725
	.word	-76
	.word	24
	.word	_Label_726
	.word	-80
	.word	4
	.word	0
_Label_712:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_713:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_725:
	.byte	'A'
	.ascii	"localString\0"
	.align
_Label_726:
	.byte	'I'
	.ascii	"retVal\0"
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
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
	mov	2185,r13		! source line 2185
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_727 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2186,r13		! source line 2186
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_728 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2187,r13		! source line 2187
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_729 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   _temp_730 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_730  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2188,r13		! source line 2188
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_731 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2189,r13		! source line 2189
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2190,r13		! source line 2190
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
	.word	_Label_732
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_733
	.word	8
	.word	4
	.word	_Label_734
	.word	12
	.word	4
	.word	_Label_735
	.word	16
	.word	4
	.word	_Label_736
	.word	-12
	.word	4
	.word	_Label_737
	.word	-16
	.word	4
	.word	_Label_738
	.word	-20
	.word	4
	.word	_Label_739
	.word	-24
	.word	4
	.word	_Label_740
	.word	-28
	.word	4
	.word	0
_Label_732:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_733:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_734:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_735:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_727\0"
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
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
	mov	2196,r13		! source line 2196
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_741 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2197,r13		! source line 2197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2198,r13		! source line 2198
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_743 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   _temp_744 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_744  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2199,r13		! source line 2199
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_745 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2200,r13		! source line 2200
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2201,r13		! source line 2201
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
	.word	_Label_746
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_747
	.word	8
	.word	4
	.word	_Label_748
	.word	12
	.word	4
	.word	_Label_749
	.word	16
	.word	4
	.word	_Label_750
	.word	-12
	.word	4
	.word	_Label_751
	.word	-16
	.word	4
	.word	_Label_752
	.word	-20
	.word	4
	.word	_Label_753
	.word	-24
	.word	4
	.word	_Label_754
	.word	-28
	.word	4
	.word	0
_Label_746:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_747:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_748:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_749:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_741\0"
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
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
	mov	2206,r13		! source line 2206
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_755 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2207,r13		! source line 2207
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_756 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2208,r13		! source line 2208
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_757 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2209,r13		! source line 2209
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2210,r13		! source line 2210
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
	.word	_Label_758
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_759
	.word	8
	.word	4
	.word	_Label_760
	.word	12
	.word	4
	.word	_Label_761
	.word	-12
	.word	4
	.word	_Label_762
	.word	-16
	.word	4
	.word	_Label_763
	.word	-20
	.word	4
	.word	0
_Label_758:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_759:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_760:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_755\0"
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
_Label_3234:
	push	r0
	sub	r1,1,r1
	bne	_Label_3234
	mov	2215,r13		! source line 2215
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_764 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2216,r13		! source line 2216
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_765 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2217,r13		! source line 2217
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2217,r13		! source line 2217
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
	.word	_Label_766
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_767
	.word	8
	.word	4
	.word	_Label_768
	.word	-12
	.word	4
	.word	_Label_769
	.word	-16
	.word	4
	.word	0
_Label_766:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_767:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_227_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_227_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3235:
	push	r0
	sub	r1,1,r1
	bne	_Label_3235
	mov	2808,r13		! source line 2808
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_770 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_770  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   _temp_771 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_771) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_773 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_773) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_772 = *_temp_773  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_771 = _temp_772  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
!   _temp_774 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_774) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_776) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_775 = *_temp_776  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_774 = _temp_775  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   _temp_777 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_777) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_779) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_778 = *_temp_779  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_777 = _temp_778  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_227_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_780
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_781
	.word	8
	.word	4
	.word	_Label_782
	.word	12
	.word	4
	.word	_Label_783
	.word	-16
	.word	4
	.word	_Label_784
	.word	-9
	.word	1
	.word	_Label_785
	.word	-20
	.word	4
	.word	_Label_786
	.word	-24
	.word	4
	.word	_Label_787
	.word	-10
	.word	1
	.word	_Label_788
	.word	-28
	.word	4
	.word	_Label_789
	.word	-32
	.word	4
	.word	_Label_790
	.word	-11
	.word	1
	.word	_Label_791
	.word	-36
	.word	4
	.word	_Label_792
	.word	-12
	.word	1
	.word	_Label_793
	.word	-40
	.word	4
	.word	_Label_794
	.word	-44
	.word	4
	.word	0
_Label_780:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_781:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_782:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_784:
	.byte	'C'
	.ascii	"_temp_778\0"
	.align
_Label_785:
	.byte	'?'
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
	.ascii	"_temp_774\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_790:
	.byte	'C'
	.ascii	"_temp_772\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_792:
	.byte	'C'
	.ascii	"_temp_770\0"
	.align
_Label_793:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_794:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_226_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_226_printFCB,r1
	push	r1
	mov	3,r1
_Label_3236:
	push	r0
	sub	r1,1,r1
	bne	_Label_3236
	mov	2818,r13		! source line 2818
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_796 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_795 = *_temp_796  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2819,r13		! source line 2819
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2820,r13		! source line 2820
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_226_printFCB:
	.word	_sourceFileName
	.word	_Label_797
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_798
	.word	8
	.word	4
	.word	_Label_799
	.word	-12
	.word	4
	.word	_Label_800
	.word	-16
	.word	4
	.word	0
_Label_797:
	.ascii	"printFCB\0"
	.align
_Label_798:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_225_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_225_printOpen,r1
	push	r1
	mov	4,r1
_Label_3237:
	push	r0
	sub	r1,1,r1
	bne	_Label_3237
	mov	2823,r13		! source line 2823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_801 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_802 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_802  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2825,r13		! source line 2825
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_803 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2827,r13		! source line 2827
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
	mov	2827,r13		! source line 2827
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_225_printOpen:
	.word	_sourceFileName
	.word	_Label_804
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_805
	.word	8
	.word	4
	.word	_Label_806
	.word	-12
	.word	4
	.word	_Label_807
	.word	-16
	.word	4
	.word	_Label_808
	.word	-20
	.word	4
	.word	0
_Label_804:
	.ascii	"printOpen\0"
	.align
_Label_805:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_809
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_809:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_810
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_810:
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
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
	mov	233,r13		! source line 233
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_812		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_812
!	jmp	_Label_811
_Label_811:
! THEN...
	mov	235,r13		! source line 235
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_813 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	235,r13		! source line 235
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_812:
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
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
	mov	238,r13		! source line 238
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
	.word	_Label_815
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_817
	.word	12
	.word	4
	.word	_Label_818
	.word	-12
	.word	4
	.word	_Label_819
	.word	-16
	.word	4
	.word	0
_Label_815:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_816:
	.ascii	"Pself\0"
	.align
_Label_817:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_813\0"
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
_Label_3239:
	push	r0
	sub	r1,1,r1
	bne	_Label_3239
	mov	243,r13		! source line 243
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_821		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_821
!	jmp	_Label_820
_Label_820:
! THEN...
	mov	249,r13		! source line 249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_822 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	249,r13		! source line 249
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_821:
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
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
	mov	252,r13		! source line 252
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_824		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_824
!	jmp	_Label_823
_Label_823:
! THEN...
	mov	253,r13		! source line 253
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_825 = &waitingThreads
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
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_826 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_826 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_827 = &_P_Kernel_readyList
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
_Label_824:
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	257,r13		! source line 257
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
	.word	_Label_828
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_829
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_830
	.word	-12
	.word	4
	.word	_Label_831
	.word	-16
	.word	4
	.word	_Label_832
	.word	-20
	.word	4
	.word	_Label_833
	.word	-24
	.word	4
	.word	_Label_834
	.word	-28
	.word	4
	.word	_Label_835
	.word	-32
	.word	4
	.word	0
_Label_828:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_829:
	.ascii	"Pself\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_834:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_835:
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
_Label_3240:
	push	r0
	sub	r1,1,r1
	bne	_Label_3240
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_837		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_837
!	jmp	_Label_836
_Label_836:
! THEN...
	mov	267,r13		! source line 267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_838 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	267,r13		! source line 267
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_837:
! ASSIGNMENT STATEMENT...
	mov	269,r13		! source line 269
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
	mov	270,r13		! source line 270
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_840		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_840
!	jmp	_Label_839
_Label_839:
! THEN...
	mov	271,r13		! source line 271
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   _temp_841 = &waitingThreads
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
	mov	272,r13		! source line 272
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
_Label_840:
! ASSIGNMENT STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	274,r13		! source line 274
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
	.word	_Label_842
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_843
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_844
	.word	-12
	.word	4
	.word	_Label_845
	.word	-16
	.word	4
	.word	_Label_846
	.word	-20
	.word	4
	.word	0
_Label_842:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_843:
	.ascii	"Pself\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_847
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_847:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_848
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_848:
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
_Label_3241:
	push	r0
	sub	r1,1,r1
	bne	_Label_3241
	mov	297,r13		! source line 297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
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
	mov	298,r13		! source line 298
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
	.word	_Label_850
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_852
	.word	-12
	.word	4
	.word	0
_Label_850:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_851:
	.ascii	"Pself\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_849\0"
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
_Label_3242:
	push	r0
	sub	r1,1,r1
	bne	_Label_3242
	mov	303,r13		! source line 303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_854		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_854
!	jmp	_Label_853
_Label_853:
! THEN...
	mov	307,r13		! source line 307
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_855 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	307,r13		! source line 307
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_854:
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	309,r13		! source line 309
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_859		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_859
!   _temp_858 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_860
_Label_859:
!   _temp_858 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_860:
!   if _temp_858 then goto _Label_857 else goto _Label_856
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_856
	jmp	_Label_857
_Label_856:
! THEN...
	mov	311,r13		! source line 311
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_861
_Label_857:
! ELSE...
	mov	313,r13		! source line 313
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   _temp_862 = &waitingThreads
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
	mov	314,r13		! source line 314
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
_Label_861:
! ASSIGNMENT STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	316,r13		! source line 316
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
	.word	_Label_863
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_865
	.word	-16
	.word	4
	.word	_Label_866
	.word	-9
	.word	1
	.word	_Label_867
	.word	-20
	.word	4
	.word	_Label_868
	.word	-24
	.word	4
	.word	0
_Label_863:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_864:
	.ascii	"Pself\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_866:
	.byte	'C'
	.ascii	"_temp_858\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_868:
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
_Label_3243:
	push	r0
	sub	r1,1,r1
	bne	_Label_3243
	mov	321,r13		! source line 321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_870		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_870
!	jmp	_Label_869
_Label_869:
! THEN...
	mov	326,r13		! source line 326
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_871 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	326,r13		! source line 326
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_870:
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	328,r13		! source line 328
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_872 = &waitingThreads
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
	mov	330,r13		! source line 330
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_874		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_874
!	jmp	_Label_873
_Label_873:
! THEN...
	mov	331,r13		! source line 331
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_875 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_875 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0SE",r10
!   _temp_876 = &_P_Kernel_readyList
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
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_877
_Label_874:
! ELSE...
	mov	335,r13		! source line 335
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_877:
! ASSIGNMENT STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	337,r13		! source line 337
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
	.word	_Label_878
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_880
	.word	-12
	.word	4
	.word	_Label_881
	.word	-16
	.word	4
	.word	_Label_882
	.word	-20
	.word	4
	.word	_Label_883
	.word	-24
	.word	4
	.word	_Label_884
	.word	-28
	.word	4
	.word	_Label_885
	.word	-32
	.word	4
	.word	0
_Label_878:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_879:
	.ascii	"Pself\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_885:
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
_Label_3244:
	push	r0
	sub	r1,1,r1
	bne	_Label_3244
	mov	342,r13		! source line 342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_888		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_888
!	jmp	_Label_887
_Label_887:
!   _temp_886 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_889
_Label_888:
!   _temp_886 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_889:
!   ReturnResult: _temp_886  (sizeInBytes=1)
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
	.word	_Label_890
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_892
	.word	-9
	.word	1
	.word	0
_Label_890:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_891:
	.ascii	"Pself\0"
	.align
_Label_892:
	.byte	'C'
	.ascii	"_temp_886\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_893
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	printHeldBy
	.word	0
! 
! Class descriptor:
! 
_Label_893:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_894
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_894:
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
_Label_3245:
	push	r0
	sub	r1,1,r1
	bne	_Label_3245
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
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
	mov	468,r13		! source line 468
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
	.word	_Label_896
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_898
	.word	-12
	.word	4
	.word	0
_Label_896:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_897:
	.ascii	"Pself\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_895\0"
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
_Label_3246:
	push	r0
	sub	r1,1,r1
	bne	_Label_3246
	mov	476,r13		! source line 476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_902		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_902
!   _temp_901 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_903
_Label_902:
!   _temp_901 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_903:
!   if _temp_901 then goto _Label_900 else goto _Label_899
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_899
	jmp	_Label_900
_Label_899:
! THEN...
	mov	486,r13		! source line 486
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_904
_Label_900:
! ELSE...
	mov	488,r13		! source line 488
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_906		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_906
!	jmp	_Label_905
_Label_905:
! THEN...
	mov	489,r13		! source line 489
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   heldBy = transfer		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_906:
! SEND STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0SE",r10
!   _temp_907 = &waitingThreads
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
	mov	492,r13		! source line 492
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
_Label_904:
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	494,r13		! source line 494
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
	.word	_Label_908
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_910
	.word	12
	.word	4
	.word	_Label_911
	.word	-16
	.word	4
	.word	_Label_912
	.word	-9
	.word	1
	.word	_Label_913
	.word	-20
	.word	4
	.word	0
_Label_908:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_909:
	.ascii	"Pself\0"
	.align
_Label_910:
	.byte	'P'
	.ascii	"transfer\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_912:
	.byte	'C'
	.ascii	"_temp_901\0"
	.align
_Label_913:
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
_Label_3247:
	push	r0
	sub	r1,1,r1
	bne	_Label_3247
	mov	499,r13		! source line 499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_915		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_915
!	jmp	_Label_914
_Label_914:
! THEN...
	mov	504,r13		! source line 504
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_916 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_916  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	504,r13		! source line 504
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_915:
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
	mov	507,r13		! source line 507
	mov	"\0\0SE",r10
!   _temp_917 = &waitingThreads
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
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_919		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_919
!	jmp	_Label_918
_Label_918:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_920 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_920 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0SE",r10
!   _temp_921 = &_P_Kernel_readyList
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
	mov	511,r13		! source line 511
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_922
_Label_919:
! ELSE...
	mov	513,r13		! source line 513
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_922:
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	515,r13		! source line 515
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
	.word	_Label_923
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_925
	.word	-12
	.word	4
	.word	_Label_926
	.word	-16
	.word	4
	.word	_Label_927
	.word	-20
	.word	4
	.word	_Label_928
	.word	-24
	.word	4
	.word	_Label_929
	.word	-28
	.word	4
	.word	_Label_930
	.word	-32
	.word	4
	.word	0
_Label_923:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_924:
	.ascii	"Pself\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_929:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_930:
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
_Label_3248:
	push	r0
	sub	r1,1,r1
	bne	_Label_3248
	mov	520,r13		! source line 520
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_933		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_933
!	jmp	_Label_932
_Label_932:
!   _temp_931 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_934
_Label_933:
!   _temp_931 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_934:
!   ReturnResult: _temp_931  (sizeInBytes=1)
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
	.word	_Label_935
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_937
	.word	-9
	.word	1
	.word	0
_Label_935:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_936:
	.ascii	"Pself\0"
	.align
_Label_937:
	.byte	'C'
	.ascii	"_temp_931\0"
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
_Label_3249:
	push	r0
	sub	r1,1,r1
	bne	_Label_3249
	mov	524,r13		! source line 524
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (heldBy) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_939 = heldBy + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_938 = *_temp_939  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_938  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	525,r13		! source line 525
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
	.word	_Label_940
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_942
	.word	-12
	.word	4
	.word	_Label_943
	.word	-16
	.word	4
	.word	0
_Label_940:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"printHeldBy\0"
	.align
_Label_941:
	.ascii	"Pself\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_944
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_944:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_945
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_945:
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
_Label_3250:
	push	r0
	sub	r1,1,r1
	bne	_Label_3250
	mov	383,r13		! source line 383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	384,r13		! source line 384
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
	mov	384,r13		! source line 384
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
	.word	_Label_947
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_949
	.word	-12
	.word	4
	.word	0
_Label_947:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_948:
	.ascii	"Pself\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_946\0"
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
_Label_3251:
	push	r0
	sub	r1,1,r1
	bne	_Label_3251
	mov	389,r13		! source line 389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0IF",r10
	mov	392,r13		! source line 392
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
!   Retrieve Result: targetName=_temp_952  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_952 then goto _Label_951 else goto _Label_950
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_950
	jmp	_Label_951
_Label_950:
! THEN...
	mov	393,r13		! source line 393
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_953 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	393,r13		! source line 393
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_951:
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	396,r13		! source line 396
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
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   _temp_954 = &waitingThreads
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
	mov	398,r13		! source line 398
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
	mov	399,r13		! source line 399
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
	mov	400,r13		! source line 400
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	400,r13		! source line 400
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
	.word	_Label_955
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_957
	.word	12
	.word	4
	.word	_Label_958
	.word	-16
	.word	4
	.word	_Label_959
	.word	-20
	.word	4
	.word	_Label_960
	.word	-9
	.word	1
	.word	_Label_961
	.word	-24
	.word	4
	.word	0
_Label_955:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_956:
	.ascii	"Pself\0"
	.align
_Label_957:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_960:
	.byte	'C'
	.ascii	"_temp_952\0"
	.align
_Label_961:
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
_Label_3252:
	push	r0
	sub	r1,1,r1
	bne	_Label_3252
	mov	405,r13		! source line 405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0IF",r10
	mov	409,r13		! source line 409
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
!   Retrieve Result: targetName=_temp_964  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_964 then goto _Label_963 else goto _Label_962
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_962
	jmp	_Label_963
_Label_962:
! THEN...
	mov	410,r13		! source line 410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_965 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_965  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	410,r13		! source line 410
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_963:
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	412,r13		! source line 412
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_966 = &waitingThreads
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
	mov	414,r13		! source line 414
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_968		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_968
!	jmp	_Label_967
_Label_967:
! THEN...
	mov	415,r13		! source line 415
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_969 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_969 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   _temp_970 = &_P_Kernel_readyList
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
_Label_968:
! ASSIGNMENT STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	418,r13		! source line 418
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
	.word	_Label_971
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_973
	.word	12
	.word	4
	.word	_Label_974
	.word	-16
	.word	4
	.word	_Label_975
	.word	-20
	.word	4
	.word	_Label_976
	.word	-24
	.word	4
	.word	_Label_977
	.word	-28
	.word	4
	.word	_Label_978
	.word	-9
	.word	1
	.word	_Label_979
	.word	-32
	.word	4
	.word	_Label_980
	.word	-36
	.word	4
	.word	0
_Label_971:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_972:
	.ascii	"Pself\0"
	.align
_Label_973:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_978:
	.byte	'C'
	.ascii	"_temp_964\0"
	.align
_Label_979:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_980:
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
_Label_3253:
	push	r0
	sub	r1,1,r1
	bne	_Label_3253
	mov	423,r13		! source line 423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0IF",r10
	mov	427,r13		! source line 427
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
!   Retrieve Result: targetName=_temp_983  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_983 then goto _Label_982 else goto _Label_981
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_981
	jmp	_Label_982
_Label_981:
! THEN...
	mov	428,r13		! source line 428
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_984 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	428,r13		! source line 428
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_982:
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0WH",r10
_Label_985:
!	jmp	_Label_986
_Label_986:
	mov	431,r13		! source line 431
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   _temp_988 = &waitingThreads
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
	mov	433,r13		! source line 433
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_989
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_989
	jmp	_Label_990
_Label_989:
! THEN...
	mov	434,r13		! source line 434
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0BR",r10
	jmp	_Label_987
! END IF...
_Label_990:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_991 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0SE",r10
!   _temp_992 = &_P_Kernel_readyList
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
	jmp	_Label_985
_Label_987:
! ASSIGNMENT STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	439,r13		! source line 439
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
	.word	_Label_993
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_995
	.word	12
	.word	4
	.word	_Label_996
	.word	-16
	.word	4
	.word	_Label_997
	.word	-20
	.word	4
	.word	_Label_998
	.word	-24
	.word	4
	.word	_Label_999
	.word	-28
	.word	4
	.word	_Label_1000
	.word	-9
	.word	1
	.word	_Label_1001
	.word	-32
	.word	4
	.word	_Label_1002
	.word	-36
	.word	4
	.word	0
_Label_993:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_994:
	.ascii	"Pself\0"
	.align
_Label_995:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1000:
	.byte	'C'
	.ascii	"_temp_983\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1002:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_1003
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	HoareTest
	.word	0
! 
! Class descriptor:
! 
_Label_1003:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1004
	.word	_sourceFileName
	.word	181		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_1004:
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
_Label_3254:
	push	r0
	sub	r1,1,r1
	bne	_Label_3254
	mov	551,r13		! source line 551
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
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
	mov	552,r13		! source line 552
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
	.word	_Label_1006
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1007
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1008
	.word	-12
	.word	4
	.word	0
_Label_1006:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1007:
	.ascii	"Pself\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1005\0"
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
_Label_3255:
	push	r0
	sub	r1,1,r1
	bne	_Label_3255
	mov	561,r13		! source line 561
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0IF",r10
	mov	564,r13		! source line 564
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
!   Retrieve Result: targetName=_temp_1011  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1011 then goto _Label_1010 else goto _Label_1009
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1009
	jmp	_Label_1010
_Label_1009:
! THEN...
	mov	565,r13		! source line 565
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1012 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	565,r13		! source line 565
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1010:
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	567,r13		! source line 567
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	569,r13		! source line 569
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
	mov	570,r13		! source line 570
	mov	"\0\0SE",r10
!   _temp_1013 = &waitingThreads
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
	mov	571,r13		! source line 571
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
	mov	575,r13		! source line 575
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	575,r13		! source line 575
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	575,r13		! source line 575
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
	.word	_Label_1014
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1016
	.word	12
	.word	4
	.word	_Label_1017
	.word	-16
	.word	4
	.word	_Label_1018
	.word	-20
	.word	4
	.word	_Label_1019
	.word	-9
	.word	1
	.word	_Label_1020
	.word	-24
	.word	4
	.word	0
_Label_1014:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1015:
	.ascii	"Pself\0"
	.align
_Label_1016:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1019:
	.byte	'C'
	.ascii	"_temp_1011\0"
	.align
_Label_1020:
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
_Label_3256:
	push	r0
	sub	r1,1,r1
	bne	_Label_3256
	mov	580,r13		! source line 580
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0IF",r10
	mov	584,r13		! source line 584
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
!   Retrieve Result: targetName=_temp_1023  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1023 then goto _Label_1022 else goto _Label_1021
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1021
	jmp	_Label_1022
_Label_1021:
! THEN...
	mov	585,r13		! source line 585
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1024 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	585,r13		! source line 585
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1022:
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0AS",r10
	mov	588,r13		! source line 588
	mov	"\0\0SE",r10
!   _temp_1025 = &waitingThreads
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
	mov	589,r13		! source line 589
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1027		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1027
!	jmp	_Label_1026
_Label_1026:
! THEN...
	mov	590,r13		! source line 590
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1028 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1028 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0SE",r10
!   _temp_1029 = &_P_Kernel_readyList
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
	mov	592,r13		! source line 592
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
_Label_1027:
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	596,r13		! source line 596
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
	.word	_Label_1030
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1032
	.word	12
	.word	4
	.word	_Label_1033
	.word	-16
	.word	4
	.word	_Label_1034
	.word	-20
	.word	4
	.word	_Label_1035
	.word	-24
	.word	4
	.word	_Label_1036
	.word	-28
	.word	4
	.word	_Label_1037
	.word	-9
	.word	1
	.word	_Label_1038
	.word	-32
	.word	4
	.word	_Label_1039
	.word	-36
	.word	4
	.word	0
_Label_1030:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1031:
	.ascii	"Pself\0"
	.align
_Label_1032:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1037:
	.byte	'C'
	.ascii	"_temp_1023\0"
	.align
_Label_1038:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1039:
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
_Label_3257:
	push	r0
	sub	r1,1,r1
	bne	_Label_3257
	mov	607,r13		! source line 607
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   if test == _P_Kernel_currentThread then goto _Label_1041		(int)
	load	[r14+12],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1041
!	jmp	_Label_1040
_Label_1040:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1042 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	611,r13		! source line 611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1041:
! ASSIGNMENT STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! CALL STATEMENT...
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=message  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CA",r10
	call	_P_System_nl
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
!   _temp_1046 = &waitingThreads
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
!   Retrieve Result: targetName=_temp_1045  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1047 = _temp_1045 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1047 then goto _Label_1044 else goto _Label_1043
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1043
	jmp	_Label_1044
_Label_1043:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1048 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1049
_Label_1044:
! ELSE...
	mov	620,r13		! source line 620
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=test  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CA",r10
	call	_function_231_ThreadPrintShort
! END IF...
_Label_1049:
! ASSIGNMENT STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	622,r13		! source line 622
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
	.word	_Label_1050
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1052
	.word	12
	.word	4
	.word	_Label_1053
	.word	16
	.word	4
	.word	_Label_1054
	.word	-16
	.word	4
	.word	_Label_1055
	.word	-9
	.word	1
	.word	_Label_1056
	.word	-20
	.word	4
	.word	_Label_1057
	.word	-10
	.word	1
	.word	_Label_1058
	.word	-24
	.word	4
	.word	_Label_1059
	.word	-28
	.word	4
	.word	0
_Label_1050:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"HoareTest\0"
	.align
_Label_1051:
	.ascii	"Pself\0"
	.align
_Label_1052:
	.byte	'P'
	.ascii	"test\0"
	.align
_Label_1053:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1055:
	.byte	'C'
	.ascii	"_temp_1047\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1057:
	.byte	'C'
	.ascii	"_temp_1045\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1059:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1060
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
_Label_1060:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1061
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1061:
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
_Label_3258:
	push	r0
	sub	r1,1,r1
	bne	_Label_3258
	mov	633,r13		! source line 633
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_1062 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1062) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1062 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_1063 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1063 [0 ] into _temp_1064
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
!   Data Move: *_temp_1064 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   _temp_1065 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1065 [999 ] into _temp_1066
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
!   Data Move: *_temp_1066 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0AS",r10
!   _temp_1067 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1067 [999 ] into _temp_1068
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
!   stackTop = _temp_1068		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0AS",r10
!   _temp_1069 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1071 = &_temp_1070
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1071 = _temp_1071 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1073:
!   Data Move: *_temp_1071 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1071 = _temp_1071 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1072 = _temp_1072 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1072) then goto _Label_1073
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1073
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1074 = &_temp_1070
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3259
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3259:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1069 = *_temp_1074  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3260:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3260
! ASSIGNMENT STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0AS",r10
!   _temp_1075 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1077 = &_temp_1076
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1077 = _temp_1077 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1079:
!   Data Move: *_temp_1077 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1077 = _temp_1077 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1078 = _temp_1078 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1078) then goto _Label_1079
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1079
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1080 = &_temp_1076
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3261
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3261:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1075 = *_temp_1080  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3262:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3262
! RETURN STATEMENT...
	mov	647,r13		! source line 647
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
	.word	_Label_1081
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1083
	.word	12
	.word	4
	.word	_Label_1084
	.word	-12
	.word	4
	.word	_Label_1085
	.word	-16
	.word	4
	.word	_Label_1086
	.word	-20
	.word	4
	.word	_Label_1087
	.word	-84
	.word	64
	.word	_Label_1088
	.word	-88
	.word	4
	.word	_Label_1089
	.word	-92
	.word	4
	.word	_Label_1090
	.word	-96
	.word	4
	.word	_Label_1091
	.word	-100
	.word	4
	.word	_Label_1092
	.word	-156
	.word	56
	.word	_Label_1093
	.word	-160
	.word	4
	.word	_Label_1094
	.word	-164
	.word	4
	.word	_Label_1095
	.word	-168
	.word	4
	.word	_Label_1096
	.word	-172
	.word	4
	.word	_Label_1097
	.word	-176
	.word	4
	.word	_Label_1098
	.word	-180
	.word	4
	.word	_Label_1099
	.word	-184
	.word	4
	.word	_Label_1100
	.word	-188
	.word	4
	.word	0
_Label_1081:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1082:
	.ascii	"Pself\0"
	.align
_Label_1083:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1062\0"
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
_Label_3263:
	push	r0
	sub	r1,1,r1
	bne	_Label_3263
	mov	652,r13		! source line 652
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	667,r13		! source line 667
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
	mov	668,r13		! source line 668
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1101  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1103 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1102  sizeInBytes=4
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
	mov	671,r13		! source line 671
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	671,r13		! source line 671
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
	.word	_Label_1104
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1106
	.word	12
	.word	4
	.word	_Label_1107
	.word	16
	.word	4
	.word	_Label_1108
	.word	-12
	.word	4
	.word	_Label_1109
	.word	-16
	.word	4
	.word	_Label_1110
	.word	-20
	.word	4
	.word	_Label_1111
	.word	-24
	.word	4
	.word	_Label_1112
	.word	-28
	.word	4
	.word	0
_Label_1104:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1105:
	.ascii	"Pself\0"
	.align
_Label_1106:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1107:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1111:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1112:
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
_Label_3264:
	push	r0
	sub	r1,1,r1
	bne	_Label_3264
	mov	676,r13		! source line 676
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1115 == _P_Kernel_currentThread then goto _Label_1114		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1114
!	jmp	_Label_1113
_Label_1113:
! THEN...
	mov	693,r13		! source line 693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1116 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	693,r13		! source line 693
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1114:
! ASSIGNMENT STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0AS",r10
	mov	699,r13		! source line 699
	mov	"\0\0SE",r10
!   _temp_1117 = &_P_Kernel_readyList
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
	mov	700,r13		! source line 700
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1119		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1119
!	jmp	_Label_1118
_Label_1118:
! THEN...
	mov	704,r13		! source line 704
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1121		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1121
!	jmp	_Label_1120
_Label_1120:
! THEN...
	mov	705,r13		! source line 705
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1122 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	705,r13		! source line 705
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1121:
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1124 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1123  sizeInBytes=4
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
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1119:
! ASSIGNMENT STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	711,r13		! source line 711
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
	.word	_Label_1125
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1127
	.word	-12
	.word	4
	.word	_Label_1128
	.word	-16
	.word	4
	.word	_Label_1129
	.word	-20
	.word	4
	.word	_Label_1130
	.word	-24
	.word	4
	.word	_Label_1131
	.word	-28
	.word	4
	.word	_Label_1132
	.word	-32
	.word	4
	.word	_Label_1133
	.word	-36
	.word	4
	.word	_Label_1134
	.word	-40
	.word	4
	.word	_Label_1135
	.word	-44
	.word	4
	.word	0
_Label_1125:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1126:
	.ascii	"Pself\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1133:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1134:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1135:
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
_Label_3265:
	push	r0
	sub	r1,1,r1
	bne	_Label_3265
	mov	716,r13		! source line 716
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1137		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1137
!	jmp	_Label_1136
_Label_1136:
! THEN...
	mov	729,r13		! source line 729
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1138 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	729,r13		! source line 729
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1137:
! IF STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1141 == _P_Kernel_currentThread then goto _Label_1140		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1140
!	jmp	_Label_1139
_Label_1139:
! THEN...
	mov	733,r13		! source line 733
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1142 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	733,r13		! source line 733
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1140:
! ASSIGNMENT STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
	mov	739,r13		! source line 739
	mov	"\0\0SE",r10
!   _temp_1143 = &_P_Kernel_readyList
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
	mov	740,r13		! source line 740
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1144
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1144
	jmp	_Label_1145
_Label_1144:
! THEN...
	mov	741,r13		! source line 741
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1146 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	741,r13		! source line 741
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1145:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	743,r13		! source line 743
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
	.word	_Label_1147
	.word	4		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_1147:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
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
	.ascii	"_temp_1143\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1154:
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
_Label_3266:
	push	r0
	sub	r1,1,r1
	bne	_Label_3266
	mov	748,r13		! source line 748
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0IF",r10
!   _temp_1158 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1158 [0 ] into _temp_1159
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
!   Data Move: _temp_1157 = *_temp_1159  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1157 == 606348324 then goto _Label_1156		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1156
!	jmp	_Label_1155
_Label_1155:
! THEN...
	mov	755,r13		! source line 755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1160 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1160  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	755,r13		! source line 755
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1161
_Label_1156:
! ELSE...
	mov	756,r13		! source line 756
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0IF",r10
!   _temp_1165 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1165 [999 ] into _temp_1166
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
!   Data Move: _temp_1164 = *_temp_1166  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1164 == 606348324 then goto _Label_1163		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1163
!	jmp	_Label_1162
_Label_1162:
! THEN...
	mov	757,r13		! source line 757
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1167 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1167  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	757,r13		! source line 757
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1163:
! END IF...
_Label_1161:
! RETURN STATEMENT...
	mov	754,r13		! source line 754
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
	.word	_Label_1168
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1169
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1170
	.word	-12
	.word	4
	.word	_Label_1171
	.word	-16
	.word	4
	.word	_Label_1172
	.word	-20
	.word	4
	.word	_Label_1173
	.word	-24
	.word	4
	.word	_Label_1174
	.word	-28
	.word	4
	.word	_Label_1175
	.word	-32
	.word	4
	.word	_Label_1176
	.word	-36
	.word	4
	.word	_Label_1177
	.word	-40
	.word	4
	.word	0
_Label_1168:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1169:
	.ascii	"Pself\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1157\0"
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
_Label_3267:
	push	r0
	sub	r1,1,r1
	bne	_Label_3267
	mov	763,r13		! source line 763
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1178 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1179 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1181 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1181  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1182 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1187 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1188 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1187  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1183:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1188 then goto _Label_1186		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1186
_Label_1184:
	mov	776,r13		! source line 776
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1189 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1190 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1191 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1191  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1193 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1193 [i ] into _temp_1194
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
!   Data Move: _temp_1192 = *_temp_1194  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1195 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1197 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1197 [i ] into _temp_1198
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
!   Data Move: _temp_1196 = *_temp_1198  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1199 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1185:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1183
! END FOR
_Label_1186:
! CALL STATEMENT...
!   _temp_1200 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-116]
!   _temp_1201 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1201  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1202 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-108]
!   _temp_1204 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1204 [0 ] into _temp_1205
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
!   _temp_1203 = _temp_1205		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1203  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	787,r13		! source line 787
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1208
	cmp	r1,2
	be	_Label_1209
	cmp	r1,3
	be	_Label_1210
	cmp	r1,4
	be	_Label_1211
	cmp	r1,5
	be	_Label_1212
	jmp	_Label_1206
! CASE 1...
_Label_1208:
! CALL STATEMENT...
!   _temp_1213 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0BR",r10
	jmp	_Label_1207
! CASE 2...
_Label_1209:
! CALL STATEMENT...
!   _temp_1214 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0BR",r10
	jmp	_Label_1207
! CASE 3...
_Label_1210:
! CALL STATEMENT...
!   _temp_1215 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0BR",r10
	jmp	_Label_1207
! CASE 4...
_Label_1211:
! CALL STATEMENT...
!   _temp_1216 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0BR",r10
	jmp	_Label_1207
! CASE 5...
_Label_1212:
! CALL STATEMENT...
!   _temp_1217 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	801,r13		! source line 801
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0BR",r10
	jmp	_Label_1207
! DEFAULT CASE...
_Label_1206:
! CALL STATEMENT...
!   _temp_1218 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	804,r13		! source line 804
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1207:
! CALL STATEMENT...
!   _temp_1219 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1220 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1225 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1226 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1225  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1221:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1226 then goto _Label_1224		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1224
_Label_1222:
	mov	810,r13		! source line 810
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1227 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1228 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1229 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1229  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1231 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1231 [i ] into _temp_1232
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
!   Data Move: _temp_1230 = *_temp_1232  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1233 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1235 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1235 [i ] into _temp_1236
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
!   Data Move: _temp_1234 = *_temp_1236  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1234  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1237 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1223:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1221
! END FOR
_Label_1224:
! ASSIGNMENT STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	819,r13		! source line 819
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
	.word	_Label_1238
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1239
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1240
	.word	-12
	.word	4
	.word	_Label_1241
	.word	-16
	.word	4
	.word	_Label_1242
	.word	-20
	.word	4
	.word	_Label_1243
	.word	-24
	.word	4
	.word	_Label_1244
	.word	-28
	.word	4
	.word	_Label_1245
	.word	-32
	.word	4
	.word	_Label_1246
	.word	-36
	.word	4
	.word	_Label_1247
	.word	-40
	.word	4
	.word	_Label_1248
	.word	-44
	.word	4
	.word	_Label_1249
	.word	-48
	.word	4
	.word	_Label_1250
	.word	-52
	.word	4
	.word	_Label_1251
	.word	-56
	.word	4
	.word	_Label_1252
	.word	-60
	.word	4
	.word	_Label_1253
	.word	-64
	.word	4
	.word	_Label_1254
	.word	-68
	.word	4
	.word	_Label_1255
	.word	-72
	.word	4
	.word	_Label_1256
	.word	-76
	.word	4
	.word	_Label_1257
	.word	-80
	.word	4
	.word	_Label_1258
	.word	-84
	.word	4
	.word	_Label_1259
	.word	-88
	.word	4
	.word	_Label_1260
	.word	-92
	.word	4
	.word	_Label_1261
	.word	-96
	.word	4
	.word	_Label_1262
	.word	-100
	.word	4
	.word	_Label_1263
	.word	-104
	.word	4
	.word	_Label_1264
	.word	-108
	.word	4
	.word	_Label_1265
	.word	-112
	.word	4
	.word	_Label_1266
	.word	-116
	.word	4
	.word	_Label_1267
	.word	-120
	.word	4
	.word	_Label_1268
	.word	-124
	.word	4
	.word	_Label_1269
	.word	-128
	.word	4
	.word	_Label_1270
	.word	-132
	.word	4
	.word	_Label_1271
	.word	-136
	.word	4
	.word	_Label_1272
	.word	-140
	.word	4
	.word	_Label_1273
	.word	-144
	.word	4
	.word	_Label_1274
	.word	-148
	.word	4
	.word	_Label_1275
	.word	-152
	.word	4
	.word	_Label_1276
	.word	-156
	.word	4
	.word	_Label_1277
	.word	-160
	.word	4
	.word	_Label_1278
	.word	-164
	.word	4
	.word	_Label_1279
	.word	-168
	.word	4
	.word	_Label_1280
	.word	-172
	.word	4
	.word	_Label_1281
	.word	-176
	.word	4
	.word	_Label_1282
	.word	-180
	.word	4
	.word	_Label_1283
	.word	-184
	.word	4
	.word	_Label_1284
	.word	-188
	.word	4
	.word	_Label_1285
	.word	-192
	.word	4
	.word	_Label_1286
	.word	-196
	.word	4
	.word	0
_Label_1238:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1239:
	.ascii	"Pself\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1285:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1286:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1287
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1287:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1288
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1288:
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
_Label_3268:
	push	r0
	sub	r1,1,r1
	bne	_Label_3268
	mov	878,r13		! source line 878
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1289 = _StringConst_114
	set	_StringConst_114,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
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
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1291 = &threadManLock
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
	mov	891,r13		! source line 891
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
	mov	892,r13		! source line 892
	mov	"\0\0SE",r10
!   _temp_1293 = &threadBecameFree
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
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   _temp_1294 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1296 = &_temp_1295
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_1296 = _temp_1296 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1298 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_3269:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3269
!   _temp_1298 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_1300:
!   Data Move: *_temp_1296 = _temp_1298  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_3270:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3270
!   _temp_1296 = _temp_1296 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_1297 = _temp_1297 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_1297) then goto _Label_1300
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_1300
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_1301 = &_temp_1295
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3271
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3271:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1294 = *_temp_1301  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3272:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3272
! SEND STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_1302 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-168]
!   _temp_1303 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_1303 [0 ] into _temp_1304
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
!   Prepare Argument: offset=12  value=_temp_1302  sizeInBytes=4
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
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1305 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-156]
!   _temp_1306 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_1306 [1 ] into _temp_1307
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
!   Prepare Argument: offset=12  value=_temp_1305  sizeInBytes=4
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
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
!   _temp_1308 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-144]
!   _temp_1309 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_1309 [2 ] into _temp_1310
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
!   Prepare Argument: offset=12  value=_temp_1308  sizeInBytes=4
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
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1311 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-132]
!   _temp_1312 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_1312 [3 ] into _temp_1313
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
!   Prepare Argument: offset=12  value=_temp_1311  sizeInBytes=4
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
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1314 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-120]
!   _temp_1315 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_1315 [4 ] into _temp_1316
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
!   Prepare Argument: offset=12  value=_temp_1314  sizeInBytes=4
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
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1317 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-108]
!   _temp_1318 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_1318 [5 ] into _temp_1319
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
!   Prepare Argument: offset=12  value=_temp_1317  sizeInBytes=4
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
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_1320 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-96]
!   _temp_1321 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_1321 [6 ] into _temp_1322
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
!   Prepare Argument: offset=12  value=_temp_1320  sizeInBytes=4
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
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_1323 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-84]
!   _temp_1324 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_1324 [7 ] into _temp_1325
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
!   Prepare Argument: offset=12  value=_temp_1323  sizeInBytes=4
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
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1326 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-72]
!   _temp_1327 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_1327 [8 ] into _temp_1328
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
!   Prepare Argument: offset=12  value=_temp_1326  sizeInBytes=4
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
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_1329 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-60]
!   _temp_1330 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_1330 [9 ] into _temp_1331
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
!   Prepare Argument: offset=12  value=_temp_1329  sizeInBytes=4
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
	mov	907,r13		! source line 907
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
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   length = 9		(4 bytes)
	mov	9,r1
	set	-46024,r2
	store	r1,[r14+r2]
! FOR STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1337 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1338 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1337  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1333:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1338 then goto _Label_1336		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1336
_Label_1334:
	mov	910,r13		! source line 910
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0AS",r10
!   _temp_1339 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_1339 [i ] into _temp_1340
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
!   _temp_1341 = _temp_1340 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1341 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
!   _temp_1343 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_1343 [i ] into _temp_1344
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
!   _temp_1342 = _temp_1344		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1345 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1342  sizeInBytes=4
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
_Label_1335:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1333
! END FOR
_Label_1336:
! RETURN STATEMENT...
	mov	910,r13		! source line 910
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
	.word	_Label_1346
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_1347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1348
	.word	-12
	.word	4
	.word	_Label_1349
	.word	-16
	.word	4
	.word	_Label_1350
	.word	-20
	.word	4
	.word	_Label_1351
	.word	-24
	.word	4
	.word	_Label_1352
	.word	-28
	.word	4
	.word	_Label_1353
	.word	-32
	.word	4
	.word	_Label_1354
	.word	-36
	.word	4
	.word	_Label_1355
	.word	-40
	.word	4
	.word	_Label_1356
	.word	-44
	.word	4
	.word	_Label_1357
	.word	-48
	.word	4
	.word	_Label_1358
	.word	-52
	.word	4
	.word	_Label_1359
	.word	-56
	.word	4
	.word	_Label_1360
	.word	-60
	.word	4
	.word	_Label_1361
	.word	-64
	.word	4
	.word	_Label_1362
	.word	-68
	.word	4
	.word	_Label_1363
	.word	-72
	.word	4
	.word	_Label_1364
	.word	-76
	.word	4
	.word	_Label_1365
	.word	-80
	.word	4
	.word	_Label_1366
	.word	-84
	.word	4
	.word	_Label_1367
	.word	-88
	.word	4
	.word	_Label_1368
	.word	-92
	.word	4
	.word	_Label_1369
	.word	-96
	.word	4
	.word	_Label_1370
	.word	-100
	.word	4
	.word	_Label_1371
	.word	-104
	.word	4
	.word	_Label_1372
	.word	-108
	.word	4
	.word	_Label_1373
	.word	-112
	.word	4
	.word	_Label_1374
	.word	-116
	.word	4
	.word	_Label_1375
	.word	-120
	.word	4
	.word	_Label_1376
	.word	-124
	.word	4
	.word	_Label_1377
	.word	-128
	.word	4
	.word	_Label_1378
	.word	-132
	.word	4
	.word	_Label_1379
	.word	-136
	.word	4
	.word	_Label_1380
	.word	-140
	.word	4
	.word	_Label_1381
	.word	-144
	.word	4
	.word	_Label_1382
	.word	-148
	.word	4
	.word	_Label_1383
	.word	-152
	.word	4
	.word	_Label_1384
	.word	-156
	.word	4
	.word	_Label_1385
	.word	-160
	.word	4
	.word	_Label_1386
	.word	-164
	.word	4
	.word	_Label_1387
	.word	-168
	.word	4
	.word	_Label_1388
	.word	-172
	.word	4
	.word	_Label_1389
	.word	-176
	.word	4
	.word	_Label_1390
	.word	-4340
	.word	4164
	.word	_Label_1391
	.word	-4344
	.word	4
	.word	_Label_1392
	.word	-4348
	.word	4
	.word	_Label_1393
	.word	-45992
	.word	41644
	.word	_Label_1394
	.word	-45996
	.word	4
	.word	_Label_1395
	.word	-46000
	.word	4
	.word	_Label_1396
	.word	-46004
	.word	4
	.word	_Label_1397
	.word	-46008
	.word	4
	.word	_Label_1398
	.word	-46012
	.word	4
	.word	_Label_1399
	.word	-46016
	.word	4
	.word	_Label_1400
	.word	-46020
	.word	4
	.word	_Label_1401
	.word	-46024
	.word	4
	.word	0
_Label_1346:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1347:
	.ascii	"Pself\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1400:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1401:
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
_Label_3273:
	push	r0
	sub	r1,1,r1
	bne	_Label_3273
	mov	919,r13		! source line 919
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1402 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1407 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1408 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1407  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1403:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1408 then goto _Label_1406		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1406
_Label_1404:
	mov	928,r13		! source line 928
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1409 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1409  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1410 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1410  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1412 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_1412 [i ] into _temp_1413
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
!   _temp_1411 = _temp_1413		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1411  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CA",r10
	call	_function_231_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1405:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1403
! END FOR
_Label_1406:
! CALL STATEMENT...
!   _temp_1414 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1415 = _function_230_PrintObjectAddr
	set	_function_230_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1416 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1415  sizeInBytes=4
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
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	937,r13		! source line 937
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
	.word	_Label_1417
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1418
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1419
	.word	-12
	.word	4
	.word	_Label_1420
	.word	-16
	.word	4
	.word	_Label_1421
	.word	-20
	.word	4
	.word	_Label_1422
	.word	-24
	.word	4
	.word	_Label_1423
	.word	-28
	.word	4
	.word	_Label_1424
	.word	-32
	.word	4
	.word	_Label_1425
	.word	-36
	.word	4
	.word	_Label_1426
	.word	-40
	.word	4
	.word	_Label_1427
	.word	-44
	.word	4
	.word	_Label_1428
	.word	-48
	.word	4
	.word	_Label_1429
	.word	-52
	.word	4
	.word	_Label_1430
	.word	-56
	.word	4
	.word	_Label_1431
	.word	-60
	.word	4
	.word	0
_Label_1417:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1418:
	.ascii	"Pself\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1430:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1431:
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
_Label_3274:
	push	r0
	sub	r1,1,r1
	bne	_Label_3274
	mov	942,r13		! source line 942
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1432 = &threadManLock
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
	mov	953,r13		! source line 953
	mov	"\0\0IF",r10
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1436 = &freeList
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
!   Retrieve Result: targetName=_temp_1435  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1437 = _temp_1435 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1437 then goto _Label_1434 else goto _Label_1433
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1433
	jmp	_Label_1434
_Label_1433:
! THEN...
	mov	954,r13		! source line 954
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1438 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1439 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1438  sizeInBytes=4
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
_Label_1434:
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1440 = &freeList
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
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1441 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1441 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_1442 = &threadManLock
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
	mov	963,r13		! source line 963
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
	.word	_Label_1443
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1444
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1445
	.word	-16
	.word	4
	.word	_Label_1446
	.word	-20
	.word	4
	.word	_Label_1447
	.word	-24
	.word	4
	.word	_Label_1448
	.word	-28
	.word	4
	.word	_Label_1449
	.word	-32
	.word	4
	.word	_Label_1450
	.word	-9
	.word	1
	.word	_Label_1451
	.word	-36
	.word	4
	.word	_Label_1452
	.word	-10
	.word	1
	.word	_Label_1453
	.word	-40
	.word	4
	.word	_Label_1454
	.word	-44
	.word	4
	.word	0
_Label_1443:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1444:
	.ascii	"Pself\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1450:
	.byte	'C'
	.ascii	"_temp_1437\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1452:
	.byte	'C'
	.ascii	"_temp_1435\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1454:
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
_Label_3275:
	push	r0
	sub	r1,1,r1
	bne	_Label_3275
	mov	968,r13		! source line 968
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1455 = &threadManLock
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
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1456 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1456 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1457 = &freeList
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
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1458 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1459 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1458  sizeInBytes=4
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
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1460 = &threadManLock
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
	mov	982,r13		! source line 982
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
	.word	_Label_1461
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1463
	.word	12
	.word	4
	.word	_Label_1464
	.word	-12
	.word	4
	.word	_Label_1465
	.word	-16
	.word	4
	.word	_Label_1466
	.word	-20
	.word	4
	.word	_Label_1467
	.word	-24
	.word	4
	.word	_Label_1468
	.word	-28
	.word	4
	.word	_Label_1469
	.word	-32
	.word	4
	.word	0
_Label_1461:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1462:
	.ascii	"Pself\0"
	.align
_Label_1463:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1470
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1470:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1471
	.word	_sourceFileName
	.word	242		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1471:
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
_Label_3276:
	push	r0
	sub	r1,1,r1
	bne	_Label_3276
	mov	995,r13		! source line 995
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3277:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3277
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1473 = &addrSpace
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
	mov	999,r13		! source line 999
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
	.word	_Label_1474
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1476
	.word	-12
	.word	4
	.word	_Label_1477
	.word	-16
	.word	4
	.word	0
_Label_1474:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1475:
	.ascii	"Pself\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1472\0"
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
_Label_3278:
	push	r0
	sub	r1,1,r1
	bne	_Label_3278
	mov	1009,r13		! source line 1009
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1478) then goto _runtimeErrorNullPointer
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
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_1479 = &addrSpace
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
!   _temp_1480 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1480  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1017,r13		! source line 1017
	mov	"\0\0CA",r10
	call	_function_231_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1027,r13		! source line 1027
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
	.word	_Label_1481
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1482
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1483
	.word	-12
	.word	4
	.word	_Label_1484
	.word	-16
	.word	4
	.word	_Label_1485
	.word	-20
	.word	4
	.word	0
_Label_1481:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1482:
	.ascii	"Pself\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1478\0"
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
_Label_3279:
	push	r0
	sub	r1,1,r1
	bne	_Label_3279
	mov	1032,r13		! source line 1032
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1486 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1036,r13		! source line 1036
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1487  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1488 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1038,r13		! source line 1038
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1489 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1040,r13		! source line 1040
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1491		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1491
!	jmp	_Label_1490
_Label_1490:
! THEN...
	mov	1042,r13		! source line 1042
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1492 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1042,r13		! source line 1042
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1493
_Label_1491:
! ELSE...
	mov	1043,r13		! source line 1043
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1495		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1495
!	jmp	_Label_1494
_Label_1494:
! THEN...
	mov	1044,r13		! source line 1044
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1496 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1044,r13		! source line 1044
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1497
_Label_1495:
! ELSE...
	mov	1045,r13		! source line 1045
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1499		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1499
!	jmp	_Label_1498
_Label_1498:
! THEN...
	mov	1046,r13		! source line 1046
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1500 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1501
_Label_1499:
! ELSE...
	mov	1048,r13		! source line 1048
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1502 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1048,r13		! source line 1048
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1501:
! END IF...
_Label_1497:
! END IF...
_Label_1493:
! CALL STATEMENT...
!   _temp_1503 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1503  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1051,r13		! source line 1051
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1504 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1052,r13		! source line 1052
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1054,r13		! source line 1054
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1054,r13		! source line 1054
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
	.word	_Label_1505
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1506
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1507
	.word	-12
	.word	4
	.word	_Label_1508
	.word	-16
	.word	4
	.word	_Label_1509
	.word	-20
	.word	4
	.word	_Label_1510
	.word	-24
	.word	4
	.word	_Label_1511
	.word	-28
	.word	4
	.word	_Label_1512
	.word	-32
	.word	4
	.word	_Label_1513
	.word	-36
	.word	4
	.word	_Label_1514
	.word	-40
	.word	4
	.word	_Label_1515
	.word	-44
	.word	4
	.word	_Label_1516
	.word	-48
	.word	4
	.word	0
_Label_1505:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1506:
	.ascii	"Pself\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1517
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1517:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1518
	.word	_sourceFileName
	.word	262		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1518:
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
_Label_3280:
	push	r0
	sub	r1,1,r1
	bne	_Label_3280
	mov	1070,r13		! source line 1070
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0AS",r10
!   _temp_1519 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1521 = &_temp_1520
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1521 = _temp_1521 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1523 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3281:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3281
!   _temp_1523 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1525:
!   Data Move: *_temp_1521 = _temp_1523  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3282:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3282
!   _temp_1521 = _temp_1521 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1522 = _temp_1522 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1522) then goto _Label_1525
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1525
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1526 = &_temp_1520
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3283
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3283:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1519 = *_temp_1526  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3284:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3284
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
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
	mov	1080,r13		! source line 1080
	mov	"\0\0SE",r10
!   _temp_1528 = &processManagerLock
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
	mov	1082,r13		! source line 1082
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
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_1530 = &aProcessBecameFree
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
	mov	1085,r13		! source line 1085
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
	mov	1087,r13		! source line 1087
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
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1533 = &aProcessDied
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
	mov	1090,r13		! source line 1090
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1538 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1539 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1538  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1534:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1539 then goto _Label_1537		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1537
_Label_1535:
	mov	1090,r13		! source line 1090
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1540 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1540 [i ] into _temp_1541
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
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1543 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1543 [i ] into _temp_1544
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
!   _temp_1542 = _temp_1544		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1545 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1542  sizeInBytes=4
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
_Label_1536:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1534
! END FOR
_Label_1537:
! ASSIGNMENT STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0AS",r10
!   _temp_1546 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1546 [0 ] into _temp_1547
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
!   _temp_1548 = _temp_1547 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1548  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! RETURN STATEMENT...
	mov	1094,r13		! source line 1094
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
	.word	_Label_1549
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	-12
	.word	4
	.word	_Label_1552
	.word	-16
	.word	4
	.word	_Label_1553
	.word	-20
	.word	4
	.word	_Label_1554
	.word	-24
	.word	4
	.word	_Label_1555
	.word	-28
	.word	4
	.word	_Label_1556
	.word	-32
	.word	4
	.word	_Label_1557
	.word	-36
	.word	4
	.word	_Label_1558
	.word	-40
	.word	4
	.word	_Label_1559
	.word	-44
	.word	4
	.word	_Label_1560
	.word	-48
	.word	4
	.word	_Label_1561
	.word	-52
	.word	4
	.word	_Label_1562
	.word	-56
	.word	4
	.word	_Label_1563
	.word	-60
	.word	4
	.word	_Label_1564
	.word	-64
	.word	4
	.word	_Label_1565
	.word	-68
	.word	4
	.word	_Label_1566
	.word	-72
	.word	4
	.word	_Label_1567
	.word	-76
	.word	4
	.word	_Label_1568
	.word	-80
	.word	4
	.word	_Label_1569
	.word	-84
	.word	4
	.word	_Label_1570
	.word	-88
	.word	4
	.word	_Label_1571
	.word	-212
	.word	124
	.word	_Label_1572
	.word	-216
	.word	4
	.word	_Label_1573
	.word	-220
	.word	4
	.word	_Label_1574
	.word	-1464
	.word	1244
	.word	_Label_1575
	.word	-1468
	.word	4
	.word	_Label_1576
	.word	-1472
	.word	4
	.word	0
_Label_1549:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1576:
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
_Label_3285:
	push	r0
	sub	r1,1,r1
	bne	_Label_3285
	mov	1099,r13		! source line 1099
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1577 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1577  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1107,r13		! source line 1107
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1582 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1583 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1582  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1578:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1583 then goto _Label_1581		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1581
_Label_1579:
	mov	1108,r13		! source line 1108
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1584 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1585 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1586 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1586 [i ] into _temp_1587
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
_Label_1580:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1578
! END FOR
_Label_1581:
! CALL STATEMENT...
!   _temp_1588 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_1589 = _function_230_PrintObjectAddr
	set	_function_230_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1590 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1589  sizeInBytes=4
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
	mov	1116,r13		! source line 1116
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1117,r13		! source line 1117
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1117,r13		! source line 1117
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
	.word	_Label_1591
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1593
	.word	-12
	.word	4
	.word	_Label_1594
	.word	-16
	.word	4
	.word	_Label_1595
	.word	-20
	.word	4
	.word	_Label_1596
	.word	-24
	.word	4
	.word	_Label_1597
	.word	-28
	.word	4
	.word	_Label_1598
	.word	-32
	.word	4
	.word	_Label_1599
	.word	-36
	.word	4
	.word	_Label_1600
	.word	-40
	.word	4
	.word	_Label_1601
	.word	-44
	.word	4
	.word	_Label_1602
	.word	-48
	.word	4
	.word	_Label_1603
	.word	-52
	.word	4
	.word	_Label_1604
	.word	-56
	.word	4
	.word	0
_Label_1591:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1592:
	.ascii	"Pself\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1590\0"
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
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1604:
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
_Label_3286:
	push	r0
	sub	r1,1,r1
	bne	_Label_3286
	mov	1122,r13		! source line 1122
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1605 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1611 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1610  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1611 then goto _Label_1609		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1609
_Label_1607:
	mov	1131,r13		! source line 1131
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1612 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1612  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1132,r13		! source line 1132
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1613 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1613 [i ] into _temp_1614
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
_Label_1608:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1606
! END FOR
_Label_1609:
! CALL STATEMENT...
!   _temp_1615 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1615  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1136,r13		! source line 1136
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
!   _temp_1616 = _function_230_PrintObjectAddr
	set	_function_230_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1617 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1616  sizeInBytes=4
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
	mov	1138,r13		! source line 1138
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1139,r13		! source line 1139
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
	.word	_Label_1618
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1620
	.word	-12
	.word	4
	.word	_Label_1621
	.word	-16
	.word	4
	.word	_Label_1622
	.word	-20
	.word	4
	.word	_Label_1623
	.word	-24
	.word	4
	.word	_Label_1624
	.word	-28
	.word	4
	.word	_Label_1625
	.word	-32
	.word	4
	.word	_Label_1626
	.word	-36
	.word	4
	.word	_Label_1627
	.word	-40
	.word	4
	.word	_Label_1628
	.word	-44
	.word	4
	.word	_Label_1629
	.word	-48
	.word	4
	.word	_Label_1630
	.word	-52
	.word	4
	.word	0
_Label_1618:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1619:
	.ascii	"Pself\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1629:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1630:
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
_Label_3287:
	push	r0
	sub	r1,1,r1
	bne	_Label_3287
	mov	1144,r13		! source line 1144
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_1631 = &processManagerLock
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
	mov	1154,r13		! source line 1154
	mov	"\0\0WH",r10
_Label_1632:
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_1636 = &freeList
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
!   Retrieve Result: targetName=_temp_1635  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1637 = _temp_1635 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1637 then goto _Label_1634 else goto _Label_1633
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1633
	jmp	_Label_1634
_Label_1633:
	mov	1154,r13		! source line 1154
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1638 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1639 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1638  sizeInBytes=4
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
	jmp	_Label_1632
_Label_1634:
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1640 = &freeList
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
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1641 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1641 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0IF",r10
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1645 = &freeList
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
!   Retrieve Result: targetName=_temp_1644  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1646 = _temp_1644 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1646 then goto _Label_1643 else goto _Label_1642
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1642
	jmp	_Label_1643
_Label_1642:
! THEN...
	mov	1162,r13		! source line 1162
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_1647 = &freeList
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
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1648 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1648  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_1649 = &freeList
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
	jmp	_Label_1650
_Label_1643:
! ELSE...
	mov	1166,r13		! source line 1166
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1650:
! SEND STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_1651 = &processManagerLock
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
	mov	1169,r13		! source line 1169
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
	.word	_Label_1652
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1653
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1654
	.word	-16
	.word	4
	.word	_Label_1655
	.word	-20
	.word	4
	.word	_Label_1656
	.word	-24
	.word	4
	.word	_Label_1657
	.word	-28
	.word	4
	.word	_Label_1658
	.word	-9
	.word	1
	.word	_Label_1659
	.word	-32
	.word	4
	.word	_Label_1660
	.word	-10
	.word	1
	.word	_Label_1661
	.word	-36
	.word	4
	.word	_Label_1662
	.word	-40
	.word	4
	.word	_Label_1663
	.word	-44
	.word	4
	.word	_Label_1664
	.word	-48
	.word	4
	.word	_Label_1665
	.word	-11
	.word	1
	.word	_Label_1666
	.word	-52
	.word	4
	.word	_Label_1667
	.word	-12
	.word	1
	.word	_Label_1668
	.word	-56
	.word	4
	.word	_Label_1669
	.word	-60
	.word	4
	.word	_Label_1670
	.word	-64
	.word	4
	.word	0
_Label_1652:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1653:
	.ascii	"Pself\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1658:
	.byte	'C'
	.ascii	"_temp_1646\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1660:
	.byte	'C'
	.ascii	"_temp_1644\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1665:
	.byte	'C'
	.ascii	"_temp_1637\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1667:
	.byte	'C'
	.ascii	"_temp_1635\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1669:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1670:
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
_Label_3288:
	push	r0
	sub	r1,1,r1
	bne	_Label_3288
	mov	1174,r13		! source line 1174
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1671 = &processManagerLock
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
	mov	1180,r13		! source line 1180
	mov	"\0\0IF",r10
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_1675 = &freeList
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
!   Retrieve Result: targetName=_temp_1674  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1676 = _temp_1674 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1676 then goto _Label_1673 else goto _Label_1672
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1672
	jmp	_Label_1673
_Label_1672:
! THEN...
	mov	1181,r13		! source line 1181
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1677 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1677  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1673:
! ASSIGNMENT STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1678 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1678 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_1679 = &freeList
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
	mov	1185,r13		! source line 1185
	mov	"\0\0SE",r10
!   _temp_1680 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1681 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1680  sizeInBytes=4
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
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
!   _temp_1682 = &processManagerLock
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
	mov	1186,r13		! source line 1186
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
	.word	_Label_1683
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1685
	.word	12
	.word	4
	.word	_Label_1686
	.word	-16
	.word	4
	.word	_Label_1687
	.word	-20
	.word	4
	.word	_Label_1688
	.word	-24
	.word	4
	.word	_Label_1689
	.word	-28
	.word	4
	.word	_Label_1690
	.word	-32
	.word	4
	.word	_Label_1691
	.word	-36
	.word	4
	.word	_Label_1692
	.word	-9
	.word	1
	.word	_Label_1693
	.word	-40
	.word	4
	.word	_Label_1694
	.word	-10
	.word	1
	.word	_Label_1695
	.word	-44
	.word	4
	.word	0
_Label_1683:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1684:
	.ascii	"Pself\0"
	.align
_Label_1685:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1692:
	.byte	'C'
	.ascii	"_temp_1676\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1694:
	.byte	'C'
	.ascii	"_temp_1674\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1696
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1696:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1697
	.word	_sourceFileName
	.word	285		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1697:
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
_Label_3289:
	push	r0
	sub	r1,1,r1
	bne	_Label_3289
	mov	1297,r13		! source line 1297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1698 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1304,r13		! source line 1304
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
	mov	1305,r13		! source line 1305
	mov	"\0\0SE",r10
!   _temp_1700 = &framesInUse
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
	mov	1306,r13		! source line 1306
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
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
	mov	1308,r13		! source line 1308
	mov	"\0\0SE",r10
!   _temp_1702 = &frameManagerLock
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
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   waiting = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! ASSIGNMENT STATEMENT...
	mov	1310,r13		! source line 1310
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
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_1704 = &restOfLine
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
	mov	1312,r13		! source line 1312
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
	mov	1313,r13		! source line 1313
	mov	"\0\0SE",r10
!   _temp_1706 = &newFramesAvailable
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
	mov	1319,r13		! source line 1319
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1711 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1712 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1711  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1707:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1712 then goto _Label_1710		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1710
_Label_1708:
	mov	1319,r13		! source line 1319
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1715 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1715) then goto _Label_1714
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1714
!	jmp	_Label_1713
_Label_1713:
! THEN...
	mov	1323,r13		! source line 1323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1716 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1323,r13		! source line 1323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1714:
!   Increment the FOR-LOOP index variable and jump back
_Label_1709:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1707
! END FOR
_Label_1710:
! RETURN STATEMENT...
	mov	1319,r13		! source line 1319
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
	.word	_Label_1717
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1718
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1719
	.word	-12
	.word	4
	.word	_Label_1720
	.word	-16
	.word	4
	.word	_Label_1721
	.word	-20
	.word	4
	.word	_Label_1722
	.word	-24
	.word	4
	.word	_Label_1723
	.word	-28
	.word	4
	.word	_Label_1724
	.word	-32
	.word	4
	.word	_Label_1725
	.word	-36
	.word	4
	.word	_Label_1726
	.word	-40
	.word	4
	.word	_Label_1727
	.word	-44
	.word	4
	.word	_Label_1728
	.word	-48
	.word	4
	.word	_Label_1729
	.word	-52
	.word	4
	.word	_Label_1730
	.word	-56
	.word	4
	.word	_Label_1731
	.word	-60
	.word	4
	.word	_Label_1732
	.word	-64
	.word	4
	.word	0
_Label_1717:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1718:
	.ascii	"Pself\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1732:
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
_Label_3290:
	push	r0
	sub	r1,1,r1
	bne	_Label_3290
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0SE",r10
!   _temp_1733 = &frameManagerLock
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
!   _temp_1734 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1734  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1335,r13		! source line 1335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1735 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1336,r13		! source line 1336
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1736 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1736  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1337,r13		! source line 1337
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0SE",r10
!   _temp_1737 = &framesInUse
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
	mov	1339,r13		! source line 1339
	mov	"\0\0SE",r10
!   _temp_1738 = &frameManagerLock
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
	mov	1339,r13		! source line 1339
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
	.word	_Label_1739
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1741
	.word	-12
	.word	4
	.word	_Label_1742
	.word	-16
	.word	4
	.word	_Label_1743
	.word	-20
	.word	4
	.word	_Label_1744
	.word	-24
	.word	4
	.word	_Label_1745
	.word	-28
	.word	4
	.word	_Label_1746
	.word	-32
	.word	4
	.word	0
_Label_1739:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1740:
	.ascii	"Pself\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1733\0"
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
_Label_3291:
	push	r0
	sub	r1,1,r1
	bne	_Label_3291
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0SE",r10
!   _temp_1747 = &frameManagerLock
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
	mov	1355,r13		! source line 1355
	mov	"\0\0WH",r10
_Label_1748:
!   if numberFreeFrames >= 1 then goto _Label_1750		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1750
!	jmp	_Label_1749
_Label_1749:
	mov	1355,r13		! source line 1355
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0SE",r10
!   _temp_1751 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1752 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1751  sizeInBytes=4
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
	jmp	_Label_1748
_Label_1750:
! ASSIGNMENT STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0AS",r10
	mov	1360,r13		! source line 1360
	mov	"\0\0SE",r10
!   _temp_1753 = &framesInUse
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
	mov	1361,r13		! source line 1361
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
	mov	1364,r13		! source line 1364
	mov	"\0\0SE",r10
!   _temp_1754 = &frameManagerLock
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
	mov	1367,r13		! source line 1367
	mov	"\0\0AS",r10
!   _temp_1755 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1755		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
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
	.word	_Label_1756
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1757
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1758
	.word	-12
	.word	4
	.word	_Label_1759
	.word	-16
	.word	4
	.word	_Label_1760
	.word	-20
	.word	4
	.word	_Label_1761
	.word	-24
	.word	4
	.word	_Label_1762
	.word	-28
	.word	4
	.word	_Label_1763
	.word	-32
	.word	4
	.word	_Label_1764
	.word	-36
	.word	4
	.word	_Label_1765
	.word	-40
	.word	4
	.word	0
_Label_1756:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1757:
	.ascii	"Pself\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1764:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1765:
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
_Label_3292:
	push	r0
	sub	r1,1,r1
	bne	_Label_3292
	mov	1374,r13		! source line 1374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0SE",r10
!   _temp_1766 = &frameManagerLock
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
	mov	1379,r13		! source line 1379
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
	mov	1380,r13		! source line 1380
	mov	"\0\0IF",r10
!   if waiting <= 1 then goto _Label_1768		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1768
!	jmp	_Label_1767
_Label_1767:
! THEN...
	mov	1381,r13		! source line 1381
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0SE",r10
!   _temp_1769 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1770 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1769  sizeInBytes=4
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
_Label_1768:
! WHILE STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0WH",r10
_Label_1771:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1773		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1773
!	jmp	_Label_1772
_Label_1772:
	mov	1384,r13		! source line 1384
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
!   _temp_1774 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1775 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1774  sizeInBytes=4
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
	jmp	_Label_1771
_Label_1773:
! FOR STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1780 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1781 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1780  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1776:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1781 then goto _Label_1779		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1779
_Label_1777:
	mov	1388,r13		! source line 1388
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0AS",r10
	mov	1389,r13		! source line 1389
	mov	"\0\0SE",r10
!   _temp_1782 = &framesInUse
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
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   _temp_1783 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1783		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1391,r13		! source line 1391
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
_Label_1778:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1776
! END FOR
_Label_1779:
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
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
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1784 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1784 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
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
	mov	1397,r13		! source line 1397
	mov	"\0\0SE",r10
!   _temp_1785 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1786 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1785  sizeInBytes=4
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
	mov	1399,r13		! source line 1399
	mov	"\0\0SE",r10
!   _temp_1787 = &frameManagerLock
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
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1788
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1789
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1790
	.word	12
	.word	4
	.word	_Label_1791
	.word	16
	.word	4
	.word	_Label_1792
	.word	-12
	.word	4
	.word	_Label_1793
	.word	-16
	.word	4
	.word	_Label_1794
	.word	-20
	.word	4
	.word	_Label_1795
	.word	-24
	.word	4
	.word	_Label_1796
	.word	-28
	.word	4
	.word	_Label_1797
	.word	-32
	.word	4
	.word	_Label_1798
	.word	-36
	.word	4
	.word	_Label_1799
	.word	-40
	.word	4
	.word	_Label_1800
	.word	-44
	.word	4
	.word	_Label_1801
	.word	-48
	.word	4
	.word	_Label_1802
	.word	-52
	.word	4
	.word	_Label_1803
	.word	-56
	.word	4
	.word	_Label_1804
	.word	-60
	.word	4
	.word	_Label_1805
	.word	-64
	.word	4
	.word	_Label_1806
	.word	-68
	.word	4
	.word	0
_Label_1788:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1789:
	.ascii	"Pself\0"
	.align
_Label_1790:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1805:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1806:
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
_Label_3293:
	push	r0
	sub	r1,1,r1
	bne	_Label_3293
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0SE",r10
!   _temp_1807 = &frameManagerLock
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
	mov	1409,r13		! source line 1409
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1812 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1815 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1814 = *_temp_1815  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1813 = _temp_1814 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1812  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1808:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1813 then goto _Label_1811		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1811
_Label_1809:
	mov	1409,r13		! source line 1409
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0AS",r10
	mov	1410,r13		! source line 1410
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
	mov	1411,r13		! source line 1411
	mov	"\0\0AS",r10
!   _temp_1816 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1816 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1412,r13		! source line 1412
	mov	"\0\0SE",r10
!   _temp_1817 = &framesInUse
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
_Label_1810:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1808
! END FOR
_Label_1811:
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1819 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1818 = *_temp_1819  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1818		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0SE",r10
!   _temp_1820 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1821 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1820  sizeInBytes=4
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
	mov	1417,r13		! source line 1417
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1822 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1822 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0SE",r10
!   _temp_1823 = &frameManagerLock
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
	mov	1419,r13		! source line 1419
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
	.word	_Label_1824
	.word	8		! total size of parameters
	.word	72		! frame size = 72
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
	.word	_Label_1833
	.word	-36
	.word	4
	.word	_Label_1834
	.word	-40
	.word	4
	.word	_Label_1835
	.word	-44
	.word	4
	.word	_Label_1836
	.word	-48
	.word	4
	.word	_Label_1837
	.word	-52
	.word	4
	.word	_Label_1838
	.word	-56
	.word	4
	.word	_Label_1839
	.word	-60
	.word	4
	.word	_Label_1840
	.word	-64
	.word	4
	.word	_Label_1841
	.word	-68
	.word	4
	.word	_Label_1842
	.word	-72
	.word	4
	.word	0
_Label_1824:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1825:
	.ascii	"Pself\0"
	.align
_Label_1826:
	.byte	'P'
	.ascii	"aPageTable\0"
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
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1840:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1841:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1843
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
_Label_1843:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1844
	.word	_sourceFileName
	.word	306		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1844:
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
_Label_3294:
	push	r0
	sub	r1,1,r1
	bne	_Label_3294
	mov	1430,r13		! source line 1430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
!   _temp_1845 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1847 = &_temp_1846
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1847 = _temp_1847 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1849:
!   Data Move: *_temp_1847 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1847 = _temp_1847 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1848 = _temp_1848 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1848) then goto _Label_1849
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1849
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1850 = &_temp_1846
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3295
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3295:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1845 = *_temp_1850  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3296:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3296
! RETURN STATEMENT...
	mov	1435,r13		! source line 1435
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
	.word	_Label_1851
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1853
	.word	-12
	.word	4
	.word	_Label_1854
	.word	-16
	.word	4
	.word	_Label_1855
	.word	-20
	.word	4
	.word	_Label_1856
	.word	-104
	.word	84
	.word	_Label_1857
	.word	-108
	.word	4
	.word	0
_Label_1851:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1852:
	.ascii	"Pself\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1845\0"
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
_Label_3297:
	push	r0
	sub	r1,1,r1
	bne	_Label_3297
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1858 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1858  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1445,r13		! source line 1445
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1859 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1859  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1446,r13		! source line 1446
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1864 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1865 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1864  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1860:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1865 then goto _Label_1863		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1863
_Label_1861:
	mov	1447,r13		! source line 1447
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1866 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1448,r13		! source line 1448
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1868 [i ] into _temp_1869
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
!   _temp_1867 = _temp_1869		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1870 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1870  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1450,r13		! source line 1450
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1872 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1872 [i ] into _temp_1873
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
!   Data Move: _temp_1871 = *_temp_1873  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1871  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1874 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1874  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1452,r13		! source line 1452
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1875 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1876 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1876  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1454,r13		! source line 1454
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1878) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1877  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1877  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1455,r13		! source line 1455
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1879 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1879  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1456,r13		! source line 1456
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0IF",r10
	mov	1457,r13		! source line 1457
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1883) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1882  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1882) then goto _Label_1881
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1881
!	jmp	_Label_1880
_Label_1880:
! THEN...
	mov	1458,r13		! source line 1458
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1885) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1884  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1458,r13		! source line 1458
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1886
_Label_1881:
! ELSE...
	mov	1460,r13		! source line 1460
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1887 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1887  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1460,r13		! source line 1460
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1886:
! CALL STATEMENT...
!   _temp_1888 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1888  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1462,r13		! source line 1462
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0IF",r10
	mov	1463,r13		! source line 1463
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1891) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1889 else goto _Label_1890
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1890
	jmp	_Label_1889
_Label_1889:
! THEN...
	mov	1464,r13		! source line 1464
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1892 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1892  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1464,r13		! source line 1464
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1893
_Label_1890:
! ELSE...
	mov	1466,r13		! source line 1466
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1894 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1894  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1466,r13		! source line 1466
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1893:
! CALL STATEMENT...
!   _temp_1895 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1468,r13		! source line 1468
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0IF",r10
	mov	1469,r13		! source line 1469
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1898) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1896 else goto _Label_1897
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1897
	jmp	_Label_1896
_Label_1896:
! THEN...
	mov	1470,r13		! source line 1470
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1899 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1899  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1470,r13		! source line 1470
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1900
_Label_1897:
! ELSE...
	mov	1472,r13		! source line 1472
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1901 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1901  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1472,r13		! source line 1472
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1900:
! CALL STATEMENT...
!   _temp_1902 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1902  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1474,r13		! source line 1474
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0IF",r10
	mov	1475,r13		! source line 1475
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1905) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1903 else goto _Label_1904
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1904
	jmp	_Label_1903
_Label_1903:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1906 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1906  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1476,r13		! source line 1476
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1907
_Label_1904:
! ELSE...
	mov	1478,r13		! source line 1478
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1908 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1908  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1478,r13		! source line 1478
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1907:
! CALL STATEMENT...
!   _temp_1909 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1909  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1480,r13		! source line 1480
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0IF",r10
	mov	1481,r13		! source line 1481
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1912) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1910 else goto _Label_1911
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1911
	jmp	_Label_1910
_Label_1910:
! THEN...
	mov	1482,r13		! source line 1482
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1913 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1913  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1482,r13		! source line 1482
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1914
_Label_1911:
! ELSE...
	mov	1484,r13		! source line 1484
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1915 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1915  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1484,r13		! source line 1484
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1914:
! CALL STATEMENT...
!   Call the function
	mov	1486,r13		! source line 1486
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1862:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1860
! END FOR
_Label_1863:
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
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
	.word	_Label_1916
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1918
	.word	-12
	.word	4
	.word	_Label_1919
	.word	-16
	.word	4
	.word	_Label_1920
	.word	-20
	.word	4
	.word	_Label_1921
	.word	-24
	.word	4
	.word	_Label_1922
	.word	-28
	.word	4
	.word	_Label_1923
	.word	-32
	.word	4
	.word	_Label_1924
	.word	-36
	.word	4
	.word	_Label_1925
	.word	-40
	.word	4
	.word	_Label_1926
	.word	-44
	.word	4
	.word	_Label_1927
	.word	-48
	.word	4
	.word	_Label_1928
	.word	-52
	.word	4
	.word	_Label_1929
	.word	-56
	.word	4
	.word	_Label_1930
	.word	-60
	.word	4
	.word	_Label_1931
	.word	-64
	.word	4
	.word	_Label_1932
	.word	-68
	.word	4
	.word	_Label_1933
	.word	-72
	.word	4
	.word	_Label_1934
	.word	-76
	.word	4
	.word	_Label_1935
	.word	-80
	.word	4
	.word	_Label_1936
	.word	-84
	.word	4
	.word	_Label_1937
	.word	-88
	.word	4
	.word	_Label_1938
	.word	-92
	.word	4
	.word	_Label_1939
	.word	-96
	.word	4
	.word	_Label_1940
	.word	-100
	.word	4
	.word	_Label_1941
	.word	-104
	.word	4
	.word	_Label_1942
	.word	-108
	.word	4
	.word	_Label_1943
	.word	-112
	.word	4
	.word	_Label_1944
	.word	-116
	.word	4
	.word	_Label_1945
	.word	-120
	.word	4
	.word	_Label_1946
	.word	-124
	.word	4
	.word	_Label_1947
	.word	-128
	.word	4
	.word	_Label_1948
	.word	-132
	.word	4
	.word	_Label_1949
	.word	-136
	.word	4
	.word	_Label_1950
	.word	-140
	.word	4
	.word	_Label_1951
	.word	-144
	.word	4
	.word	_Label_1952
	.word	-148
	.word	4
	.word	_Label_1953
	.word	-152
	.word	4
	.word	_Label_1954
	.word	-156
	.word	4
	.word	_Label_1955
	.word	-160
	.word	4
	.word	_Label_1956
	.word	-164
	.word	4
	.word	_Label_1957
	.word	-168
	.word	4
	.word	0
_Label_1916:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1917:
	.ascii	"Pself\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1957:
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
_Label_3298:
	push	r0
	sub	r1,1,r1
	bne	_Label_3298
	mov	1492,r13		! source line 1492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0RE",r10
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
!   _temp_1958 = _temp_1959 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1958  (sizeInBytes=4)
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
	.word	_Label_1962
	.word	8		! total size of parameters
	.word	16		! frame size = 16
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
	.word	0
_Label_1962:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
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
_Label_3299:
	push	r0
	sub	r1,1,r1
	bne	_Label_3299
	mov	1502,r13		! source line 1502
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0RE",r10
!   _temp_1971 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1971 [entry ] into _temp_1972
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
!   Data Move: _temp_1970 = *_temp_1972  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1969 = _temp_1970 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1969  (sizeInBytes=4)
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
	.word	_Label_1973
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1974
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1975
	.word	12
	.word	4
	.word	_Label_1976
	.word	-12
	.word	4
	.word	_Label_1977
	.word	-16
	.word	4
	.word	_Label_1978
	.word	-20
	.word	4
	.word	_Label_1979
	.word	-24
	.word	4
	.word	0
_Label_1973:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1974:
	.ascii	"Pself\0"
	.align
_Label_1975:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1969\0"
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
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
	mov	1511,r13		! source line 1511
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   _temp_1980 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1980 [entry ] into _temp_1981
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
!   _temp_1985 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1985 [entry ] into _temp_1986
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
!   Data Move: _temp_1984 = *_temp_1986  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1983 = _temp_1984 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1982 = _temp_1983 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1981 = _temp_1982  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1516,r13		! source line 1516
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
	.word	_Label_1987
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1989
	.word	12
	.word	4
	.word	_Label_1990
	.word	16
	.word	4
	.word	_Label_1991
	.word	-12
	.word	4
	.word	_Label_1992
	.word	-16
	.word	4
	.word	_Label_1993
	.word	-20
	.word	4
	.word	_Label_1994
	.word	-24
	.word	4
	.word	_Label_1995
	.word	-28
	.word	4
	.word	_Label_1996
	.word	-32
	.word	4
	.word	_Label_1997
	.word	-36
	.word	4
	.word	0
_Label_1987:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1988:
	.ascii	"Pself\0"
	.align
_Label_1989:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1990:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1980\0"
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
_Label_3301:
	push	r0
	sub	r1,1,r1
	bne	_Label_3301
	mov	1521,r13		! source line 1521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0RE",r10
!   _temp_2001 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2001 [entry ] into _temp_2002
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
!   Data Move: _temp_2000 = *_temp_2002  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1999 = _temp_2000 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1999) then goto _Label_2003
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2003
!   _temp_1998 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2004
_Label_2003:
!   _temp_1998 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2004:
!   ReturnResult: _temp_1998  (sizeInBytes=1)
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
	.word	_Label_2005
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2007
	.word	12
	.word	4
	.word	_Label_2008
	.word	-16
	.word	4
	.word	_Label_2009
	.word	-20
	.word	4
	.word	_Label_2010
	.word	-24
	.word	4
	.word	_Label_2011
	.word	-28
	.word	4
	.word	_Label_2012
	.word	-9
	.word	1
	.word	0
_Label_2005:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2006:
	.ascii	"Pself\0"
	.align
_Label_2007:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2012:
	.byte	'C'
	.ascii	"_temp_1998\0"
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
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
	mov	1530,r13		! source line 1530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0RE",r10
!   _temp_2016 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2016 [entry ] into _temp_2017
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
!   Data Move: _temp_2015 = *_temp_2017  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2014 = _temp_2015 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2014) then goto _Label_2018
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2018
!   _temp_2013 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2019
_Label_2018:
!   _temp_2013 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2019:
!   ReturnResult: _temp_2013  (sizeInBytes=1)
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
	.word	_Label_2020
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2022
	.word	12
	.word	4
	.word	_Label_2023
	.word	-16
	.word	4
	.word	_Label_2024
	.word	-20
	.word	4
	.word	_Label_2025
	.word	-24
	.word	4
	.word	_Label_2026
	.word	-28
	.word	4
	.word	_Label_2027
	.word	-9
	.word	1
	.word	0
_Label_2020:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2021:
	.ascii	"Pself\0"
	.align
_Label_2022:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2027:
	.byte	'C'
	.ascii	"_temp_2013\0"
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
_Label_3303:
	push	r0
	sub	r1,1,r1
	bne	_Label_3303
	mov	1539,r13		! source line 1539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
!   _temp_2031 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2031 [entry ] into _temp_2032
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
!   Data Move: _temp_2030 = *_temp_2032  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2029 = _temp_2030 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2029) then goto _Label_2033
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2033
!   _temp_2028 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2034
_Label_2033:
!   _temp_2028 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2034:
!   ReturnResult: _temp_2028  (sizeInBytes=1)
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
	.word	_Label_2035
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2036
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2037
	.word	12
	.word	4
	.word	_Label_2038
	.word	-16
	.word	4
	.word	_Label_2039
	.word	-20
	.word	4
	.word	_Label_2040
	.word	-24
	.word	4
	.word	_Label_2041
	.word	-28
	.word	4
	.word	_Label_2042
	.word	-9
	.word	1
	.word	0
_Label_2035:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2036:
	.ascii	"Pself\0"
	.align
_Label_2037:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2042:
	.byte	'C'
	.ascii	"_temp_2028\0"
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
_Label_3304:
	push	r0
	sub	r1,1,r1
	bne	_Label_3304
	mov	1548,r13		! source line 1548
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0RE",r10
!   _temp_2046 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2046 [entry ] into _temp_2047
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
!   Data Move: _temp_2045 = *_temp_2047  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2044 = _temp_2045 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2044) then goto _Label_2048
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2048
!   _temp_2043 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2049
_Label_2048:
!   _temp_2043 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2049:
!   ReturnResult: _temp_2043  (sizeInBytes=1)
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
	.word	_Label_2050
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2052
	.word	12
	.word	4
	.word	_Label_2053
	.word	-16
	.word	4
	.word	_Label_2054
	.word	-20
	.word	4
	.word	_Label_2055
	.word	-24
	.word	4
	.word	_Label_2056
	.word	-28
	.word	4
	.word	_Label_2057
	.word	-9
	.word	1
	.word	0
_Label_2050:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2051:
	.ascii	"Pself\0"
	.align
_Label_2052:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2057:
	.byte	'C'
	.ascii	"_temp_2043\0"
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
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
	mov	1557,r13		! source line 1557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   _temp_2058 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2058 [entry ] into _temp_2059
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
!   _temp_2062 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2062 [entry ] into _temp_2063
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
!   Data Move: _temp_2061 = *_temp_2063  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2060 = _temp_2061 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2059 = _temp_2060  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1561,r13		! source line 1561
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
	.word	_Label_2064
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2066
	.word	12
	.word	4
	.word	_Label_2067
	.word	-12
	.word	4
	.word	_Label_2068
	.word	-16
	.word	4
	.word	_Label_2069
	.word	-20
	.word	4
	.word	_Label_2070
	.word	-24
	.word	4
	.word	_Label_2071
	.word	-28
	.word	4
	.word	_Label_2072
	.word	-32
	.word	4
	.word	0
_Label_2064:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2065:
	.ascii	"Pself\0"
	.align
_Label_2066:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2058\0"
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
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
	mov	1566,r13		! source line 1566
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0AS",r10
!   _temp_2073 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2073 [entry ] into _temp_2074
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
!   _temp_2077 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2077 [entry ] into _temp_2078
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
!   Data Move: _temp_2076 = *_temp_2078  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2075 = _temp_2076 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2074 = _temp_2075  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1570,r13		! source line 1570
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
	.word	_Label_2079
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2080
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2081
	.word	12
	.word	4
	.word	_Label_2082
	.word	-12
	.word	4
	.word	_Label_2083
	.word	-16
	.word	4
	.word	_Label_2084
	.word	-20
	.word	4
	.word	_Label_2085
	.word	-24
	.word	4
	.word	_Label_2086
	.word	-28
	.word	4
	.word	_Label_2087
	.word	-32
	.word	4
	.word	0
_Label_2079:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2080:
	.ascii	"Pself\0"
	.align
_Label_2081:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2073\0"
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
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
	mov	1575,r13		! source line 1575
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0AS",r10
!   _temp_2088 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2088 [entry ] into _temp_2089
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
!   _temp_2092 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2092 [entry ] into _temp_2093
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
!   Data Move: _temp_2091 = *_temp_2093  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2090 = _temp_2091 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2089 = _temp_2090  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1579,r13		! source line 1579
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
	.word	_Label_2094
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2095
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2096
	.word	12
	.word	4
	.word	_Label_2097
	.word	-12
	.word	4
	.word	_Label_2098
	.word	-16
	.word	4
	.word	_Label_2099
	.word	-20
	.word	4
	.word	_Label_2100
	.word	-24
	.word	4
	.word	_Label_2101
	.word	-28
	.word	4
	.word	_Label_2102
	.word	-32
	.word	4
	.word	0
_Label_2094:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2095:
	.ascii	"Pself\0"
	.align
_Label_2096:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2088\0"
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
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
	mov	1584,r13		! source line 1584
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0AS",r10
!   _temp_2103 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2103 [entry ] into _temp_2104
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
!   _temp_2107 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2107 [entry ] into _temp_2108
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
!   Data Move: _temp_2106 = *_temp_2108  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2105 = _temp_2106 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2104 = _temp_2105  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
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
	.word	_Label_2109
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2111
	.word	12
	.word	4
	.word	_Label_2112
	.word	-12
	.word	4
	.word	_Label_2113
	.word	-16
	.word	4
	.word	_Label_2114
	.word	-20
	.word	4
	.word	_Label_2115
	.word	-24
	.word	4
	.word	_Label_2116
	.word	-28
	.word	4
	.word	_Label_2117
	.word	-32
	.word	4
	.word	0
_Label_2109:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2110:
	.ascii	"Pself\0"
	.align
_Label_2111:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2103\0"
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
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
	mov	1593,r13		! source line 1593
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0AS",r10
!   _temp_2118 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2118 [entry ] into _temp_2119
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
!   _temp_2122 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2122 [entry ] into _temp_2123
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
!   Data Move: _temp_2121 = *_temp_2123  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2120 = _temp_2121 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2119 = _temp_2120  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1597,r13		! source line 1597
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
	.word	_Label_2124
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2125
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2126
	.word	12
	.word	4
	.word	_Label_2127
	.word	-12
	.word	4
	.word	_Label_2128
	.word	-16
	.word	4
	.word	_Label_2129
	.word	-20
	.word	4
	.word	_Label_2130
	.word	-24
	.word	4
	.word	_Label_2131
	.word	-28
	.word	4
	.word	_Label_2132
	.word	-32
	.word	4
	.word	0
_Label_2124:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2125:
	.ascii	"Pself\0"
	.align
_Label_2126:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2118\0"
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
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
	mov	1602,r13		! source line 1602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
!   _temp_2133 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2133 [entry ] into _temp_2134
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
!   _temp_2137 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2137 [entry ] into _temp_2138
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
!   Data Move: _temp_2136 = *_temp_2138  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2135 = _temp_2136 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2134 = _temp_2135  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1606,r13		! source line 1606
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
	.word	_Label_2139
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2140
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2141
	.word	12
	.word	4
	.word	_Label_2142
	.word	-12
	.word	4
	.word	_Label_2143
	.word	-16
	.word	4
	.word	_Label_2144
	.word	-20
	.word	4
	.word	_Label_2145
	.word	-24
	.word	4
	.word	_Label_2146
	.word	-28
	.word	4
	.word	_Label_2147
	.word	-32
	.word	4
	.word	0
_Label_2139:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2140:
	.ascii	"Pself\0"
	.align
_Label_2141:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2138\0"
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
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
	mov	1611,r13		! source line 1611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   _temp_2148 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2148 [entry ] into _temp_2149
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
!   _temp_2152 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2152 [entry ] into _temp_2153
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
!   Data Move: _temp_2151 = *_temp_2153  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2150 = _temp_2151 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2149 = _temp_2150  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2154
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2156
	.word	12
	.word	4
	.word	_Label_2157
	.word	-12
	.word	4
	.word	_Label_2158
	.word	-16
	.word	4
	.word	_Label_2159
	.word	-20
	.word	4
	.word	_Label_2160
	.word	-24
	.word	4
	.word	_Label_2161
	.word	-28
	.word	4
	.word	_Label_2162
	.word	-32
	.word	4
	.word	0
_Label_2154:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2155:
	.ascii	"Pself\0"
	.align
_Label_2156:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2148\0"
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
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
	mov	1620,r13		! source line 1620
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   _temp_2163 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2163 [entry ] into _temp_2164
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
!   _temp_2167 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2167 [entry ] into _temp_2168
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
!   Data Move: _temp_2166 = *_temp_2168  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2165 = _temp_2166 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2164 = _temp_2165  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1624,r13		! source line 1624
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
	.word	_Label_2169
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2171
	.word	12
	.word	4
	.word	_Label_2172
	.word	-12
	.word	4
	.word	_Label_2173
	.word	-16
	.word	4
	.word	_Label_2174
	.word	-20
	.word	4
	.word	_Label_2175
	.word	-24
	.word	4
	.word	_Label_2176
	.word	-28
	.word	4
	.word	_Label_2177
	.word	-32
	.word	4
	.word	0
_Label_2169:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2170:
	.ascii	"Pself\0"
	.align
_Label_2171:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2163\0"
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
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
	mov	1629,r13		! source line 1629
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2179 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2179 [0 ] into _temp_2180
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
!   _temp_2178 = _temp_2180		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2181 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2178  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2181  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1635,r13		! source line 1635
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1635,r13		! source line 1635
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
	.word	_Label_2182
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2184
	.word	-12
	.word	4
	.word	_Label_2185
	.word	-16
	.word	4
	.word	_Label_2186
	.word	-20
	.word	4
	.word	_Label_2187
	.word	-24
	.word	4
	.word	0
_Label_2182:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2183:
	.ascii	"Pself\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2178\0"
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
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
	mov	1640,r13		! source line 1640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2188
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2188
	jmp	_Label_2189
_Label_2188:
! THEN...
	mov	1656,r13		! source line 1656
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2190
_Label_2189:
! ELSE...
	mov	1657,r13		! source line 1657
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2192		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2192
!	jmp	_Label_2191
_Label_2191:
! THEN...
	mov	1658,r13		! source line 1658
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2192:
! END IF...
_Label_2190:
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
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
	mov	1661,r13		! source line 1661
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
	mov	1664,r13		! source line 1664
	mov	"\0\0WH",r10
_Label_2193:
!	jmp	_Label_2194
_Label_2194:
	mov	1664,r13		! source line 1664
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2197		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2197
!	jmp	_Label_2196
_Label_2196:
! THEN...
	mov	1666,r13		! source line 1666
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2198 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2198  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1666,r13		! source line 1666
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2197:
! IF STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0IF",r10
	mov	1669,r13		! source line 1669
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2202) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2201  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2201 then goto _Label_2200 else goto _Label_2199
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2199
	jmp	_Label_2200
_Label_2199:
! THEN...
	mov	1670,r13		! source line 1670
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2203 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1670,r13		! source line 1670
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2200:
! ASSIGNMENT STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0AS",r10
	mov	1673,r13		! source line 1673
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2205) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2204  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2204 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0WH",r10
_Label_2206:
!   if offset >= 8192 then goto _Label_2208		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2208
!	jmp	_Label_2207
_Label_2207:
	mov	1675,r13		! source line 1675
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2209 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2209  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2211		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2211
!	jmp	_Label_2210
_Label_2210:
! THEN...
	mov	1684,r13		! source line 1684
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2211:
! END WHILE...
	jmp	_Label_2206
_Label_2208:
! ASSIGNMENT STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2193
_Label_2195:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2212
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2213
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2214
	.word	12
	.word	4
	.word	_Label_2215
	.word	16
	.word	4
	.word	_Label_2216
	.word	20
	.word	4
	.word	_Label_2217
	.word	-9
	.word	1
	.word	_Label_2218
	.word	-16
	.word	4
	.word	_Label_2219
	.word	-20
	.word	4
	.word	_Label_2220
	.word	-24
	.word	4
	.word	_Label_2221
	.word	-28
	.word	4
	.word	_Label_2222
	.word	-10
	.word	1
	.word	_Label_2223
	.word	-32
	.word	4
	.word	_Label_2224
	.word	-36
	.word	4
	.word	_Label_2225
	.word	-40
	.word	4
	.word	_Label_2226
	.word	-44
	.word	4
	.word	_Label_2227
	.word	-48
	.word	4
	.word	0
_Label_2212:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2213:
	.ascii	"Pself\0"
	.align
_Label_2214:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2215:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2216:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2217:
	.byte	'C'
	.ascii	"_temp_2209\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2222:
	.byte	'C'
	.ascii	"_temp_2201\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2224:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2225:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2226:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2227:
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
_Label_3315:
	push	r0
	sub	r1,1,r1
	bne	_Label_3315
	mov	1694,r13		! source line 1694
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2228
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2228
	jmp	_Label_2229
_Label_2228:
! THEN...
	mov	1706,r13		! source line 1706
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2230
_Label_2229:
! ELSE...
	mov	1707,r13		! source line 1707
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2232		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2232
!	jmp	_Label_2231
_Label_2231:
! THEN...
	mov	1708,r13		! source line 1708
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2232:
! END IF...
_Label_2230:
! ASSIGNMENT STATEMENT...
	mov	1710,r13		! source line 1710
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
	mov	1711,r13		! source line 1711
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
	mov	1712,r13		! source line 1712
	mov	"\0\0WH",r10
_Label_2233:
!	jmp	_Label_2234
_Label_2234:
	mov	1712,r13		! source line 1712
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2239		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2239
	jmp	_Label_2236
_Label_2239:
	mov	1714,r13		! source line 1714
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2241) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2240  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2240 then goto _Label_2238 else goto _Label_2236
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2236
	jmp	_Label_2238
_Label_2238:
	mov	1715,r13		! source line 1715
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2243) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2242  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2242 then goto _Label_2237 else goto _Label_2236
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2236
	jmp	_Label_2237
_Label_2236:
! THEN...
	mov	1716,r13		! source line 1716
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2237:
! ASSIGNMENT STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0AS",r10
	mov	1718,r13		! source line 1718
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2245) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2244  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2244 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0WH",r10
_Label_2246:
!   if offset >= 8192 then goto _Label_2248		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2248
!	jmp	_Label_2247
_Label_2247:
	mov	1719,r13		! source line 1719
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2249 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2249  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2251		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2251
!	jmp	_Label_2250
_Label_2250:
! THEN...
	mov	1726,r13		! source line 1726
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2251:
! END WHILE...
	jmp	_Label_2246
_Label_2248:
! ASSIGNMENT STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2233
_Label_2235:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2252
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2253
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2254
	.word	12
	.word	4
	.word	_Label_2255
	.word	16
	.word	4
	.word	_Label_2256
	.word	20
	.word	4
	.word	_Label_2257
	.word	-9
	.word	1
	.word	_Label_2258
	.word	-16
	.word	4
	.word	_Label_2259
	.word	-20
	.word	4
	.word	_Label_2260
	.word	-24
	.word	4
	.word	_Label_2261
	.word	-10
	.word	1
	.word	_Label_2262
	.word	-28
	.word	4
	.word	_Label_2263
	.word	-11
	.word	1
	.word	_Label_2264
	.word	-32
	.word	4
	.word	_Label_2265
	.word	-36
	.word	4
	.word	_Label_2266
	.word	-40
	.word	4
	.word	_Label_2267
	.word	-44
	.word	4
	.word	0
_Label_2252:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2253:
	.ascii	"Pself\0"
	.align
_Label_2254:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2255:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2256:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2257:
	.byte	'C'
	.ascii	"_temp_2249\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2261:
	.byte	'C'
	.ascii	"_temp_2242\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2263:
	.byte	'C'
	.ascii	"_temp_2240\0"
	.align
_Label_2264:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2265:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2266:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2267:
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
_Label_3316:
	push	r0
	sub	r1,1,r1
	bne	_Label_3316
	mov	1736,r13		! source line 1736
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0IF",r10
	mov	1760,r13		! source line 1760
	mov	"\0\0SE",r10
!   _temp_2271 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2272) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2271  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2270  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2270 >= 4 then goto _Label_2269		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2269
!	jmp	_Label_2268
_Label_2268:
! THEN...
	mov	1763,r13		! source line 1763
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2269:
! IF STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2274		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2274
!	jmp	_Label_2273
_Label_2273:
! THEN...
	mov	1768,r13		! source line 1768
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2274:
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
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
	mov	1773,r13		! source line 1773
	mov	"\0\0RE",r10
	mov	1773,r13		! source line 1773
	mov	"\0\0SE",r10
!   _temp_2277 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2276 = _temp_2277 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2278 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2279) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2276  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2278  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2275  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2275  (sizeInBytes=4)
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
	.word	_Label_2280
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2282
	.word	12
	.word	4
	.word	_Label_2283
	.word	16
	.word	4
	.word	_Label_2284
	.word	20
	.word	4
	.word	_Label_2285
	.word	-12
	.word	4
	.word	_Label_2286
	.word	-16
	.word	4
	.word	_Label_2287
	.word	-20
	.word	4
	.word	_Label_2288
	.word	-24
	.word	4
	.word	_Label_2289
	.word	-28
	.word	4
	.word	_Label_2290
	.word	-32
	.word	4
	.word	_Label_2291
	.word	-36
	.word	4
	.word	_Label_2292
	.word	-40
	.word	4
	.word	_Label_2293
	.word	-44
	.word	4
	.word	0
_Label_2280:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2281:
	.ascii	"Pself\0"
	.align
_Label_2282:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2283:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2284:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2293:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2294
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2294:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2295
	.word	_sourceFileName
	.word	339		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2295:
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
_Label_3317:
	push	r0
	sub	r1,1,r1
	bne	_Label_3317
	mov	2244,r13		! source line 2244
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2296 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2296  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2245,r13		! source line 2245
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
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
	mov	2253,r13		! source line 2253
	mov	"\0\0SE",r10
!   _temp_2298 = &semUsedInSynchMethods
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
	mov	2254,r13		! source line 2254
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
	mov	2255,r13		! source line 2255
	mov	"\0\0SE",r10
!   _temp_2300 = &diskBusy
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
	mov	2255,r13		! source line 2255
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
	.word	_Label_2301
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2303
	.word	-12
	.word	4
	.word	_Label_2304
	.word	-16
	.word	4
	.word	_Label_2305
	.word	-20
	.word	4
	.word	_Label_2306
	.word	-24
	.word	4
	.word	_Label_2307
	.word	-28
	.word	4
	.word	0
_Label_2301:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2302:
	.ascii	"Pself\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2296\0"
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
_Label_3318:
	push	r0
	sub	r1,1,r1
	bne	_Label_3318
	mov	2260,r13		! source line 2260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   _temp_2308 = &diskBusy
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
	mov	2274,r13		! source line 2274
	mov	"\0\0WH",r10
_Label_2309:
!	jmp	_Label_2310
_Label_2310:
	mov	2274,r13		! source line 2274
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0SE",r10
!   _temp_2312 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2313) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2312  sizeInBytes=4
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
	mov	2278,r13		! source line 2278
	mov	"\0\0SE",r10
!   _temp_2314 = &semUsedInSynchMethods
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
	mov	2281,r13		! source line 2281
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2323 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2317
	cmp	r1,2
	be	_Label_2318
	cmp	r1,3
	be	_Label_2319
	cmp	r1,4
	be	_Label_2320
	cmp	r1,5
	be	_Label_2321
	cmp	r1,6
	be	_Label_2322
	jmp	_Label_2315
! CASE 1...
_Label_2317:
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2324 = &diskBusy
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
	mov	2284,r13		! source line 2284
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2318:
! CALL STATEMENT...
!   _temp_2325 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2325  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2286,r13		! source line 2286
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2319:
! CALL STATEMENT...
!   _temp_2326 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2326  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2288,r13		! source line 2288
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2320:
! CALL STATEMENT...
!   _temp_2327 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2290,r13		! source line 2290
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2321:
! BREAK STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0BR",r10
	jmp	_Label_2316
! CASE 6...
_Label_2322:
! CALL STATEMENT...
!   _temp_2328 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2296,r13		! source line 2296
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2315:
! CALL STATEMENT...
!   _temp_2329 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2329  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2298,r13		! source line 2298
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2316:
! END WHILE...
	jmp	_Label_2309
_Label_2311:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2330
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2332
	.word	12
	.word	4
	.word	_Label_2333
	.word	16
	.word	4
	.word	_Label_2334
	.word	20
	.word	4
	.word	_Label_2335
	.word	-12
	.word	4
	.word	_Label_2336
	.word	-16
	.word	4
	.word	_Label_2337
	.word	-20
	.word	4
	.word	_Label_2338
	.word	-24
	.word	4
	.word	_Label_2339
	.word	-28
	.word	4
	.word	_Label_2340
	.word	-32
	.word	4
	.word	_Label_2341
	.word	-36
	.word	4
	.word	_Label_2342
	.word	-40
	.word	4
	.word	_Label_2343
	.word	-44
	.word	4
	.word	_Label_2344
	.word	-48
	.word	4
	.word	_Label_2345
	.word	-52
	.word	4
	.word	0
_Label_2330:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2331:
	.ascii	"Pself\0"
	.align
_Label_2332:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2333:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2334:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2308\0"
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
	mov	2307,r13		! source line 2307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2325,r13		! source line 2325
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
	mov	2326,r13		! source line 2326
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
	mov	2327,r13		! source line 2327
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
	mov	2328,r13		! source line 2328
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
	mov	2328,r13		! source line 2328
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
	.word	_Label_2346
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2348
	.word	12
	.word	4
	.word	_Label_2349
	.word	16
	.word	4
	.word	_Label_2350
	.word	20
	.word	4
	.word	_Label_2351
	.word	24
	.word	4
	.word	0
_Label_2346:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2347:
	.ascii	"Pself\0"
	.align
_Label_2348:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2349:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2350:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2351:
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
_Label_3319:
	push	r0
	sub	r1,1,r1
	bne	_Label_3319
	mov	2333,r13		! source line 2333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0SE",r10
!   _temp_2352 = &diskBusy
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
	mov	2346,r13		! source line 2346
	mov	"\0\0WH",r10
_Label_2353:
!	jmp	_Label_2354
_Label_2354:
	mov	2346,r13		! source line 2346
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0SE",r10
!   _temp_2356 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2357) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2356  sizeInBytes=4
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
	mov	2349,r13		! source line 2349
	mov	"\0\0SE",r10
!   _temp_2358 = &semUsedInSynchMethods
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
	mov	2352,r13		! source line 2352
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2367 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2361
	cmp	r1,2
	be	_Label_2362
	cmp	r1,3
	be	_Label_2363
	cmp	r1,4
	be	_Label_2364
	cmp	r1,5
	be	_Label_2365
	cmp	r1,6
	be	_Label_2366
	jmp	_Label_2359
! CASE 1...
_Label_2361:
! SEND STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0SE",r10
!   _temp_2368 = &diskBusy
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
	mov	2355,r13		! source line 2355
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2362:
! CALL STATEMENT...
!   _temp_2369 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2357,r13		! source line 2357
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2363:
! CALL STATEMENT...
!   _temp_2370 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2359,r13		! source line 2359
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2364:
! CALL STATEMENT...
!   _temp_2371 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2361,r13		! source line 2361
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2365:
! BREAK STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0BR",r10
	jmp	_Label_2360
! CASE 6...
_Label_2366:
! CALL STATEMENT...
!   _temp_2372 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2372  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2367,r13		! source line 2367
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2359:
! CALL STATEMENT...
!   _temp_2373 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2373  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2369,r13		! source line 2369
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2360:
! END WHILE...
	jmp	_Label_2353
_Label_2355:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2374
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2375
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2376
	.word	12
	.word	4
	.word	_Label_2377
	.word	16
	.word	4
	.word	_Label_2378
	.word	20
	.word	4
	.word	_Label_2379
	.word	-12
	.word	4
	.word	_Label_2380
	.word	-16
	.word	4
	.word	_Label_2381
	.word	-20
	.word	4
	.word	_Label_2382
	.word	-24
	.word	4
	.word	_Label_2383
	.word	-28
	.word	4
	.word	_Label_2384
	.word	-32
	.word	4
	.word	_Label_2385
	.word	-36
	.word	4
	.word	_Label_2386
	.word	-40
	.word	4
	.word	_Label_2387
	.word	-44
	.word	4
	.word	_Label_2388
	.word	-48
	.word	4
	.word	_Label_2389
	.word	-52
	.word	4
	.word	0
_Label_2374:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2375:
	.ascii	"Pself\0"
	.align
_Label_2376:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2377:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2378:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2352\0"
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
	mov	2378,r13		! source line 2378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2395,r13		! source line 2395
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
	mov	2396,r13		! source line 2396
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
	mov	2397,r13		! source line 2397
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
	mov	2398,r13		! source line 2398
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
	mov	2398,r13		! source line 2398
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
	.word	_Label_2390
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2391
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2392
	.word	12
	.word	4
	.word	_Label_2393
	.word	16
	.word	4
	.word	_Label_2394
	.word	20
	.word	4
	.word	_Label_2395
	.word	24
	.word	4
	.word	0
_Label_2390:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2391:
	.ascii	"Pself\0"
	.align
_Label_2392:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2393:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2395:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2396
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
_Label_2396:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2397
	.word	_sourceFileName
	.word	362		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2397:
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
_Label_3320:
	push	r0
	sub	r1,1,r1
	bne	_Label_3320
	mov	2409,r13		! source line 2409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2398 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2398  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2416,r13		! source line 2416
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
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
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_2400 = &fileManagerLock
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
	mov	2421,r13		! source line 2421
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
	mov	2422,r13		! source line 2422
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
	mov	2423,r13		! source line 2423
	mov	"\0\0SE",r10
!   _temp_2403 = &anFCBBecameFree
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
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   _temp_2404 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2406 = &_temp_2405
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2406 = _temp_2406 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2408 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3321:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3321
!   _temp_2408 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2410:
!   Data Move: *_temp_2406 = _temp_2408  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3322:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3322
!   _temp_2406 = _temp_2406 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2407 = _temp_2407 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2407) then goto _Label_2410
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2410
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2411 = &_temp_2405
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3323
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3323:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2404 = *_temp_2411  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3324:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3324
! FOR STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2416 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2417 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2416  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2412:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2417 then goto _Label_2415		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2415
_Label_2413:
	mov	2426,r13		! source line 2426
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0AS",r10
!   _temp_2418 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2418 [i ] into _temp_2419
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
!   _temp_2420 = _temp_2419 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2420 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0SE",r10
!   _temp_2421 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2421 [i ] into _temp_2422
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
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_2424 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2424 [i ] into _temp_2425
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
!   _temp_2423 = _temp_2425		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2426 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2423  sizeInBytes=4
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
_Label_2414:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2412
! END FOR
_Label_2415:
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
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
	mov	2434,r13		! source line 2434
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
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   _temp_2429 = &anOpenFileBecameFree
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
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   _temp_2430 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2432 = &_temp_2431
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2432 = _temp_2432 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2434 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3325:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3325
!   _temp_2434 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2436:
!   Data Move: *_temp_2432 = _temp_2434  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3326:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3326
!   _temp_2432 = _temp_2432 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2433 = _temp_2433 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2433) then goto _Label_2436
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2436
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2437 = &_temp_2431
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3327
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3327:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2430 = *_temp_2437  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3328:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3328
! FOR STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2442 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2443 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2442  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2438:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2443 then goto _Label_2441		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2441
_Label_2439:
	mov	2438,r13		! source line 2438
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   _temp_2444 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2444 [i ] into _temp_2445
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
!   _temp_2446 = _temp_2445 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2446 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_2448 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2448 [i ] into _temp_2449
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
!   _temp_2447 = _temp_2449		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2450 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2447  sizeInBytes=4
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
_Label_2440:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2438
! END FOR
_Label_2441:
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3329:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3329
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   _temp_2452 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2453 = _temp_2452 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2453 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0AS",r10
	mov	2450,r13		! source line 2450
	mov	"\0\0SE",r10
!   _temp_2454 = &_P_Kernel_frameManager
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
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2455 = &_P_Kernel_diskDriver
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
	mov	2451,r13		! source line 2451
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
	.word	_Label_2456
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2457
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-100
	.word	28
	.word	_Label_2475
	.word	-104
	.word	4
	.word	_Label_2476
	.word	-108
	.word	4
	.word	_Label_2477
	.word	-392
	.word	284
	.word	_Label_2478
	.word	-396
	.word	4
	.word	_Label_2479
	.word	-400
	.word	4
	.word	_Label_2480
	.word	-404
	.word	4
	.word	_Label_2481
	.word	-408
	.word	4
	.word	_Label_2482
	.word	-412
	.word	4
	.word	_Label_2483
	.word	-416
	.word	4
	.word	_Label_2484
	.word	-420
	.word	4
	.word	_Label_2485
	.word	-424
	.word	4
	.word	_Label_2486
	.word	-428
	.word	4
	.word	_Label_2487
	.word	-432
	.word	4
	.word	_Label_2488
	.word	-436
	.word	4
	.word	_Label_2489
	.word	-440
	.word	4
	.word	_Label_2490
	.word	-444
	.word	4
	.word	_Label_2491
	.word	-448
	.word	4
	.word	_Label_2492
	.word	-452
	.word	4
	.word	_Label_2493
	.word	-456
	.word	4
	.word	_Label_2494
	.word	-460
	.word	4
	.word	_Label_2495
	.word	-500
	.word	40
	.word	_Label_2496
	.word	-504
	.word	4
	.word	_Label_2497
	.word	-508
	.word	4
	.word	_Label_2498
	.word	-912
	.word	404
	.word	_Label_2499
	.word	-916
	.word	4
	.word	_Label_2500
	.word	-920
	.word	4
	.word	_Label_2501
	.word	-924
	.word	4
	.word	_Label_2502
	.word	-928
	.word	4
	.word	_Label_2503
	.word	-932
	.word	4
	.word	_Label_2504
	.word	-936
	.word	4
	.word	_Label_2505
	.word	-940
	.word	4
	.word	_Label_2506
	.word	-944
	.word	4
	.word	0
_Label_2456:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2457:
	.ascii	"Pself\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2506:
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
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	2458,r13		! source line 2458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
!   _temp_2507 = &fileManagerLock
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
!   _temp_2508 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2508  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2461,r13		! source line 2461
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2513 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2514 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2513  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2509:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2514 then goto _Label_2512		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2512
_Label_2510:
	mov	2462,r13		! source line 2462
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2515 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2515  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2463,r13		! source line 2463
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2464,r13		! source line 2464
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2516 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2465,r13		! source line 2465
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
!   _temp_2517 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2517 [i ] into _temp_2518
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
_Label_2511:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2509
! END FOR
_Label_2512:
! CALL STATEMENT...
!   _temp_2519 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2519  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2468,r13		! source line 2468
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0SE",r10
!   _temp_2520 = _function_226_printFCB
	set	_function_226_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2521 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2520  sizeInBytes=4
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
	mov	2470,r13		! source line 2470
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2522 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2522  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2471,r13		! source line 2471
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2527 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2528 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2527  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2523:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2528 then goto _Label_2526		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2526
_Label_2524:
	mov	2472,r13		! source line 2472
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2529 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2529  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2473,r13		! source line 2473
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2474,r13		! source line 2474
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2530 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2530  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2475,r13		! source line 2475
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2532 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2532 [i ] into _temp_2533
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
!   _temp_2531 = _temp_2533		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2531  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2476,r13		! source line 2476
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2534 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2534  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2477,r13		! source line 2477
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_2535 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2535 [i ] into _temp_2536
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
_Label_2525:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2523
! END FOR
_Label_2526:
! CALL STATEMENT...
!   _temp_2537 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2537  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2480,r13		! source line 2480
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0SE",r10
!   _temp_2538 = _function_225_printOpen
	set	_function_225_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2539 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2538  sizeInBytes=4
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
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   _temp_2540 = &fileManagerLock
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
	mov	2482,r13		! source line 2482
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
	.word	_Label_2541
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2543
	.word	-12
	.word	4
	.word	_Label_2544
	.word	-16
	.word	4
	.word	_Label_2545
	.word	-20
	.word	4
	.word	_Label_2546
	.word	-24
	.word	4
	.word	_Label_2547
	.word	-28
	.word	4
	.word	_Label_2548
	.word	-32
	.word	4
	.word	_Label_2549
	.word	-36
	.word	4
	.word	_Label_2550
	.word	-40
	.word	4
	.word	_Label_2551
	.word	-44
	.word	4
	.word	_Label_2552
	.word	-48
	.word	4
	.word	_Label_2553
	.word	-52
	.word	4
	.word	_Label_2554
	.word	-56
	.word	4
	.word	_Label_2555
	.word	-60
	.word	4
	.word	_Label_2556
	.word	-64
	.word	4
	.word	_Label_2557
	.word	-68
	.word	4
	.word	_Label_2558
	.word	-72
	.word	4
	.word	_Label_2559
	.word	-76
	.word	4
	.word	_Label_2560
	.word	-80
	.word	4
	.word	_Label_2561
	.word	-84
	.word	4
	.word	_Label_2562
	.word	-88
	.word	4
	.word	_Label_2563
	.word	-92
	.word	4
	.word	_Label_2564
	.word	-96
	.word	4
	.word	_Label_2565
	.word	-100
	.word	4
	.word	_Label_2566
	.word	-104
	.word	4
	.word	_Label_2567
	.word	-108
	.word	4
	.word	_Label_2568
	.word	-112
	.word	4
	.word	_Label_2569
	.word	-116
	.word	4
	.word	0
_Label_2541:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2542:
	.ascii	"Pself\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2569:
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
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	2487,r13		! source line 2487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0AS",r10
	mov	2503,r13		! source line 2503
	mov	"\0\0SE",r10
!   _temp_2570 = &_P_Kernel_fileManager
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
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2571
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2571
	jmp	_Label_2572
_Label_2571:
! THEN...
	mov	2505,r13		! source line 2505
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2572:
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   _temp_2573 = &fileManagerLock
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
	mov	2510,r13		! source line 2510
	mov	"\0\0WH",r10
_Label_2574:
	mov	2510,r13		! source line 2510
	mov	"\0\0SE",r10
!   _temp_2577 = &openFileFreeList
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
!   if result==true then goto _Label_2575 else goto _Label_2576
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2576
	jmp	_Label_2575
_Label_2575:
	mov	2510,r13		! source line 2510
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0SE",r10
!   _temp_2578 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2579 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2578  sizeInBytes=4
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
	jmp	_Label_2574
_Label_2576:
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
	mov	2513,r13		! source line 2513
	mov	"\0\0SE",r10
!   _temp_2580 = &openFileFreeList
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
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2581 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2581 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2582 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2582 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2583 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2583 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   _temp_2584 = &fileManagerLock
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
	mov	2523,r13		! source line 2523
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
	.word	_Label_2585
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2586
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2587
	.word	12
	.word	4
	.word	_Label_2588
	.word	-12
	.word	4
	.word	_Label_2589
	.word	-16
	.word	4
	.word	_Label_2590
	.word	-20
	.word	4
	.word	_Label_2591
	.word	-24
	.word	4
	.word	_Label_2592
	.word	-28
	.word	4
	.word	_Label_2593
	.word	-32
	.word	4
	.word	_Label_2594
	.word	-36
	.word	4
	.word	_Label_2595
	.word	-40
	.word	4
	.word	_Label_2596
	.word	-44
	.word	4
	.word	_Label_2597
	.word	-48
	.word	4
	.word	_Label_2598
	.word	-52
	.word	4
	.word	_Label_2599
	.word	-56
	.word	4
	.word	0
_Label_2585:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2586:
	.ascii	"Pself\0"
	.align
_Label_2587:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2598:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2599:
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
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	2528,r13		! source line 2528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
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
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2601		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2601
!	jmp	_Label_2600
_Label_2600:
! THEN...
	mov	2559,r13		! source line 2559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2602 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2602  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2559,r13		! source line 2559
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2601:
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
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
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
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
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0WH",r10
_Label_2603:
!   if numFiles <= 0 then goto _Label_2605		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2605
!	jmp	_Label_2604
_Label_2604:
	mov	2569,r13		! source line 2569
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2606 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2570,r13		! source line 2570
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2607 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2607  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2572,r13		! source line 2572
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2608 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2574,r13		! source line 2574
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2612 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2612 then goto _Label_2610		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2610
!	jmp	_Label_2611
_Label_2611:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2614
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
!   _temp_2613 = _temp_2614		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2613  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2577,r13		! source line 2577
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2609 else goto _Label_2610
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2610
	jmp	_Label_2609
_Label_2609:
! THEN...
	mov	2578,r13		! source line 2578
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0BR",r10
	jmp	_Label_2605
! END IF...
_Label_2610:
! ASSIGNMENT STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2603
_Label_2605:
! IF STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2616		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2616
!	jmp	_Label_2615
_Label_2615:
! THEN...
	mov	2586,r13		! source line 2586
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2616:
! SEND STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
!   _temp_2617 = &fileManagerLock
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
	mov	2591,r13		! source line 2591
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2622 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2623 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2622  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2618:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2623 then goto _Label_2621		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2621
_Label_2619:
	mov	2591,r13		! source line 2591
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   _temp_2624 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2624 [i ] into _temp_2625
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
!   fcb = _temp_2625		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2628 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2628 != start then goto _Label_2627		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2627
!	jmp	_Label_2626
_Label_2626:
! THEN...
	mov	2594,r13		! source line 2594
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2630 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2633 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2632 = *_temp_2633  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2631 = _temp_2632 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2630 = _temp_2631  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_2634 = &fileManagerLock
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
	mov	2596,r13		! source line 2596
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2627:
!   Increment the FOR-LOOP index variable and jump back
_Label_2620:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2618
! END FOR
_Label_2621:
! WHILE STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0WH",r10
_Label_2635:
	mov	2601,r13		! source line 2601
	mov	"\0\0SE",r10
!   _temp_2638 = &fcbFreeList
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
!   if result==true then goto _Label_2636 else goto _Label_2637
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2637
	jmp	_Label_2636
_Label_2636:
	mov	2601,r13		! source line 2601
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
!   _temp_2639 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2640 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2639  sizeInBytes=4
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
	jmp	_Label_2635
_Label_2637:
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
	mov	2604,r13		! source line 2604
	mov	"\0\0SE",r10
!   _temp_2641 = &fcbFreeList
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
	mov	2607,r13		! source line 2607
	mov	"\0\0SE",r10
!   _temp_2642 = &fileManagerLock
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
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2643 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2643 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2644 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2644 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2645 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2645 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2650 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2649 = *_temp_2650  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2649 < 0 then goto _Label_2648		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2648
	jmp	_Label_2646
_Label_2648:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2651 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2651 ) then goto _Label_2647		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2647
!	jmp	_Label_2646
_Label_2646:
! THEN...
	mov	2614,r13		! source line 2614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2652 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2652  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2614,r13		! source line 2614
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2647:
! RETURN STATEMENT...
	mov	2616,r13		! source line 2616
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
	.word	_Label_2653
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2655
	.word	12
	.word	4
	.word	_Label_2656
	.word	-12
	.word	4
	.word	_Label_2657
	.word	-16
	.word	4
	.word	_Label_2658
	.word	-20
	.word	4
	.word	_Label_2659
	.word	-24
	.word	4
	.word	_Label_2660
	.word	-28
	.word	4
	.word	_Label_2661
	.word	-32
	.word	4
	.word	_Label_2662
	.word	-36
	.word	4
	.word	_Label_2663
	.word	-40
	.word	4
	.word	_Label_2664
	.word	-44
	.word	4
	.word	_Label_2665
	.word	-48
	.word	4
	.word	_Label_2666
	.word	-52
	.word	4
	.word	_Label_2667
	.word	-56
	.word	4
	.word	_Label_2668
	.word	-60
	.word	4
	.word	_Label_2669
	.word	-64
	.word	4
	.word	_Label_2670
	.word	-68
	.word	4
	.word	_Label_2671
	.word	-72
	.word	4
	.word	_Label_2672
	.word	-76
	.word	4
	.word	_Label_2673
	.word	-80
	.word	4
	.word	_Label_2674
	.word	-84
	.word	4
	.word	_Label_2675
	.word	-88
	.word	4
	.word	_Label_2676
	.word	-92
	.word	4
	.word	_Label_2677
	.word	-96
	.word	4
	.word	_Label_2678
	.word	-100
	.word	4
	.word	_Label_2679
	.word	-104
	.word	4
	.word	_Label_2680
	.word	-108
	.word	4
	.word	_Label_2681
	.word	-112
	.word	4
	.word	_Label_2682
	.word	-116
	.word	4
	.word	_Label_2683
	.word	-120
	.word	4
	.word	_Label_2684
	.word	-124
	.word	4
	.word	_Label_2685
	.word	-128
	.word	4
	.word	_Label_2686
	.word	-132
	.word	4
	.word	_Label_2687
	.word	-136
	.word	4
	.word	_Label_2688
	.word	-140
	.word	4
	.word	_Label_2689
	.word	-144
	.word	4
	.word	_Label_2690
	.word	-148
	.word	4
	.word	_Label_2691
	.word	-152
	.word	4
	.word	_Label_2692
	.word	-156
	.word	4
	.word	_Label_2693
	.word	-160
	.word	4
	.word	0
_Label_2653:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2654:
	.ascii	"Pself\0"
	.align
_Label_2655:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2687:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2689:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2690:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2691:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2692:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2693:
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
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	2629,r13		! source line 2629
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0IF",r10
!   _temp_2696 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2696 then goto _Label_2695		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2695
!	jmp	_Label_2694
_Label_2694:
! THEN...
	mov	2632,r13		! source line 2632
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2695:
! SEND STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0SE",r10
!   _temp_2697 = &fileManagerLock
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
	mov	2635,r13		! source line 2635
	mov	"\0\0SE",r10
!   _temp_2698 = &_P_Kernel_fileManager
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
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2699 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2699  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2700 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2703 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2702 = *_temp_2703  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2701 = _temp_2702 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2700 = _temp_2701  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2707 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2706 = *_temp_2707  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2706 > 0 then goto _Label_2705		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2705
!	jmp	_Label_2704
_Label_2704:
! THEN...
	mov	2639,r13		! source line 2639
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_2708 = &openFileFreeList
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
	mov	2640,r13		! source line 2640
	mov	"\0\0SE",r10
!   _temp_2709 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2710 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2709  sizeInBytes=4
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
	mov	2641,r13		! source line 2641
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2711 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2714 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2713 = *_temp_2714  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2712 = _temp_2713 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2711 = _temp_2712  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2718 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2717 = *_temp_2718  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2717 > 0 then goto _Label_2716		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2716
!	jmp	_Label_2715
_Label_2715:
! THEN...
	mov	2643,r13		! source line 2643
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0SE",r10
!   _temp_2719 = &fcbFreeList
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
	mov	2644,r13		! source line 2644
	mov	"\0\0SE",r10
!   _temp_2720 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2721 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2720  sizeInBytes=4
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
_Label_2716:
! END IF...
_Label_2705:
! SEND STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0SE",r10
!   _temp_2722 = &fileManagerLock
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
	mov	2647,r13		! source line 2647
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
	.word	_Label_2723
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2724
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2725
	.word	12
	.word	4
	.word	_Label_2726
	.word	-12
	.word	4
	.word	_Label_2727
	.word	-16
	.word	4
	.word	_Label_2728
	.word	-20
	.word	4
	.word	_Label_2729
	.word	-24
	.word	4
	.word	_Label_2730
	.word	-28
	.word	4
	.word	_Label_2731
	.word	-32
	.word	4
	.word	_Label_2732
	.word	-36
	.word	4
	.word	_Label_2733
	.word	-40
	.word	4
	.word	_Label_2734
	.word	-44
	.word	4
	.word	_Label_2735
	.word	-48
	.word	4
	.word	_Label_2736
	.word	-52
	.word	4
	.word	_Label_2737
	.word	-56
	.word	4
	.word	_Label_2738
	.word	-60
	.word	4
	.word	_Label_2739
	.word	-64
	.word	4
	.word	_Label_2740
	.word	-68
	.word	4
	.word	_Label_2741
	.word	-72
	.word	4
	.word	_Label_2742
	.word	-76
	.word	4
	.word	_Label_2743
	.word	-80
	.word	4
	.word	_Label_2744
	.word	-84
	.word	4
	.word	_Label_2745
	.word	-88
	.word	4
	.word	_Label_2746
	.word	-92
	.word	4
	.word	_Label_2747
	.word	-96
	.word	4
	.word	_Label_2748
	.word	-100
	.word	4
	.word	_Label_2749
	.word	-104
	.word	4
	.word	0
_Label_2723:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2724:
	.ascii	"Pself\0"
	.align
_Label_2725:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2749:
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
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
	mov	2652,r13		! source line 2652
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2753 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2752 = *_temp_2753  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2752) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2754 = _temp_2752 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2754 ) then goto _Label_2751		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2751
!	jmp	_Label_2750
_Label_2750:
! THEN...
	mov	2658,r13		! source line 2658
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2759 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2758 = *_temp_2759  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2758) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2760 = _temp_2758 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2757 = *_temp_2760  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2757 >= 0 then goto _Label_2756		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2756
!	jmp	_Label_2755
_Label_2755:
! THEN...
	mov	2659,r13		! source line 2659
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2761 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2761  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2659,r13		! source line 2659
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2756:
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2763 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2762 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2762) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2764 = _temp_2762 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2764 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2768 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2767 = *_temp_2768  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2767) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2769 = _temp_2767 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2766 = *_temp_2769  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2772 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2771 = *_temp_2772  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2771) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2773 = _temp_2771 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2770 = *_temp_2773  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2765 = _temp_2766 + _temp_2770		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2776 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2775 = *_temp_2776  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2775) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2777 = _temp_2775 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2774 = *_temp_2777  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2778 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2765  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2774  sizeInBytes=4
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
_Label_2751:
! RETURN STATEMENT...
	mov	2657,r13		! source line 2657
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
	.word	_Label_2779
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2781
	.word	12
	.word	4
	.word	_Label_2782
	.word	-12
	.word	4
	.word	_Label_2783
	.word	-16
	.word	4
	.word	_Label_2784
	.word	-20
	.word	4
	.word	_Label_2785
	.word	-24
	.word	4
	.word	_Label_2786
	.word	-28
	.word	4
	.word	_Label_2787
	.word	-32
	.word	4
	.word	_Label_2788
	.word	-36
	.word	4
	.word	_Label_2789
	.word	-40
	.word	4
	.word	_Label_2790
	.word	-44
	.word	4
	.word	_Label_2791
	.word	-48
	.word	4
	.word	_Label_2792
	.word	-52
	.word	4
	.word	_Label_2793
	.word	-56
	.word	4
	.word	_Label_2794
	.word	-60
	.word	4
	.word	_Label_2795
	.word	-64
	.word	4
	.word	_Label_2796
	.word	-68
	.word	4
	.word	_Label_2797
	.word	-72
	.word	4
	.word	_Label_2798
	.word	-76
	.word	4
	.word	_Label_2799
	.word	-80
	.word	4
	.word	_Label_2800
	.word	-84
	.word	4
	.word	_Label_2801
	.word	-88
	.word	4
	.word	_Label_2802
	.word	-92
	.word	4
	.word	_Label_2803
	.word	-96
	.word	4
	.word	_Label_2804
	.word	-100
	.word	4
	.word	_Label_2805
	.word	-104
	.word	4
	.word	_Label_2806
	.word	-108
	.word	4
	.word	0
_Label_2779:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2780:
	.ascii	"Pself\0"
	.align
_Label_2781:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2752\0"
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
_Label_3335:
	push	r0
	sub	r1,1,r1
	bne	_Label_3335
	mov	2671,r13		! source line 2671
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0SE",r10
!   _temp_2807 = &fileManagerLock
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
	mov	2687,r13		! source line 2687
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2813		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2813
!   _temp_2812 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2814
_Label_2813:
!   _temp_2812 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2814:
!   if _temp_2812 then goto _Label_2811 else goto _Label_2808
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2808
	jmp	_Label_2811
_Label_2811:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2817 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2816 = *_temp_2817  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2816 == 0 then goto _Label_2818		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2818
!   _temp_2815 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2819
_Label_2818:
!   _temp_2815 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2819:
!   if _temp_2815 then goto _Label_2810 else goto _Label_2808
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2808
	jmp	_Label_2810
_Label_2810:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2822 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2821 = *_temp_2822  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2821) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2823 = _temp_2821 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2820 = *_temp_2823  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2820 >= 0 then goto _Label_2809		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2809
!	jmp	_Label_2808
_Label_2808:
! THEN...
	mov	2688,r13		! source line 2688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2824 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2824  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2688,r13		! source line 2688
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2809:
! ASSIGNMENT STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2825 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2825  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0WH",r10
_Label_2826:
!   if numBytes <= 0 then goto _Label_2828		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2828
!	jmp	_Label_2827
_Label_2827:
	mov	2691,r13		! source line 2691
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2700,r13		! source line 2700
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
	mov	2701,r13		! source line 2701
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
	mov	2705,r13		! source line 2705
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2832 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2831 = *_temp_2832  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2831 == sector then goto _Label_2830		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2830
!	jmp	_Label_2829
_Label_2829:
! THEN...
	mov	2706,r13		! source line 2706
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2833) then goto _runtimeErrorNullPointer
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
	mov	2708,r13		! source line 2708
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2836 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2835 = *_temp_2836  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2834 = sector + _temp_2835		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2838 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2837 = *_temp_2838  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2839 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2834  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2837  sizeInBytes=4
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
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2840 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2840 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2841 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2841 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2830:
! ASSIGNMENT STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2843 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2842 = *_temp_2843  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2842 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   _temp_2844 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2844  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2715,r13		! source line 2715
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
	mov	2719,r13		! source line 2719
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2826
_Label_2828:
! SEND STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0SE",r10
!   _temp_2845 = &fileManagerLock
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
	mov	2730,r13		! source line 2730
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
	.word	_Label_2846
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2848
	.word	12
	.word	4
	.word	_Label_2849
	.word	16
	.word	4
	.word	_Label_2850
	.word	20
	.word	4
	.word	_Label_2851
	.word	24
	.word	4
	.word	_Label_2852
	.word	-16
	.word	4
	.word	_Label_2853
	.word	-20
	.word	4
	.word	_Label_2854
	.word	-24
	.word	4
	.word	_Label_2855
	.word	-28
	.word	4
	.word	_Label_2856
	.word	-32
	.word	4
	.word	_Label_2857
	.word	-36
	.word	4
	.word	_Label_2858
	.word	-40
	.word	4
	.word	_Label_2859
	.word	-44
	.word	4
	.word	_Label_2860
	.word	-48
	.word	4
	.word	_Label_2861
	.word	-52
	.word	4
	.word	_Label_2862
	.word	-56
	.word	4
	.word	_Label_2863
	.word	-60
	.word	4
	.word	_Label_2864
	.word	-64
	.word	4
	.word	_Label_2865
	.word	-68
	.word	4
	.word	_Label_2866
	.word	-72
	.word	4
	.word	_Label_2867
	.word	-76
	.word	4
	.word	_Label_2868
	.word	-80
	.word	4
	.word	_Label_2869
	.word	-84
	.word	4
	.word	_Label_2870
	.word	-88
	.word	4
	.word	_Label_2871
	.word	-92
	.word	4
	.word	_Label_2872
	.word	-96
	.word	4
	.word	_Label_2873
	.word	-100
	.word	4
	.word	_Label_2874
	.word	-104
	.word	4
	.word	_Label_2875
	.word	-9
	.word	1
	.word	_Label_2876
	.word	-10
	.word	1
	.word	_Label_2877
	.word	-108
	.word	4
	.word	_Label_2878
	.word	-112
	.word	4
	.word	_Label_2879
	.word	-116
	.word	4
	.word	_Label_2880
	.word	-120
	.word	4
	.word	_Label_2881
	.word	-124
	.word	4
	.word	_Label_2882
	.word	-128
	.word	4
	.word	0
_Label_2846:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2847:
	.ascii	"Pself\0"
	.align
_Label_2848:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2849:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2850:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2851:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2875:
	.byte	'C'
	.ascii	"_temp_2815\0"
	.align
_Label_2876:
	.byte	'C'
	.ascii	"_temp_2812\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2879:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2880:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2881:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2882:
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
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
	mov	2735,r13		! source line 2735
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   _temp_2883 = &fileManagerLock
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
	mov	2752,r13		! source line 2752
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2889		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2889
!   _temp_2888 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2890
_Label_2889:
!   _temp_2888 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2890:
!   if _temp_2888 then goto _Label_2887 else goto _Label_2884
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2884
	jmp	_Label_2887
_Label_2887:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2893 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2892 = *_temp_2893  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2892 == 0 then goto _Label_2894		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2894
!   _temp_2891 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2895
_Label_2894:
!   _temp_2891 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2895:
!   if _temp_2891 then goto _Label_2886 else goto _Label_2884
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2884
	jmp	_Label_2886
_Label_2886:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2898 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2897 = *_temp_2898  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2897) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2899 = _temp_2897 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2896 = *_temp_2899  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2896 >= 0 then goto _Label_2885		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2885
!	jmp	_Label_2884
_Label_2884:
! THEN...
	mov	2753,r13		! source line 2753
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2900 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
	load	[r14+-88],r1
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
_Label_2885:
! ASSIGNMENT STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2901 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2901  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0WH",r10
_Label_2902:
!   if numBytes <= 0 then goto _Label_2904		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2904
!	jmp	_Label_2903
_Label_2903:
	mov	2756,r13		! source line 2756
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
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
	mov	2766,r13		! source line 2766
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
	mov	2770,r13		! source line 2770
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2908 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2907 = *_temp_2908  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2907 == sector then goto _Label_2906		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2906
!	jmp	_Label_2905
_Label_2905:
! THEN...
	mov	2772,r13		! source line 2772
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2909) then goto _runtimeErrorNullPointer
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
_Label_2906:
! ASSIGNMENT STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2911 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2910 = *_temp_2911  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2910 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
!   _temp_2912 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2912  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2775,r13		! source line 2775
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2916 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2915 = *_temp_2916  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2915 != sector then goto _Label_2914		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2914
!	jmp	_Label_2913
_Label_2913:
	jmp	_Label_2917
_Label_2914:
! ELSE...
	mov	2778,r13		! source line 2778
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2920
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2920
	jmp	_Label_2919
_Label_2920:
!   if bytesToMove != 8192 then goto _Label_2919		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2919
!	jmp	_Label_2918
_Label_2918:
	jmp	_Label_2921
_Label_2919:
! ELSE...
	mov	2782,r13		! source line 2782
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2924 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2923 = *_temp_2924  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2922 = sector + _temp_2923		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2926 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2925 = *_temp_2926  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2927 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2922  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2925  sizeInBytes=4
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
_Label_2921:
! END IF...
_Label_2917:
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2928 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2928 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2929 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2929 = 1  (sizeInBytes=1)
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
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2902
_Label_2904:
! SEND STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
!   _temp_2930 = &fileManagerLock
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
	mov	2803,r13		! source line 2803
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
	.word	_Label_2931
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2933
	.word	12
	.word	4
	.word	_Label_2934
	.word	16
	.word	4
	.word	_Label_2935
	.word	20
	.word	4
	.word	_Label_2936
	.word	24
	.word	4
	.word	_Label_2937
	.word	-16
	.word	4
	.word	_Label_2938
	.word	-20
	.word	4
	.word	_Label_2939
	.word	-24
	.word	4
	.word	_Label_2940
	.word	-28
	.word	4
	.word	_Label_2941
	.word	-32
	.word	4
	.word	_Label_2942
	.word	-36
	.word	4
	.word	_Label_2943
	.word	-40
	.word	4
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
	.word	-80
	.word	4
	.word	_Label_2954
	.word	-84
	.word	4
	.word	_Label_2955
	.word	-88
	.word	4
	.word	_Label_2956
	.word	-92
	.word	4
	.word	_Label_2957
	.word	-96
	.word	4
	.word	_Label_2958
	.word	-100
	.word	4
	.word	_Label_2959
	.word	-104
	.word	4
	.word	_Label_2960
	.word	-108
	.word	4
	.word	_Label_2961
	.word	-112
	.word	4
	.word	_Label_2962
	.word	-9
	.word	1
	.word	_Label_2963
	.word	-10
	.word	1
	.word	_Label_2964
	.word	-116
	.word	4
	.word	_Label_2965
	.word	-120
	.word	4
	.word	_Label_2966
	.word	-124
	.word	4
	.word	_Label_2967
	.word	-128
	.word	4
	.word	_Label_2968
	.word	-132
	.word	4
	.word	_Label_2969
	.word	-136
	.word	4
	.word	0
_Label_2931:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2932:
	.ascii	"Pself\0"
	.align
_Label_2933:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2934:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2935:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2936:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2915\0"
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
	.ascii	"_temp_2910\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2962:
	.byte	'C'
	.ascii	"_temp_2891\0"
	.align
_Label_2963:
	.byte	'C'
	.ascii	"_temp_2888\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2965:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2966:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2967:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2968:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2969:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2970
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2970:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2971
	.word	_sourceFileName
	.word	387		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2971:
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
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
	mov	2839,r13		! source line 2839
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0AS",r10
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
!   _temp_2972 = &_P_Kernel_frameManager
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
	mov	2842,r13		! source line 2842
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2844,r13		! source line 2844
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
	.word	_Label_2973
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2974
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2975
	.word	-12
	.word	4
	.word	0
_Label_2973:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2974:
	.ascii	"Pself\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2972\0"
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
_Label_3338:
	push	r0
	sub	r1,1,r1
	bne	_Label_3338
	mov	2849,r13		! source line 2849
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2976 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2976  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2850,r13		! source line 2850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2851,r13		! source line 2851
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2977 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2852,r13		! source line 2852
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2853,r13		! source line 2853
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2978 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2978  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2854,r13		! source line 2854
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2855,r13		! source line 2855
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2979 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2979  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2856,r13		! source line 2856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2857,r13		! source line 2857
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2980 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2858,r13		! source line 2858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2859,r13		! source line 2859
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2981 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2981  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2860,r13		! source line 2860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2861,r13		! source line 2861
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2862,r13		! source line 2862
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2862,r13		! source line 2862
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
	.word	_Label_2982
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2984
	.word	-12
	.word	4
	.word	_Label_2985
	.word	-16
	.word	4
	.word	_Label_2986
	.word	-20
	.word	4
	.word	_Label_2987
	.word	-24
	.word	4
	.word	_Label_2988
	.word	-28
	.word	4
	.word	_Label_2989
	.word	-32
	.word	4
	.word	0
_Label_2982:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2983:
	.ascii	"Pself\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2990
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2990:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2991
	.word	_sourceFileName
	.word	404		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2991:
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
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	2873,r13		! source line 2873
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2992 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2992  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2993 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2876,r13		! source line 2876
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2995		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2995
!	jmp	_Label_2994
_Label_2994:
! THEN...
	mov	2878,r13		! source line 2878
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2878,r13		! source line 2878
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
	jmp	_Label_2996
_Label_2995:
! ELSE...
	mov	2880,r13		! source line 2880
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2997 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2997  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2996:
! RETURN STATEMENT...
	mov	2877,r13		! source line 2877
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
	.word	_Label_2998
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3000
	.word	-12
	.word	4
	.word	_Label_3001
	.word	-16
	.word	4
	.word	_Label_3002
	.word	-20
	.word	4
	.word	0
_Label_2998:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2999:
	.ascii	"Pself\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2992\0"
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
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
	mov	2886,r13		! source line 2886
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0SE",r10
!   _temp_3003 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3004 = _temp_3003 + 4
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
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2898,r13		! source line 2898
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
	mov	2899,r13		! source line 2899
	mov	"\0\0SE",r10
!   _temp_3005 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3006 = _temp_3005 + 4
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
	mov	2900,r13		! source line 2900
	mov	"\0\0RE",r10
	mov	2900,r13		! source line 2900
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3009 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3008  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3007  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3007  (sizeInBytes=1)
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
	.word	_Label_3010
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3012
	.word	12
	.word	4
	.word	_Label_3013
	.word	16
	.word	4
	.word	_Label_3014
	.word	-16
	.word	4
	.word	_Label_3015
	.word	-20
	.word	4
	.word	_Label_3016
	.word	-9
	.word	1
	.word	_Label_3017
	.word	-24
	.word	4
	.word	_Label_3018
	.word	-28
	.word	4
	.word	_Label_3019
	.word	-32
	.word	4
	.word	_Label_3020
	.word	-36
	.word	4
	.word	_Label_3021
	.word	-40
	.word	4
	.word	0
_Label_3010:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3011:
	.ascii	"Pself\0"
	.align
_Label_3012:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3013:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3016:
	.byte	'C'
	.ascii	"_temp_3007\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3021:
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
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
	mov	2905,r13		! source line 2905
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0IF",r10
	mov	2910,r13		! source line 2910
	mov	"\0\0SE",r10
!   _temp_3025 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3026) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3025  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3024  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3024 then goto _Label_3023 else goto _Label_3022
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3022
	jmp	_Label_3023
_Label_3022:
! THEN...
	mov	2911,r13		! source line 2911
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3027 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3027  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2911,r13		! source line 2911
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3023:
! RETURN STATEMENT...
	mov	2913,r13		! source line 2913
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
	.word	_Label_3028
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3030
	.word	-16
	.word	4
	.word	_Label_3031
	.word	-20
	.word	4
	.word	_Label_3032
	.word	-24
	.word	4
	.word	_Label_3033
	.word	-9
	.word	1
	.word	_Label_3034
	.word	-28
	.word	4
	.word	0
_Label_3028:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3029:
	.ascii	"Pself\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3033:
	.byte	'C'
	.ascii	"_temp_3024\0"
	.align
_Label_3034:
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
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
	mov	2918,r13		! source line 2918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3038 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3037 = *_temp_3038  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3037) then goto _Label_3036
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3036
!	jmp	_Label_3035
_Label_3035:
! THEN...
	mov	2945,r13		! source line 2945
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3039 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3039  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2945,r13		! source line 2945
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3036:
! IF STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0IF",r10
	mov	2949,r13		! source line 2949
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3043) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3042  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3042 == 1112300152 then goto _Label_3041		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3041
!	jmp	_Label_3040
_Label_3040:
! THEN...
	mov	2950,r13		! source line 2950
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3044 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3044  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2950,r13		! source line 2950
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3041:
! ASSIGNMENT STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0AS",r10
	mov	2955,r13		! source line 2955
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3045) then goto _runtimeErrorNullPointer
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
	mov	2956,r13		! source line 2956
	mov	"\0\0AS",r10
	mov	2956,r13		! source line 2956
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3046) then goto _runtimeErrorNullPointer
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
	mov	2957,r13		! source line 2957
	mov	"\0\0AS",r10
	mov	2957,r13		! source line 2957
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3047) then goto _runtimeErrorNullPointer
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
	mov	2958,r13		! source line 2958
	mov	"\0\0AS",r10
	mov	2958,r13		! source line 2958
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3048) then goto _runtimeErrorNullPointer
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
	mov	2959,r13		! source line 2959
	mov	"\0\0AS",r10
	mov	2959,r13		! source line 2959
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3049) then goto _runtimeErrorNullPointer
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
	mov	2960,r13		! source line 2960
	mov	"\0\0AS",r10
	mov	2960,r13		! source line 2960
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3050) then goto _runtimeErrorNullPointer
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
	mov	2963,r13		! source line 2963
	mov	"\0\0IF",r10
!   _temp_3053 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3053) then goto _Label_3052
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3052
!	jmp	_Label_3051
_Label_3051:
! THEN...
	mov	2964,r13		! source line 2964
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3054 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3054  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2964,r13		! source line 2964
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2965,r13		! source line 2965
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
! ASSIGNMENT STATEMENT...
	mov	2967,r13		! source line 2967
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
	mov	2971,r13		! source line 2971
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3056
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3056
!	jmp	_Label_3055
_Label_3055:
! THEN...
	mov	2972,r13		! source line 2972
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3057 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3057  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2972,r13		! source line 2972
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3056:
! IF STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0IF",r10
!   _temp_3060 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3060) then goto _Label_3059
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3059
!	jmp	_Label_3058
_Label_3058:
! THEN...
	mov	2978,r13		! source line 2978
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3061 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3061  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2978,r13		! source line 2978
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2979,r13		! source line 2979
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
! IF STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0IF",r10
!   _temp_3064 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3064 then goto _Label_3063		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3063
!	jmp	_Label_3062
_Label_3062:
! THEN...
	mov	2982,r13		! source line 2982
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3065 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3065  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2983,r13		! source line 2983
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
! ASSIGNMENT STATEMENT...
	mov	2985,r13		! source line 2985
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
	mov	2988,r13		! source line 2988
	mov	"\0\0IF",r10
!   _temp_3068 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3068) then goto _Label_3067
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3067
!	jmp	_Label_3066
_Label_3066:
! THEN...
	mov	2989,r13		! source line 2989
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3069 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3069  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2989,r13		! source line 2989
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2990,r13		! source line 2990
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
! IF STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0IF",r10
!   _temp_3072 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3072 then goto _Label_3071		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3071
!	jmp	_Label_3070
_Label_3070:
! THEN...
	mov	2993,r13		! source line 2993
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3073 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3073  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2993,r13		! source line 2993
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3071:
! ASSIGNMENT STATEMENT...
	mov	2996,r13		! source line 2996
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
	mov	2999,r13		! source line 2999
	mov	"\0\0AS",r10
!   _temp_3076 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3075 = _temp_3076 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3074 = _temp_3075 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3074 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3014,r13		! source line 3014
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3078		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3078
!	jmp	_Label_3077
_Label_3077:
! THEN...
	mov	3015,r13		! source line 3015
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3079 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3079  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3015,r13		! source line 3015
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3080 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3080  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3016,r13		! source line 3016
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3081 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3081  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3017,r13		! source line 3017
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3018,r13		! source line 3018
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3078:
! SEND STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
!   _temp_3082 = &_P_Kernel_frameManager
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
	mov	3026,r13		! source line 3026
	mov	"\0\0IF",r10
	mov	3026,r13		! source line 3026
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3086) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3085  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3085 == 707406378 then goto _Label_3084		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3084
!	jmp	_Label_3083
_Label_3083:
! THEN...
	mov	3027,r13		! source line 3027
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3087 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3087  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3027,r13		! source line 3027
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0SE",r10
!   _temp_3088 = &_P_Kernel_frameManager
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
	mov	3029,r13		! source line 3029
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3084:
! ASSIGNMENT STATEMENT...
	mov	3033,r13		! source line 3033
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
	mov	3034,r13		! source line 3034
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3093 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3094 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3093  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3089:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3094 then goto _Label_3092		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3092
_Label_3090:
	mov	3034,r13		! source line 3034
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0AS",r10
	mov	3035,r13		! source line 3035
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
	mov	3038,r13		! source line 3038
	mov	"\0\0IF",r10
	mov	3038,r13		! source line 3038
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3098) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3097  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3097 then goto _Label_3096 else goto _Label_3095
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3095
	jmp	_Label_3096
_Label_3095:
! THEN...
	mov	3039,r13		! source line 3039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3099 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3099  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3039,r13		! source line 3039
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0SE",r10
!   _temp_3100 = &_P_Kernel_frameManager
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
	mov	3041,r13		! source line 3041
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3096:
! SEND STATEMENT...
	mov	3043,r13		! source line 3043
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
	mov	3044,r13		! source line 3044
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3091:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3089
! END FOR
_Label_3092:
! IF STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0IF",r10
	mov	3048,r13		! source line 3048
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3104) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3103  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3103 == 707406378 then goto _Label_3102		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3102
!	jmp	_Label_3101
_Label_3101:
! THEN...
	mov	3049,r13		! source line 3049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3105 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3105  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3049,r13		! source line 3049
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0SE",r10
!   _temp_3106 = &_P_Kernel_frameManager
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
	mov	3051,r13		! source line 3051
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3102:
! FOR STATEMENT...
	mov	3055,r13		! source line 3055
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3111 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3112 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3111  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3107:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3112 then goto _Label_3110		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3110
_Label_3108:
	mov	3055,r13		! source line 3055
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0AS",r10
	mov	3056,r13		! source line 3056
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
	mov	3059,r13		! source line 3059
	mov	"\0\0IF",r10
	mov	3059,r13		! source line 3059
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3116) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3115  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3115 then goto _Label_3114 else goto _Label_3113
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3113
	jmp	_Label_3114
_Label_3113:
! THEN...
	mov	3060,r13		! source line 3060
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3117 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3117  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3060,r13		! source line 3060
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3061,r13		! source line 3061
	mov	"\0\0SE",r10
!   _temp_3118 = &_P_Kernel_frameManager
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
	mov	3062,r13		! source line 3062
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3114:
! ASSIGNMENT STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3109:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3107
! END FOR
_Label_3110:
! IF STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0IF",r10
	mov	3068,r13		! source line 3068
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3122) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3121  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3121 == 707406378 then goto _Label_3120		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3120
!	jmp	_Label_3119
_Label_3119:
! THEN...
	mov	3069,r13		! source line 3069
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3123 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3123  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3069,r13		! source line 3069
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0SE",r10
!   _temp_3124 = &_P_Kernel_frameManager
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
	mov	3071,r13		! source line 3071
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3120:
! ASSIGNMENT STATEMENT...
	mov	3075,r13		! source line 3075
	mov	"\0\0AS",r10
	mov	3075,r13		! source line 3075
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
	mov	3079,r13		! source line 3079
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3082,r13		! source line 3082
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
	.word	_Label_3125
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3127
	.word	12
	.word	4
	.word	_Label_3128
	.word	-16
	.word	4
	.word	_Label_3129
	.word	-20
	.word	4
	.word	_Label_3130
	.word	-24
	.word	4
	.word	_Label_3131
	.word	-28
	.word	4
	.word	_Label_3132
	.word	-32
	.word	4
	.word	_Label_3133
	.word	-36
	.word	4
	.word	_Label_3134
	.word	-40
	.word	4
	.word	_Label_3135
	.word	-9
	.word	1
	.word	_Label_3136
	.word	-44
	.word	4
	.word	_Label_3137
	.word	-48
	.word	4
	.word	_Label_3138
	.word	-52
	.word	4
	.word	_Label_3139
	.word	-56
	.word	4
	.word	_Label_3140
	.word	-60
	.word	4
	.word	_Label_3141
	.word	-64
	.word	4
	.word	_Label_3142
	.word	-68
	.word	4
	.word	_Label_3143
	.word	-72
	.word	4
	.word	_Label_3144
	.word	-76
	.word	4
	.word	_Label_3145
	.word	-10
	.word	1
	.word	_Label_3146
	.word	-80
	.word	4
	.word	_Label_3147
	.word	-84
	.word	4
	.word	_Label_3148
	.word	-88
	.word	4
	.word	_Label_3149
	.word	-92
	.word	4
	.word	_Label_3150
	.word	-96
	.word	4
	.word	_Label_3151
	.word	-100
	.word	4
	.word	_Label_3152
	.word	-104
	.word	4
	.word	_Label_3153
	.word	-108
	.word	4
	.word	_Label_3154
	.word	-112
	.word	4
	.word	_Label_3155
	.word	-116
	.word	4
	.word	_Label_3156
	.word	-120
	.word	4
	.word	_Label_3157
	.word	-124
	.word	4
	.word	_Label_3158
	.word	-128
	.word	4
	.word	_Label_3159
	.word	-132
	.word	4
	.word	_Label_3160
	.word	-136
	.word	4
	.word	_Label_3161
	.word	-140
	.word	4
	.word	_Label_3162
	.word	-144
	.word	4
	.word	_Label_3163
	.word	-148
	.word	4
	.word	_Label_3164
	.word	-152
	.word	4
	.word	_Label_3165
	.word	-156
	.word	4
	.word	_Label_3166
	.word	-160
	.word	4
	.word	_Label_3167
	.word	-164
	.word	4
	.word	_Label_3168
	.word	-168
	.word	4
	.word	_Label_3169
	.word	-172
	.word	4
	.word	_Label_3170
	.word	-176
	.word	4
	.word	_Label_3171
	.word	-180
	.word	4
	.word	_Label_3172
	.word	-184
	.word	4
	.word	_Label_3173
	.word	-188
	.word	4
	.word	_Label_3174
	.word	-192
	.word	4
	.word	_Label_3175
	.word	-196
	.word	4
	.word	_Label_3176
	.word	-200
	.word	4
	.word	_Label_3177
	.word	-204
	.word	4
	.word	_Label_3178
	.word	-208
	.word	4
	.word	_Label_3179
	.word	-212
	.word	4
	.word	_Label_3180
	.word	-216
	.word	4
	.word	_Label_3181
	.word	-220
	.word	4
	.word	_Label_3182
	.word	-224
	.word	4
	.word	_Label_3183
	.word	-228
	.word	4
	.word	_Label_3184
	.word	-232
	.word	4
	.word	_Label_3185
	.word	-236
	.word	4
	.word	_Label_3186
	.word	-240
	.word	4
	.word	_Label_3187
	.word	-244
	.word	4
	.word	_Label_3188
	.word	-248
	.word	4
	.word	_Label_3189
	.word	-252
	.word	4
	.word	_Label_3190
	.word	-256
	.word	4
	.word	_Label_3191
	.word	-260
	.word	4
	.word	_Label_3192
	.word	-264
	.word	4
	.word	_Label_3193
	.word	-268
	.word	4
	.word	0
_Label_3125:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3126:
	.ascii	"Pself\0"
	.align
_Label_3127:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3135:
	.byte	'C'
	.ascii	"_temp_3115\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3145:
	.byte	'C'
	.ascii	"_temp_3097\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3182:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3183:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3184:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3185:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3186:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3187:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3188:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3189:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3190:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3191:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3192:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3193:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
