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
	be	_Label_234
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
_Label_234:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_235
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_235
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_235
_Label_235:
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
_Label_3213:
	push	r0
	sub	r1,1,r1
	bne	_Label_3213
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_236 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
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
_Label_3214:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3214
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_240 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_241 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_240  sizeInBytes=4
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
!   _temp_242 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_243 = _temp_242 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_243 = 3  (sizeInBytes=4)
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
_Label_3215:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3215
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_245 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_246 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_245  sizeInBytes=4
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
!   _temp_247 = _function_233_IdleFunction
	set	_function_233_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_248 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_247  sizeInBytes=4
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
	.word	_Label_249
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_250
	.word	-12
	.word	4
	.word	_Label_251
	.word	-16
	.word	4
	.word	_Label_252
	.word	-20
	.word	4
	.word	_Label_253
	.word	-24
	.word	4
	.word	_Label_254
	.word	-28
	.word	4
	.word	_Label_255
	.word	-32
	.word	4
	.word	_Label_256
	.word	-36
	.word	4
	.word	_Label_257
	.word	-40
	.word	4
	.word	_Label_258
	.word	-44
	.word	4
	.word	_Label_259
	.word	-48
	.word	4
	.word	_Label_260
	.word	-52
	.word	4
	.word	_Label_261
	.word	-56
	.word	4
	.word	_Label_262
	.word	-60
	.word	4
	.word	0
_Label_249:
	.ascii	"InitializeScheduler\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_233_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_233_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3216:
	push	r0
	sub	r1,1,r1
	bne	_Label_3216
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_263:
!	jmp	_Label_264
_Label_264:
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
!   _temp_268 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_266 else goto _Label_267
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_267
	jmp	_Label_266
_Label_266:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_269
_Label_267:
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
_Label_269:
! END WHILE...
	jmp	_Label_263
_Label_265:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_233_IdleFunction:
	.word	_sourceFileName
	.word	_Label_270
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_271
	.word	8
	.word	4
	.word	_Label_272
	.word	-12
	.word	4
	.word	_Label_273
	.word	-16
	.word	4
	.word	0
_Label_270:
	.ascii	"IdleFunction\0"
	.align
_Label_271:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_273:
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
_Label_3217:
	push	r0
	sub	r1,1,r1
	bne	_Label_3217
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
!   _temp_276 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_276 ) then goto _Label_275		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_275
!	jmp	_Label_274
_Label_274:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_278 [0 ] into _temp_279
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
!   _temp_277 = _temp_279		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_275:
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
!   _temp_280 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_280 = 3  (sizeInBytes=4)
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
_Label_281:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_285 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_284  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_284 then goto _Label_283 else goto _Label_282
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_282
	jmp	_Label_283
_Label_282:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_286 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_287 = &_P_Kernel_threadManager
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
	jmp	_Label_281
_Label_283:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_290 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_290 ) then goto _Label_289		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_289
!	jmp	_Label_288
_Label_288:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_292 [0 ] into _temp_293
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
!   _temp_291 = _temp_293		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
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
!   _temp_295 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_294 = *_temp_295  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_294) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = _temp_294 + 32
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
_Label_289:
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
	.word	_Label_297
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_298
	.word	8
	.word	4
	.word	_Label_299
	.word	-16
	.word	4
	.word	_Label_300
	.word	-20
	.word	4
	.word	_Label_301
	.word	-24
	.word	4
	.word	_Label_302
	.word	-28
	.word	4
	.word	_Label_303
	.word	-32
	.word	4
	.word	_Label_304
	.word	-36
	.word	4
	.word	_Label_305
	.word	-40
	.word	4
	.word	_Label_306
	.word	-44
	.word	4
	.word	_Label_307
	.word	-48
	.word	4
	.word	_Label_308
	.word	-52
	.word	4
	.word	_Label_309
	.word	-9
	.word	1
	.word	_Label_310
	.word	-56
	.word	4
	.word	_Label_311
	.word	-60
	.word	4
	.word	_Label_312
	.word	-64
	.word	4
	.word	_Label_313
	.word	-68
	.word	4
	.word	_Label_314
	.word	-72
	.word	4
	.word	_Label_315
	.word	-76
	.word	4
	.word	_Label_316
	.word	-80
	.word	4
	.word	0
_Label_297:
	.ascii	"Run\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_309:
	.byte	'C'
	.ascii	"_temp_284\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_315:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_316:
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
_Label_3218:
	push	r0
	sub	r1,1,r1
	bne	_Label_3218
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
!   _temp_317 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_318 = _function_232_ThreadPrintShort
	set	_function_232_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_319 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_318  sizeInBytes=4
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
	.word	_Label_320
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_321
	.word	-12
	.word	4
	.word	_Label_322
	.word	-16
	.word	4
	.word	_Label_323
	.word	-20
	.word	4
	.word	_Label_324
	.word	-24
	.word	4
	.word	0
_Label_320:
	.ascii	"PrintReadyList\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_324:
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
_Label_3219:
	push	r0
	sub	r1,1,r1
	bne	_Label_3219
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
!   _temp_325 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_325  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_326 = *_temp_327  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
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
!   _temp_328 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
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
	.word	_Label_329
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_330
	.word	-12
	.word	4
	.word	_Label_331
	.word	-16
	.word	4
	.word	_Label_332
	.word	-20
	.word	4
	.word	_Label_333
	.word	-24
	.word	4
	.word	_Label_334
	.word	-28
	.word	4
	.word	_Label_335
	.word	-32
	.word	4
	.word	0
_Label_329:
	.ascii	"ThreadStartMain\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_334:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_335:
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
_Label_3220:
	push	r0
	sub	r1,1,r1
	bne	_Label_3220
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
!   _temp_336 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_337 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
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
	.word	_Label_338
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_339
	.word	-12
	.word	4
	.word	_Label_340
	.word	-16
	.word	4
	.word	_Label_341
	.word	-20
	.word	4
	.word	0
_Label_338:
	.ascii	"ThreadFinish\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_341:
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
_Label_3221:
	push	r0
	sub	r1,1,r1
	bne	_Label_3221
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
!   _temp_342 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_344		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_344
!	jmp	_Label_343
_Label_343:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_345 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
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
!   _temp_347 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_344:
! CALL STATEMENT...
!   _temp_348 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
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
!   _temp_349 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_350 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
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
	.word	_Label_351
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_352
	.word	8
	.word	4
	.word	_Label_353
	.word	-12
	.word	4
	.word	_Label_354
	.word	-16
	.word	4
	.word	_Label_355
	.word	-20
	.word	4
	.word	_Label_356
	.word	-24
	.word	4
	.word	_Label_357
	.word	-28
	.word	4
	.word	_Label_358
	.word	-32
	.word	4
	.word	_Label_359
	.word	-36
	.word	4
	.word	_Label_360
	.word	-40
	.word	4
	.word	0
_Label_351:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_352:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_360:
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
_Label_3222:
	push	r0
	sub	r1,1,r1
	bne	_Label_3222
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
!   if newStatus != 1 then goto _Label_362		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_362
!	jmp	_Label_361
_Label_361:
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
	jmp	_Label_363
_Label_362:
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
_Label_363:
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
	.word	_Label_364
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_365
	.word	8
	.word	4
	.word	_Label_366
	.word	-12
	.word	4
	.word	0
_Label_364:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_232_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_232_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3223:
	push	r0
	sub	r1,1,r1
	bne	_Label_3223
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
!   if t == 0 then goto _Label_370		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_370
!   _temp_369 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_371
_Label_370:
!   _temp_369 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_371:
!   if _temp_369 then goto _Label_368 else goto _Label_367
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_367
	jmp	_Label_368
_Label_367:
! THEN...
	mov	832,r13		! source line 832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_372 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
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
_Label_368:
! CALL STATEMENT...
!   _temp_373 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
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
!   _temp_375 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_374 = *_temp_375  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
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
!   _temp_385 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_384 = *_temp_385  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_379
	cmp	r1,2
	be	_Label_380
	cmp	r1,3
	be	_Label_381
	cmp	r1,4
	be	_Label_382
	cmp	r1,5
	be	_Label_383
	jmp	_Label_377
! CASE 1...
_Label_379:
! CALL STATEMENT...
!   _temp_386 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 2...
_Label_380:
! CALL STATEMENT...
!   _temp_387 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 3...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 4...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 5...
_Label_383:
! CALL STATEMENT...
!   _temp_390 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0BR",r10
	jmp	_Label_378
! DEFAULT CASE...
_Label_377:
! CALL STATEMENT...
!   _temp_391 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
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
_Label_378:
! CALL STATEMENT...
!   _temp_392 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_393 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_394 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
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
_RoutineDescriptor__function_232_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_395
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_396
	.word	8
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
	.word	_Label_400
	.word	-28
	.word	4
	.word	_Label_401
	.word	-32
	.word	4
	.word	_Label_402
	.word	-36
	.word	4
	.word	_Label_403
	.word	-40
	.word	4
	.word	_Label_404
	.word	-44
	.word	4
	.word	_Label_405
	.word	-48
	.word	4
	.word	_Label_406
	.word	-52
	.word	4
	.word	_Label_407
	.word	-56
	.word	4
	.word	_Label_408
	.word	-60
	.word	4
	.word	_Label_409
	.word	-64
	.word	4
	.word	_Label_410
	.word	-68
	.word	4
	.word	_Label_411
	.word	-72
	.word	4
	.word	_Label_412
	.word	-76
	.word	4
	.word	_Label_413
	.word	-9
	.word	1
	.word	_Label_414
	.word	-80
	.word	4
	.word	0
_Label_395:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_396:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_413:
	.byte	'C'
	.ascii	"_temp_369\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_231_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3224:
	push	r0
	sub	r1,1,r1
	bne	_Label_3224
	mov	1191,r13		! source line 1191
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_415 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
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
_RoutineDescriptor__function_231_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_416
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	-12
	.word	4
	.word	0
_Label_416:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_415\0"
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
_Label_3225:
	push	r0
	sub	r1,1,r1
	bne	_Label_3225
	mov	1201,r13		! source line 1201
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_419 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
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
	.word	_Label_420
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_421
	.word	8
	.word	4
	.word	_Label_422
	.word	-12
	.word	4
	.word	0
_Label_420:
	.ascii	"ProcessFinish\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_419\0"
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
_Label_3226:
	push	r0
	sub	r1,1,r1
	bne	_Label_3226
	mov	1215,r13		! source line 1215
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0AS",r10
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_423 = &_P_Kernel_threadManager
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
!   _temp_424 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_424  sizeInBytes=4
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
!   _temp_425 = _function_230_StartUserProcess
	set	_function_230_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (obtainedThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_425  sizeInBytes=4
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
	.word	_Label_426
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_426:
	.ascii	"InitFirstProcess\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_430:
	.byte	'P'
	.ascii	"obtainedThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_230_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_StartUserProcess,r1
	push	r1
	mov	28,r1
_Label_3227:
	push	r0
	sub	r1,1,r1
	bne	_Label_3227
	mov	1242,r13		! source line 1242
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0AS",r10
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
!   _temp_431 = &_P_Kernel_processManager
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
!   _temp_432 = obtainedPCB + 24
	load	[r14+-104],r1
	add	r1,24,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_432 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_433 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_433 = obtainedPCB  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
	mov	1256,r13		! source line 1256
	mov	"\0\0SE",r10
!   _temp_434 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-72]
!   _temp_435 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_434  sizeInBytes=4
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
!   if intIsZero (openFile) then goto _Label_436
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_436
	jmp	_Label_437
_Label_436:
! THEN...
	mov	1259,r13		! source line 1259
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_438 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
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
_Label_437:
! ASSIGNMENT STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0AS",r10
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   if intIsZero (obtainedPCB) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_439 = _temp_440		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-60]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_439  sizeInBytes=4
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
!   if initPC != -1 then goto _Label_442		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_442
!	jmp	_Label_441
_Label_441:
! THEN...
	mov	1265,r13		! source line 1265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_443 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
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
_Label_442:
! SEND STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0SE",r10
!   _temp_444 = &_P_Kernel_fileManager
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
!   _temp_446 = obtainedPCB + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   _temp_447 = _temp_446 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_445 = *_temp_447  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initStackTop = _temp_445 * 8192		(int)
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
!   _temp_448 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_448 [999 ] into _temp_449
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
!   initSystemStackTop = _temp_449		(4 bytes)
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
!   _temp_450 = obtainedPCB + 32
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
!   _temp_451 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_451 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_452 = initSystemStackTop		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_452  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	BecomeUserThread
! CALL STATEMENT...
!   _temp_453 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
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
_RoutineDescriptor__function_230_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_454
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_455
	.word	8
	.word	4
	.word	_Label_456
	.word	-12
	.word	4
	.word	_Label_457
	.word	-16
	.word	4
	.word	_Label_458
	.word	-20
	.word	4
	.word	_Label_459
	.word	-24
	.word	4
	.word	_Label_460
	.word	-28
	.word	4
	.word	_Label_461
	.word	-32
	.word	4
	.word	_Label_462
	.word	-36
	.word	4
	.word	_Label_463
	.word	-40
	.word	4
	.word	_Label_464
	.word	-44
	.word	4
	.word	_Label_465
	.word	-48
	.word	4
	.word	_Label_466
	.word	-52
	.word	4
	.word	_Label_467
	.word	-56
	.word	4
	.word	_Label_468
	.word	-60
	.word	4
	.word	_Label_469
	.word	-64
	.word	4
	.word	_Label_470
	.word	-68
	.word	4
	.word	_Label_471
	.word	-72
	.word	4
	.word	_Label_472
	.word	-76
	.word	4
	.word	_Label_473
	.word	-80
	.word	4
	.word	_Label_474
	.word	-84
	.word	4
	.word	_Label_475
	.word	-88
	.word	4
	.word	_Label_476
	.word	-92
	.word	4
	.word	_Label_477
	.word	-96
	.word	4
	.word	_Label_478
	.word	-100
	.word	4
	.word	_Label_479
	.word	-104
	.word	4
	.word	_Label_480
	.word	-108
	.word	4
	.word	0
_Label_454:
	.ascii	"StartUserProcess\0"
	.align
_Label_455:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_475:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_477:
	.byte	'I'
	.ascii	"initStackTop\0"
	.align
_Label_478:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_479:
	.byte	'P'
	.ascii	"obtainedPCB\0"
	.align
_Label_480:
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
_Label_3228:
	push	r0
	sub	r1,1,r1
	bne	_Label_3228
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
	.word	_Label_481
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_481:
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
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
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
!   _temp_485 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_486 = _temp_485 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_484 = *_temp_486  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_484 == 0 then goto _Label_483		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_483
!	jmp	_Label_482
_Label_482:
! THEN...
	mov	1810,r13		! source line 1810
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0SE",r10
!   _temp_488 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_489 = _temp_488 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_487 = *_temp_489  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_487) then goto _runtimeErrorNullPointer
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
_Label_483:
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
	.word	_Label_490
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_491
	.word	-12
	.word	4
	.word	_Label_492
	.word	-16
	.word	4
	.word	_Label_493
	.word	-20
	.word	4
	.word	_Label_494
	.word	-24
	.word	4
	.word	_Label_495
	.word	-28
	.word	4
	.word	_Label_496
	.word	-32
	.word	4
	.word	0
_Label_490:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_484\0"
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
	.word	_Label_497
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_497:
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
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
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
!   _temp_498 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
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
	.word	_Label_499
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_500
	.word	-12
	.word	4
	.word	0
_Label_499:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_498\0"
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
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
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
!   _temp_501 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
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
	.word	_Label_502
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_503
	.word	-12
	.word	4
	.word	0
_Label_502:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_501\0"
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
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
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
!   _temp_504 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
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
	.word	_Label_505
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_506
	.word	-12
	.word	4
	.word	0
_Label_505:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_504\0"
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
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
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
!   _temp_507 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
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
	.word	_Label_508
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_509
	.word	-12
	.word	4
	.word	0
_Label_508:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_507\0"
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
_Label_3234:
	push	r0
	sub	r1,1,r1
	bne	_Label_3234
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
!   _temp_510 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
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
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
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
_Label_3235:
	push	r0
	sub	r1,1,r1
	bne	_Label_3235
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
!   _temp_513 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
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
	.word	_Label_514
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_515
	.word	-12
	.word	4
	.word	0
_Label_514:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_513\0"
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
_Label_3236:
	push	r0
	sub	r1,1,r1
	bne	_Label_3236
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
!   _temp_516 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
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
	.word	_Label_517
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_517:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_229_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_229_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3237:
	push	r0
	sub	r1,1,r1
	bne	_Label_3237
	mov	1915,r13		! source line 1915
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_519 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
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
!   _temp_520 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
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
!   _temp_524 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_523 = *_temp_524  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_523 == 0 then goto _Label_522		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_522
!	jmp	_Label_521
_Label_521:
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
!   _temp_526 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_525 = *_temp_526  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_525) then goto _runtimeErrorNullPointer
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
	jmp	_Label_527
_Label_522:
! ELSE...
	mov	1928,r13		! source line 1928
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_528 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1928,r13		! source line 1928
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_527:
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
_RoutineDescriptor__function_229_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_529
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_530
	.word	8
	.word	4
	.word	_Label_531
	.word	-12
	.word	4
	.word	_Label_532
	.word	-16
	.word	4
	.word	_Label_533
	.word	-20
	.word	4
	.word	_Label_534
	.word	-24
	.word	4
	.word	_Label_535
	.word	-28
	.word	4
	.word	_Label_536
	.word	-32
	.word	4
	.word	_Label_537
	.word	-36
	.word	4
	.word	0
_Label_529:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_530:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_519\0"
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
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
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
	be	_Label_3239
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_538
_Label_3239:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_538
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_538
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_552,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_552:
	jmp	_Label_544	! 1:	
	jmp	_Label_551	! 2:	
	jmp	_Label_541	! 3:	
	jmp	_Label_540	! 4:	
	jmp	_Label_543	! 5:	
	jmp	_Label_542	! 6:	
	jmp	_Label_545	! 7:	
	jmp	_Label_546	! 8:	
	jmp	_Label_547	! 9:	
	jmp	_Label_548	! 10:	
	jmp	_Label_549	! 11:	
	jmp	_Label_550	! 12:	
! CASE 4...
_Label_540:
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0RE",r10
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_541:
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
_Label_542:
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
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_543:
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
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_544:
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
_Label_545:
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
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_546:
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
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_557  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_547:
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
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_558  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_548:
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
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_559  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_549:
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
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_560  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_550:
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
_Label_551:
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
_Label_538:
! CALL STATEMENT...
!   _temp_561 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
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
!   _temp_562 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
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
_Label_539:
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
	.word	_Label_563
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_564
	.word	8
	.word	4
	.word	_Label_565
	.word	12
	.word	4
	.word	_Label_566
	.word	16
	.word	4
	.word	_Label_567
	.word	20
	.word	4
	.word	_Label_568
	.word	24
	.word	4
	.word	_Label_569
	.word	-12
	.word	4
	.word	_Label_570
	.word	-16
	.word	4
	.word	_Label_571
	.word	-20
	.word	4
	.word	_Label_572
	.word	-24
	.word	4
	.word	_Label_573
	.word	-28
	.word	4
	.word	_Label_574
	.word	-32
	.word	4
	.word	_Label_575
	.word	-36
	.word	4
	.word	_Label_576
	.word	-40
	.word	4
	.word	_Label_577
	.word	-44
	.word	4
	.word	_Label_578
	.word	-48
	.word	4
	.word	0
_Label_563:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_567:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
! 
! ===============  FUNCTION LocalizeVirtualString  ===============
! 
_function_228_LocalizeVirtualString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_LocalizeVirtualString,r1
	push	r1
	mov	17,r1
_Label_3240:
	push	r0
	sub	r1,1,r1
	bne	_Label_3240
	mov	2005,r13		! source line 2005
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   _temp_579 = &strBuff
	add	r14,-56,r1
	store	r1,[r14+-32]
!   _temp_580 = src		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_581 = *_temp_582  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_581) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = _temp_581 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_579  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_580  sizeInBytes=4
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
!   if retVal >= 0 then goto _Label_585		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_585
!	jmp	_Label_584
_Label_584:
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
_Label_585:
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0RE",r10
!   _temp_586 = &strBuff
	add	r14,-56,r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_586  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_LocalizeVirtualString:
	.word	_sourceFileName
	.word	_Label_587
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_588
	.word	8
	.word	4
	.word	_Label_589
	.word	-12
	.word	4
	.word	_Label_590
	.word	-16
	.word	4
	.word	_Label_591
	.word	-20
	.word	4
	.word	_Label_592
	.word	-24
	.word	4
	.word	_Label_593
	.word	-28
	.word	4
	.word	_Label_594
	.word	-32
	.word	4
	.word	_Label_595
	.word	-56
	.word	24
	.word	_Label_596
	.word	-60
	.word	4
	.word	0
_Label_587:
	.ascii	"LocalizeVirtualString\0"
	.align
_Label_588:
	.byte	'P'
	.ascii	"src\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_595:
	.byte	'A'
	.ascii	"strBuff\0"
	.align
_Label_596:
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
_Label_3241:
	push	r0
	sub	r1,1,r1
	bne	_Label_3241
	mov	2021,r13		! source line 2021
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_597 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_598 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
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
	.word	_Label_599
	.word	4		! total size of parameters
	.word	16		! frame size = 16
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
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_600:
	.byte	'I'
	.ascii	"returnStatus\0"
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
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3242:
	push	r0
	sub	r1,1,r1
	bne	_Label_3242
	mov	2030,r13		! source line 2030
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_603 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
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
	.word	_Label_604
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_605
	.word	-12
	.word	4
	.word	0
_Label_604:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_603\0"
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
_Label_3243:
	push	r0
	sub	r1,1,r1
	bne	_Label_3243
	mov	2036,r13		! source line 2036
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_606 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_606  sizeInBytes=4
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
	.word	_Label_607
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_608
	.word	-12
	.word	4
	.word	0
_Label_607:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_606\0"
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
_Label_3244:
	push	r0
	sub	r1,1,r1
	bne	_Label_3244
	mov	2042,r13		! source line 2042
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_609 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
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
	.word	_Label_610
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_611
	.word	-12
	.word	4
	.word	0
_Label_610:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_609\0"
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
_Label_3245:
	push	r0
	sub	r1,1,r1
	bne	_Label_3245
	mov	2049,r13		! source line 2049
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_612 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_612  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_613 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_613  sizeInBytes=4
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
	.word	_Label_614
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_615
	.word	8
	.word	4
	.word	_Label_616
	.word	-12
	.word	4
	.word	_Label_617
	.word	-16
	.word	4
	.word	0
_Label_614:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_615:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_612\0"
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
_Label_3246:
	push	r0
	sub	r1,1,r1
	bne	_Label_3246
	mov	2082,r13		! source line 2082
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-232,r4
	mov	23,r3
_Label_3247:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3247
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
	mov	2093,r13		! source line 2093
	mov	"\0\0SE",r10
!   _temp_619 = &localString
	add	r14,-256,r1
	store	r1,[r14+-116]
!   _temp_620 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-112]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _temp_621 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_619  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_620  sizeInBytes=4
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
	mov	2095,r13		! source line 2095
	mov	"\0\0IF",r10
!   if retVal >= 0 then goto _Label_625		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_625
!	jmp	_Label_624
_Label_624:
! THEN...
	mov	2096,r13		! source line 2096
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_625:
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
	mov	2099,r13		! source line 2099
	mov	"\0\0SE",r10
!   _temp_626 = &localString
	add	r14,-256,r1
	store	r1,[r14+-96]
!   _temp_627 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_626  sizeInBytes=4
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
	mov	2101,r13		! source line 2101
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_628
	load	[r14+-140],r1
	cmp	r1,r0
	be	_Label_628
	jmp	_Label_629
_Label_628:
! THEN...
	mov	2102,r13		! source line 2102
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_629:
! SEND STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0SE",r10
!   _temp_630 = &newAddrSpace
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
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
	mov	2106,r13		! source line 2106
	mov	"\0\0SE",r10
!   _temp_631 = &newAddrSpace
	add	r14,-232,r1
	store	r1,[r14+-84]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_631  sizeInBytes=4
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
	mov	2108,r13		! source line 2108
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_633		(int)
	load	[r14+-128],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_633
!	jmp	_Label_632
_Label_632:
! THEN...
	mov	2109,r13		! source line 2109
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_633:
! SEND STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   _temp_634 = &_P_Kernel_fileManager
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
	mov	2114,r13		! source line 2114
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_635 = _temp_638		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_639 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_635  sizeInBytes=4
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
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_640 = *_temp_641  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_640) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _temp_640 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_642 = newAddrSpace  (sizeInBytes=92)
	add	r14,-232,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3248:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3248
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   _temp_644 = &newAddrSpace
	add	r14,-232,r1
	store	r1,[r14+-40]
!   _temp_645 = _temp_644 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_643 = *_temp_645  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initStackTop = _temp_643 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_646 [999 ] into _temp_647
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
!   initSystemStackTop = _temp_647		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2120,r13		! source line 2120
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! SEND STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0SE",r10
!   _temp_648 = &newAddrSpace
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
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_649 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_650 = initSystemStackTop		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=initStackTop  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_650  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Call the function
	mov	2123,r13		! source line 2123
	mov	"\0\0CE",r10
	call	BecomeUserThread
! CALL STATEMENT...
!   _temp_651 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_651  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2124,r13		! source line 2124
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2125,r13		! source line 2125
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
	.word	_Label_652
	.word	4		! total size of parameters
	.word	268		! frame size = 268
	.word	_Label_653
	.word	8
	.word	4
	.word	_Label_654
	.word	-12
	.word	4
	.word	_Label_655
	.word	-16
	.word	4
	.word	_Label_656
	.word	-20
	.word	4
	.word	_Label_657
	.word	-24
	.word	4
	.word	_Label_658
	.word	-28
	.word	4
	.word	_Label_659
	.word	-32
	.word	4
	.word	_Label_660
	.word	-36
	.word	4
	.word	_Label_661
	.word	-40
	.word	4
	.word	_Label_662
	.word	-44
	.word	4
	.word	_Label_663
	.word	-48
	.word	4
	.word	_Label_664
	.word	-52
	.word	4
	.word	_Label_665
	.word	-56
	.word	4
	.word	_Label_666
	.word	-60
	.word	4
	.word	_Label_667
	.word	-64
	.word	4
	.word	_Label_668
	.word	-68
	.word	4
	.word	_Label_669
	.word	-72
	.word	4
	.word	_Label_670
	.word	-76
	.word	4
	.word	_Label_671
	.word	-80
	.word	4
	.word	_Label_672
	.word	-84
	.word	4
	.word	_Label_673
	.word	-88
	.word	4
	.word	_Label_674
	.word	-92
	.word	4
	.word	_Label_675
	.word	-96
	.word	4
	.word	_Label_676
	.word	-100
	.word	4
	.word	_Label_677
	.word	-104
	.word	4
	.word	_Label_678
	.word	-108
	.word	4
	.word	_Label_679
	.word	-112
	.word	4
	.word	_Label_680
	.word	-116
	.word	4
	.word	_Label_681
	.word	-120
	.word	4
	.word	_Label_682
	.word	-124
	.word	4
	.word	_Label_683
	.word	-128
	.word	4
	.word	_Label_684
	.word	-132
	.word	4
	.word	_Label_685
	.word	-136
	.word	4
	.word	_Label_686
	.word	-140
	.word	4
	.word	_Label_687
	.word	-232
	.word	92
	.word	_Label_688
	.word	-256
	.word	24
	.word	_Label_689
	.word	-260
	.word	4
	.word	0
_Label_652:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_653:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_683:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_684:
	.byte	'I'
	.ascii	"initStackTop\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_687:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_688:
	.byte	'A'
	.ascii	"localString\0"
	.align
_Label_689:
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
_Label_3249:
	push	r0
	sub	r1,1,r1
	bne	_Label_3249
	mov	2130,r13		! source line 2130
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_690 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2135,r13		! source line 2135
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_691 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-48]
!   _temp_692 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_692  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	2136,r13		! source line 2136
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
	mov	2137,r13		! source line 2137
	mov	"\0\0SE",r10
!   _temp_693 = &localString
	add	r14,-76,r1
	store	r1,[r14+-40]
!   _temp_694 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_695 = *_temp_696  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_695) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_697 = _temp_695 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_693  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_694  sizeInBytes=4
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
	mov	2138,r13		! source line 2138
	mov	"\0\0IF",r10
!   if retVal >= 0 then goto _Label_699		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_699
!	jmp	_Label_698
_Label_698:
! THEN...
	mov	2139,r13		! source line 2139
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_700 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2139,r13		! source line 2139
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_699:
! CALL STATEMENT...
!   _temp_701 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2141,r13		! source line 2141
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_702 = &localString
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2142,r13		! source line 2142
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2143,r13		! source line 2143
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2144,r13		! source line 2144
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
	.word	_Label_703
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_704
	.word	8
	.word	4
	.word	_Label_705
	.word	-12
	.word	4
	.word	_Label_706
	.word	-16
	.word	4
	.word	_Label_707
	.word	-20
	.word	4
	.word	_Label_708
	.word	-24
	.word	4
	.word	_Label_709
	.word	-28
	.word	4
	.word	_Label_710
	.word	-32
	.word	4
	.word	_Label_711
	.word	-36
	.word	4
	.word	_Label_712
	.word	-40
	.word	4
	.word	_Label_713
	.word	-44
	.word	4
	.word	_Label_714
	.word	-48
	.word	4
	.word	_Label_715
	.word	-52
	.word	4
	.word	_Label_716
	.word	-76
	.word	24
	.word	_Label_717
	.word	-80
	.word	4
	.word	0
_Label_703:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_704:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_716:
	.byte	'A'
	.ascii	"localString\0"
	.align
_Label_717:
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
_Label_3250:
	push	r0
	sub	r1,1,r1
	bne	_Label_3250
	mov	2149,r13		! source line 2149
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_718 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2154,r13		! source line 2154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_719 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-48]
!   _temp_720 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_720  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	2155,r13		! source line 2155
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_721 = &localString
	add	r14,-76,r1
	store	r1,[r14+-40]
!   _temp_722 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_724 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_723 = *_temp_724  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_723) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_725 = _temp_723 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_721  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_722  sizeInBytes=4
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
	mov	2157,r13		! source line 2157
	mov	"\0\0IF",r10
!   if retVal >= 0 then goto _Label_727		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_727
!	jmp	_Label_726
_Label_726:
! THEN...
	mov	2158,r13		! source line 2158
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_728 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2158,r13		! source line 2158
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_727:
! CALL STATEMENT...
!   _temp_729 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2160,r13		! source line 2160
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_730 = &localString
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2163,r13		! source line 2163
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
	.word	_Label_731
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_732
	.word	8
	.word	4
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
	.word	_Label_739
	.word	-36
	.word	4
	.word	_Label_740
	.word	-40
	.word	4
	.word	_Label_741
	.word	-44
	.word	4
	.word	_Label_742
	.word	-48
	.word	4
	.word	_Label_743
	.word	-52
	.word	4
	.word	_Label_744
	.word	-76
	.word	24
	.word	_Label_745
	.word	-80
	.word	4
	.word	0
_Label_731:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_732:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_744:
	.byte	'A'
	.ascii	"localString\0"
	.align
_Label_745:
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
_Label_3251:
	push	r0
	sub	r1,1,r1
	bne	_Label_3251
	mov	2169,r13		! source line 2169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_746 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2170,r13		! source line 2170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_747 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_748 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   _temp_749 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_749  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2172,r13		! source line 2172
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_750 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2173,r13		! source line 2173
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2174,r13		! source line 2174
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
	.word	_Label_751
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_752
	.word	8
	.word	4
	.word	_Label_753
	.word	12
	.word	4
	.word	_Label_754
	.word	16
	.word	4
	.word	_Label_755
	.word	-12
	.word	4
	.word	_Label_756
	.word	-16
	.word	4
	.word	_Label_757
	.word	-20
	.word	4
	.word	_Label_758
	.word	-24
	.word	4
	.word	_Label_759
	.word	-28
	.word	4
	.word	0
_Label_751:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_753:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_754:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_746\0"
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
_Label_3252:
	push	r0
	sub	r1,1,r1
	bne	_Label_3252
	mov	2180,r13		! source line 2180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_760 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2181,r13		! source line 2181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_761 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2182,r13		! source line 2182
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_762 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   _temp_763 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_763  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2183,r13		! source line 2183
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_764 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2184,r13		! source line 2184
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2185,r13		! source line 2185
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
	.word	_Label_765
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_766
	.word	8
	.word	4
	.word	_Label_767
	.word	12
	.word	4
	.word	_Label_768
	.word	16
	.word	4
	.word	_Label_769
	.word	-12
	.word	4
	.word	_Label_770
	.word	-16
	.word	4
	.word	_Label_771
	.word	-20
	.word	4
	.word	_Label_772
	.word	-24
	.word	4
	.word	_Label_773
	.word	-28
	.word	4
	.word	0
_Label_765:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_766:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_767:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_768:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_760\0"
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
_Label_3253:
	push	r0
	sub	r1,1,r1
	bne	_Label_3253
	mov	2190,r13		! source line 2190
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_774 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2191,r13		! source line 2191
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_775 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2192,r13		! source line 2192
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_776 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2193,r13		! source line 2193
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2194,r13		! source line 2194
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
	.word	_Label_777
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_778
	.word	8
	.word	4
	.word	_Label_779
	.word	12
	.word	4
	.word	_Label_780
	.word	-12
	.word	4
	.word	_Label_781
	.word	-16
	.word	4
	.word	_Label_782
	.word	-20
	.word	4
	.word	0
_Label_777:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_778:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_774\0"
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
_Label_3254:
	push	r0
	sub	r1,1,r1
	bne	_Label_3254
	mov	2199,r13		! source line 2199
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_783 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2200,r13		! source line 2200
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_784 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2201,r13		! source line 2201
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2201,r13		! source line 2201
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
	.word	_Label_785
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_786
	.word	8
	.word	4
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	0
_Label_785:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_783\0"
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
_Label_3255:
	push	r0
	sub	r1,1,r1
	bne	_Label_3255
	mov	2792,r13		! source line 2792
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_789 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_789  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0AS",r10
!   _temp_790 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_790) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_792 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_792) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_791 = *_temp_792  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_790 = _temp_791  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
!   _temp_793 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_793) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_795) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_794 = *_temp_795  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_793 = _temp_794  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
!   _temp_796 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_796) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_798 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_798) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_797 = *_temp_798  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_796 = _temp_797  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2799,r13		! source line 2799
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
	.word	_Label_799
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_800
	.word	8
	.word	4
	.word	_Label_801
	.word	12
	.word	4
	.word	_Label_802
	.word	-16
	.word	4
	.word	_Label_803
	.word	-9
	.word	1
	.word	_Label_804
	.word	-20
	.word	4
	.word	_Label_805
	.word	-24
	.word	4
	.word	_Label_806
	.word	-10
	.word	1
	.word	_Label_807
	.word	-28
	.word	4
	.word	_Label_808
	.word	-32
	.word	4
	.word	_Label_809
	.word	-11
	.word	1
	.word	_Label_810
	.word	-36
	.word	4
	.word	_Label_811
	.word	-12
	.word	1
	.word	_Label_812
	.word	-40
	.word	4
	.word	_Label_813
	.word	-44
	.word	4
	.word	0
_Label_799:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_800:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_801:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_803:
	.byte	'C'
	.ascii	"_temp_797\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_806:
	.byte	'C'
	.ascii	"_temp_794\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_809:
	.byte	'C'
	.ascii	"_temp_791\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_811:
	.byte	'C'
	.ascii	"_temp_789\0"
	.align
_Label_812:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_813:
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
_Label_3256:
	push	r0
	sub	r1,1,r1
	bne	_Label_3256
	mov	2802,r13		! source line 2802
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_815 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_814 = *_temp_815  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2803,r13		! source line 2803
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2804,r13		! source line 2804
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2804,r13		! source line 2804
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
	.word	_Label_816
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_817
	.word	8
	.word	4
	.word	_Label_818
	.word	-12
	.word	4
	.word	_Label_819
	.word	-16
	.word	4
	.word	0
_Label_816:
	.ascii	"printFCB\0"
	.align
_Label_817:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_814\0"
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
_Label_3257:
	push	r0
	sub	r1,1,r1
	bne	_Label_3257
	mov	2807,r13		! source line 2807
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_820 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_820  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_821 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_821  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_822 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2811,r13		! source line 2811
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
	mov	2811,r13		! source line 2811
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
	.word	_Label_823
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_824
	.word	8
	.word	4
	.word	_Label_825
	.word	-12
	.word	4
	.word	_Label_826
	.word	-16
	.word	4
	.word	_Label_827
	.word	-20
	.word	4
	.word	0
_Label_823:
	.ascii	"printOpen\0"
	.align
_Label_824:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_828
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_828:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_829
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_829:
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
_Label_3258:
	push	r0
	sub	r1,1,r1
	bne	_Label_3258
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_831		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_831
!	jmp	_Label_830
_Label_830:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_832 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
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
_Label_831:
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
	.word	_Label_834
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_836
	.word	12
	.word	4
	.word	_Label_837
	.word	-12
	.word	4
	.word	_Label_838
	.word	-16
	.word	4
	.word	0
_Label_834:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_835:
	.ascii	"Pself\0"
	.align
_Label_836:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_832\0"
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
_Label_3259:
	push	r0
	sub	r1,1,r1
	bne	_Label_3259
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
!   if count != 2147483647 then goto _Label_840		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_840
!	jmp	_Label_839
_Label_839:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_841 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_841  sizeInBytes=4
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
_Label_840:
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
!   if count > 0 then goto _Label_843		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_843
!	jmp	_Label_842
_Label_842:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_844 = &waitingThreads
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
!   _temp_845 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_845 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_846 = &_P_Kernel_readyList
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
_Label_843:
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
	.word	_Label_847
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_849
	.word	-12
	.word	4
	.word	_Label_850
	.word	-16
	.word	4
	.word	_Label_851
	.word	-20
	.word	4
	.word	_Label_852
	.word	-24
	.word	4
	.word	_Label_853
	.word	-28
	.word	4
	.word	_Label_854
	.word	-32
	.word	4
	.word	0
_Label_847:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_848:
	.ascii	"Pself\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_853:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_854:
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
_Label_3260:
	push	r0
	sub	r1,1,r1
	bne	_Label_3260
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
!   if count != -2147483648 then goto _Label_856		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_856
!	jmp	_Label_855
_Label_855:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_857 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_857  sizeInBytes=4
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
_Label_856:
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
!   if count >= 0 then goto _Label_859		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_859
!	jmp	_Label_858
_Label_858:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_860 = &waitingThreads
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
_Label_859:
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
	.word	_Label_861
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_863
	.word	-12
	.word	4
	.word	_Label_864
	.word	-16
	.word	4
	.word	_Label_865
	.word	-20
	.word	4
	.word	0
_Label_861:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_862:
	.ascii	"Pself\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_865:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_866
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_866:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_867
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_867:
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
_Label_3261:
	push	r0
	sub	r1,1,r1
	bne	_Label_3261
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
	.word	_Label_869
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_871
	.word	-12
	.word	4
	.word	0
_Label_869:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_870:
	.ascii	"Pself\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_868\0"
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
_Label_3262:
	push	r0
	sub	r1,1,r1
	bne	_Label_3262
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_873		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_873
!	jmp	_Label_872
_Label_872:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_874 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
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
_Label_873:
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
!   if heldBy == 0 then goto _Label_878		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_878
!   _temp_877 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_879
_Label_878:
!   _temp_877 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_879:
!   if _temp_877 then goto _Label_876 else goto _Label_875
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_875
	jmp	_Label_876
_Label_875:
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
	jmp	_Label_880
_Label_876:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_881 = &waitingThreads
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
_Label_880:
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
	.word	_Label_882
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_884
	.word	-16
	.word	4
	.word	_Label_885
	.word	-9
	.word	1
	.word	_Label_886
	.word	-20
	.word	4
	.word	_Label_887
	.word	-24
	.word	4
	.word	0
_Label_882:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_883:
	.ascii	"Pself\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_885:
	.byte	'C'
	.ascii	"_temp_877\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_887:
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
_Label_3263:
	push	r0
	sub	r1,1,r1
	bne	_Label_3263
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_889		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_889
!	jmp	_Label_888
_Label_888:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_890 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_890  sizeInBytes=4
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
_Label_889:
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
!   _temp_891 = &waitingThreads
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
!   if t == 0 then goto _Label_893		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_893
!	jmp	_Label_892
_Label_892:
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
!   _temp_894 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_894 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_895 = &_P_Kernel_readyList
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
	jmp	_Label_896
_Label_893:
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
_Label_896:
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
	.word	_Label_897
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_898
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_899
	.word	-12
	.word	4
	.word	_Label_900
	.word	-16
	.word	4
	.word	_Label_901
	.word	-20
	.word	4
	.word	_Label_902
	.word	-24
	.word	4
	.word	_Label_903
	.word	-28
	.word	4
	.word	_Label_904
	.word	-32
	.word	4
	.word	0
_Label_897:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_898:
	.ascii	"Pself\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_903:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_904:
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
_Label_3264:
	push	r0
	sub	r1,1,r1
	bne	_Label_3264
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_907		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_907
!	jmp	_Label_906
_Label_906:
!   _temp_905 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_908
_Label_907:
!   _temp_905 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_908:
!   ReturnResult: _temp_905  (sizeInBytes=1)
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
	.word	_Label_909
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_911
	.word	-9
	.word	1
	.word	0
_Label_909:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_910:
	.ascii	"Pself\0"
	.align
_Label_911:
	.byte	'C'
	.ascii	"_temp_905\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_912
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	printHeldBy
	.word	0
! 
! Class descriptor:
! 
_Label_912:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_913
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_913:
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
_Label_3265:
	push	r0
	sub	r1,1,r1
	bne	_Label_3265
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
	.word	_Label_915
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	-12
	.word	4
	.word	0
_Label_915:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_914\0"
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
_Label_3266:
	push	r0
	sub	r1,1,r1
	bne	_Label_3266
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
!   if heldBy == 0 then goto _Label_921		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_921
!   _temp_920 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_922
_Label_921:
!   _temp_920 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_922:
!   if _temp_920 then goto _Label_919 else goto _Label_918
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_918
	jmp	_Label_919
_Label_918:
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
	jmp	_Label_923
_Label_919:
! ELSE...
	mov	485,r13		! source line 485
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_925		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_925
!	jmp	_Label_924
_Label_924:
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
_Label_925:
! SEND STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   _temp_926 = &waitingThreads
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
_Label_923:
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
	.word	_Label_927
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_929
	.word	12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	_Label_931
	.word	-9
	.word	1
	.word	_Label_932
	.word	-20
	.word	4
	.word	0
_Label_927:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_928:
	.ascii	"Pself\0"
	.align
_Label_929:
	.byte	'P'
	.ascii	"transfer\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_931:
	.byte	'C'
	.ascii	"_temp_920\0"
	.align
_Label_932:
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
_Label_3267:
	push	r0
	sub	r1,1,r1
	bne	_Label_3267
	mov	496,r13		! source line 496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_934		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_934
!	jmp	_Label_933
_Label_933:
! THEN...
	mov	501,r13		! source line 501
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_935 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_935  sizeInBytes=4
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
_Label_934:
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
!   _temp_936 = &waitingThreads
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
!   if t == 0 then goto _Label_938		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_938
!	jmp	_Label_937
_Label_937:
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
!   _temp_939 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_939 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0SE",r10
!   _temp_940 = &_P_Kernel_readyList
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
	jmp	_Label_941
_Label_938:
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
_Label_941:
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
	.word	_Label_942
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_944
	.word	-12
	.word	4
	.word	_Label_945
	.word	-16
	.word	4
	.word	_Label_946
	.word	-20
	.word	4
	.word	_Label_947
	.word	-24
	.word	4
	.word	_Label_948
	.word	-28
	.word	4
	.word	_Label_949
	.word	-32
	.word	4
	.word	0
_Label_942:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_943:
	.ascii	"Pself\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_948:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_949:
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
_Label_3268:
	push	r0
	sub	r1,1,r1
	bne	_Label_3268
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_952		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_952
!	jmp	_Label_951
_Label_951:
!   _temp_950 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_953
_Label_952:
!   _temp_950 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_953:
!   ReturnResult: _temp_950  (sizeInBytes=1)
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
	.word	_Label_954
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_956
	.word	-9
	.word	1
	.word	0
_Label_954:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_955:
	.ascii	"Pself\0"
	.align
_Label_956:
	.byte	'C'
	.ascii	"_temp_950\0"
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
_Label_3269:
	push	r0
	sub	r1,1,r1
	bne	_Label_3269
	mov	521,r13		! source line 521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (heldBy) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = heldBy + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_957 = *_temp_958  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_957  sizeInBytes=4
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
	.word	_Label_959
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_961
	.word	-12
	.word	4
	.word	_Label_962
	.word	-16
	.word	4
	.word	0
_Label_959:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"printHeldBy\0"
	.align
_Label_960:
	.ascii	"Pself\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_963
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_963:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_964
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_964:
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
_Label_3270:
	push	r0
	sub	r1,1,r1
	bne	_Label_3270
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
	.word	_Label_966
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_967
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_968
	.word	-12
	.word	4
	.word	0
_Label_966:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_967:
	.ascii	"Pself\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_965\0"
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
_Label_3271:
	push	r0
	sub	r1,1,r1
	bne	_Label_3271
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
!   Retrieve Result: targetName=_temp_971  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_971 then goto _Label_970 else goto _Label_969
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_969
	jmp	_Label_970
_Label_969:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_972 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_972  sizeInBytes=4
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
_Label_970:
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
!   _temp_973 = &waitingThreads
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
	.word	_Label_974
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_975
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_976
	.word	12
	.word	4
	.word	_Label_977
	.word	-16
	.word	4
	.word	_Label_978
	.word	-20
	.word	4
	.word	_Label_979
	.word	-9
	.word	1
	.word	_Label_980
	.word	-24
	.word	4
	.word	0
_Label_974:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_975:
	.ascii	"Pself\0"
	.align
_Label_976:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_979:
	.byte	'C'
	.ascii	"_temp_971\0"
	.align
_Label_980:
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
_Label_3272:
	push	r0
	sub	r1,1,r1
	bne	_Label_3272
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
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_984 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
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
_Label_982:
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
!   _temp_985 = &waitingThreads
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
!   if t == 0 then goto _Label_987		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_987
!	jmp	_Label_986
_Label_986:
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
!   _temp_988 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_988 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_989 = &_P_Kernel_readyList
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
_Label_987:
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
	.word	_Label_990
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_992
	.word	12
	.word	4
	.word	_Label_993
	.word	-16
	.word	4
	.word	_Label_994
	.word	-20
	.word	4
	.word	_Label_995
	.word	-24
	.word	4
	.word	_Label_996
	.word	-28
	.word	4
	.word	_Label_997
	.word	-9
	.word	1
	.word	_Label_998
	.word	-32
	.word	4
	.word	_Label_999
	.word	-36
	.word	4
	.word	0
_Label_990:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_991:
	.ascii	"Pself\0"
	.align
_Label_992:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_997:
	.byte	'C'
	.ascii	"_temp_983\0"
	.align
_Label_998:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_999:
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
_Label_3273:
	push	r0
	sub	r1,1,r1
	bne	_Label_3273
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
!   Retrieve Result: targetName=_temp_1002  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1002 then goto _Label_1001 else goto _Label_1000
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1000
	jmp	_Label_1001
_Label_1000:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1003 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1003  sizeInBytes=4
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
_Label_1001:
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
_Label_1004:
!	jmp	_Label_1005
_Label_1005:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_1007 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1008
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1008
	jmp	_Label_1009
_Label_1008:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_1006
! END IF...
_Label_1009:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1010 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1010 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_1011 = &_P_Kernel_readyList
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
	jmp	_Label_1004
_Label_1006:
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
	.word	_Label_1012
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1014
	.word	12
	.word	4
	.word	_Label_1015
	.word	-16
	.word	4
	.word	_Label_1016
	.word	-20
	.word	4
	.word	_Label_1017
	.word	-24
	.word	4
	.word	_Label_1018
	.word	-28
	.word	4
	.word	_Label_1019
	.word	-9
	.word	1
	.word	_Label_1020
	.word	-32
	.word	4
	.word	_Label_1021
	.word	-36
	.word	4
	.word	0
_Label_1012:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1013:
	.ascii	"Pself\0"
	.align
_Label_1014:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1019:
	.byte	'C'
	.ascii	"_temp_1002\0"
	.align
_Label_1020:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1021:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_1022
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	HoareTest
	.word	0
! 
! Class descriptor:
! 
_Label_1022:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1023
	.word	_sourceFileName
	.word	181		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_1023:
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
_Label_3274:
	push	r0
	sub	r1,1,r1
	bne	_Label_3274
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
	.word	_Label_1025
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1026
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1027
	.word	-12
	.word	4
	.word	0
_Label_1025:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1026:
	.ascii	"Pself\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1024\0"
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
_Label_3275:
	push	r0
	sub	r1,1,r1
	bne	_Label_3275
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
!   Retrieve Result: targetName=_temp_1030  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1030 then goto _Label_1029 else goto _Label_1028
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1028
	jmp	_Label_1029
_Label_1028:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
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
_Label_1029:
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
!   _temp_1032 = &waitingThreads
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
	.word	_Label_1033
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1034
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1035
	.word	12
	.word	4
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-20
	.word	4
	.word	_Label_1038
	.word	-9
	.word	1
	.word	_Label_1039
	.word	-24
	.word	4
	.word	0
_Label_1033:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1034:
	.ascii	"Pself\0"
	.align
_Label_1035:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1038:
	.byte	'C'
	.ascii	"_temp_1030\0"
	.align
_Label_1039:
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
_Label_3276:
	push	r0
	sub	r1,1,r1
	bne	_Label_3276
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
!   Retrieve Result: targetName=_temp_1042  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1042 then goto _Label_1041 else goto _Label_1040
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1040
	jmp	_Label_1041
_Label_1040:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1043 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
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
_Label_1041:
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
!   _temp_1044 = &waitingThreads
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
!   if t == 0 then goto _Label_1046		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1046
!	jmp	_Label_1045
_Label_1045:
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
!   _temp_1047 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1047 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0SE",r10
!   _temp_1048 = &_P_Kernel_readyList
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
_Label_1046:
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
	.word	_Label_1049
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1051
	.word	12
	.word	4
	.word	_Label_1052
	.word	-16
	.word	4
	.word	_Label_1053
	.word	-20
	.word	4
	.word	_Label_1054
	.word	-24
	.word	4
	.word	_Label_1055
	.word	-28
	.word	4
	.word	_Label_1056
	.word	-9
	.word	1
	.word	_Label_1057
	.word	-32
	.word	4
	.word	_Label_1058
	.word	-36
	.word	4
	.word	0
_Label_1049:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1050:
	.ascii	"Pself\0"
	.align
_Label_1051:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1056:
	.byte	'C'
	.ascii	"_temp_1042\0"
	.align
_Label_1057:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1058:
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
_Label_3277:
	push	r0
	sub	r1,1,r1
	bne	_Label_3277
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
!   if test == _P_Kernel_currentThread then goto _Label_1060		(int)
	load	[r14+12],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1060
!	jmp	_Label_1059
_Label_1059:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1061 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
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
_Label_1060:
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
!   _temp_1065 = &waitingThreads
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
!   Retrieve Result: targetName=_temp_1064  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1066 = _temp_1064 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1066 then goto _Label_1063 else goto _Label_1062
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1062
	jmp	_Label_1063
_Label_1062:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1067 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1068
_Label_1063:
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
	call	_function_232_ThreadPrintShort
! END IF...
_Label_1068:
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
	.word	_Label_1069
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1070
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1071
	.word	12
	.word	4
	.word	_Label_1072
	.word	16
	.word	4
	.word	_Label_1073
	.word	-16
	.word	4
	.word	_Label_1074
	.word	-9
	.word	1
	.word	_Label_1075
	.word	-20
	.word	4
	.word	_Label_1076
	.word	-10
	.word	1
	.word	_Label_1077
	.word	-24
	.word	4
	.word	_Label_1078
	.word	-28
	.word	4
	.word	0
_Label_1069:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"HoareTest\0"
	.align
_Label_1070:
	.ascii	"Pself\0"
	.align
_Label_1071:
	.byte	'P'
	.ascii	"test\0"
	.align
_Label_1072:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1074:
	.byte	'C'
	.ascii	"_temp_1066\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1076:
	.byte	'C'
	.ascii	"_temp_1064\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1078:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1079
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
_Label_1079:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1080
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1080:
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
_Label_3278:
	push	r0
	sub	r1,1,r1
	bne	_Label_3278
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
!   _temp_1081 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1081) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1081 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   _temp_1082 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1082 [0 ] into _temp_1083
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
!   Data Move: *_temp_1083 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_1084 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1084 [999 ] into _temp_1085
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
!   Data Move: *_temp_1085 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_1086 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1086 [999 ] into _temp_1087
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
!   stackTop = _temp_1087		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_1088 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1090 = &_temp_1089
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1090 = _temp_1090 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1092:
!   Data Move: *_temp_1090 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1090 = _temp_1090 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1091 = _temp_1091 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1091) then goto _Label_1092
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1092
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1093 = &_temp_1089
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3279
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3279:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1088 = *_temp_1093  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3280:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3280
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
!   _temp_1094 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1096 = &_temp_1095
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1096 = _temp_1096 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1098:
!   Data Move: *_temp_1096 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1096 = _temp_1096 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1097 = _temp_1097 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1097) then goto _Label_1098
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1098
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1099 = &_temp_1095
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3281
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3281:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1094 = *_temp_1099  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3282:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3282
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
	.word	_Label_1100
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1101
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1102
	.word	12
	.word	4
	.word	_Label_1103
	.word	-12
	.word	4
	.word	_Label_1104
	.word	-16
	.word	4
	.word	_Label_1105
	.word	-20
	.word	4
	.word	_Label_1106
	.word	-84
	.word	64
	.word	_Label_1107
	.word	-88
	.word	4
	.word	_Label_1108
	.word	-92
	.word	4
	.word	_Label_1109
	.word	-96
	.word	4
	.word	_Label_1110
	.word	-100
	.word	4
	.word	_Label_1111
	.word	-156
	.word	56
	.word	_Label_1112
	.word	-160
	.word	4
	.word	_Label_1113
	.word	-164
	.word	4
	.word	_Label_1114
	.word	-168
	.word	4
	.word	_Label_1115
	.word	-172
	.word	4
	.word	_Label_1116
	.word	-176
	.word	4
	.word	_Label_1117
	.word	-180
	.word	4
	.word	_Label_1118
	.word	-184
	.word	4
	.word	_Label_1119
	.word	-188
	.word	4
	.word	0
_Label_1100:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1101:
	.ascii	"Pself\0"
	.align
_Label_1102:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1081\0"
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
_Label_3283:
	push	r0
	sub	r1,1,r1
	bne	_Label_3283
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
!   _temp_1120 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1120  (sizeInBytes=4)
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
!   _temp_1122 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1121  sizeInBytes=4
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
	.word	_Label_1123
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1125
	.word	12
	.word	4
	.word	_Label_1126
	.word	16
	.word	4
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
	.word	0
_Label_1123:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1124:
	.ascii	"Pself\0"
	.align
_Label_1125:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1126:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1120\0"
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
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3284:
	push	r0
	sub	r1,1,r1
	bne	_Label_3284
	mov	673,r13		! source line 673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1134 == _P_Kernel_currentThread then goto _Label_1133		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1133
!	jmp	_Label_1132
_Label_1132:
! THEN...
	mov	690,r13		! source line 690
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1135 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1135  sizeInBytes=4
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
_Label_1133:
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
!   _temp_1136 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1138		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1138
!	jmp	_Label_1137
_Label_1137:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1140		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1140
!	jmp	_Label_1139
_Label_1139:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1141 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
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
_Label_1140:
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
!   _temp_1143 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1142  sizeInBytes=4
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
_Label_1138:
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
	.word	_Label_1144
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1145
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1146
	.word	-12
	.word	4
	.word	_Label_1147
	.word	-16
	.word	4
	.word	_Label_1148
	.word	-20
	.word	4
	.word	_Label_1149
	.word	-24
	.word	4
	.word	_Label_1150
	.word	-28
	.word	4
	.word	_Label_1151
	.word	-32
	.word	4
	.word	_Label_1152
	.word	-36
	.word	4
	.word	_Label_1153
	.word	-40
	.word	4
	.word	_Label_1154
	.word	-44
	.word	4
	.word	0
_Label_1144:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1145:
	.ascii	"Pself\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1152:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1153:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1154:
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
_Label_3285:
	push	r0
	sub	r1,1,r1
	bne	_Label_3285
	mov	713,r13		! source line 713
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1156		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1156
!	jmp	_Label_1155
_Label_1155:
! THEN...
	mov	726,r13		! source line 726
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1157 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1157  sizeInBytes=4
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
_Label_1156:
! IF STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1160 == _P_Kernel_currentThread then goto _Label_1159		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1159
!	jmp	_Label_1158
_Label_1158:
! THEN...
	mov	730,r13		! source line 730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1161 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1161  sizeInBytes=4
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
_Label_1159:
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
!   _temp_1162 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1163
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1163
	jmp	_Label_1164
_Label_1163:
! THEN...
	mov	738,r13		! source line 738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1165 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
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
_Label_1164:
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
	.word	_Label_1166
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1167
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1168
	.word	-12
	.word	4
	.word	_Label_1169
	.word	-16
	.word	4
	.word	_Label_1170
	.word	-20
	.word	4
	.word	_Label_1171
	.word	-24
	.word	4
	.word	_Label_1172
	.word	-28
	.word	4
	.word	_Label_1173
	.word	-32
	.word	4
	.word	0
_Label_1166:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1167:
	.ascii	"Pself\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1173:
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
_Label_3286:
	push	r0
	sub	r1,1,r1
	bne	_Label_3286
	mov	745,r13		! source line 745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0IF",r10
!   _temp_1177 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1177 [0 ] into _temp_1178
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
!   Data Move: _temp_1176 = *_temp_1178  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1176 == 606348324 then goto _Label_1175		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1175
!	jmp	_Label_1174
_Label_1174:
! THEN...
	mov	752,r13		! source line 752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1179 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
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
	jmp	_Label_1180
_Label_1175:
! ELSE...
	mov	753,r13		! source line 753
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0IF",r10
!   _temp_1184 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1184 [999 ] into _temp_1185
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
!   Data Move: _temp_1183 = *_temp_1185  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1183 == 606348324 then goto _Label_1182		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1182
!	jmp	_Label_1181
_Label_1181:
! THEN...
	mov	754,r13		! source line 754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1186 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
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
_Label_1182:
! END IF...
_Label_1180:
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
	.word	_Label_1187
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1188
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1189
	.word	-12
	.word	4
	.word	_Label_1190
	.word	-16
	.word	4
	.word	_Label_1191
	.word	-20
	.word	4
	.word	_Label_1192
	.word	-24
	.word	4
	.word	_Label_1193
	.word	-28
	.word	4
	.word	_Label_1194
	.word	-32
	.word	4
	.word	_Label_1195
	.word	-36
	.word	4
	.word	_Label_1196
	.word	-40
	.word	4
	.word	0
_Label_1187:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1188:
	.ascii	"Pself\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1176\0"
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
_Label_3287:
	push	r0
	sub	r1,1,r1
	bne	_Label_3287
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
!   _temp_1197 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
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
!   _temp_1198 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1200 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1201 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
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
!   _temp_1206 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1207 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1206  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1202:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1207 then goto _Label_1205		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1205
_Label_1203:
	mov	773,r13		! source line 773
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1208 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1208  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1209 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1209  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1210 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1210  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1212 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1212 [i ] into _temp_1213
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
!   Data Move: _temp_1211 = *_temp_1213  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1214 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1216 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1216 [i ] into _temp_1217
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
!   Data Move: _temp_1215 = *_temp_1217  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1218 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1204:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1202
! END FOR
_Label_1205:
! CALL STATEMENT...
!   _temp_1219 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-116]
!   _temp_1220 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1220  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1221 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-108]
!   _temp_1223 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1223 [0 ] into _temp_1224
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
!   _temp_1222 = _temp_1224		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1222  sizeInBytes=4
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
	be	_Label_1227
	cmp	r1,2
	be	_Label_1228
	cmp	r1,3
	be	_Label_1229
	cmp	r1,4
	be	_Label_1230
	cmp	r1,5
	be	_Label_1231
	jmp	_Label_1225
! CASE 1...
_Label_1227:
! CALL STATEMENT...
!   _temp_1232 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0BR",r10
	jmp	_Label_1226
! CASE 2...
_Label_1228:
! CALL STATEMENT...
!   _temp_1233 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0BR",r10
	jmp	_Label_1226
! CASE 3...
_Label_1229:
! CALL STATEMENT...
!   _temp_1234 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1234  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0BR",r10
	jmp	_Label_1226
! CASE 4...
_Label_1230:
! CALL STATEMENT...
!   _temp_1235 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1235  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0BR",r10
	jmp	_Label_1226
! CASE 5...
_Label_1231:
! CALL STATEMENT...
!   _temp_1236 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0BR",r10
	jmp	_Label_1226
! DEFAULT CASE...
_Label_1225:
! CALL STATEMENT...
!   _temp_1237 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
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
_Label_1226:
! CALL STATEMENT...
!   _temp_1238 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
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
!   _temp_1239 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
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
!   _temp_1244 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1245 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1244  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1240:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1245 then goto _Label_1243		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1243
_Label_1241:
	mov	807,r13		! source line 807
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1246 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1247 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1248 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1250 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1250 [i ] into _temp_1251
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
!   Data Move: _temp_1249 = *_temp_1251  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1249  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1252 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1254 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1254 [i ] into _temp_1255
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
!   Data Move: _temp_1253 = *_temp_1255  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1253  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1256 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1242:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1240
! END FOR
_Label_1243:
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
	.word	_Label_1257
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1258
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1259
	.word	-12
	.word	4
	.word	_Label_1260
	.word	-16
	.word	4
	.word	_Label_1261
	.word	-20
	.word	4
	.word	_Label_1262
	.word	-24
	.word	4
	.word	_Label_1263
	.word	-28
	.word	4
	.word	_Label_1264
	.word	-32
	.word	4
	.word	_Label_1265
	.word	-36
	.word	4
	.word	_Label_1266
	.word	-40
	.word	4
	.word	_Label_1267
	.word	-44
	.word	4
	.word	_Label_1268
	.word	-48
	.word	4
	.word	_Label_1269
	.word	-52
	.word	4
	.word	_Label_1270
	.word	-56
	.word	4
	.word	_Label_1271
	.word	-60
	.word	4
	.word	_Label_1272
	.word	-64
	.word	4
	.word	_Label_1273
	.word	-68
	.word	4
	.word	_Label_1274
	.word	-72
	.word	4
	.word	_Label_1275
	.word	-76
	.word	4
	.word	_Label_1276
	.word	-80
	.word	4
	.word	_Label_1277
	.word	-84
	.word	4
	.word	_Label_1278
	.word	-88
	.word	4
	.word	_Label_1279
	.word	-92
	.word	4
	.word	_Label_1280
	.word	-96
	.word	4
	.word	_Label_1281
	.word	-100
	.word	4
	.word	_Label_1282
	.word	-104
	.word	4
	.word	_Label_1283
	.word	-108
	.word	4
	.word	_Label_1284
	.word	-112
	.word	4
	.word	_Label_1285
	.word	-116
	.word	4
	.word	_Label_1286
	.word	-120
	.word	4
	.word	_Label_1287
	.word	-124
	.word	4
	.word	_Label_1288
	.word	-128
	.word	4
	.word	_Label_1289
	.word	-132
	.word	4
	.word	_Label_1290
	.word	-136
	.word	4
	.word	_Label_1291
	.word	-140
	.word	4
	.word	_Label_1292
	.word	-144
	.word	4
	.word	_Label_1293
	.word	-148
	.word	4
	.word	_Label_1294
	.word	-152
	.word	4
	.word	_Label_1295
	.word	-156
	.word	4
	.word	_Label_1296
	.word	-160
	.word	4
	.word	_Label_1297
	.word	-164
	.word	4
	.word	_Label_1298
	.word	-168
	.word	4
	.word	_Label_1299
	.word	-172
	.word	4
	.word	_Label_1300
	.word	-176
	.word	4
	.word	_Label_1301
	.word	-180
	.word	4
	.word	_Label_1302
	.word	-184
	.word	4
	.word	_Label_1303
	.word	-188
	.word	4
	.word	_Label_1304
	.word	-192
	.word	4
	.word	_Label_1305
	.word	-196
	.word	4
	.word	0
_Label_1257:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1258:
	.ascii	"Pself\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1304:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1305:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1306
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1306:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1307
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1307:
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
_Label_3288:
	push	r0
	sub	r1,1,r1
	bne	_Label_3288
	mov	875,r13		! source line 875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1308 = _StringConst_114
	set	_StringConst_114,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
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
!   _temp_1310 = &threadManLock
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
!   _temp_1312 = &threadBecameFree
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
!   _temp_1313 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1315 = &_temp_1314
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_1315 = _temp_1315 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1317 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_3289:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3289
!   _temp_1317 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_1319:
!   Data Move: *_temp_1315 = _temp_1317  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_3290:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3290
!   _temp_1315 = _temp_1315 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_1316 = _temp_1316 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_1316) then goto _Label_1319
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_1319
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_1320 = &_temp_1314
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3291
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3291:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1313 = *_temp_1320  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3292:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3292
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1321 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-168]
!   _temp_1322 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_1322 [0 ] into _temp_1323
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
!   Prepare Argument: offset=12  value=_temp_1321  sizeInBytes=4
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
!   _temp_1324 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-156]
!   _temp_1325 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_1325 [1 ] into _temp_1326
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
!   Prepare Argument: offset=12  value=_temp_1324  sizeInBytes=4
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
!   _temp_1327 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-144]
!   _temp_1328 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_1328 [2 ] into _temp_1329
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
!   Prepare Argument: offset=12  value=_temp_1327  sizeInBytes=4
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
!   _temp_1330 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-132]
!   _temp_1331 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_1331 [3 ] into _temp_1332
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
!   Prepare Argument: offset=12  value=_temp_1330  sizeInBytes=4
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
!   _temp_1333 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-120]
!   _temp_1334 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_1334 [4 ] into _temp_1335
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
!   Prepare Argument: offset=12  value=_temp_1333  sizeInBytes=4
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
!   _temp_1336 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-108]
!   _temp_1337 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_1337 [5 ] into _temp_1338
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
!   Prepare Argument: offset=12  value=_temp_1336  sizeInBytes=4
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
!   _temp_1339 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-96]
!   _temp_1340 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_1340 [6 ] into _temp_1341
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
!   Prepare Argument: offset=12  value=_temp_1339  sizeInBytes=4
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
!   _temp_1342 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-84]
!   _temp_1343 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_1343 [7 ] into _temp_1344
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
!   Prepare Argument: offset=12  value=_temp_1342  sizeInBytes=4
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
!   _temp_1345 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-72]
!   _temp_1346 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_1346 [8 ] into _temp_1347
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
!   Prepare Argument: offset=12  value=_temp_1345  sizeInBytes=4
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
!   _temp_1348 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-60]
!   _temp_1349 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_1349 [9 ] into _temp_1350
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
!   Prepare Argument: offset=12  value=_temp_1348  sizeInBytes=4
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
!   _temp_1356 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1357 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1356  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1352:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1357 then goto _Label_1355		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1355
_Label_1353:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_1358 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_1358 [i ] into _temp_1359
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
!   _temp_1360 = _temp_1359 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1360 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1362 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_1362 [i ] into _temp_1363
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
!   _temp_1361 = _temp_1363		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1364 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1361  sizeInBytes=4
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
_Label_1354:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1352
! END FOR
_Label_1355:
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
	.word	_Label_1365
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_1366
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1367
	.word	-12
	.word	4
	.word	_Label_1368
	.word	-16
	.word	4
	.word	_Label_1369
	.word	-20
	.word	4
	.word	_Label_1370
	.word	-24
	.word	4
	.word	_Label_1371
	.word	-28
	.word	4
	.word	_Label_1372
	.word	-32
	.word	4
	.word	_Label_1373
	.word	-36
	.word	4
	.word	_Label_1374
	.word	-40
	.word	4
	.word	_Label_1375
	.word	-44
	.word	4
	.word	_Label_1376
	.word	-48
	.word	4
	.word	_Label_1377
	.word	-52
	.word	4
	.word	_Label_1378
	.word	-56
	.word	4
	.word	_Label_1379
	.word	-60
	.word	4
	.word	_Label_1380
	.word	-64
	.word	4
	.word	_Label_1381
	.word	-68
	.word	4
	.word	_Label_1382
	.word	-72
	.word	4
	.word	_Label_1383
	.word	-76
	.word	4
	.word	_Label_1384
	.word	-80
	.word	4
	.word	_Label_1385
	.word	-84
	.word	4
	.word	_Label_1386
	.word	-88
	.word	4
	.word	_Label_1387
	.word	-92
	.word	4
	.word	_Label_1388
	.word	-96
	.word	4
	.word	_Label_1389
	.word	-100
	.word	4
	.word	_Label_1390
	.word	-104
	.word	4
	.word	_Label_1391
	.word	-108
	.word	4
	.word	_Label_1392
	.word	-112
	.word	4
	.word	_Label_1393
	.word	-116
	.word	4
	.word	_Label_1394
	.word	-120
	.word	4
	.word	_Label_1395
	.word	-124
	.word	4
	.word	_Label_1396
	.word	-128
	.word	4
	.word	_Label_1397
	.word	-132
	.word	4
	.word	_Label_1398
	.word	-136
	.word	4
	.word	_Label_1399
	.word	-140
	.word	4
	.word	_Label_1400
	.word	-144
	.word	4
	.word	_Label_1401
	.word	-148
	.word	4
	.word	_Label_1402
	.word	-152
	.word	4
	.word	_Label_1403
	.word	-156
	.word	4
	.word	_Label_1404
	.word	-160
	.word	4
	.word	_Label_1405
	.word	-164
	.word	4
	.word	_Label_1406
	.word	-168
	.word	4
	.word	_Label_1407
	.word	-172
	.word	4
	.word	_Label_1408
	.word	-176
	.word	4
	.word	_Label_1409
	.word	-4340
	.word	4164
	.word	_Label_1410
	.word	-4344
	.word	4
	.word	_Label_1411
	.word	-4348
	.word	4
	.word	_Label_1412
	.word	-45992
	.word	41644
	.word	_Label_1413
	.word	-45996
	.word	4
	.word	_Label_1414
	.word	-46000
	.word	4
	.word	_Label_1415
	.word	-46004
	.word	4
	.word	_Label_1416
	.word	-46008
	.word	4
	.word	_Label_1417
	.word	-46012
	.word	4
	.word	_Label_1418
	.word	-46016
	.word	4
	.word	_Label_1419
	.word	-46020
	.word	4
	.word	_Label_1420
	.word	-46024
	.word	4
	.word	0
_Label_1365:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1366:
	.ascii	"Pself\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1419:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1420:
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
_Label_3293:
	push	r0
	sub	r1,1,r1
	bne	_Label_3293
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
!   _temp_1421 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1421  sizeInBytes=4
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
!   _temp_1426 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1427 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1426  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1422:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1427 then goto _Label_1425		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1425
_Label_1423:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1428 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
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
!   _temp_1429 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1429  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1431 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_1431 [i ] into _temp_1432
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
!   _temp_1430 = _temp_1432		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_function_232_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1424:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1422
! END FOR
_Label_1425:
! CALL STATEMENT...
!   _temp_1433 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1433  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1434 = _function_231_PrintObjectAddr
	set	_function_231_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1435 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1434  sizeInBytes=4
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
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	_Label_1445
	.word	-40
	.word	4
	.word	_Label_1446
	.word	-44
	.word	4
	.word	_Label_1447
	.word	-48
	.word	4
	.word	_Label_1448
	.word	-52
	.word	4
	.word	_Label_1449
	.word	-56
	.word	4
	.word	_Label_1450
	.word	-60
	.word	4
	.word	0
_Label_1436:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1437:
	.ascii	"Pself\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1449:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1450:
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
_Label_3294:
	push	r0
	sub	r1,1,r1
	bne	_Label_3294
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
!   _temp_1451 = &threadManLock
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
!   _temp_1455 = &freeList
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
!   Retrieve Result: targetName=_temp_1454  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1456 = _temp_1454 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1456 then goto _Label_1453 else goto _Label_1452
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1452
	jmp	_Label_1453
_Label_1452:
! THEN...
	mov	951,r13		! source line 951
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1457 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1458 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1457  sizeInBytes=4
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
_Label_1453:
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1459 = &freeList
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
!   _temp_1460 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1460 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1461 = &threadManLock
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
	.word	_Label_1462
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1464
	.word	-16
	.word	4
	.word	_Label_1465
	.word	-20
	.word	4
	.word	_Label_1466
	.word	-24
	.word	4
	.word	_Label_1467
	.word	-28
	.word	4
	.word	_Label_1468
	.word	-32
	.word	4
	.word	_Label_1469
	.word	-9
	.word	1
	.word	_Label_1470
	.word	-36
	.word	4
	.word	_Label_1471
	.word	-10
	.word	1
	.word	_Label_1472
	.word	-40
	.word	4
	.word	_Label_1473
	.word	-44
	.word	4
	.word	0
_Label_1462:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1463:
	.ascii	"Pself\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1469:
	.byte	'C'
	.ascii	"_temp_1456\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1471:
	.byte	'C'
	.ascii	"_temp_1454\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1473:
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
_Label_3295:
	push	r0
	sub	r1,1,r1
	bne	_Label_3295
	mov	965,r13		! source line 965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1474 = &threadManLock
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
!   _temp_1475 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1475 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1476 = &freeList
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
!   _temp_1477 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1478 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1477  sizeInBytes=4
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
!   _temp_1479 = &threadManLock
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
	.word	_Label_1480
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1482
	.word	12
	.word	4
	.word	_Label_1483
	.word	-12
	.word	4
	.word	_Label_1484
	.word	-16
	.word	4
	.word	_Label_1485
	.word	-20
	.word	4
	.word	_Label_1486
	.word	-24
	.word	4
	.word	_Label_1487
	.word	-28
	.word	4
	.word	_Label_1488
	.word	-32
	.word	4
	.word	0
_Label_1480:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1481:
	.ascii	"Pself\0"
	.align
_Label_1482:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1489
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1489:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1490
	.word	_sourceFileName
	.word	242		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1490:
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
_Label_3296:
	push	r0
	sub	r1,1,r1
	bne	_Label_3296
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
_Label_3297:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3297
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0SE",r10
!   _temp_1492 = &addrSpace
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
	.word	_Label_1493
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1494
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1495
	.word	-12
	.word	4
	.word	_Label_1496
	.word	-16
	.word	4
	.word	0
_Label_1493:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1494:
	.ascii	"Pself\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1491\0"
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
_Label_3298:
	push	r0
	sub	r1,1,r1
	bne	_Label_3298
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1497) then goto _runtimeErrorNullPointer
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
!   _temp_1498 = &addrSpace
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
!   _temp_1499 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
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
	call	_function_232_ThreadPrintShort
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
	.word	_Label_1500
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1502
	.word	-12
	.word	4
	.word	_Label_1503
	.word	-16
	.word	4
	.word	_Label_1504
	.word	-20
	.word	4
	.word	0
_Label_1500:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1501:
	.ascii	"Pself\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1497\0"
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
_Label_3299:
	push	r0
	sub	r1,1,r1
	bne	_Label_3299
	mov	1029,r13		! source line 1029
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1505 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1507 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1507  sizeInBytes=4
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
!   _temp_1508 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1510		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1510
!	jmp	_Label_1509
_Label_1509:
! THEN...
	mov	1039,r13		! source line 1039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1511 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1512
_Label_1510:
! ELSE...
	mov	1040,r13		! source line 1040
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1514		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1514
!	jmp	_Label_1513
_Label_1513:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1515 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1515  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1516
_Label_1514:
! ELSE...
	mov	1042,r13		! source line 1042
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1518		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1518
!	jmp	_Label_1517
_Label_1517:
! THEN...
	mov	1043,r13		! source line 1043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1519 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1519  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1520
_Label_1518:
! ELSE...
	mov	1045,r13		! source line 1045
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1521 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1521  sizeInBytes=4
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
_Label_1520:
! END IF...
_Label_1516:
! END IF...
_Label_1512:
! CALL STATEMENT...
!   _temp_1522 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
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
!   _temp_1523 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1523  sizeInBytes=4
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
	.word	_Label_1524
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1526
	.word	-12
	.word	4
	.word	_Label_1527
	.word	-16
	.word	4
	.word	_Label_1528
	.word	-20
	.word	4
	.word	_Label_1529
	.word	-24
	.word	4
	.word	_Label_1530
	.word	-28
	.word	4
	.word	_Label_1531
	.word	-32
	.word	4
	.word	_Label_1532
	.word	-36
	.word	4
	.word	_Label_1533
	.word	-40
	.word	4
	.word	_Label_1534
	.word	-44
	.word	4
	.word	_Label_1535
	.word	-48
	.word	4
	.word	0
_Label_1524:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1525:
	.ascii	"Pself\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1536
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1536:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1537
	.word	_sourceFileName
	.word	262		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1537:
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
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
	mov	1067,r13		! source line 1067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   _temp_1538 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1540 = &_temp_1539
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1540 = _temp_1540 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1542 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3301:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3301
!   _temp_1542 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1544:
!   Data Move: *_temp_1540 = _temp_1542  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3302:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3302
!   _temp_1540 = _temp_1540 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1541 = _temp_1541 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1541) then goto _Label_1544
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1544
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1545 = &_temp_1539
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3303
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3303:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1538 = *_temp_1545  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3304:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3304
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
!   _temp_1547 = &processManagerLock
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
!   _temp_1549 = &aProcessBecameFree
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
!   _temp_1552 = &aProcessDied
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
!   _temp_1557 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1558 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1557  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1553:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1558 then goto _Label_1556		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1556
_Label_1554:
	mov	1087,r13		! source line 1087
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1559 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1559 [i ] into _temp_1560
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
!   _temp_1562 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1562 [i ] into _temp_1563
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
!   _temp_1561 = _temp_1563		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1564 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1561  sizeInBytes=4
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
_Label_1555:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1553
! END FOR
_Label_1556:
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   _temp_1565 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1565 [0 ] into _temp_1566
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
!   _temp_1567 = _temp_1566 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1567  (sizeInBytes=4)
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
	.word	_Label_1568
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1570
	.word	-12
	.word	4
	.word	_Label_1571
	.word	-16
	.word	4
	.word	_Label_1572
	.word	-20
	.word	4
	.word	_Label_1573
	.word	-24
	.word	4
	.word	_Label_1574
	.word	-28
	.word	4
	.word	_Label_1575
	.word	-32
	.word	4
	.word	_Label_1576
	.word	-36
	.word	4
	.word	_Label_1577
	.word	-40
	.word	4
	.word	_Label_1578
	.word	-44
	.word	4
	.word	_Label_1579
	.word	-48
	.word	4
	.word	_Label_1580
	.word	-52
	.word	4
	.word	_Label_1581
	.word	-56
	.word	4
	.word	_Label_1582
	.word	-60
	.word	4
	.word	_Label_1583
	.word	-64
	.word	4
	.word	_Label_1584
	.word	-68
	.word	4
	.word	_Label_1585
	.word	-72
	.word	4
	.word	_Label_1586
	.word	-76
	.word	4
	.word	_Label_1587
	.word	-80
	.word	4
	.word	_Label_1588
	.word	-84
	.word	4
	.word	_Label_1589
	.word	-88
	.word	4
	.word	_Label_1590
	.word	-212
	.word	124
	.word	_Label_1591
	.word	-216
	.word	4
	.word	_Label_1592
	.word	-220
	.word	4
	.word	_Label_1593
	.word	-1464
	.word	1244
	.word	_Label_1594
	.word	-1468
	.word	4
	.word	_Label_1595
	.word	-1472
	.word	4
	.word	0
_Label_1568:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1569:
	.ascii	"Pself\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1595:
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
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
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
!   _temp_1596 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1596  sizeInBytes=4
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
!   _temp_1601 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1602 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1601  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1597:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1602 then goto _Label_1600		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1600
_Label_1598:
	mov	1105,r13		! source line 1105
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1603 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1603  sizeInBytes=4
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
!   _temp_1604 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1604  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1605 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1605 [i ] into _temp_1606
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
_Label_1599:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1597
! END FOR
_Label_1600:
! CALL STATEMENT...
!   _temp_1607 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1607  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1608 = _function_231_PrintObjectAddr
	set	_function_231_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1609 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1608  sizeInBytes=4
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
	.word	_Label_1610
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1611
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1612
	.word	-12
	.word	4
	.word	_Label_1613
	.word	-16
	.word	4
	.word	_Label_1614
	.word	-20
	.word	4
	.word	_Label_1615
	.word	-24
	.word	4
	.word	_Label_1616
	.word	-28
	.word	4
	.word	_Label_1617
	.word	-32
	.word	4
	.word	_Label_1618
	.word	-36
	.word	4
	.word	_Label_1619
	.word	-40
	.word	4
	.word	_Label_1620
	.word	-44
	.word	4
	.word	_Label_1621
	.word	-48
	.word	4
	.word	_Label_1622
	.word	-52
	.word	4
	.word	_Label_1623
	.word	-56
	.word	4
	.word	0
_Label_1610:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1611:
	.ascii	"Pself\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1622:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1623:
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
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
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
!   _temp_1624 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1624  sizeInBytes=4
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
!   _temp_1629 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1630 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1629  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1625:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1630 then goto _Label_1628		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1628
_Label_1626:
	mov	1128,r13		! source line 1128
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1631 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
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
!   _temp_1632 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1632 [i ] into _temp_1633
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
_Label_1627:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1625
! END FOR
_Label_1628:
! CALL STATEMENT...
!   _temp_1634 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1634  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1635 = _function_231_PrintObjectAddr
	set	_function_231_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1636 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1635  sizeInBytes=4
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
	.word	_Label_1637
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1639
	.word	-12
	.word	4
	.word	_Label_1640
	.word	-16
	.word	4
	.word	_Label_1641
	.word	-20
	.word	4
	.word	_Label_1642
	.word	-24
	.word	4
	.word	_Label_1643
	.word	-28
	.word	4
	.word	_Label_1644
	.word	-32
	.word	4
	.word	_Label_1645
	.word	-36
	.word	4
	.word	_Label_1646
	.word	-40
	.word	4
	.word	_Label_1647
	.word	-44
	.word	4
	.word	_Label_1648
	.word	-48
	.word	4
	.word	_Label_1649
	.word	-52
	.word	4
	.word	0
_Label_1637:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1638:
	.ascii	"Pself\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1649:
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
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
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
!   _temp_1650 = &processManagerLock
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
_Label_1651:
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1655 = &freeList
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
!   Retrieve Result: targetName=_temp_1654  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1656 = _temp_1654 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1656 then goto _Label_1653 else goto _Label_1652
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1652
	jmp	_Label_1653
_Label_1652:
	mov	1151,r13		! source line 1151
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1657 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1658 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1657  sizeInBytes=4
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
	jmp	_Label_1651
_Label_1653:
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1659 = &freeList
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
!   _temp_1660 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1660 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0IF",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1664 = &freeList
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
!   Retrieve Result: targetName=_temp_1663  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1665 = _temp_1663 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1665 then goto _Label_1662 else goto _Label_1661
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1661
	jmp	_Label_1662
_Label_1661:
! THEN...
	mov	1159,r13		! source line 1159
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_1666 = &freeList
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
!   _temp_1667 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1667  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1668 = &freeList
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
	jmp	_Label_1669
_Label_1662:
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
_Label_1669:
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1670 = &processManagerLock
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
	.word	_Label_1671
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1673
	.word	-16
	.word	4
	.word	_Label_1674
	.word	-20
	.word	4
	.word	_Label_1675
	.word	-24
	.word	4
	.word	_Label_1676
	.word	-28
	.word	4
	.word	_Label_1677
	.word	-9
	.word	1
	.word	_Label_1678
	.word	-32
	.word	4
	.word	_Label_1679
	.word	-10
	.word	1
	.word	_Label_1680
	.word	-36
	.word	4
	.word	_Label_1681
	.word	-40
	.word	4
	.word	_Label_1682
	.word	-44
	.word	4
	.word	_Label_1683
	.word	-48
	.word	4
	.word	_Label_1684
	.word	-11
	.word	1
	.word	_Label_1685
	.word	-52
	.word	4
	.word	_Label_1686
	.word	-12
	.word	1
	.word	_Label_1687
	.word	-56
	.word	4
	.word	_Label_1688
	.word	-60
	.word	4
	.word	_Label_1689
	.word	-64
	.word	4
	.word	0
_Label_1671:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1672:
	.ascii	"Pself\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1677:
	.byte	'C'
	.ascii	"_temp_1665\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1679:
	.byte	'C'
	.ascii	"_temp_1663\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1684:
	.byte	'C'
	.ascii	"_temp_1656\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1686:
	.byte	'C'
	.ascii	"_temp_1654\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1688:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1689:
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
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
	mov	1171,r13		! source line 1171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1690 = &processManagerLock
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
!   _temp_1694 = &freeList
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
!   Retrieve Result: targetName=_temp_1693  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1695 = _temp_1693 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1695 then goto _Label_1692 else goto _Label_1691
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1691
	jmp	_Label_1692
_Label_1691:
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
!   _temp_1696 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1696  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1692:
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1697 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1697 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1698 = &freeList
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
!   _temp_1699 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1700 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1699  sizeInBytes=4
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
!   _temp_1701 = &processManagerLock
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
	.word	_Label_1702
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1703
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1704
	.word	12
	.word	4
	.word	_Label_1705
	.word	-16
	.word	4
	.word	_Label_1706
	.word	-20
	.word	4
	.word	_Label_1707
	.word	-24
	.word	4
	.word	_Label_1708
	.word	-28
	.word	4
	.word	_Label_1709
	.word	-32
	.word	4
	.word	_Label_1710
	.word	-36
	.word	4
	.word	_Label_1711
	.word	-9
	.word	1
	.word	_Label_1712
	.word	-40
	.word	4
	.word	_Label_1713
	.word	-10
	.word	1
	.word	_Label_1714
	.word	-44
	.word	4
	.word	0
_Label_1702:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1703:
	.ascii	"Pself\0"
	.align
_Label_1704:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1711:
	.byte	'C'
	.ascii	"_temp_1695\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1713:
	.byte	'C'
	.ascii	"_temp_1693\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1715
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1715:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1716
	.word	_sourceFileName
	.word	285		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1716:
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
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
	mov	1295,r13		! source line 1295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1717 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
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
!   _temp_1719 = &framesInUse
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
!   _temp_1721 = &frameManagerLock
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
!   _temp_1723 = &restOfLine
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
!   _temp_1725 = &newFramesAvailable
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
!   _temp_1730 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1731 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1730  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1726:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1731 then goto _Label_1729		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1729
_Label_1727:
	mov	1317,r13		! source line 1317
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1734 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1734) then goto _Label_1733
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1733
!	jmp	_Label_1732
_Label_1732:
! THEN...
	mov	1321,r13		! source line 1321
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1735 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
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
_Label_1733:
!   Increment the FOR-LOOP index variable and jump back
_Label_1728:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1726
! END FOR
_Label_1729:
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
	.word	_Label_1736
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1737
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1738
	.word	-12
	.word	4
	.word	_Label_1739
	.word	-16
	.word	4
	.word	_Label_1740
	.word	-20
	.word	4
	.word	_Label_1741
	.word	-24
	.word	4
	.word	_Label_1742
	.word	-28
	.word	4
	.word	_Label_1743
	.word	-32
	.word	4
	.word	_Label_1744
	.word	-36
	.word	4
	.word	_Label_1745
	.word	-40
	.word	4
	.word	_Label_1746
	.word	-44
	.word	4
	.word	_Label_1747
	.word	-48
	.word	4
	.word	_Label_1748
	.word	-52
	.word	4
	.word	_Label_1749
	.word	-56
	.word	4
	.word	_Label_1750
	.word	-60
	.word	4
	.word	_Label_1751
	.word	-64
	.word	4
	.word	0
_Label_1736:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1737:
	.ascii	"Pself\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1734\0"
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
	.ascii	"_temp_1725\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1751:
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
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0SE",r10
!   _temp_1752 = &frameManagerLock
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
!   _temp_1753 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1333,r13		! source line 1333
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1754 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
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
!   _temp_1755 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1755  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1335,r13		! source line 1335
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0SE",r10
!   _temp_1756 = &framesInUse
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
!   _temp_1757 = &frameManagerLock
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
	.word	_Label_1758
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1760
	.word	-12
	.word	4
	.word	_Label_1761
	.word	-16
	.word	4
	.word	_Label_1762
	.word	-20
	.word	4
	.word	_Label_1763
	.word	-24
	.word	4
	.word	_Label_1764
	.word	-28
	.word	4
	.word	_Label_1765
	.word	-32
	.word	4
	.word	0
_Label_1758:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1759:
	.ascii	"Pself\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1752\0"
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
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0SE",r10
!   _temp_1766 = &frameManagerLock
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
_Label_1767:
!   if numberFreeFrames >= 1 then goto _Label_1769		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1769
!	jmp	_Label_1768
_Label_1768:
	mov	1353,r13		! source line 1353
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0SE",r10
!   _temp_1770 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1771 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1770  sizeInBytes=4
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
	jmp	_Label_1767
_Label_1769:
! ASSIGNMENT STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0AS",r10
	mov	1358,r13		! source line 1358
	mov	"\0\0SE",r10
!   _temp_1772 = &framesInUse
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
!   _temp_1773 = &frameManagerLock
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
!   _temp_1774 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1774		(int)
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
	.word	_Label_1775
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1777
	.word	-12
	.word	4
	.word	_Label_1778
	.word	-16
	.word	4
	.word	_Label_1779
	.word	-20
	.word	4
	.word	_Label_1780
	.word	-24
	.word	4
	.word	_Label_1781
	.word	-28
	.word	4
	.word	_Label_1782
	.word	-32
	.word	4
	.word	_Label_1783
	.word	-36
	.word	4
	.word	_Label_1784
	.word	-40
	.word	4
	.word	0
_Label_1775:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1776:
	.ascii	"Pself\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1783:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1784:
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
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
	mov	1372,r13		! source line 1372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
!   _temp_1785 = &frameManagerLock
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
!   if waiting <= 1 then goto _Label_1787		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1787
!	jmp	_Label_1786
_Label_1786:
! THEN...
	mov	1379,r13		! source line 1379
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
!   _temp_1788 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1789 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1788  sizeInBytes=4
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
_Label_1787:
! WHILE STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0WH",r10
_Label_1790:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1792		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1792
!	jmp	_Label_1791
_Label_1791:
	mov	1382,r13		! source line 1382
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0SE",r10
!   _temp_1793 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1794 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1793  sizeInBytes=4
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
	jmp	_Label_1790
_Label_1792:
! FOR STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1799 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1800 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1799  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1795:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1800 then goto _Label_1798		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1798
_Label_1796:
	mov	1386,r13		! source line 1386
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
	mov	1387,r13		! source line 1387
	mov	"\0\0SE",r10
!   _temp_1801 = &framesInUse
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
!   _temp_1802 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1802		(int)
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
_Label_1797:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1795
! END FOR
_Label_1798:
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
!   _temp_1803 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1803 = numFramesNeeded  (sizeInBytes=4)
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
!   _temp_1804 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1805 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1804  sizeInBytes=4
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
!   _temp_1806 = &frameManagerLock
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
	.word	_Label_1807
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1808
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1809
	.word	12
	.word	4
	.word	_Label_1810
	.word	16
	.word	4
	.word	_Label_1811
	.word	-12
	.word	4
	.word	_Label_1812
	.word	-16
	.word	4
	.word	_Label_1813
	.word	-20
	.word	4
	.word	_Label_1814
	.word	-24
	.word	4
	.word	_Label_1815
	.word	-28
	.word	4
	.word	_Label_1816
	.word	-32
	.word	4
	.word	_Label_1817
	.word	-36
	.word	4
	.word	_Label_1818
	.word	-40
	.word	4
	.word	_Label_1819
	.word	-44
	.word	4
	.word	_Label_1820
	.word	-48
	.word	4
	.word	_Label_1821
	.word	-52
	.word	4
	.word	_Label_1822
	.word	-56
	.word	4
	.word	_Label_1823
	.word	-60
	.word	4
	.word	_Label_1824
	.word	-64
	.word	4
	.word	_Label_1825
	.word	-68
	.word	4
	.word	0
_Label_1807:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1808:
	.ascii	"Pself\0"
	.align
_Label_1809:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1810:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1824:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1825:
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
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0SE",r10
!   _temp_1826 = &frameManagerLock
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
!   _temp_1831 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1834 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1833 = *_temp_1834  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1832 = _temp_1833 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1831  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1827:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1832 then goto _Label_1830		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1830
_Label_1828:
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
!   _temp_1835 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1835 div 8192		(int)
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
!   _temp_1836 = &framesInUse
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
_Label_1829:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1827
! END FOR
_Label_1830:
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1838 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1837 = *_temp_1838  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1837		(int)
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
!   _temp_1839 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1840 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1839  sizeInBytes=4
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
!   _temp_1841 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1841 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0SE",r10
!   _temp_1842 = &frameManagerLock
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
	.word	_Label_1843
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1845
	.word	12
	.word	4
	.word	_Label_1846
	.word	-12
	.word	4
	.word	_Label_1847
	.word	-16
	.word	4
	.word	_Label_1848
	.word	-20
	.word	4
	.word	_Label_1849
	.word	-24
	.word	4
	.word	_Label_1850
	.word	-28
	.word	4
	.word	_Label_1851
	.word	-32
	.word	4
	.word	_Label_1852
	.word	-36
	.word	4
	.word	_Label_1853
	.word	-40
	.word	4
	.word	_Label_1854
	.word	-44
	.word	4
	.word	_Label_1855
	.word	-48
	.word	4
	.word	_Label_1856
	.word	-52
	.word	4
	.word	_Label_1857
	.word	-56
	.word	4
	.word	_Label_1858
	.word	-60
	.word	4
	.word	_Label_1859
	.word	-64
	.word	4
	.word	_Label_1860
	.word	-68
	.word	4
	.word	_Label_1861
	.word	-72
	.word	4
	.word	0
_Label_1843:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1844:
	.ascii	"Pself\0"
	.align
_Label_1845:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1859:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1860:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1861:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1862
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
_Label_1862:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1863
	.word	_sourceFileName
	.word	306		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1863:
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
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
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
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1866 = &_temp_1865
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1866 = _temp_1866 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1868:
!   Data Move: *_temp_1866 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1866 = _temp_1866 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1867 = _temp_1867 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1867) then goto _Label_1868
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1868
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1869 = &_temp_1865
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3315
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3315:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1864 = *_temp_1869  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3316:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3316
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
	.word	_Label_1870
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1871
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-104
	.word	84
	.word	_Label_1876
	.word	-108
	.word	4
	.word	0
_Label_1870:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1871:
	.ascii	"Pself\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1869\0"
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
_Label_3317:
	push	r0
	sub	r1,1,r1
	bne	_Label_3317
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1877 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1877  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1878 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1878  sizeInBytes=4
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
!   _temp_1883 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1884 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1883  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1879:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1884 then goto _Label_1882		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1882
_Label_1880:
	mov	1445,r13		! source line 1445
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1885 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1885  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1446,r13		! source line 1446
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1887 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1887 [i ] into _temp_1888
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
!   _temp_1886 = _temp_1888		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1886  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1889 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1889  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1448,r13		! source line 1448
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1891 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1891 [i ] into _temp_1892
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
!   Data Move: _temp_1890 = *_temp_1892  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1893 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1893  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1450,r13		! source line 1450
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1894 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1894  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1895 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
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
!   if intIsZero (_temp_1897) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1896  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1896  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1898 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1898  sizeInBytes=4
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
!   if intIsZero (_temp_1902) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1901  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1901) then goto _Label_1900
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1900
!	jmp	_Label_1899
_Label_1899:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1904) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1903  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1903  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1456,r13		! source line 1456
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1905
_Label_1900:
! ELSE...
	mov	1458,r13		! source line 1458
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1906 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1906  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1458,r13		! source line 1458
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1905:
! CALL STATEMENT...
!   _temp_1907 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1907  sizeInBytes=4
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
!   if intIsZero (_temp_1910) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1908 else goto _Label_1909
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1909
	jmp	_Label_1908
_Label_1908:
! THEN...
	mov	1462,r13		! source line 1462
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1911 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1911  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1462,r13		! source line 1462
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1912
_Label_1909:
! ELSE...
	mov	1464,r13		! source line 1464
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1913 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1913  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1464,r13		! source line 1464
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1912:
! CALL STATEMENT...
!   _temp_1914 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1914  sizeInBytes=4
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
!   if intIsZero (_temp_1917) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1915 else goto _Label_1916
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1916
	jmp	_Label_1915
_Label_1915:
! THEN...
	mov	1468,r13		! source line 1468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1918 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1918  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1468,r13		! source line 1468
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1919
_Label_1916:
! ELSE...
	mov	1470,r13		! source line 1470
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1920 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1920  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1470,r13		! source line 1470
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1919:
! CALL STATEMENT...
!   _temp_1921 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1921  sizeInBytes=4
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
!   if intIsZero (_temp_1924) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1922 else goto _Label_1923
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1923
	jmp	_Label_1922
_Label_1922:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1925 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1925  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1474,r13		! source line 1474
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1926
_Label_1923:
! ELSE...
	mov	1476,r13		! source line 1476
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1927 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1927  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1476,r13		! source line 1476
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1926:
! CALL STATEMENT...
!   _temp_1928 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1928  sizeInBytes=4
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
!   if intIsZero (_temp_1931) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1929 else goto _Label_1930
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1930
	jmp	_Label_1929
_Label_1929:
! THEN...
	mov	1480,r13		! source line 1480
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1932 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1932  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1480,r13		! source line 1480
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1933
_Label_1930:
! ELSE...
	mov	1482,r13		! source line 1482
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1934 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1934  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1482,r13		! source line 1482
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1933:
! CALL STATEMENT...
!   Call the function
	mov	1484,r13		! source line 1484
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1881:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1879
! END FOR
_Label_1882:
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
	.word	_Label_1935
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1937
	.word	-12
	.word	4
	.word	_Label_1938
	.word	-16
	.word	4
	.word	_Label_1939
	.word	-20
	.word	4
	.word	_Label_1940
	.word	-24
	.word	4
	.word	_Label_1941
	.word	-28
	.word	4
	.word	_Label_1942
	.word	-32
	.word	4
	.word	_Label_1943
	.word	-36
	.word	4
	.word	_Label_1944
	.word	-40
	.word	4
	.word	_Label_1945
	.word	-44
	.word	4
	.word	_Label_1946
	.word	-48
	.word	4
	.word	_Label_1947
	.word	-52
	.word	4
	.word	_Label_1948
	.word	-56
	.word	4
	.word	_Label_1949
	.word	-60
	.word	4
	.word	_Label_1950
	.word	-64
	.word	4
	.word	_Label_1951
	.word	-68
	.word	4
	.word	_Label_1952
	.word	-72
	.word	4
	.word	_Label_1953
	.word	-76
	.word	4
	.word	_Label_1954
	.word	-80
	.word	4
	.word	_Label_1955
	.word	-84
	.word	4
	.word	_Label_1956
	.word	-88
	.word	4
	.word	_Label_1957
	.word	-92
	.word	4
	.word	_Label_1958
	.word	-96
	.word	4
	.word	_Label_1959
	.word	-100
	.word	4
	.word	_Label_1960
	.word	-104
	.word	4
	.word	_Label_1961
	.word	-108
	.word	4
	.word	_Label_1962
	.word	-112
	.word	4
	.word	_Label_1963
	.word	-116
	.word	4
	.word	_Label_1964
	.word	-120
	.word	4
	.word	_Label_1965
	.word	-124
	.word	4
	.word	_Label_1966
	.word	-128
	.word	4
	.word	_Label_1967
	.word	-132
	.word	4
	.word	_Label_1968
	.word	-136
	.word	4
	.word	_Label_1969
	.word	-140
	.word	4
	.word	_Label_1970
	.word	-144
	.word	4
	.word	_Label_1971
	.word	-148
	.word	4
	.word	_Label_1972
	.word	-152
	.word	4
	.word	_Label_1973
	.word	-156
	.word	4
	.word	_Label_1974
	.word	-160
	.word	4
	.word	_Label_1975
	.word	-164
	.word	4
	.word	_Label_1976
	.word	-168
	.word	4
	.word	0
_Label_1935:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1936:
	.ascii	"Pself\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1976:
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
_Label_3318:
	push	r0
	sub	r1,1,r1
	bne	_Label_3318
	mov	1490,r13		! source line 1490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0RE",r10
!   _temp_1979 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1979 [entry ] into _temp_1980
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
!   Data Move: _temp_1978 = *_temp_1980  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1977 = _temp_1978 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1977  (sizeInBytes=4)
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
	.word	_Label_1981
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1983
	.word	12
	.word	4
	.word	_Label_1984
	.word	-12
	.word	4
	.word	_Label_1985
	.word	-16
	.word	4
	.word	_Label_1986
	.word	-20
	.word	4
	.word	_Label_1987
	.word	-24
	.word	4
	.word	0
_Label_1981:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1982:
	.ascii	"Pself\0"
	.align
_Label_1983:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1977\0"
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
_Label_3319:
	push	r0
	sub	r1,1,r1
	bne	_Label_3319
	mov	1500,r13		! source line 1500
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0RE",r10
!   _temp_1990 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1990 [entry ] into _temp_1991
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
!   Data Move: _temp_1989 = *_temp_1991  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1988 = _temp_1989 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1988  (sizeInBytes=4)
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
	.word	_Label_1992
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1994
	.word	12
	.word	4
	.word	_Label_1995
	.word	-12
	.word	4
	.word	_Label_1996
	.word	-16
	.word	4
	.word	_Label_1997
	.word	-20
	.word	4
	.word	_Label_1998
	.word	-24
	.word	4
	.word	0
_Label_1992:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1993:
	.ascii	"Pself\0"
	.align
_Label_1994:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1988\0"
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
_Label_3320:
	push	r0
	sub	r1,1,r1
	bne	_Label_3320
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   _temp_1999 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1999 [entry ] into _temp_2000
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
!   _temp_2004 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2004 [entry ] into _temp_2005
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
!   Data Move: _temp_2003 = *_temp_2005  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2002 = _temp_2003 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2001 = _temp_2002 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2000 = _temp_2001  (sizeInBytes=4)
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
	.word	_Label_2006
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2007
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2008
	.word	12
	.word	4
	.word	_Label_2009
	.word	16
	.word	4
	.word	_Label_2010
	.word	-12
	.word	4
	.word	_Label_2011
	.word	-16
	.word	4
	.word	_Label_2012
	.word	-20
	.word	4
	.word	_Label_2013
	.word	-24
	.word	4
	.word	_Label_2014
	.word	-28
	.word	4
	.word	_Label_2015
	.word	-32
	.word	4
	.word	_Label_2016
	.word	-36
	.word	4
	.word	0
_Label_2006:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2007:
	.ascii	"Pself\0"
	.align
_Label_2008:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2009:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1999\0"
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
_Label_3321:
	push	r0
	sub	r1,1,r1
	bne	_Label_3321
	mov	1519,r13		! source line 1519
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   _temp_2020 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2020 [entry ] into _temp_2021
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
!   Data Move: _temp_2019 = *_temp_2021  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2018 = _temp_2019 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2018) then goto _Label_2022
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2022
!   _temp_2017 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2023
_Label_2022:
!   _temp_2017 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2023:
!   ReturnResult: _temp_2017  (sizeInBytes=1)
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
	.word	_Label_2024
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2026
	.word	12
	.word	4
	.word	_Label_2027
	.word	-16
	.word	4
	.word	_Label_2028
	.word	-20
	.word	4
	.word	_Label_2029
	.word	-24
	.word	4
	.word	_Label_2030
	.word	-28
	.word	4
	.word	_Label_2031
	.word	-9
	.word	1
	.word	0
_Label_2024:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2025:
	.ascii	"Pself\0"
	.align
_Label_2026:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2031:
	.byte	'C'
	.ascii	"_temp_2017\0"
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
_Label_3322:
	push	r0
	sub	r1,1,r1
	bne	_Label_3322
	mov	1528,r13		! source line 1528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
!   _temp_2035 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2035 [entry ] into _temp_2036
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
!   Data Move: _temp_2034 = *_temp_2036  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2033 = _temp_2034 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2033) then goto _Label_2037
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2037
!   _temp_2032 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2038
_Label_2037:
!   _temp_2032 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2038:
!   ReturnResult: _temp_2032  (sizeInBytes=1)
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
	.word	_Label_2039
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2041
	.word	12
	.word	4
	.word	_Label_2042
	.word	-16
	.word	4
	.word	_Label_2043
	.word	-20
	.word	4
	.word	_Label_2044
	.word	-24
	.word	4
	.word	_Label_2045
	.word	-28
	.word	4
	.word	_Label_2046
	.word	-9
	.word	1
	.word	0
_Label_2039:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2040:
	.ascii	"Pself\0"
	.align
_Label_2041:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2046:
	.byte	'C'
	.ascii	"_temp_2032\0"
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
_Label_3323:
	push	r0
	sub	r1,1,r1
	bne	_Label_3323
	mov	1537,r13		! source line 1537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0RE",r10
!   _temp_2050 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2050 [entry ] into _temp_2051
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
!   Data Move: _temp_2049 = *_temp_2051  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2048 = _temp_2049 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2048) then goto _Label_2052
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2052
!   _temp_2047 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2053
_Label_2052:
!   _temp_2047 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2053:
!   ReturnResult: _temp_2047  (sizeInBytes=1)
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
	.word	_Label_2054
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2055
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2056
	.word	12
	.word	4
	.word	_Label_2057
	.word	-16
	.word	4
	.word	_Label_2058
	.word	-20
	.word	4
	.word	_Label_2059
	.word	-24
	.word	4
	.word	_Label_2060
	.word	-28
	.word	4
	.word	_Label_2061
	.word	-9
	.word	1
	.word	0
_Label_2054:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2055:
	.ascii	"Pself\0"
	.align
_Label_2056:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2061:
	.byte	'C'
	.ascii	"_temp_2047\0"
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
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
	mov	1546,r13		! source line 1546
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0RE",r10
!   _temp_2065 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2065 [entry ] into _temp_2066
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
!   Data Move: _temp_2064 = *_temp_2066  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2063 = _temp_2064 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2063) then goto _Label_2067
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2067
!   _temp_2062 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2068
_Label_2067:
!   _temp_2062 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2068:
!   ReturnResult: _temp_2062  (sizeInBytes=1)
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
	.word	_Label_2069
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2070
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2071
	.word	12
	.word	4
	.word	_Label_2072
	.word	-16
	.word	4
	.word	_Label_2073
	.word	-20
	.word	4
	.word	_Label_2074
	.word	-24
	.word	4
	.word	_Label_2075
	.word	-28
	.word	4
	.word	_Label_2076
	.word	-9
	.word	1
	.word	0
_Label_2069:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2070:
	.ascii	"Pself\0"
	.align
_Label_2071:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2076:
	.byte	'C'
	.ascii	"_temp_2062\0"
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
_Label_3325:
	push	r0
	sub	r1,1,r1
	bne	_Label_3325
	mov	1555,r13		! source line 1555
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0AS",r10
!   _temp_2077 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2077 [entry ] into _temp_2078
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
!   _temp_2081 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2081 [entry ] into _temp_2082
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
!   Data Move: _temp_2080 = *_temp_2082  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2079 = _temp_2080 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2078 = _temp_2079  (sizeInBytes=4)
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
	.word	_Label_2083
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2084
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2085
	.word	12
	.word	4
	.word	_Label_2086
	.word	-12
	.word	4
	.word	_Label_2087
	.word	-16
	.word	4
	.word	_Label_2088
	.word	-20
	.word	4
	.word	_Label_2089
	.word	-24
	.word	4
	.word	_Label_2090
	.word	-28
	.word	4
	.word	_Label_2091
	.word	-32
	.word	4
	.word	0
_Label_2083:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2084:
	.ascii	"Pself\0"
	.align
_Label_2085:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2082\0"
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
_Label_3326:
	push	r0
	sub	r1,1,r1
	bne	_Label_3326
	mov	1564,r13		! source line 1564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   _temp_2092 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2092 [entry ] into _temp_2093
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
!   _temp_2096 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2096 [entry ] into _temp_2097
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
!   Data Move: _temp_2095 = *_temp_2097  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2094 = _temp_2095 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2093 = _temp_2094  (sizeInBytes=4)
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
	.word	_Label_2098
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2100
	.word	12
	.word	4
	.word	_Label_2101
	.word	-12
	.word	4
	.word	_Label_2102
	.word	-16
	.word	4
	.word	_Label_2103
	.word	-20
	.word	4
	.word	_Label_2104
	.word	-24
	.word	4
	.word	_Label_2105
	.word	-28
	.word	4
	.word	_Label_2106
	.word	-32
	.word	4
	.word	0
_Label_2098:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2099:
	.ascii	"Pself\0"
	.align
_Label_2100:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2092\0"
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
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
	mov	1573,r13		! source line 1573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0AS",r10
!   _temp_2107 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2107 [entry ] into _temp_2108
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
!   _temp_2111 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2111 [entry ] into _temp_2112
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
!   Data Move: _temp_2110 = *_temp_2112  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2109 = _temp_2110 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2108 = _temp_2109  (sizeInBytes=4)
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
	.word	_Label_2113
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2115
	.word	12
	.word	4
	.word	_Label_2116
	.word	-12
	.word	4
	.word	_Label_2117
	.word	-16
	.word	4
	.word	_Label_2118
	.word	-20
	.word	4
	.word	_Label_2119
	.word	-24
	.word	4
	.word	_Label_2120
	.word	-28
	.word	4
	.word	_Label_2121
	.word	-32
	.word	4
	.word	0
_Label_2113:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2114:
	.ascii	"Pself\0"
	.align
_Label_2115:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2107\0"
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
_Label_3328:
	push	r0
	sub	r1,1,r1
	bne	_Label_3328
	mov	1582,r13		! source line 1582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0AS",r10
!   _temp_2122 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2122 [entry ] into _temp_2123
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
!   _temp_2126 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2126 [entry ] into _temp_2127
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
!   Data Move: _temp_2125 = *_temp_2127  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2124 = _temp_2125 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2123 = _temp_2124  (sizeInBytes=4)
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
	.word	_Label_2128
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2130
	.word	12
	.word	4
	.word	_Label_2131
	.word	-12
	.word	4
	.word	_Label_2132
	.word	-16
	.word	4
	.word	_Label_2133
	.word	-20
	.word	4
	.word	_Label_2134
	.word	-24
	.word	4
	.word	_Label_2135
	.word	-28
	.word	4
	.word	_Label_2136
	.word	-32
	.word	4
	.word	0
_Label_2128:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2129:
	.ascii	"Pself\0"
	.align
_Label_2130:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2122\0"
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
_Label_3329:
	push	r0
	sub	r1,1,r1
	bne	_Label_3329
	mov	1591,r13		! source line 1591
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0AS",r10
!   _temp_2137 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2137 [entry ] into _temp_2138
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
!   _temp_2141 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2141 [entry ] into _temp_2142
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
!   Data Move: _temp_2140 = *_temp_2142  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2139 = _temp_2140 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2138 = _temp_2139  (sizeInBytes=4)
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
	.word	_Label_2143
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2144
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2145
	.word	12
	.word	4
	.word	_Label_2146
	.word	-12
	.word	4
	.word	_Label_2147
	.word	-16
	.word	4
	.word	_Label_2148
	.word	-20
	.word	4
	.word	_Label_2149
	.word	-24
	.word	4
	.word	_Label_2150
	.word	-28
	.word	4
	.word	_Label_2151
	.word	-32
	.word	4
	.word	0
_Label_2143:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2144:
	.ascii	"Pself\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2137\0"
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
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	1600,r13		! source line 1600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0AS",r10
!   _temp_2152 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2152 [entry ] into _temp_2153
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
!   _temp_2156 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2156 [entry ] into _temp_2157
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
!   Data Move: _temp_2155 = *_temp_2157  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2154 = _temp_2155 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2153 = _temp_2154  (sizeInBytes=4)
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
	.word	_Label_2158
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2160
	.word	12
	.word	4
	.word	_Label_2161
	.word	-12
	.word	4
	.word	_Label_2162
	.word	-16
	.word	4
	.word	_Label_2163
	.word	-20
	.word	4
	.word	_Label_2164
	.word	-24
	.word	4
	.word	_Label_2165
	.word	-28
	.word	4
	.word	_Label_2166
	.word	-32
	.word	4
	.word	0
_Label_2158:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2159:
	.ascii	"Pself\0"
	.align
_Label_2160:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2152\0"
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
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	1609,r13		! source line 1609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   _temp_2167 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2167 [entry ] into _temp_2168
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
!   _temp_2171 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2171 [entry ] into _temp_2172
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
!   Data Move: _temp_2170 = *_temp_2172  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2169 = _temp_2170 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2168 = _temp_2169  (sizeInBytes=4)
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
	.word	_Label_2173
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2175
	.word	12
	.word	4
	.word	_Label_2176
	.word	-12
	.word	4
	.word	_Label_2177
	.word	-16
	.word	4
	.word	_Label_2178
	.word	-20
	.word	4
	.word	_Label_2179
	.word	-24
	.word	4
	.word	_Label_2180
	.word	-28
	.word	4
	.word	_Label_2181
	.word	-32
	.word	4
	.word	0
_Label_2173:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2174:
	.ascii	"Pself\0"
	.align
_Label_2175:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2167\0"
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
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	1618,r13		! source line 1618
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
!   _temp_2182 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2182 [entry ] into _temp_2183
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
!   _temp_2186 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2186 [entry ] into _temp_2187
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
!   Data Move: _temp_2185 = *_temp_2187  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2184 = _temp_2185 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2183 = _temp_2184  (sizeInBytes=4)
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
	.word	_Label_2188
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2190
	.word	12
	.word	4
	.word	_Label_2191
	.word	-12
	.word	4
	.word	_Label_2192
	.word	-16
	.word	4
	.word	_Label_2193
	.word	-20
	.word	4
	.word	_Label_2194
	.word	-24
	.word	4
	.word	_Label_2195
	.word	-28
	.word	4
	.word	_Label_2196
	.word	-32
	.word	4
	.word	0
_Label_2188:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2189:
	.ascii	"Pself\0"
	.align
_Label_2190:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2182\0"
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
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	1627,r13		! source line 1627
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2198 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2198 [0 ] into _temp_2199
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
!   _temp_2197 = _temp_2199		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2200 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2197  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2200  sizeInBytes=4
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
	.word	_Label_2201
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2202
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2203
	.word	-12
	.word	4
	.word	_Label_2204
	.word	-16
	.word	4
	.word	_Label_2205
	.word	-20
	.word	4
	.word	_Label_2206
	.word	-24
	.word	4
	.word	0
_Label_2201:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2202:
	.ascii	"Pself\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2197\0"
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
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
	mov	1638,r13		! source line 1638
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2207
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2207
	jmp	_Label_2208
_Label_2207:
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
	jmp	_Label_2209
_Label_2208:
! ELSE...
	mov	1655,r13		! source line 1655
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2211		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2211
!	jmp	_Label_2210
_Label_2210:
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
_Label_2211:
! END IF...
_Label_2209:
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
_Label_2212:
!	jmp	_Label_2213
_Label_2213:
	mov	1662,r13		! source line 1662
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2216		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2216
!	jmp	_Label_2215
_Label_2215:
! THEN...
	mov	1664,r13		! source line 1664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2217 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2217  sizeInBytes=4
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
_Label_2216:
! IF STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0IF",r10
	mov	1667,r13		! source line 1667
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2221) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2220  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2220 then goto _Label_2219 else goto _Label_2218
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2218
	jmp	_Label_2219
_Label_2218:
! THEN...
	mov	1668,r13		! source line 1668
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2222 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2222  sizeInBytes=4
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
_Label_2219:
! ASSIGNMENT STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0AS",r10
	mov	1671,r13		! source line 1671
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2224) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2223  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2223 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0WH",r10
_Label_2225:
!   if offset >= 8192 then goto _Label_2227		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2227
!	jmp	_Label_2226
_Label_2226:
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
!   Data Move: _temp_2228 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2228  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2230		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2230
!	jmp	_Label_2229
_Label_2229:
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
_Label_2230:
! END WHILE...
	jmp	_Label_2225
_Label_2227:
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
	jmp	_Label_2212
_Label_2214:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2231
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2232
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2233
	.word	12
	.word	4
	.word	_Label_2234
	.word	16
	.word	4
	.word	_Label_2235
	.word	20
	.word	4
	.word	_Label_2236
	.word	-9
	.word	1
	.word	_Label_2237
	.word	-16
	.word	4
	.word	_Label_2238
	.word	-20
	.word	4
	.word	_Label_2239
	.word	-24
	.word	4
	.word	_Label_2240
	.word	-28
	.word	4
	.word	_Label_2241
	.word	-10
	.word	1
	.word	_Label_2242
	.word	-32
	.word	4
	.word	_Label_2243
	.word	-36
	.word	4
	.word	_Label_2244
	.word	-40
	.word	4
	.word	_Label_2245
	.word	-44
	.word	4
	.word	_Label_2246
	.word	-48
	.word	4
	.word	0
_Label_2231:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2232:
	.ascii	"Pself\0"
	.align
_Label_2233:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2234:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2235:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2236:
	.byte	'C'
	.ascii	"_temp_2228\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2241:
	.byte	'C'
	.ascii	"_temp_2220\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2243:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2244:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2245:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2246:
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
_Label_3335:
	push	r0
	sub	r1,1,r1
	bne	_Label_3335
	mov	1692,r13		! source line 1692
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2247
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2247
	jmp	_Label_2248
_Label_2247:
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
	jmp	_Label_2249
_Label_2248:
! ELSE...
	mov	1705,r13		! source line 1705
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2251		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2251
!	jmp	_Label_2250
_Label_2250:
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
_Label_2251:
! END IF...
_Label_2249:
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
_Label_2252:
!	jmp	_Label_2253
_Label_2253:
	mov	1710,r13		! source line 1710
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2258		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2258
	jmp	_Label_2255
_Label_2258:
	mov	1712,r13		! source line 1712
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2260) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2259  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2259 then goto _Label_2257 else goto _Label_2255
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2255
	jmp	_Label_2257
_Label_2257:
	mov	1713,r13		! source line 1713
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2262) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2261  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2261 then goto _Label_2256 else goto _Label_2255
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2255
	jmp	_Label_2256
_Label_2255:
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
_Label_2256:
! ASSIGNMENT STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0AS",r10
	mov	1716,r13		! source line 1716
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2264) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2263  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2263 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0WH",r10
_Label_2265:
!   if offset >= 8192 then goto _Label_2267		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2267
!	jmp	_Label_2266
_Label_2266:
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
!   Data Move: _temp_2268 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2268  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2270		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2270
!	jmp	_Label_2269
_Label_2269:
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
_Label_2270:
! END WHILE...
	jmp	_Label_2265
_Label_2267:
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
	jmp	_Label_2252
_Label_2254:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2271
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2273
	.word	12
	.word	4
	.word	_Label_2274
	.word	16
	.word	4
	.word	_Label_2275
	.word	20
	.word	4
	.word	_Label_2276
	.word	-9
	.word	1
	.word	_Label_2277
	.word	-16
	.word	4
	.word	_Label_2278
	.word	-20
	.word	4
	.word	_Label_2279
	.word	-24
	.word	4
	.word	_Label_2280
	.word	-10
	.word	1
	.word	_Label_2281
	.word	-28
	.word	4
	.word	_Label_2282
	.word	-11
	.word	1
	.word	_Label_2283
	.word	-32
	.word	4
	.word	_Label_2284
	.word	-36
	.word	4
	.word	_Label_2285
	.word	-40
	.word	4
	.word	_Label_2286
	.word	-44
	.word	4
	.word	0
_Label_2271:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2272:
	.ascii	"Pself\0"
	.align
_Label_2273:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2274:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2275:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2276:
	.byte	'C'
	.ascii	"_temp_2268\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2280:
	.byte	'C'
	.ascii	"_temp_2261\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2282:
	.byte	'C'
	.ascii	"_temp_2259\0"
	.align
_Label_2283:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2284:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2285:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2286:
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
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
	mov	1734,r13		! source line 1734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0IF",r10
	mov	1758,r13		! source line 1758
	mov	"\0\0SE",r10
!   _temp_2290 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2291) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2290  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2289  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2289 >= 4 then goto _Label_2288		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2288
!	jmp	_Label_2287
_Label_2287:
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
_Label_2288:
! IF STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2293		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2293
!	jmp	_Label_2292
_Label_2292:
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
_Label_2293:
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
!   _temp_2296 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2295 = _temp_2296 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2297 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2298) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2295  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2297  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2294  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2294  (sizeInBytes=4)
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
	.word	_Label_2299
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2301
	.word	12
	.word	4
	.word	_Label_2302
	.word	16
	.word	4
	.word	_Label_2303
	.word	20
	.word	4
	.word	_Label_2304
	.word	-12
	.word	4
	.word	_Label_2305
	.word	-16
	.word	4
	.word	_Label_2306
	.word	-20
	.word	4
	.word	_Label_2307
	.word	-24
	.word	4
	.word	_Label_2308
	.word	-28
	.word	4
	.word	_Label_2309
	.word	-32
	.word	4
	.word	_Label_2310
	.word	-36
	.word	4
	.word	_Label_2311
	.word	-40
	.word	4
	.word	_Label_2312
	.word	-44
	.word	4
	.word	0
_Label_2299:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2300:
	.ascii	"Pself\0"
	.align
_Label_2301:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2302:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2303:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2312:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2313
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2313:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2314
	.word	_sourceFileName
	.word	339		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2314:
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
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
	mov	2228,r13		! source line 2228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2315 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2315  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2229,r13		! source line 2229
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
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
	mov	2237,r13		! source line 2237
	mov	"\0\0SE",r10
!   _temp_2317 = &semUsedInSynchMethods
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
	mov	2238,r13		! source line 2238
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
	mov	2239,r13		! source line 2239
	mov	"\0\0SE",r10
!   _temp_2319 = &diskBusy
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
	mov	2239,r13		! source line 2239
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
	.word	_Label_2320
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2321
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2322
	.word	-12
	.word	4
	.word	_Label_2323
	.word	-16
	.word	4
	.word	_Label_2324
	.word	-20
	.word	4
	.word	_Label_2325
	.word	-24
	.word	4
	.word	_Label_2326
	.word	-28
	.word	4
	.word	0
_Label_2320:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2321:
	.ascii	"Pself\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2315\0"
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
_Label_3338:
	push	r0
	sub	r1,1,r1
	bne	_Label_3338
	mov	2244,r13		! source line 2244
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0SE",r10
!   _temp_2327 = &diskBusy
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
	mov	2258,r13		! source line 2258
	mov	"\0\0WH",r10
_Label_2328:
!	jmp	_Label_2329
_Label_2329:
	mov	2258,r13		! source line 2258
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0SE",r10
!   _temp_2331 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2332) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2331  sizeInBytes=4
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
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_2333 = &semUsedInSynchMethods
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
	mov	2265,r13		! source line 2265
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2342 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2336
	cmp	r1,2
	be	_Label_2337
	cmp	r1,3
	be	_Label_2338
	cmp	r1,4
	be	_Label_2339
	cmp	r1,5
	be	_Label_2340
	cmp	r1,6
	be	_Label_2341
	jmp	_Label_2334
! CASE 1...
_Label_2336:
! SEND STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0SE",r10
!   _temp_2343 = &diskBusy
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
	mov	2268,r13		! source line 2268
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2337:
! CALL STATEMENT...
!   _temp_2344 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2344  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2270,r13		! source line 2270
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2338:
! CALL STATEMENT...
!   _temp_2345 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2345  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2272,r13		! source line 2272
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2339:
! CALL STATEMENT...
!   _temp_2346 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2346  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2274,r13		! source line 2274
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2340:
! BREAK STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0BR",r10
	jmp	_Label_2335
! CASE 6...
_Label_2341:
! CALL STATEMENT...
!   _temp_2347 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2347  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2280,r13		! source line 2280
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2334:
! CALL STATEMENT...
!   _temp_2348 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2348  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2282,r13		! source line 2282
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2335:
! END WHILE...
	jmp	_Label_2328
_Label_2330:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2349
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2350
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2351
	.word	12
	.word	4
	.word	_Label_2352
	.word	16
	.word	4
	.word	_Label_2353
	.word	20
	.word	4
	.word	_Label_2354
	.word	-12
	.word	4
	.word	_Label_2355
	.word	-16
	.word	4
	.word	_Label_2356
	.word	-20
	.word	4
	.word	_Label_2357
	.word	-24
	.word	4
	.word	_Label_2358
	.word	-28
	.word	4
	.word	_Label_2359
	.word	-32
	.word	4
	.word	_Label_2360
	.word	-36
	.word	4
	.word	_Label_2361
	.word	-40
	.word	4
	.word	_Label_2362
	.word	-44
	.word	4
	.word	_Label_2363
	.word	-48
	.word	4
	.word	_Label_2364
	.word	-52
	.word	4
	.word	0
_Label_2349:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2350:
	.ascii	"Pself\0"
	.align
_Label_2351:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2352:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2353:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2327\0"
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
	mov	2291,r13		! source line 2291
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
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
	mov	2310,r13		! source line 2310
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
	mov	2311,r13		! source line 2311
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
	mov	2312,r13		! source line 2312
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
	mov	2312,r13		! source line 2312
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
	.word	_Label_2365
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2366
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2367
	.word	12
	.word	4
	.word	_Label_2368
	.word	16
	.word	4
	.word	_Label_2369
	.word	20
	.word	4
	.word	_Label_2370
	.word	24
	.word	4
	.word	0
_Label_2365:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2366:
	.ascii	"Pself\0"
	.align
_Label_2367:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2368:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2369:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2370:
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
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	2317,r13		! source line 2317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   _temp_2371 = &diskBusy
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
	mov	2330,r13		! source line 2330
	mov	"\0\0WH",r10
_Label_2372:
!	jmp	_Label_2373
_Label_2373:
	mov	2330,r13		! source line 2330
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2375 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2376) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2375  sizeInBytes=4
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
	mov	2333,r13		! source line 2333
	mov	"\0\0SE",r10
!   _temp_2377 = &semUsedInSynchMethods
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
	mov	2336,r13		! source line 2336
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2386 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2380
	cmp	r1,2
	be	_Label_2381
	cmp	r1,3
	be	_Label_2382
	cmp	r1,4
	be	_Label_2383
	cmp	r1,5
	be	_Label_2384
	cmp	r1,6
	be	_Label_2385
	jmp	_Label_2378
! CASE 1...
_Label_2380:
! SEND STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0SE",r10
!   _temp_2387 = &diskBusy
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
	mov	2339,r13		! source line 2339
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2381:
! CALL STATEMENT...
!   _temp_2388 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2388  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2341,r13		! source line 2341
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2382:
! CALL STATEMENT...
!   _temp_2389 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2389  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2343,r13		! source line 2343
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2383:
! CALL STATEMENT...
!   _temp_2390 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2390  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2345,r13		! source line 2345
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2384:
! BREAK STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0BR",r10
	jmp	_Label_2379
! CASE 6...
_Label_2385:
! CALL STATEMENT...
!   _temp_2391 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2391  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2351,r13		! source line 2351
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2378:
! CALL STATEMENT...
!   _temp_2392 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2392  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2353,r13		! source line 2353
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2379:
! END WHILE...
	jmp	_Label_2372
_Label_2374:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2393
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2394
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2395
	.word	12
	.word	4
	.word	_Label_2396
	.word	16
	.word	4
	.word	_Label_2397
	.word	20
	.word	4
	.word	_Label_2398
	.word	-12
	.word	4
	.word	_Label_2399
	.word	-16
	.word	4
	.word	_Label_2400
	.word	-20
	.word	4
	.word	_Label_2401
	.word	-24
	.word	4
	.word	_Label_2402
	.word	-28
	.word	4
	.word	_Label_2403
	.word	-32
	.word	4
	.word	_Label_2404
	.word	-36
	.word	4
	.word	_Label_2405
	.word	-40
	.word	4
	.word	_Label_2406
	.word	-44
	.word	4
	.word	_Label_2407
	.word	-48
	.word	4
	.word	_Label_2408
	.word	-52
	.word	4
	.word	0
_Label_2393:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2394:
	.ascii	"Pself\0"
	.align
_Label_2395:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2396:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2397:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2371\0"
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
	mov	2362,r13		! source line 2362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
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
	mov	2380,r13		! source line 2380
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
	mov	2381,r13		! source line 2381
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
	mov	2382,r13		! source line 2382
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
	mov	2382,r13		! source line 2382
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
	.word	_Label_2409
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2411
	.word	12
	.word	4
	.word	_Label_2412
	.word	16
	.word	4
	.word	_Label_2413
	.word	20
	.word	4
	.word	_Label_2414
	.word	24
	.word	4
	.word	0
_Label_2409:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2410:
	.ascii	"Pself\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2412:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2414:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2415
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
_Label_2415:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2416
	.word	_sourceFileName
	.word	362		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2416:
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
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
	mov	2393,r13		! source line 2393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2417 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2417  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2400,r13		! source line 2400
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2401,r13		! source line 2401
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
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_2419 = &fileManagerLock
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
	mov	2405,r13		! source line 2405
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
	mov	2406,r13		! source line 2406
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
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_2422 = &anFCBBecameFree
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
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   _temp_2423 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2425 = &_temp_2424
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2425 = _temp_2425 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2427 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3341:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3341
!   _temp_2427 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2429:
!   Data Move: *_temp_2425 = _temp_2427  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3342:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3342
!   _temp_2425 = _temp_2425 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2426 = _temp_2426 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2426) then goto _Label_2429
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2429
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2430 = &_temp_2424
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3343
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3343:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2423 = *_temp_2430  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3344:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3344
! FOR STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2435 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2436 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2435  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2431:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2436 then goto _Label_2434		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2434
_Label_2432:
	mov	2410,r13		! source line 2410
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   _temp_2437 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2437 [i ] into _temp_2438
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
!   _temp_2439 = _temp_2438 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2439 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_2440 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2440 [i ] into _temp_2441
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
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2443 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2443 [i ] into _temp_2444
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
!   _temp_2442 = _temp_2444		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2445 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2442  sizeInBytes=4
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
_Label_2433:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2431
! END FOR
_Label_2434:
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
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
	mov	2418,r13		! source line 2418
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
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2448 = &anOpenFileBecameFree
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
	mov	2420,r13		! source line 2420
	mov	"\0\0AS",r10
!   _temp_2449 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2451 = &_temp_2450
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2451 = _temp_2451 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2453 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3345:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3345
!   _temp_2453 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2455:
!   Data Move: *_temp_2451 = _temp_2453  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3346:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3346
!   _temp_2451 = _temp_2451 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2452 = _temp_2452 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2452) then goto _Label_2455
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2455
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2456 = &_temp_2450
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3347
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3347:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2449 = *_temp_2456  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3348:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3348
! FOR STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2461 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2462 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2461  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2457:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2462 then goto _Label_2460		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2460
_Label_2458:
	mov	2422,r13		! source line 2422
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   _temp_2463 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2463 [i ] into _temp_2464
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
!   _temp_2465 = _temp_2464 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2465 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_2467 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2467 [i ] into _temp_2468
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
!   _temp_2466 = _temp_2468		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2469 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2466  sizeInBytes=4
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
_Label_2459:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2457
! END FOR
_Label_2460:
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3349:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3349
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   _temp_2471 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2472 = _temp_2471 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2472 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_2473 = &_P_Kernel_frameManager
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
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   _temp_2474 = &_P_Kernel_diskDriver
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
	mov	2435,r13		! source line 2435
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
	.word	_Label_2475
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2476
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2477
	.word	-12
	.word	4
	.word	_Label_2478
	.word	-16
	.word	4
	.word	_Label_2479
	.word	-20
	.word	4
	.word	_Label_2480
	.word	-24
	.word	4
	.word	_Label_2481
	.word	-28
	.word	4
	.word	_Label_2482
	.word	-32
	.word	4
	.word	_Label_2483
	.word	-36
	.word	4
	.word	_Label_2484
	.word	-40
	.word	4
	.word	_Label_2485
	.word	-44
	.word	4
	.word	_Label_2486
	.word	-48
	.word	4
	.word	_Label_2487
	.word	-52
	.word	4
	.word	_Label_2488
	.word	-56
	.word	4
	.word	_Label_2489
	.word	-60
	.word	4
	.word	_Label_2490
	.word	-64
	.word	4
	.word	_Label_2491
	.word	-68
	.word	4
	.word	_Label_2492
	.word	-72
	.word	4
	.word	_Label_2493
	.word	-100
	.word	28
	.word	_Label_2494
	.word	-104
	.word	4
	.word	_Label_2495
	.word	-108
	.word	4
	.word	_Label_2496
	.word	-392
	.word	284
	.word	_Label_2497
	.word	-396
	.word	4
	.word	_Label_2498
	.word	-400
	.word	4
	.word	_Label_2499
	.word	-404
	.word	4
	.word	_Label_2500
	.word	-408
	.word	4
	.word	_Label_2501
	.word	-412
	.word	4
	.word	_Label_2502
	.word	-416
	.word	4
	.word	_Label_2503
	.word	-420
	.word	4
	.word	_Label_2504
	.word	-424
	.word	4
	.word	_Label_2505
	.word	-428
	.word	4
	.word	_Label_2506
	.word	-432
	.word	4
	.word	_Label_2507
	.word	-436
	.word	4
	.word	_Label_2508
	.word	-440
	.word	4
	.word	_Label_2509
	.word	-444
	.word	4
	.word	_Label_2510
	.word	-448
	.word	4
	.word	_Label_2511
	.word	-452
	.word	4
	.word	_Label_2512
	.word	-456
	.word	4
	.word	_Label_2513
	.word	-460
	.word	4
	.word	_Label_2514
	.word	-500
	.word	40
	.word	_Label_2515
	.word	-504
	.word	4
	.word	_Label_2516
	.word	-508
	.word	4
	.word	_Label_2517
	.word	-912
	.word	404
	.word	_Label_2518
	.word	-916
	.word	4
	.word	_Label_2519
	.word	-920
	.word	4
	.word	_Label_2520
	.word	-924
	.word	4
	.word	_Label_2521
	.word	-928
	.word	4
	.word	_Label_2522
	.word	-932
	.word	4
	.word	_Label_2523
	.word	-936
	.word	4
	.word	_Label_2524
	.word	-940
	.word	4
	.word	_Label_2525
	.word	-944
	.word	4
	.word	0
_Label_2475:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2476:
	.ascii	"Pself\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2525:
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
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
	mov	2442,r13		! source line 2442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0SE",r10
!   _temp_2526 = &fileManagerLock
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
!   _temp_2527 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2527  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2445,r13		! source line 2445
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2532 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2533 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2532  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2528:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2533 then goto _Label_2531		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2531
_Label_2529:
	mov	2446,r13		! source line 2446
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2534 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2534  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2447,r13		! source line 2447
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2448,r13		! source line 2448
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2535 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2535  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2449,r13		! source line 2449
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0SE",r10
!   _temp_2536 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2536 [i ] into _temp_2537
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
_Label_2530:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2528
! END FOR
_Label_2531:
! CALL STATEMENT...
!   _temp_2538 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2538  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2452,r13		! source line 2452
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_2539 = _function_226_printFCB
	set	_function_226_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2540 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2539  sizeInBytes=4
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
	mov	2454,r13		! source line 2454
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2541 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2541  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2455,r13		! source line 2455
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2546 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2547 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2546  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2542:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2547 then goto _Label_2545		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2545
_Label_2543:
	mov	2456,r13		! source line 2456
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2548 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2548  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2457,r13		! source line 2457
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2458,r13		! source line 2458
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2549 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2459,r13		! source line 2459
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2551 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2551 [i ] into _temp_2552
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
!   _temp_2550 = _temp_2552		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2460,r13		! source line 2460
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2553 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2553  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2461,r13		! source line 2461
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_2554 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2554 [i ] into _temp_2555
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
_Label_2544:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2542
! END FOR
_Label_2545:
! CALL STATEMENT...
!   _temp_2556 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2556  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2464,r13		! source line 2464
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_2557 = _function_225_printOpen
	set	_function_225_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2558 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2557  sizeInBytes=4
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
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
!   _temp_2559 = &fileManagerLock
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
	mov	2466,r13		! source line 2466
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
	.word	_Label_2560
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2561
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2562
	.word	-12
	.word	4
	.word	_Label_2563
	.word	-16
	.word	4
	.word	_Label_2564
	.word	-20
	.word	4
	.word	_Label_2565
	.word	-24
	.word	4
	.word	_Label_2566
	.word	-28
	.word	4
	.word	_Label_2567
	.word	-32
	.word	4
	.word	_Label_2568
	.word	-36
	.word	4
	.word	_Label_2569
	.word	-40
	.word	4
	.word	_Label_2570
	.word	-44
	.word	4
	.word	_Label_2571
	.word	-48
	.word	4
	.word	_Label_2572
	.word	-52
	.word	4
	.word	_Label_2573
	.word	-56
	.word	4
	.word	_Label_2574
	.word	-60
	.word	4
	.word	_Label_2575
	.word	-64
	.word	4
	.word	_Label_2576
	.word	-68
	.word	4
	.word	_Label_2577
	.word	-72
	.word	4
	.word	_Label_2578
	.word	-76
	.word	4
	.word	_Label_2579
	.word	-80
	.word	4
	.word	_Label_2580
	.word	-84
	.word	4
	.word	_Label_2581
	.word	-88
	.word	4
	.word	_Label_2582
	.word	-92
	.word	4
	.word	_Label_2583
	.word	-96
	.word	4
	.word	_Label_2584
	.word	-100
	.word	4
	.word	_Label_2585
	.word	-104
	.word	4
	.word	_Label_2586
	.word	-108
	.word	4
	.word	_Label_2587
	.word	-112
	.word	4
	.word	_Label_2588
	.word	-116
	.word	4
	.word	0
_Label_2560:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2561:
	.ascii	"Pself\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2588:
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
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
	mov	2471,r13		! source line 2471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_2589 = &_P_Kernel_fileManager
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
	mov	2488,r13		! source line 2488
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2590
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2590
	jmp	_Label_2591
_Label_2590:
! THEN...
	mov	2489,r13		! source line 2489
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2591:
! SEND STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0SE",r10
!   _temp_2592 = &fileManagerLock
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
	mov	2494,r13		! source line 2494
	mov	"\0\0WH",r10
_Label_2593:
	mov	2494,r13		! source line 2494
	mov	"\0\0SE",r10
!   _temp_2596 = &openFileFreeList
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
!   if result==true then goto _Label_2594 else goto _Label_2595
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2595
	jmp	_Label_2594
_Label_2594:
	mov	2494,r13		! source line 2494
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_2597 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2598 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2597  sizeInBytes=4
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
	jmp	_Label_2593
_Label_2595:
! ASSIGNMENT STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0AS",r10
	mov	2497,r13		! source line 2497
	mov	"\0\0SE",r10
!   _temp_2599 = &openFileFreeList
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
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2600 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2600 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2601 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2601 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2602 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2602 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
!   _temp_2603 = &fileManagerLock
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
	mov	2507,r13		! source line 2507
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
	.word	_Label_2604
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2605
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2606
	.word	12
	.word	4
	.word	_Label_2607
	.word	-12
	.word	4
	.word	_Label_2608
	.word	-16
	.word	4
	.word	_Label_2609
	.word	-20
	.word	4
	.word	_Label_2610
	.word	-24
	.word	4
	.word	_Label_2611
	.word	-28
	.word	4
	.word	_Label_2612
	.word	-32
	.word	4
	.word	_Label_2613
	.word	-36
	.word	4
	.word	_Label_2614
	.word	-40
	.word	4
	.word	_Label_2615
	.word	-44
	.word	4
	.word	_Label_2616
	.word	-48
	.word	4
	.word	_Label_2617
	.word	-52
	.word	4
	.word	_Label_2618
	.word	-56
	.word	4
	.word	0
_Label_2604:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2605:
	.ascii	"Pself\0"
	.align
_Label_2606:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2617:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2618:
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
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
	mov	2512,r13		! source line 2512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
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
	mov	2541,r13		! source line 2541
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2620		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2620
!	jmp	_Label_2619
_Label_2619:
! THEN...
	mov	2543,r13		! source line 2543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2621 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2621  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2543,r13		! source line 2543
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2620:
! ASSIGNMENT STATEMENT...
	mov	2547,r13		! source line 2547
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
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
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
	mov	2550,r13		! source line 2550
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0WH",r10
_Label_2622:
!   if numFiles <= 0 then goto _Label_2624		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2624
!	jmp	_Label_2623
_Label_2623:
	mov	2553,r13		! source line 2553
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2625 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2625  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2554,r13		! source line 2554
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2626 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2626  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2556,r13		! source line 2556
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2627 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2627  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2558,r13		! source line 2558
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2631 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2631 then goto _Label_2629		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2629
!	jmp	_Label_2630
_Label_2630:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2633
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
!   _temp_2632 = _temp_2633		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2632  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2561,r13		! source line 2561
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2628 else goto _Label_2629
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2629
	jmp	_Label_2628
_Label_2628:
! THEN...
	mov	2562,r13		! source line 2562
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0BR",r10
	jmp	_Label_2624
! END IF...
_Label_2629:
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2622
_Label_2624:
! IF STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2635		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2635
!	jmp	_Label_2634
_Label_2634:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2635:
! SEND STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_2636 = &fileManagerLock
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
	mov	2575,r13		! source line 2575
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2641 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2642 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2641  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2637:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2642 then goto _Label_2640		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2640
_Label_2638:
	mov	2575,r13		! source line 2575
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
!   _temp_2643 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2643 [i ] into _temp_2644
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
!   fcb = _temp_2644		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2648 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2647 = *_temp_2648  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2647 != start then goto _Label_2646		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2646
!	jmp	_Label_2645
_Label_2645:
! THEN...
	mov	2578,r13		! source line 2578
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2649 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2652 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2651 = *_temp_2652  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2650 = _temp_2651 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2649 = _temp_2650  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0SE",r10
!   _temp_2653 = &fileManagerLock
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
	mov	2580,r13		! source line 2580
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2646:
!   Increment the FOR-LOOP index variable and jump back
_Label_2639:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2637
! END FOR
_Label_2640:
! WHILE STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0WH",r10
_Label_2654:
	mov	2585,r13		! source line 2585
	mov	"\0\0SE",r10
!   _temp_2657 = &fcbFreeList
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
!   if result==true then goto _Label_2655 else goto _Label_2656
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2656
	jmp	_Label_2655
_Label_2655:
	mov	2585,r13		! source line 2585
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0SE",r10
!   _temp_2658 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2659 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2658  sizeInBytes=4
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
	jmp	_Label_2654
_Label_2656:
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
	mov	2588,r13		! source line 2588
	mov	"\0\0SE",r10
!   _temp_2660 = &fcbFreeList
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
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_2661 = &fileManagerLock
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
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2662 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2662 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2663 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2663 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2664 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2664 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2669 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2668 = *_temp_2669  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2668 < 0 then goto _Label_2667		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2667
	jmp	_Label_2665
_Label_2667:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2670 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2670 ) then goto _Label_2666		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2666
!	jmp	_Label_2665
_Label_2665:
! THEN...
	mov	2598,r13		! source line 2598
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2671 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2671  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2598,r13		! source line 2598
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2666:
! RETURN STATEMENT...
	mov	2600,r13		! source line 2600
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
	.word	_Label_2672
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2673
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2674
	.word	12
	.word	4
	.word	_Label_2675
	.word	-12
	.word	4
	.word	_Label_2676
	.word	-16
	.word	4
	.word	_Label_2677
	.word	-20
	.word	4
	.word	_Label_2678
	.word	-24
	.word	4
	.word	_Label_2679
	.word	-28
	.word	4
	.word	_Label_2680
	.word	-32
	.word	4
	.word	_Label_2681
	.word	-36
	.word	4
	.word	_Label_2682
	.word	-40
	.word	4
	.word	_Label_2683
	.word	-44
	.word	4
	.word	_Label_2684
	.word	-48
	.word	4
	.word	_Label_2685
	.word	-52
	.word	4
	.word	_Label_2686
	.word	-56
	.word	4
	.word	_Label_2687
	.word	-60
	.word	4
	.word	_Label_2688
	.word	-64
	.word	4
	.word	_Label_2689
	.word	-68
	.word	4
	.word	_Label_2690
	.word	-72
	.word	4
	.word	_Label_2691
	.word	-76
	.word	4
	.word	_Label_2692
	.word	-80
	.word	4
	.word	_Label_2693
	.word	-84
	.word	4
	.word	_Label_2694
	.word	-88
	.word	4
	.word	_Label_2695
	.word	-92
	.word	4
	.word	_Label_2696
	.word	-96
	.word	4
	.word	_Label_2697
	.word	-100
	.word	4
	.word	_Label_2698
	.word	-104
	.word	4
	.word	_Label_2699
	.word	-108
	.word	4
	.word	_Label_2700
	.word	-112
	.word	4
	.word	_Label_2701
	.word	-116
	.word	4
	.word	_Label_2702
	.word	-120
	.word	4
	.word	_Label_2703
	.word	-124
	.word	4
	.word	_Label_2704
	.word	-128
	.word	4
	.word	_Label_2705
	.word	-132
	.word	4
	.word	_Label_2706
	.word	-136
	.word	4
	.word	_Label_2707
	.word	-140
	.word	4
	.word	_Label_2708
	.word	-144
	.word	4
	.word	_Label_2709
	.word	-148
	.word	4
	.word	_Label_2710
	.word	-152
	.word	4
	.word	_Label_2711
	.word	-156
	.word	4
	.word	_Label_2712
	.word	-160
	.word	4
	.word	0
_Label_2672:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2673:
	.ascii	"Pself\0"
	.align
_Label_2674:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2706:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2707:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2708:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2709:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2710:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2711:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2712:
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
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
	mov	2613,r13		! source line 2613
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0IF",r10
!   _temp_2715 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2715 then goto _Label_2714		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2714
!	jmp	_Label_2713
_Label_2713:
! THEN...
	mov	2616,r13		! source line 2616
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2714:
! SEND STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
!   _temp_2716 = &fileManagerLock
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
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_2717 = &_P_Kernel_fileManager
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
	mov	2620,r13		! source line 2620
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2718 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2718  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2719 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2722 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2721 = *_temp_2722  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2720 = _temp_2721 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2719 = _temp_2720  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2726 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2725 = *_temp_2726  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2725 > 0 then goto _Label_2724		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2724
!	jmp	_Label_2723
_Label_2723:
! THEN...
	mov	2623,r13		! source line 2623
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   _temp_2727 = &openFileFreeList
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
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_2728 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2729 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2728  sizeInBytes=4
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
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2730 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2733 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2732 = *_temp_2733  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2731 = _temp_2732 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2730 = _temp_2731  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2737 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2736 = *_temp_2737  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2736 > 0 then goto _Label_2735		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2735
!	jmp	_Label_2734
_Label_2734:
! THEN...
	mov	2627,r13		! source line 2627
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
!   _temp_2738 = &fcbFreeList
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
	mov	2628,r13		! source line 2628
	mov	"\0\0SE",r10
!   _temp_2739 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2740 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2739  sizeInBytes=4
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
_Label_2735:
! END IF...
_Label_2724:
! SEND STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0SE",r10
!   _temp_2741 = &fileManagerLock
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
	mov	2631,r13		! source line 2631
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
	.word	_Label_2742
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2744
	.word	12
	.word	4
	.word	_Label_2745
	.word	-12
	.word	4
	.word	_Label_2746
	.word	-16
	.word	4
	.word	_Label_2747
	.word	-20
	.word	4
	.word	_Label_2748
	.word	-24
	.word	4
	.word	_Label_2749
	.word	-28
	.word	4
	.word	_Label_2750
	.word	-32
	.word	4
	.word	_Label_2751
	.word	-36
	.word	4
	.word	_Label_2752
	.word	-40
	.word	4
	.word	_Label_2753
	.word	-44
	.word	4
	.word	_Label_2754
	.word	-48
	.word	4
	.word	_Label_2755
	.word	-52
	.word	4
	.word	_Label_2756
	.word	-56
	.word	4
	.word	_Label_2757
	.word	-60
	.word	4
	.word	_Label_2758
	.word	-64
	.word	4
	.word	_Label_2759
	.word	-68
	.word	4
	.word	_Label_2760
	.word	-72
	.word	4
	.word	_Label_2761
	.word	-76
	.word	4
	.word	_Label_2762
	.word	-80
	.word	4
	.word	_Label_2763
	.word	-84
	.word	4
	.word	_Label_2764
	.word	-88
	.word	4
	.word	_Label_2765
	.word	-92
	.word	4
	.word	_Label_2766
	.word	-96
	.word	4
	.word	_Label_2767
	.word	-100
	.word	4
	.word	_Label_2768
	.word	-104
	.word	4
	.word	0
_Label_2742:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2743:
	.ascii	"Pself\0"
	.align
_Label_2744:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2768:
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
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
	mov	2636,r13		! source line 2636
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2772 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2771 = *_temp_2772  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2771) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2773 = _temp_2771 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2773 ) then goto _Label_2770		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2770
!	jmp	_Label_2769
_Label_2769:
! THEN...
	mov	2642,r13		! source line 2642
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2778 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2777 = *_temp_2778  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2777) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2779 = _temp_2777 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2776 = *_temp_2779  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2776 >= 0 then goto _Label_2775		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2775
!	jmp	_Label_2774
_Label_2774:
! THEN...
	mov	2643,r13		! source line 2643
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2780 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2780  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2643,r13		! source line 2643
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2775:
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2782 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2781 = *_temp_2782  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2781) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2783 = _temp_2781 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2783 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2787 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2786 = *_temp_2787  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2786) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2788 = _temp_2786 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2785 = *_temp_2788  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2791 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2790 = *_temp_2791  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2790) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2792 = _temp_2790 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2789 = *_temp_2792  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2784 = _temp_2785 + _temp_2789		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2795 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2794 = *_temp_2795  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2794) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2796 = _temp_2794 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2793 = *_temp_2796  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2797 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2784  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2793  sizeInBytes=4
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
_Label_2770:
! RETURN STATEMENT...
	mov	2641,r13		! source line 2641
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
	.word	_Label_2798
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2800
	.word	12
	.word	4
	.word	_Label_2801
	.word	-12
	.word	4
	.word	_Label_2802
	.word	-16
	.word	4
	.word	_Label_2803
	.word	-20
	.word	4
	.word	_Label_2804
	.word	-24
	.word	4
	.word	_Label_2805
	.word	-28
	.word	4
	.word	_Label_2806
	.word	-32
	.word	4
	.word	_Label_2807
	.word	-36
	.word	4
	.word	_Label_2808
	.word	-40
	.word	4
	.word	_Label_2809
	.word	-44
	.word	4
	.word	_Label_2810
	.word	-48
	.word	4
	.word	_Label_2811
	.word	-52
	.word	4
	.word	_Label_2812
	.word	-56
	.word	4
	.word	_Label_2813
	.word	-60
	.word	4
	.word	_Label_2814
	.word	-64
	.word	4
	.word	_Label_2815
	.word	-68
	.word	4
	.word	_Label_2816
	.word	-72
	.word	4
	.word	_Label_2817
	.word	-76
	.word	4
	.word	_Label_2818
	.word	-80
	.word	4
	.word	_Label_2819
	.word	-84
	.word	4
	.word	_Label_2820
	.word	-88
	.word	4
	.word	_Label_2821
	.word	-92
	.word	4
	.word	_Label_2822
	.word	-96
	.word	4
	.word	_Label_2823
	.word	-100
	.word	4
	.word	_Label_2824
	.word	-104
	.word	4
	.word	_Label_2825
	.word	-108
	.word	4
	.word	0
_Label_2798:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2799:
	.ascii	"Pself\0"
	.align
_Label_2800:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2771\0"
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	2655,r13		! source line 2655
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0SE",r10
!   _temp_2826 = &fileManagerLock
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
	mov	2671,r13		! source line 2671
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2832		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2832
!   _temp_2831 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2833
_Label_2832:
!   _temp_2831 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2833:
!   if _temp_2831 then goto _Label_2830 else goto _Label_2827
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2827
	jmp	_Label_2830
_Label_2830:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2836 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2835 = *_temp_2836  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2835 == 0 then goto _Label_2837		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2837
!   _temp_2834 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2838
_Label_2837:
!   _temp_2834 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2838:
!   if _temp_2834 then goto _Label_2829 else goto _Label_2827
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2827
	jmp	_Label_2829
_Label_2829:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2841 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2840 = *_temp_2841  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2840) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2842 = _temp_2840 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2839 = *_temp_2842  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2839 >= 0 then goto _Label_2828		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2828
!	jmp	_Label_2827
_Label_2827:
! THEN...
	mov	2672,r13		! source line 2672
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2843 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2843  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2672,r13		! source line 2672
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2828:
! ASSIGNMENT STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2844 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2844  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0WH",r10
_Label_2845:
!   if numBytes <= 0 then goto _Label_2847		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2847
!	jmp	_Label_2846
_Label_2846:
	mov	2675,r13		! source line 2675
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
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
	mov	2685,r13		! source line 2685
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
	mov	2689,r13		! source line 2689
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2851 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2850 = *_temp_2851  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2850 == sector then goto _Label_2849		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2849
!	jmp	_Label_2848
_Label_2848:
! THEN...
	mov	2690,r13		! source line 2690
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2852) then goto _runtimeErrorNullPointer
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
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2855 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2854 = *_temp_2855  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2853 = sector + _temp_2854		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2857 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2856 = *_temp_2857  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2858 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2853  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2856  sizeInBytes=4
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
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2859 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2859 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2860 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2860 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2849:
! ASSIGNMENT STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2862 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2861 = *_temp_2862  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2861 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0AS",r10
!   _temp_2863 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2863  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2699,r13		! source line 2699
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
	mov	2703,r13		! source line 2703
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2845
_Label_2847:
! SEND STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0SE",r10
!   _temp_2864 = &fileManagerLock
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
	mov	2714,r13		! source line 2714
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
	.word	_Label_2865
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2867
	.word	12
	.word	4
	.word	_Label_2868
	.word	16
	.word	4
	.word	_Label_2869
	.word	20
	.word	4
	.word	_Label_2870
	.word	24
	.word	4
	.word	_Label_2871
	.word	-16
	.word	4
	.word	_Label_2872
	.word	-20
	.word	4
	.word	_Label_2873
	.word	-24
	.word	4
	.word	_Label_2874
	.word	-28
	.word	4
	.word	_Label_2875
	.word	-32
	.word	4
	.word	_Label_2876
	.word	-36
	.word	4
	.word	_Label_2877
	.word	-40
	.word	4
	.word	_Label_2878
	.word	-44
	.word	4
	.word	_Label_2879
	.word	-48
	.word	4
	.word	_Label_2880
	.word	-52
	.word	4
	.word	_Label_2881
	.word	-56
	.word	4
	.word	_Label_2882
	.word	-60
	.word	4
	.word	_Label_2883
	.word	-64
	.word	4
	.word	_Label_2884
	.word	-68
	.word	4
	.word	_Label_2885
	.word	-72
	.word	4
	.word	_Label_2886
	.word	-76
	.word	4
	.word	_Label_2887
	.word	-80
	.word	4
	.word	_Label_2888
	.word	-84
	.word	4
	.word	_Label_2889
	.word	-88
	.word	4
	.word	_Label_2890
	.word	-92
	.word	4
	.word	_Label_2891
	.word	-96
	.word	4
	.word	_Label_2892
	.word	-100
	.word	4
	.word	_Label_2893
	.word	-104
	.word	4
	.word	_Label_2894
	.word	-9
	.word	1
	.word	_Label_2895
	.word	-10
	.word	1
	.word	_Label_2896
	.word	-108
	.word	4
	.word	_Label_2897
	.word	-112
	.word	4
	.word	_Label_2898
	.word	-116
	.word	4
	.word	_Label_2899
	.word	-120
	.word	4
	.word	_Label_2900
	.word	-124
	.word	4
	.word	_Label_2901
	.word	-128
	.word	4
	.word	0
_Label_2865:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2866:
	.ascii	"Pself\0"
	.align
_Label_2867:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2868:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2870:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2894:
	.byte	'C'
	.ascii	"_temp_2834\0"
	.align
_Label_2895:
	.byte	'C'
	.ascii	"_temp_2831\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2897:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2898:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2899:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2900:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2901:
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	2719,r13		! source line 2719
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0SE",r10
!   _temp_2902 = &fileManagerLock
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
	mov	2736,r13		! source line 2736
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2908		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2908
!   _temp_2907 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2909
_Label_2908:
!   _temp_2907 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2909:
!   if _temp_2907 then goto _Label_2906 else goto _Label_2903
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2903
	jmp	_Label_2906
_Label_2906:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2912 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2911 = *_temp_2912  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2911 == 0 then goto _Label_2913		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2913
!   _temp_2910 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2914
_Label_2913:
!   _temp_2910 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2914:
!   if _temp_2910 then goto _Label_2905 else goto _Label_2903
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2903
	jmp	_Label_2905
_Label_2905:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2917 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2916 = *_temp_2917  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2916) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2918 = _temp_2916 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2915 = *_temp_2918  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2915 >= 0 then goto _Label_2904		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2904
!	jmp	_Label_2903
_Label_2903:
! THEN...
	mov	2737,r13		! source line 2737
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2919 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2919  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2737,r13		! source line 2737
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2904:
! ASSIGNMENT STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2920 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2920  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0WH",r10
_Label_2921:
!   if numBytes <= 0 then goto _Label_2923		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2923
!	jmp	_Label_2922
_Label_2922:
	mov	2740,r13		! source line 2740
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2749,r13		! source line 2749
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
	mov	2750,r13		! source line 2750
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
	mov	2754,r13		! source line 2754
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2927 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2926 = *_temp_2927  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2926 == sector then goto _Label_2925		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2925
!	jmp	_Label_2924
_Label_2924:
! THEN...
	mov	2756,r13		! source line 2756
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2928) then goto _runtimeErrorNullPointer
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
_Label_2925:
! ASSIGNMENT STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2930 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2929 = *_temp_2930  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2929 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0AS",r10
!   _temp_2931 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2931  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2759,r13		! source line 2759
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2935 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2934 = *_temp_2935  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2934 != sector then goto _Label_2933		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2933
!	jmp	_Label_2932
_Label_2932:
	jmp	_Label_2936
_Label_2933:
! ELSE...
	mov	2762,r13		! source line 2762
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2939
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2939
	jmp	_Label_2938
_Label_2939:
!   if bytesToMove != 8192 then goto _Label_2938		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2938
!	jmp	_Label_2937
_Label_2937:
	jmp	_Label_2940
_Label_2938:
! ELSE...
	mov	2766,r13		! source line 2766
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2943 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2942 = *_temp_2943  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2941 = sector + _temp_2942		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2945 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2944 = *_temp_2945  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2946 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2941  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2944  sizeInBytes=4
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
_Label_2940:
! END IF...
_Label_2936:
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2947 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2947 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2948 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2948 = 1  (sizeInBytes=1)
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
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2921
_Label_2923:
! SEND STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0SE",r10
!   _temp_2949 = &fileManagerLock
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
	mov	2787,r13		! source line 2787
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
	.word	_Label_2950
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2951
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2952
	.word	12
	.word	4
	.word	_Label_2953
	.word	16
	.word	4
	.word	_Label_2954
	.word	20
	.word	4
	.word	_Label_2955
	.word	24
	.word	4
	.word	_Label_2956
	.word	-16
	.word	4
	.word	_Label_2957
	.word	-20
	.word	4
	.word	_Label_2958
	.word	-24
	.word	4
	.word	_Label_2959
	.word	-28
	.word	4
	.word	_Label_2960
	.word	-32
	.word	4
	.word	_Label_2961
	.word	-36
	.word	4
	.word	_Label_2962
	.word	-40
	.word	4
	.word	_Label_2963
	.word	-44
	.word	4
	.word	_Label_2964
	.word	-48
	.word	4
	.word	_Label_2965
	.word	-52
	.word	4
	.word	_Label_2966
	.word	-56
	.word	4
	.word	_Label_2967
	.word	-60
	.word	4
	.word	_Label_2968
	.word	-64
	.word	4
	.word	_Label_2969
	.word	-68
	.word	4
	.word	_Label_2970
	.word	-72
	.word	4
	.word	_Label_2971
	.word	-76
	.word	4
	.word	_Label_2972
	.word	-80
	.word	4
	.word	_Label_2973
	.word	-84
	.word	4
	.word	_Label_2974
	.word	-88
	.word	4
	.word	_Label_2975
	.word	-92
	.word	4
	.word	_Label_2976
	.word	-96
	.word	4
	.word	_Label_2977
	.word	-100
	.word	4
	.word	_Label_2978
	.word	-104
	.word	4
	.word	_Label_2979
	.word	-108
	.word	4
	.word	_Label_2980
	.word	-112
	.word	4
	.word	_Label_2981
	.word	-9
	.word	1
	.word	_Label_2982
	.word	-10
	.word	1
	.word	_Label_2983
	.word	-116
	.word	4
	.word	_Label_2984
	.word	-120
	.word	4
	.word	_Label_2985
	.word	-124
	.word	4
	.word	_Label_2986
	.word	-128
	.word	4
	.word	_Label_2987
	.word	-132
	.word	4
	.word	_Label_2988
	.word	-136
	.word	4
	.word	0
_Label_2950:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2951:
	.ascii	"Pself\0"
	.align
_Label_2952:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2953:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2981:
	.byte	'C'
	.ascii	"_temp_2910\0"
	.align
_Label_2982:
	.byte	'C'
	.ascii	"_temp_2907\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2985:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2987:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2988:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2989
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2989:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2990
	.word	_sourceFileName
	.word	387		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2990:
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	2823,r13		! source line 2823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0AS",r10
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
!   _temp_2991 = &_P_Kernel_frameManager
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
	mov	2826,r13		! source line 2826
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2828,r13		! source line 2828
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
	.word	_Label_2992
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2994
	.word	-12
	.word	4
	.word	0
_Label_2992:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2993:
	.ascii	"Pself\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2991\0"
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
	mov	2833,r13		! source line 2833
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2995 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2995  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2835,r13		! source line 2835
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2996 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2996  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2836,r13		! source line 2836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2837,r13		! source line 2837
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2997 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2997  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2838,r13		! source line 2838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2839,r13		! source line 2839
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2998 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2998  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2840,r13		! source line 2840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2841,r13		! source line 2841
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2999 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2999  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2842,r13		! source line 2842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2843,r13		! source line 2843
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3000 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3000  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2846,r13		! source line 2846
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
	.word	_Label_3001
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3003
	.word	-12
	.word	4
	.word	_Label_3004
	.word	-16
	.word	4
	.word	_Label_3005
	.word	-20
	.word	4
	.word	_Label_3006
	.word	-24
	.word	4
	.word	_Label_3007
	.word	-28
	.word	4
	.word	_Label_3008
	.word	-32
	.word	4
	.word	0
_Label_3001:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3002:
	.ascii	"Pself\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3009
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3009:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3010
	.word	_sourceFileName
	.word	404		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3010:
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	2857,r13		! source line 2857
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3011 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3011  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2858,r13		! source line 2858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2859,r13		! source line 2859
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3012 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3012  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2860,r13		! source line 2860
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3014		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3014
!	jmp	_Label_3013
_Label_3013:
! THEN...
	mov	2862,r13		! source line 2862
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2862,r13		! source line 2862
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
	jmp	_Label_3015
_Label_3014:
! ELSE...
	mov	2864,r13		! source line 2864
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3016 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3016  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2864,r13		! source line 2864
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3015:
! RETURN STATEMENT...
	mov	2861,r13		! source line 2861
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
	.word	_Label_3017
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3018
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3019
	.word	-12
	.word	4
	.word	_Label_3020
	.word	-16
	.word	4
	.word	_Label_3021
	.word	-20
	.word	4
	.word	0
_Label_3017:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3018:
	.ascii	"Pself\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3011\0"
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
	mov	2870,r13		! source line 2870
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
!   _temp_3022 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3023 = _temp_3022 + 4
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
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
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
	mov	2883,r13		! source line 2883
	mov	"\0\0SE",r10
!   _temp_3024 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3025 = _temp_3024 + 4
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
	mov	2884,r13		! source line 2884
	mov	"\0\0RE",r10
	mov	2884,r13		! source line 2884
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3028 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3027  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3026  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3026  (sizeInBytes=1)
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
	.word	_Label_3029
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3031
	.word	12
	.word	4
	.word	_Label_3032
	.word	16
	.word	4
	.word	_Label_3033
	.word	-16
	.word	4
	.word	_Label_3034
	.word	-20
	.word	4
	.word	_Label_3035
	.word	-9
	.word	1
	.word	_Label_3036
	.word	-24
	.word	4
	.word	_Label_3037
	.word	-28
	.word	4
	.word	_Label_3038
	.word	-32
	.word	4
	.word	_Label_3039
	.word	-36
	.word	4
	.word	_Label_3040
	.word	-40
	.word	4
	.word	0
_Label_3029:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3030:
	.ascii	"Pself\0"
	.align
_Label_3031:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3032:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3035:
	.byte	'C'
	.ascii	"_temp_3026\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3040:
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
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	2889,r13		! source line 2889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0IF",r10
	mov	2894,r13		! source line 2894
	mov	"\0\0SE",r10
!   _temp_3044 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3045) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3044  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3043  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3043 then goto _Label_3042 else goto _Label_3041
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3041
	jmp	_Label_3042
_Label_3041:
! THEN...
	mov	2895,r13		! source line 2895
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3046 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3046  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2895,r13		! source line 2895
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3042:
! RETURN STATEMENT...
	mov	2897,r13		! source line 2897
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
	.word	_Label_3047
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3049
	.word	-16
	.word	4
	.word	_Label_3050
	.word	-20
	.word	4
	.word	_Label_3051
	.word	-24
	.word	4
	.word	_Label_3052
	.word	-9
	.word	1
	.word	_Label_3053
	.word	-28
	.word	4
	.word	0
_Label_3047:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3048:
	.ascii	"Pself\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3052:
	.byte	'C'
	.ascii	"_temp_3043\0"
	.align
_Label_3053:
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
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	2902,r13		! source line 2902
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3057 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3056 = *_temp_3057  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3056) then goto _Label_3055
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3055
!	jmp	_Label_3054
_Label_3054:
! THEN...
	mov	2929,r13		! source line 2929
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3058 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3058  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2929,r13		! source line 2929
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3055:
! IF STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0IF",r10
	mov	2933,r13		! source line 2933
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3062) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3061  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3061 == 1112300152 then goto _Label_3060		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3060
!	jmp	_Label_3059
_Label_3059:
! THEN...
	mov	2934,r13		! source line 2934
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3063 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3063  sizeInBytes=4
	load	[r14+-200],r1
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
_Label_3060:
! ASSIGNMENT STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0AS",r10
	mov	2939,r13		! source line 2939
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3064) then goto _runtimeErrorNullPointer
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
	mov	2940,r13		! source line 2940
	mov	"\0\0AS",r10
	mov	2940,r13		! source line 2940
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3065) then goto _runtimeErrorNullPointer
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
	mov	2941,r13		! source line 2941
	mov	"\0\0AS",r10
	mov	2941,r13		! source line 2941
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3066) then goto _runtimeErrorNullPointer
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
	mov	2942,r13		! source line 2942
	mov	"\0\0AS",r10
	mov	2942,r13		! source line 2942
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3067) then goto _runtimeErrorNullPointer
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
	mov	2943,r13		! source line 2943
	mov	"\0\0AS",r10
	mov	2943,r13		! source line 2943
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3068) then goto _runtimeErrorNullPointer
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
	mov	2944,r13		! source line 2944
	mov	"\0\0AS",r10
	mov	2944,r13		! source line 2944
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3069) then goto _runtimeErrorNullPointer
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
	mov	2947,r13		! source line 2947
	mov	"\0\0IF",r10
!   _temp_3072 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3072) then goto _Label_3071
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3071
!	jmp	_Label_3070
_Label_3070:
! THEN...
	mov	2948,r13		! source line 2948
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3073 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3073  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2948,r13		! source line 2948
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2949,r13		! source line 2949
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
	mov	2951,r13		! source line 2951
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
	mov	2955,r13		! source line 2955
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3075
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3075
!	jmp	_Label_3074
_Label_3074:
! THEN...
	mov	2956,r13		! source line 2956
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3076 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3076  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2956,r13		! source line 2956
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3075:
! IF STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0IF",r10
!   _temp_3079 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3079) then goto _Label_3078
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3078
!	jmp	_Label_3077
_Label_3077:
! THEN...
	mov	2962,r13		! source line 2962
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3080 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3080  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2962,r13		! source line 2962
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2963,r13		! source line 2963
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
! IF STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0IF",r10
!   _temp_3083 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3083 then goto _Label_3082		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3082
!	jmp	_Label_3081
_Label_3081:
! THEN...
	mov	2966,r13		! source line 2966
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3084 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3084  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2966,r13		! source line 2966
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2967,r13		! source line 2967
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3082:
! ASSIGNMENT STATEMENT...
	mov	2969,r13		! source line 2969
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
	mov	2972,r13		! source line 2972
	mov	"\0\0IF",r10
!   _temp_3087 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3087) then goto _Label_3086
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3086
!	jmp	_Label_3085
_Label_3085:
! THEN...
	mov	2973,r13		! source line 2973
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3088 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3088  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2973,r13		! source line 2973
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3086:
! IF STATEMENT...
	mov	2976,r13		! source line 2976
	mov	"\0\0IF",r10
!   _temp_3091 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3091 then goto _Label_3090		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3090
!	jmp	_Label_3089
_Label_3089:
! THEN...
	mov	2977,r13		! source line 2977
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3092 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3092  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2977,r13		! source line 2977
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3090:
! ASSIGNMENT STATEMENT...
	mov	2980,r13		! source line 2980
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
	mov	2983,r13		! source line 2983
	mov	"\0\0AS",r10
!   _temp_3095 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3094 = _temp_3095 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3093 = _temp_3094 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3093 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3097		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3097
!	jmp	_Label_3096
_Label_3096:
! THEN...
	mov	2999,r13		! source line 2999
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3098 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3098  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2999,r13		! source line 2999
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3099 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3099  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3000,r13		! source line 3000
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3100 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3100  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3001,r13		! source line 3001
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3097:
! SEND STATEMENT...
	mov	3004,r13		! source line 3004
	mov	"\0\0SE",r10
!   _temp_3101 = &_P_Kernel_frameManager
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
	mov	3010,r13		! source line 3010
	mov	"\0\0IF",r10
	mov	3010,r13		! source line 3010
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3105) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3104  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3104 == 707406378 then goto _Label_3103		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3103
!	jmp	_Label_3102
_Label_3102:
! THEN...
	mov	3011,r13		! source line 3011
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3106 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3106  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3011,r13		! source line 3011
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0SE",r10
!   _temp_3107 = &_P_Kernel_frameManager
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
	mov	3013,r13		! source line 3013
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3103:
! ASSIGNMENT STATEMENT...
	mov	3017,r13		! source line 3017
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
	mov	3018,r13		! source line 3018
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3112 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3113 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3112  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3108:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3113 then goto _Label_3111		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3111
_Label_3109:
	mov	3018,r13		! source line 3018
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0AS",r10
	mov	3019,r13		! source line 3019
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
	mov	3022,r13		! source line 3022
	mov	"\0\0IF",r10
	mov	3022,r13		! source line 3022
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3117) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3116  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3116 then goto _Label_3115 else goto _Label_3114
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3114
	jmp	_Label_3115
_Label_3114:
! THEN...
	mov	3023,r13		! source line 3023
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3118 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3118  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3023,r13		! source line 3023
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0SE",r10
!   _temp_3119 = &_P_Kernel_frameManager
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
	mov	3025,r13		! source line 3025
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3115:
! SEND STATEMENT...
	mov	3027,r13		! source line 3027
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
	mov	3028,r13		! source line 3028
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3110:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3108
! END FOR
_Label_3111:
! IF STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0IF",r10
	mov	3032,r13		! source line 3032
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3123) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3122  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3122 == 707406378 then goto _Label_3121		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3121
!	jmp	_Label_3120
_Label_3120:
! THEN...
	mov	3033,r13		! source line 3033
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3124 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3124  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3033,r13		! source line 3033
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0SE",r10
!   _temp_3125 = &_P_Kernel_frameManager
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
	mov	3035,r13		! source line 3035
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3121:
! FOR STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3130 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3131 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3130  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3126:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3131 then goto _Label_3129		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3129
_Label_3127:
	mov	3039,r13		! source line 3039
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0AS",r10
	mov	3040,r13		! source line 3040
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
	mov	3043,r13		! source line 3043
	mov	"\0\0IF",r10
	mov	3043,r13		! source line 3043
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3135) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3134  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3134 then goto _Label_3133 else goto _Label_3132
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3132
	jmp	_Label_3133
_Label_3132:
! THEN...
	mov	3044,r13		! source line 3044
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3136 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3136  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3044,r13		! source line 3044
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3045,r13		! source line 3045
	mov	"\0\0SE",r10
!   _temp_3137 = &_P_Kernel_frameManager
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
	mov	3046,r13		! source line 3046
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3133:
! ASSIGNMENT STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3128:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3126
! END FOR
_Label_3129:
! IF STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0IF",r10
	mov	3052,r13		! source line 3052
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3141) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3140  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3140 == 707406378 then goto _Label_3139		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3139
!	jmp	_Label_3138
_Label_3138:
! THEN...
	mov	3053,r13		! source line 3053
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3142 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3142  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3053,r13		! source line 3053
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0SE",r10
!   _temp_3143 = &_P_Kernel_frameManager
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
	mov	3055,r13		! source line 3055
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3139:
! ASSIGNMENT STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0AS",r10
	mov	3059,r13		! source line 3059
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
	mov	3063,r13		! source line 3063
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3066,r13		! source line 3066
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
	.word	_Label_3144
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3145
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3146
	.word	12
	.word	4
	.word	_Label_3147
	.word	-16
	.word	4
	.word	_Label_3148
	.word	-20
	.word	4
	.word	_Label_3149
	.word	-24
	.word	4
	.word	_Label_3150
	.word	-28
	.word	4
	.word	_Label_3151
	.word	-32
	.word	4
	.word	_Label_3152
	.word	-36
	.word	4
	.word	_Label_3153
	.word	-40
	.word	4
	.word	_Label_3154
	.word	-9
	.word	1
	.word	_Label_3155
	.word	-44
	.word	4
	.word	_Label_3156
	.word	-48
	.word	4
	.word	_Label_3157
	.word	-52
	.word	4
	.word	_Label_3158
	.word	-56
	.word	4
	.word	_Label_3159
	.word	-60
	.word	4
	.word	_Label_3160
	.word	-64
	.word	4
	.word	_Label_3161
	.word	-68
	.word	4
	.word	_Label_3162
	.word	-72
	.word	4
	.word	_Label_3163
	.word	-76
	.word	4
	.word	_Label_3164
	.word	-10
	.word	1
	.word	_Label_3165
	.word	-80
	.word	4
	.word	_Label_3166
	.word	-84
	.word	4
	.word	_Label_3167
	.word	-88
	.word	4
	.word	_Label_3168
	.word	-92
	.word	4
	.word	_Label_3169
	.word	-96
	.word	4
	.word	_Label_3170
	.word	-100
	.word	4
	.word	_Label_3171
	.word	-104
	.word	4
	.word	_Label_3172
	.word	-108
	.word	4
	.word	_Label_3173
	.word	-112
	.word	4
	.word	_Label_3174
	.word	-116
	.word	4
	.word	_Label_3175
	.word	-120
	.word	4
	.word	_Label_3176
	.word	-124
	.word	4
	.word	_Label_3177
	.word	-128
	.word	4
	.word	_Label_3178
	.word	-132
	.word	4
	.word	_Label_3179
	.word	-136
	.word	4
	.word	_Label_3180
	.word	-140
	.word	4
	.word	_Label_3181
	.word	-144
	.word	4
	.word	_Label_3182
	.word	-148
	.word	4
	.word	_Label_3183
	.word	-152
	.word	4
	.word	_Label_3184
	.word	-156
	.word	4
	.word	_Label_3185
	.word	-160
	.word	4
	.word	_Label_3186
	.word	-164
	.word	4
	.word	_Label_3187
	.word	-168
	.word	4
	.word	_Label_3188
	.word	-172
	.word	4
	.word	_Label_3189
	.word	-176
	.word	4
	.word	_Label_3190
	.word	-180
	.word	4
	.word	_Label_3191
	.word	-184
	.word	4
	.word	_Label_3192
	.word	-188
	.word	4
	.word	_Label_3193
	.word	-192
	.word	4
	.word	_Label_3194
	.word	-196
	.word	4
	.word	_Label_3195
	.word	-200
	.word	4
	.word	_Label_3196
	.word	-204
	.word	4
	.word	_Label_3197
	.word	-208
	.word	4
	.word	_Label_3198
	.word	-212
	.word	4
	.word	_Label_3199
	.word	-216
	.word	4
	.word	_Label_3200
	.word	-220
	.word	4
	.word	_Label_3201
	.word	-224
	.word	4
	.word	_Label_3202
	.word	-228
	.word	4
	.word	_Label_3203
	.word	-232
	.word	4
	.word	_Label_3204
	.word	-236
	.word	4
	.word	_Label_3205
	.word	-240
	.word	4
	.word	_Label_3206
	.word	-244
	.word	4
	.word	_Label_3207
	.word	-248
	.word	4
	.word	_Label_3208
	.word	-252
	.word	4
	.word	_Label_3209
	.word	-256
	.word	4
	.word	_Label_3210
	.word	-260
	.word	4
	.word	_Label_3211
	.word	-264
	.word	4
	.word	_Label_3212
	.word	-268
	.word	4
	.word	0
_Label_3144:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3145:
	.ascii	"Pself\0"
	.align
_Label_3146:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3154:
	.byte	'C'
	.ascii	"_temp_3134\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3164:
	.byte	'C'
	.ascii	"_temp_3116\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3201:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3202:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3203:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3204:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3205:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3206:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3207:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3208:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3209:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3210:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3211:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3212:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
