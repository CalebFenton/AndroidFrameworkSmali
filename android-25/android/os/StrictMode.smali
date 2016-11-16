.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$1;,
        Landroid/os/StrictMode$2;,
        Landroid/os/StrictMode$3;,
        Landroid/os/StrictMode$4;,
        Landroid/os/StrictMode$5;,
        Landroid/os/StrictMode$6;,
        Landroid/os/StrictMode$7;,
        Landroid/os/StrictMode$8;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$InstanceCountViolation;,
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$LogStackTrace;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$StrictModeCustomViolation;,
        Landroid/os/StrictMode$StrictModeDiskReadViolation;,
        Landroid/os/StrictMode$StrictModeDiskWriteViolation;,
        Landroid/os/StrictMode$StrictModeNetworkViolation;,
        Landroid/os/StrictMode$StrictModeResourceMismatchViolation;,
        Landroid/os/StrictMode$StrictModeViolation;,
        Landroid/os/StrictMode$ThreadPolicy;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$VmPolicy;
    }
.end annotation


# static fields
.field private static final ALL_THREAD_DETECT_BITS:I = 0x1f

.field private static final ALL_VM_DETECT_BITS:I = 0x7f00

.field private static final CLEARTEXT_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.clear"

.field public static final DETECT_CUSTOM:I = 0x8

.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_RESOURCE_MISMATCH:I = 0x10

.field public static final DETECT_VM_ACTIVITY_LEAKS:I = 0x400

.field private static final DETECT_VM_CLEARTEXT_NETWORK:I = 0x4000

.field public static final DETECT_VM_CLOSABLE_LEAKS:I = 0x200

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x100

.field private static final DETECT_VM_FILE_URI_EXPOSURE:I = 0x2000

.field private static final DETECT_VM_INSTANCE_LEAKS:I = 0x800

.field public static final DETECT_VM_REGISTRATION_LEAKS:I = 0x1000

.field public static final DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ENG_BUILD:Z

.field private static final IS_USER_BUILD:Z

.field private static final LOG_V:Z

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MAX_SPAN_TAGS:I = 0x14

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field public static final NETWORK_POLICY_ACCEPT:I = 0x0

.field public static final NETWORK_POLICY_LOG:I = 0x1

.field public static final NETWORK_POLICY_REJECT:I = 0x2

.field private static final NO_OP_SPAN:Landroid/os/StrictMode$Span;

.field public static final PENALTY_DEATH:I = 0x40000

.field public static final PENALTY_DEATH_ON_CLEARTEXT_NETWORK:I = 0x2000000

.field public static final PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I = 0x4000000

.field public static final PENALTY_DEATH_ON_NETWORK:I = 0x1000000

.field public static final PENALTY_DIALOG:I = 0x20000

.field public static final PENALTY_DROPBOX:I = 0x200000

.field public static final PENALTY_FLASH:I = 0x100000

.field public static final PENALTY_GATHER:I = 0x400000

.field public static final PENALTY_LOG:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final THREAD_PENALTY_MASK:I = 0x1770000

.field public static final VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final VM_PENALTY_MASK:I = 0x6250000

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIdlerRegistered:Z

.field private static sLastInstanceCountCheckMillis:J

.field private static final sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static volatile sVmPolicyMask:I

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadAndroidPolicy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/HashMap;
    .locals 1

    #@0
    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    #@2
    return v0
.end method

.method static synthetic -get2()Ljava/lang/ThreadLocal;
    .locals 1

    #@0
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    #@0
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get4()J
    .locals 2

    #@0
    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get5()Ljava/lang/ThreadLocal;
    .locals 1

    #@0
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    #@2
    return-object v0
.end method

.method static synthetic -get6()Landroid/util/Singleton;
    .locals 1

    #@0
    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    #@2
    return-object v0
.end method

.method static synthetic -get7()Ljava/lang/ThreadLocal;
    .locals 1

    #@0
    sget-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    #@2
    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/ThreadLocal;
    .locals 1

    #@0
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    #@2
    return-object v0
.end method

.method static synthetic -set0(J)J
    .locals 0

    #@0
    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    #@2
    return-wide p0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    #@0
    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)I
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p0, "violationMaskSubset"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p0, "info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    invoke-static {p0}, Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(I)V
    .locals 0
    .param p0, "policyMask"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 123
    const-string/jumbo v0, "StrictMode"

    #@4
    const/4 v1, 0x2

    #@5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    #@b
    .line 125
    const-string/jumbo v0, "user"

    #@e
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    sput-boolean v0, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    #@16
    .line 126
    const-string/jumbo v0, "eng"

    #@19
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    sput-boolean v0, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    #@21
    .line 315
    new-instance v0, Ljava/util/HashMap;

    #@23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@26
    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    #@28
    .line 322
    sput v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@2a
    .line 323
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    #@2c
    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    #@2e
    .line 329
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@30
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@33
    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    #@35
    .line 861
    new-instance v0, Landroid/os/StrictMode$1;

    #@37
    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    #@3a
    .line 860
    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    #@3c
    .line 1197
    new-instance v0, Landroid/os/StrictMode$2;

    #@3e
    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    #@41
    .line 1196
    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    #@43
    .line 1204
    new-instance v0, Landroid/os/StrictMode$3;

    #@45
    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    #@48
    sput-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    #@4a
    .line 1211
    new-instance v0, Landroid/os/StrictMode$4;

    #@4c
    invoke-direct {v0}, Landroid/os/StrictMode$4;-><init>()V

    #@4f
    sput-object v0, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    #@51
    .line 1639
    const-wide/16 v0, 0x0

    #@53
    sput-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    #@55
    .line 1640
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    #@57
    .line 1642
    new-instance v0, Landroid/os/StrictMode$5;

    #@59
    invoke-direct {v0}, Landroid/os/StrictMode$5;-><init>()V

    #@5c
    .line 1641
    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    #@5e
    .line 1838
    new-instance v0, Ljava/util/HashMap;

    #@60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@63
    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    #@65
    .line 2086
    new-instance v0, Landroid/os/StrictMode$6;

    #@67
    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    #@6a
    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    #@6c
    .line 2111
    new-instance v0, Landroid/os/StrictMode$7;

    #@6e
    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    #@71
    .line 2110
    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    #@73
    .line 2117
    new-instance v0, Landroid/os/StrictMode$8;

    #@75
    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    #@78
    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    #@7a
    .line 2234
    new-instance v0, Ljava/util/HashMap;

    #@7c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@7f
    .line 2233
    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    #@81
    .line 121
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 4

    #@0
    .prologue
    .line 1028
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    #@3
    move-result v1

    #@4
    .line 1029
    .local v1, "oldPolicyMask":I
    and-int/lit8 v0, v1, -0x3

    #@6
    .line 1030
    .local v0, "newPolicyMask":I
    if-eq v0, v1, :cond_0

    #@8
    .line 1031
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@b
    .line 1033
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$ThreadPolicy;)V

    #@11
    return-object v2
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .locals 4

    #@0
    .prologue
    .line 1009
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    #@3
    move-result v1

    #@4
    .line 1010
    .local v1, "oldPolicyMask":I
    and-int/lit8 v0, v1, -0x4

    #@6
    .line 1011
    .local v0, "newPolicyMask":I
    if-eq v0, v1, :cond_0

    #@8
    .line 1012
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@b
    .line 1014
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$ThreadPolicy;)V

    #@11
    return-object v2
.end method

.method private static amTheSystemServerProcess()Z
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1042
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@4
    move-result v3

    #@5
    const/16 v5, 0x3e8

    #@7
    if-eq v3, v5, :cond_0

    #@9
    .line 1043
    return v4

    #@a
    .line 1048
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    #@c
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@f
    .line 1049
    .local v1, "stack":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@12
    .line 1050
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@15
    move-result-object v5

    #@16
    array-length v6, v5

    #@17
    move v3, v4

    #@18
    :goto_0
    if-ge v3, v6, :cond_2

    #@1a
    aget-object v2, v5, v3

    #@1c
    .line 1051
    .local v2, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1052
    .local v0, "clsName":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@22
    const-string/jumbo v7, "com.android.server."

    #@25
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_1

    #@2b
    .line 1053
    const/4 v3, 0x1

    #@2c
    return v3

    #@2d
    .line 1050
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 1056
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v2    # "ste":Ljava/lang/StackTraceElement;
    :cond_2
    return v4
.end method

.method static clearGatheredViolations()V
    .locals 2

    #@0
    .prologue
    .line 1607
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@6
    .line 1606
    return-void
.end method

.method public static conditionallyCheckInstanceCounts()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1614
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    #@4
    move-result-object v7

    #@5
    .line 1615
    .local v7, "policy":Landroid/os/StrictMode$VmPolicy;
    iget-object v10, v7, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    #@7
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    #@a
    move-result v8

    #@b
    .line 1616
    .local v8, "policySize":I
    if-nez v8, :cond_0

    #@d
    .line 1617
    return-void

    #@e
    .line 1620
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    #@11
    .line 1621
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    #@14
    .line 1622
    invoke-static {}, Ljava/lang/System;->gc()V

    #@17
    .line 1626
    iget-object v10, v7, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    #@19
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v10

    #@1d
    new-array v11, v8, [Ljava/lang/Class;

    #@1f
    invoke-interface {v10, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, [Ljava/lang/Class;

    #@25
    .line 1627
    .local v0, "classes":[Ljava/lang/Class;
    invoke-static {v0, v12}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    #@28
    move-result-object v2

    #@29
    .line 1628
    .local v2, "instanceCounts":[J
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    array-length v10, v0

    #@2b
    if-ge v1, v10, :cond_2

    #@2d
    .line 1629
    aget-object v3, v0, v1

    #@2f
    .line 1630
    .local v3, "klass":Ljava/lang/Class;
    iget-object v10, v7, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    #@31
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v10

    #@35
    check-cast v10, Ljava/lang/Integer;

    #@37
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v6

    #@3b
    .line 1631
    .local v6, "limit":I
    aget-wide v4, v2, v1

    #@3d
    .line 1632
    .local v4, "instances":J
    int-to-long v10, v6

    #@3e
    cmp-long v10, v4, v10

    #@40
    if-lez v10, :cond_1

    #@42
    .line 1633
    new-instance v9, Landroid/os/StrictMode$InstanceCountViolation;

    #@44
    invoke-direct {v9, v3, v4, v5, v6}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    #@47
    .line 1634
    .local v9, "tr":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    invoke-static {v10, v9}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4e
    .line 1628
    .end local v9    # "tr":Ljava/lang/Throwable;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1613
    .end local v3    # "klass":Ljava/lang/Class;
    .end local v4    # "instances":J
    .end local v6    # "limit":I
    :cond_2
    return-void
.end method

.method public static conditionallyEnableDebugLogging()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1065
    const-string/jumbo v4, "persist.sys.strictmode.visual"

    #@4
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_2

    #@a
    .line 1066
    invoke-static {}, Landroid/os/StrictMode;->amTheSystemServerProcess()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    const/4 v0, 0x0

    #@11
    .line 1067
    .local v0, "doFlashes":Z
    :goto_0
    const-string/jumbo v4, "persist.sys.strictmode.disable"

    #@14
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@17
    move-result v2

    #@18
    .line 1071
    .local v2, "suppress":Z
    if-nez v0, :cond_3

    #@1a
    sget-boolean v4, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    #@1c
    if-nez v4, :cond_0

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 1072
    :cond_0
    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    #@23
    .line 1073
    return v5

    #@24
    .line 1066
    .end local v0    # "doFlashes":Z
    .end local v2    # "suppress":Z
    :cond_1
    const/4 v0, 0x1

    #@25
    .restart local v0    # "doFlashes":Z
    goto :goto_0

    #@26
    .line 1065
    .end local v0    # "doFlashes":Z
    :cond_2
    const/4 v0, 0x0

    #@27
    .restart local v0    # "doFlashes":Z
    goto :goto_0

    #@28
    .line 1079
    .restart local v2    # "suppress":Z
    :cond_3
    sget-boolean v4, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    #@2a
    if-eqz v4, :cond_4

    #@2c
    .line 1080
    const/4 v0, 0x1

    #@2d
    .line 1084
    :cond_4
    const/4 v3, 0x7

    #@2e
    .line 1088
    .local v3, "threadPolicyMask":I
    sget-boolean v4, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    #@30
    if-nez v4, :cond_5

    #@32
    .line 1089
    const v3, 0x200007

    #@35
    .line 1091
    :cond_5
    if-eqz v0, :cond_6

    #@37
    .line 1092
    const/high16 v4, 0x100000

    #@39
    or-int/2addr v3, v4

    #@3a
    .line 1095
    :cond_6
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@3d
    .line 1099
    sget-boolean v4, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    #@3f
    if-eqz v4, :cond_7

    #@41
    .line 1100
    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    #@44
    .line 1109
    :goto_1
    const/4 v4, 0x1

    #@45
    return v4

    #@46
    .line 1102
    :cond_7
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    #@48
    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    #@4b
    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    #@52
    move-result-object v1

    #@53
    .line 1103
    .local v1, "policyBuilder":Landroid/os/StrictMode$VmPolicy$Builder;
    sget-boolean v4, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    #@55
    if-eqz v4, :cond_8

    #@57
    .line 1104
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    #@5a
    .line 1106
    :cond_8
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    #@61
    .line 1107
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    #@64
    move-result v4

    #@65
    invoke-static {v4}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    #@68
    goto :goto_1
.end method

.method public static decrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 11
    .param p0, "klass"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2268
    if-nez p0, :cond_0

    #@3
    .line 2269
    return-void

    #@4
    .line 2273
    :cond_0
    const-class v8, Landroid/os/StrictMode;

    #@6
    monitor-enter v8

    #@7
    .line 2274
    :try_start_0
    sget-object v9, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    #@9
    iget v9, v9, Landroid/os/StrictMode$VmPolicy;->mask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    and-int/lit16 v9, v9, 0x400

    #@d
    if-nez v9, :cond_1

    #@f
    monitor-exit v8

    #@10
    .line 2275
    return-void

    #@11
    .line 2278
    :cond_1
    :try_start_1
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    #@13
    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/Integer;

    #@19
    .line 2279
    .local v1, "expected":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    #@1b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1e
    move-result v9

    #@1f
    if-nez v9, :cond_3

    #@21
    :cond_2
    move v5, v7

    #@22
    .line 2280
    .local v5, "newExpected":I
    :goto_0
    if-nez v5, :cond_4

    #@24
    .line 2281
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    #@26
    invoke-virtual {v9, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 2288
    :goto_1
    add-int/lit8 v4, v5, 0x1

    #@2b
    .local v4, "limit":I
    monitor-exit v8

    #@2c
    .line 2292
    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    #@2f
    move-result v0

    #@30
    .line 2293
    .local v0, "actual":I
    if-gt v0, v4, :cond_5

    #@32
    .line 2294
    return-void

    #@33
    .line 2279
    .end local v0    # "actual":I
    .end local v4    # "limit":I
    .end local v5    # "newExpected":I
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@36
    move-result v9

    #@37
    add-int/lit8 v5, v9, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 2283
    .restart local v5    # "newExpected":I
    :cond_4
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    #@3c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v10

    #@40
    invoke-virtual {v9, p0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 2273
    .end local v1    # "expected":Ljava/lang/Integer;
    .end local v5    # "newExpected":I
    :catchall_0
    move-exception v7

    #@45
    monitor-exit v8

    #@46
    throw v7

    #@47
    .line 2305
    .restart local v0    # "actual":I
    .restart local v1    # "expected":Ljava/lang/Integer;
    .restart local v4    # "limit":I
    .restart local v5    # "newExpected":I
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    #@4a
    .line 2306
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    #@4d
    .line 2307
    invoke-static {}, Ljava/lang/System;->gc()V

    #@50
    .line 2309
    invoke-static {p0, v7}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    #@53
    move-result-wide v2

    #@54
    .line 2310
    .local v2, "instances":J
    int-to-long v8, v4

    #@55
    cmp-long v7, v2, v8

    #@57
    if-lez v7, :cond_6

    #@59
    .line 2311
    new-instance v6, Landroid/os/StrictMode$InstanceCountViolation;

    #@5b
    invoke-direct {v6, p0, v2, v3, v4}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    #@5e
    .line 2312
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-static {v7, v6}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@65
    .line 2267
    .end local v6    # "tr":Ljava/lang/Throwable;
    :cond_6
    return-void
.end method

.method public static disableDeathOnFileUriExposure()V
    .locals 2

    #@0
    .prologue
    .line 1140
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@2
    const v1, -0x4002001

    #@5
    and-int/2addr v0, v1

    #@6
    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@8
    .line 1139
    return-void
.end method

.method private static dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "violationMaskSubset"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    .line 1552
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    move-result v0

    #@6
    .line 1553
    .local v0, "outstanding":I
    const/16 v1, 0x14

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 1556
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@f
    .line 1557
    return-void

    #@10
    .line 1560
    :cond_0
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    #@12
    if-eqz v1, :cond_1

    #@14
    const-string/jumbo v1, "StrictMode"

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Dropboxing async; in-flight="

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1562
    :cond_1
    new-instance v1, Landroid/os/StrictMode$9;

    #@30
    const-string/jumbo v2, "callActivityManagerForStrictModeDropbox"

    #@33
    invoke-direct {v1, v2, p0, p1}, Landroid/os/StrictMode$9;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V

    #@36
    invoke-virtual {v1}, Landroid/os/StrictMode$9;->start()V

    #@39
    .line 1551
    return-void
.end method

.method public static enableDeathOnFileUriExposure()V
    .locals 2

    #@0
    .prologue
    .line 1130
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@2
    const v1, 0x4002000

    #@5
    or-int/2addr v0, v1

    #@6
    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@8
    .line 1129
    return-void
.end method

.method public static enableDeathOnNetwork()V
    .locals 4

    #@0
    .prologue
    .line 1119
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    #@3
    move-result v1

    #@4
    .line 1120
    .local v1, "oldPolicy":I
    or-int/lit8 v2, v1, 0x4

    #@6
    const/high16 v3, 0x1000000

    #@8
    or-int v0, v2, v3

    #@a
    .line 1121
    .local v0, "newPolicy":I
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@d
    .line 1118
    return-void
.end method

.method public static enableDefaults()V
    .locals 1

    #@0
    .prologue
    .line 1720
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@2
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@14
    .line 1724
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    #@16
    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    #@19
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    #@28
    .line 1719
    return-void
.end method

.method public static enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2139
    sget-boolean v3, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 2140
    sget-object v3, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    #@6
    return-object v3

    #@7
    .line 2142
    :cond_0
    if-eqz p0, :cond_1

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 2143
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v4, "name must be non-null and non-empty"

    #@14
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 2145
    :cond_2
    sget-object v3, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    #@1a
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/os/StrictMode$ThreadSpanState;

    #@20
    .line 2146
    .local v2, "state":Landroid/os/StrictMode$ThreadSpanState;
    const/4 v0, 0x0

    #@21
    .line 2147
    .local v0, "span":Landroid/os/StrictMode$Span;
    monitor-enter v2

    #@22
    .line 2148
    :try_start_0
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    #@24
    if-eqz v3, :cond_5

    #@26
    .line 2149
    iget-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    #@28
    .line 2150
    .local v0, "span":Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    #@2e
    .line 2151
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    #@30
    add-int/lit8 v3, v3, -0x1

    #@32
    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    #@34
    .line 2156
    :goto_0
    invoke-static {v0, p0}, Landroid/os/StrictMode$Span;->-set1(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;

    #@37
    .line 2157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3a
    move-result-wide v4

    #@3b
    invoke-static {v0, v4, v5}, Landroid/os/StrictMode$Span;->-set0(Landroid/os/StrictMode$Span;J)J

    #@3e
    .line 2158
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    #@40
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->-set2(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    #@43
    .line 2159
    const/4 v3, 0x0

    #@44
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->-set3(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    #@47
    .line 2160
    iput-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    #@49
    .line 2161
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    #@4b
    add-int/lit8 v3, v3, 0x1

    #@4d
    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    #@4f
    .line 2162
    invoke-static {v0}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    #@52
    move-result-object v3

    #@53
    if-eqz v3, :cond_3

    #@55
    .line 2163
    invoke-static {v0}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    #@58
    move-result-object v3

    #@59
    invoke-static {v3, v0}, Landroid/os/StrictMode$Span;->-set3(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    #@5c
    .line 2165
    :cond_3
    sget-boolean v3, Landroid/os/StrictMode;->LOG_V:Z

    #@5e
    if-eqz v3, :cond_4

    #@60
    const-string/jumbo v3, "StrictMode"

    #@63
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "Span enter="

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    const-string/jumbo v5, "; size="

    #@76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    iget v5, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@87
    :cond_4
    monitor-exit v2

    #@88
    .line 2167
    return-object v0

    #@89
    .line 2154
    .local v0, "span":Landroid/os/StrictMode$Span;
    :cond_5
    :try_start_1
    new-instance v1, Landroid/os/StrictMode$Span;

    #@8b
    invoke-direct {v1, v2}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8e
    .local v1, "span":Landroid/os/StrictMode$Span;
    move-object v0, v1

    #@8f
    .end local v1    # "span":Landroid/os/StrictMode$Span;
    .local v0, "span":Landroid/os/StrictMode$Span;
    goto :goto_0

    #@90
    .line 2147
    .end local v0    # "span":Landroid/os/StrictMode$Span;
    :catchall_0
    move-exception v3

    #@91
    monitor-exit v2

    #@92
    throw v3
.end method

.method private static executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    .line 1538
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@2
    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@4
    invoke-static {v1}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 1539
    .local v0, "violationBit":I
    new-instance v1, Landroid/os/StrictMode$StrictModeViolation;

    #@a
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@c
    const/4 v3, 0x0

    #@d
    invoke-direct {v1, v2, v0, v3}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    #@10
    throw v1
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    #@0
    .prologue
    .line 995
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    #@2
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$ThreadPolicy;)V

    #@a
    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .locals 1

    #@0
    .prologue
    .line 984
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .locals 2

    #@0
    .prologue
    .line 1706
    const-class v0, Landroid/os/StrictMode;

    #@2
    monitor-enter v0

    #@3
    .line 1707
    :try_start_0
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 1706
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method static hasGatheredViolations()Z
    .locals 1

    #@0
    .prologue
    .line 1598
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 2249
    if-nez p0, :cond_0

    #@2
    .line 2250
    return-void

    #@3
    .line 2253
    :cond_0
    const-class v3, Landroid/os/StrictMode;

    #@5
    monitor-enter v3

    #@6
    .line 2254
    :try_start_0
    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    #@8
    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    and-int/lit16 v2, v2, 0x400

    #@c
    if-nez v2, :cond_1

    #@e
    monitor-exit v3

    #@f
    .line 2255
    return-void

    #@10
    .line 2258
    :cond_1
    :try_start_1
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    #@12
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/Integer;

    #@18
    .line 2259
    .local v0, "expected":Ljava/lang/Integer;
    if-nez v0, :cond_2

    #@1a
    const/4 v2, 0x1

    #@1b
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v1

    #@1f
    .line 2260
    .local v1, "newExpected":Ljava/lang/Integer;
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    #@21
    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v3

    #@25
    .line 2248
    return-void

    #@26
    .line 2259
    .end local v1    # "newExpected":Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    move-result v2

    #@2a
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2253
    .end local v0    # "expected":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method

.method public static noteDiskRead()V
    .locals 2

    #@0
    .prologue
    .line 2212
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    .line 2213
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2215
    return-void

    #@9
    .line 2217
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@b
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onReadFromDisk()V

    #@e
    .line 2211
    return-void
.end method

.method public static noteDiskWrite()V
    .locals 2

    #@0
    .prologue
    .line 2224
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    .line 2225
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2227
    return-void

    #@9
    .line 2229
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@b
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onWriteToDisk()V

    #@e
    .line 2223
    return-void
.end method

.method public static noteResourceMismatch(Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2200
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    .line 2201
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2203
    return-void

    #@9
    .line 2205
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@b
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onResourceMismatch(Ljava/lang/Object;)V

    #@e
    .line 2199
    return-void
.end method

.method public static noteSlowCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2180
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    .line 2181
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2183
    return-void

    #@9
    .line 2185
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@b
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    #@e
    .line 2179
    return-void
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .locals 0
    .param p0, "newPolicy"    # I

    #@0
    .prologue
    .line 2009
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    #@3
    .line 2008
    return-void
.end method

.method public static onCleartextNetworkDetected([B)V
    .locals 10
    .param p0, "firstPacket"    # [B

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/16 v8, 0x10

    #@3
    const/4 v7, 0x0

    #@4
    .line 1809
    const/4 v3, 0x0

    #@5
    .line 1810
    .local v3, "rawAddr":[B
    if-eqz p0, :cond_0

    #@7
    .line 1811
    array-length v5, p0

    #@8
    const/16 v6, 0x14

    #@a
    if-lt v5, v6, :cond_2

    #@c
    aget-byte v5, p0, v7

    #@e
    and-int/lit16 v5, v5, 0xf0

    #@10
    const/16 v6, 0x40

    #@12
    if-ne v5, v6, :cond_2

    #@14
    .line 1813
    new-array v3, v9, [B

    #@16
    .line 1814
    .local v3, "rawAddr":[B
    invoke-static {p0, v8, v3, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 1822
    .end local v3    # "rawAddr":[B
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1c
    move-result v4

    #@1d
    .line 1823
    .local v4, "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "Detected cleartext network traffic from UID "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 1824
    .local v2, "msg":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@33
    .line 1826
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "Detected cleartext network traffic from UID "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    const-string/jumbo v6, " to "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    .line 1827
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@4d
    move-result-object v6

    #@4e
    .line 1826
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    move-result-object v2

    #@56
    .line 1832
    :cond_1
    :goto_1
    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@58
    const/high16 v6, 0x2000000

    #@5a
    and-int/2addr v5, v6

    #@5b
    if-eqz v5, :cond_3

    #@5d
    const/4 v0, 0x1

    #@5e
    .line 1833
    .local v0, "forceDeath":Z
    :goto_2
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    new-instance v6, Ljava/lang/Throwable;

    #@68
    invoke-direct {v6, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@6b
    invoke-static {v5, v6, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    #@6e
    .line 1808
    return-void

    #@6f
    .line 1815
    .end local v0    # "forceDeath":Z
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "uid":I
    .local v3, "rawAddr":[B
    :cond_2
    array-length v5, p0

    #@70
    const/16 v6, 0x28

    #@72
    if-lt v5, v6, :cond_0

    #@74
    aget-byte v5, p0, v7

    #@76
    and-int/lit16 v5, v5, 0xf0

    #@78
    const/16 v6, 0x60

    #@7a
    if-ne v5, v6, :cond_0

    #@7c
    .line 1817
    new-array v3, v8, [B

    #@7e
    .line 1818
    .local v3, "rawAddr":[B
    const/16 v5, 0x18

    #@80
    invoke-static {p0, v5, v3, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@83
    goto :goto_0

    #@84
    .line 1832
    .end local v3    # "rawAddr":[B
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :cond_3
    const/4 v0, 0x0

    #@85
    .restart local v0    # "forceDeath":Z
    goto :goto_2

    #@86
    .line 1828
    .end local v0    # "forceDeath":Z
    :catch_0
    move-exception v1

    #@87
    .local v1, "ignored":Ljava/net/UnknownHostException;
    goto :goto_1
.end method

.method public static onFileUriExposed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "location"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, " exposed beyond app through "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 1798
    .local v0, "message":Ljava/lang/String;
    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@1a
    const/high16 v2, 0x4000000

    #@1c
    and-int/2addr v1, v2

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 1799
    new-instance v1, Landroid/os/FileUriExposedException;

    #@21
    invoke-direct {v1, v0}, Landroid/os/FileUriExposedException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 1801
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    #@27
    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-static {v2, v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    .line 1796
    return-void
.end method

.method public static onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1783
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 1782
    return-void
.end method

.method public static onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1790
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 1789
    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1769
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 1768
    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1844
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    #@4
    .line 1843
    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 22
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;
    .param p2, "forceDeath"    # Z

    #@0
    .prologue
    .line 1852
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@2
    const/high16 v19, 0x200000

    #@4
    and-int v18, v18, v19

    #@6
    if-eqz v18, :cond_6

    #@8
    const/4 v12, 0x1

    #@9
    .line 1853
    .local v12, "penaltyDropbox":Z
    :goto_0
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@b
    const/high16 v19, 0x40000

    #@d
    and-int v18, v18, v19

    #@f
    if-nez v18, :cond_7

    #@11
    move/from16 v7, p2

    #@13
    .line 1854
    :goto_1
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@15
    const/high16 v19, 0x10000

    #@17
    and-int v18, v18, v19

    #@19
    if-eqz v18, :cond_8

    #@1b
    const/4 v13, 0x1

    #@1c
    .line 1855
    .local v13, "penaltyLog":Z
    :goto_2
    new-instance v6, Landroid/os/StrictMode$ViolationInfo;

    #@1e
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@20
    move-object/from16 v0, p0

    #@22
    move-object/from16 v1, p1

    #@24
    move/from16 v2, v18

    #@26
    invoke-direct {v6, v0, v1, v2}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@29
    .line 1858
    .local v6, "info":Landroid/os/StrictMode$ViolationInfo;
    const/16 v18, 0x0

    #@2b
    move/from16 v0, v18

    #@2d
    iput v0, v6, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@2f
    .line 1859
    const/16 v18, 0x0

    #@31
    move-object/from16 v0, v18

    #@33
    iput-object v0, v6, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@35
    .line 1860
    const/16 v18, 0x0

    #@37
    move-object/from16 v0, v18

    #@39
    iput-object v0, v6, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@3b
    .line 1862
    invoke-virtual {v6}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    #@3e
    move-result v18

    #@3f
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v5

    #@43
    .line 1863
    .local v5, "fingerprint":Ljava/lang/Integer;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@46
    move-result-wide v10

    #@47
    .line 1864
    .local v10, "now":J
    const-wide/16 v8, 0x0

    #@49
    .line 1865
    .local v8, "lastViolationTime":J
    const-wide v16, 0x7fffffffffffffffL

    #@4e
    .line 1866
    .local v16, "timeSinceLastViolationMillis":J
    sget-object v19, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    #@50
    monitor-enter v19

    #@51
    .line 1867
    :try_start_0
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    #@53
    move-object/from16 v0, v18

    #@55
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@58
    move-result v18

    #@59
    if-eqz v18, :cond_0

    #@5b
    .line 1868
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    #@5d
    move-object/from16 v0, v18

    #@5f
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    move-result-object v18

    #@63
    check-cast v18, Ljava/lang/Long;

    #@65
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    #@68
    move-result-wide v8

    #@69
    .line 1869
    sub-long v16, v10, v8

    #@6b
    .line 1871
    :cond_0
    const-wide/16 v20, 0x3e8

    #@6d
    cmp-long v18, v16, v20

    #@6f
    if-lez v18, :cond_1

    #@71
    .line 1872
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    #@73
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@76
    move-result-object v20

    #@77
    move-object/from16 v0, v18

    #@79
    move-object/from16 v1, v20

    #@7b
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7e
    :cond_1
    monitor-exit v19

    #@7f
    .line 1876
    if-eqz v13, :cond_2

    #@81
    const-wide/16 v18, 0x3e8

    #@83
    cmp-long v18, v16, v18

    #@85
    if-lez v18, :cond_2

    #@87
    .line 1877
    const-string/jumbo v18, "StrictMode"

    #@8a
    move-object/from16 v0, v18

    #@8c
    move-object/from16 v1, p0

    #@8e
    move-object/from16 v2, p1

    #@90
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@93
    .line 1880
    :cond_2
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@95
    move/from16 v0, v18

    #@97
    and-int/lit16 v0, v0, 0x7f00

    #@99
    move/from16 v18, v0

    #@9b
    const/high16 v19, 0x200000

    #@9d
    or-int v15, v19, v18

    #@9f
    .line 1882
    .local v15, "violationMaskSubset":I
    if-eqz v12, :cond_3

    #@a1
    if-eqz v7, :cond_9

    #@a3
    .line 1890
    :cond_3
    if-eqz v12, :cond_4

    #@a5
    const-wide/16 v18, 0x0

    #@a7
    cmp-long v18, v8, v18

    #@a9
    if-nez v18, :cond_4

    #@ab
    .line 1895
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    #@ae
    move-result v14

    #@af
    .line 1901
    .local v14, "savedPolicyMask":I
    const/16 v18, 0x0

    #@b1
    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@b4
    .line 1903
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@b7
    move-result-object v18

    #@b8
    .line 1904
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    #@bb
    move-result-object v19

    #@bc
    .line 1903
    move-object/from16 v0, v18

    #@be
    move-object/from16 v1, v19

    #@c0
    invoke-interface {v0, v1, v15, v6}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@c3
    .line 1915
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@c6
    .line 1919
    .end local v14    # "savedPolicyMask":I
    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    #@c8
    .line 1920
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ca
    const-string/jumbo v19, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    #@cd
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d0
    .line 1921
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@d3
    move-result v18

    #@d4
    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    #@d7
    .line 1922
    const/16 v18, 0xa

    #@d9
    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    #@dc
    .line 1851
    :cond_5
    return-void

    #@dd
    .line 1852
    .end local v5    # "fingerprint":Ljava/lang/Integer;
    .end local v6    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v8    # "lastViolationTime":J
    .end local v10    # "now":J
    .end local v12    # "penaltyDropbox":Z
    .end local v13    # "penaltyLog":Z
    .end local v15    # "violationMaskSubset":I
    .end local v16    # "timeSinceLastViolationMillis":J
    :cond_6
    const/4 v12, 0x0

    #@de
    .restart local v12    # "penaltyDropbox":Z
    goto/16 :goto_0

    #@e0
    .line 1853
    :cond_7
    const/4 v7, 0x1

    #@e1
    .local v7, "penaltyDeath":Z
    goto/16 :goto_1

    #@e3
    .line 1854
    .end local v7    # "penaltyDeath":Z
    :cond_8
    const/4 v13, 0x0

    #@e4
    .restart local v13    # "penaltyLog":Z
    goto/16 :goto_2

    #@e6
    .line 1866
    .restart local v5    # "fingerprint":Ljava/lang/Integer;
    .restart local v6    # "info":Landroid/os/StrictMode$ViolationInfo;
    .restart local v8    # "lastViolationTime":J
    .restart local v10    # "now":J
    .restart local v16    # "timeSinceLastViolationMillis":J
    :catchall_0
    move-exception v18

    #@e7
    monitor-exit v19

    #@e8
    throw v18

    #@e9
    .line 1886
    .restart local v15    # "violationMaskSubset":I
    :cond_9
    invoke-static {v15, v6}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    #@ec
    .line 1887
    return-void

    #@ed
    .line 1907
    .restart local v14    # "savedPolicyMask":I
    :catch_0
    move-exception v4

    #@ee
    .line 1908
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    instance-of v0, v4, Landroid/os/DeadObjectException;

    #@f0
    move/from16 v18, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@f2
    if-eqz v18, :cond_a

    #@f4
    .line 1915
    :goto_4
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@f7
    goto :goto_3

    #@f8
    .line 1911
    :cond_a
    :try_start_3
    const-string/jumbo v18, "StrictMode"

    #@fb
    const-string/jumbo v19, "RemoteException trying to handle StrictMode violation"

    #@fe
    move-object/from16 v0, v18

    #@100
    move-object/from16 v1, v19

    #@102
    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@105
    goto :goto_4

    #@106
    .line 1913
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v18

    #@107
    .line 1915
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@10a
    .line 1913
    throw v18
.end method

.method public static onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1776
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 1775
    return-void
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1157
    if-eqz p0, :cond_0

    #@3
    const-string/jumbo v3, "policy="

    #@6
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1160
    const/16 v3, 0x20

    #@e
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@11
    move-result v2

    #@12
    .line 1161
    .local v2, "spaceIndex":I
    const/4 v3, -0x1

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 1162
    return v4

    #@16
    .line 1158
    .end local v2    # "spaceIndex":I
    :cond_0
    return v4

    #@17
    .line 1164
    .restart local v2    # "spaceIndex":I
    :cond_1
    const/4 v3, 0x7

    #@18
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1166
    .local v1, "policyString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 1167
    :catch_0
    move-exception v0

    #@22
    .line 1168
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v4
.end method

.method private static parseViolationFromMessage(Ljava/lang/String;)I
    .locals 8
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1176
    if-nez p0, :cond_0

    #@4
    .line 1177
    return v6

    #@5
    .line 1179
    :cond_0
    const-string/jumbo v5, "violation="

    #@8
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b
    move-result v3

    #@c
    .line 1180
    .local v3, "violationIndex":I
    if-ne v3, v7, :cond_1

    #@e
    .line 1181
    return v6

    #@f
    .line 1183
    :cond_1
    const-string/jumbo v5, "violation="

    #@12
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@15
    move-result v5

    #@16
    add-int v2, v3, v5

    #@18
    .line 1184
    .local v2, "numberStartIndex":I
    const/16 v5, 0x20

    #@1a
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    #@1d
    move-result v1

    #@1e
    .line 1185
    .local v1, "numberEndIndex":I
    if-ne v1, v7, :cond_2

    #@20
    .line 1186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@23
    move-result v1

    #@24
    .line 1188
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 1190
    .local v4, "violationString":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result v5

    #@2c
    return v5

    #@2d
    .line 1191
    :catch_0
    move-exception v0

    #@2e
    .line 1192
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v6
.end method

.method static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .locals 13
    .param p0, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1958
    new-instance v9, Ljava/io/StringWriter;

    #@2
    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 1959
    .local v9, "sw":Ljava/io/StringWriter;
    new-instance v8, Lcom/android/internal/util/FastPrintWriter;

    #@7
    const/4 v10, 0x0

    #@8
    const/16 v11, 0x100

    #@a
    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@d
    .line 1960
    .local v8, "pw":Ljava/io/PrintWriter;
    new-instance v10, Landroid/os/StrictMode$LogStackTrace;

    #@f
    const/4 v11, 0x0

    #@10
    invoke-direct {v10, v11}, Landroid/os/StrictMode$LogStackTrace;-><init>(Landroid/os/StrictMode$LogStackTrace;)V

    #@13
    invoke-virtual {v10, v8}, Landroid/os/StrictMode$LogStackTrace;->printStackTrace(Ljava/io/PrintWriter;)V

    #@16
    .line 1961
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    #@19
    .line 1962
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    .line 1964
    .local v5, "ourStack":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    #@20
    move-result v7

    #@21
    .line 1965
    .local v7, "policyMask":I
    const/high16 v10, 0x400000

    #@23
    and-int/2addr v10, v7

    #@24
    if-eqz v10, :cond_1

    #@26
    const/4 v0, 0x1

    #@27
    .line 1967
    .local v0, "currentlyGathering":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v4

    #@2b
    .line 1968
    .local v4, "numViolations":I
    const/4 v2, 0x0

    #@2c
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_7

    #@2e
    .line 1969
    sget-boolean v10, Landroid/os/StrictMode;->LOG_V:Z

    #@30
    if-eqz v10, :cond_0

    #@32
    const-string/jumbo v10, "StrictMode"

    #@35
    new-instance v11, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v12, "strict mode violation stacks read from binder call.  i="

    #@3d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v11

    #@41
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v11

    #@45
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v11

    #@49
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 1970
    :cond_0
    new-instance v3, Landroid/os/StrictMode$ViolationInfo;

    #@4e
    if-eqz v0, :cond_2

    #@50
    const/4 v10, 0x0

    #@51
    :goto_2
    invoke-direct {v3, p0, v10}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    #@54
    .line 1971
    .local v3, "info":Landroid/os/StrictMode$ViolationInfo;
    iget-object v10, v3, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@56
    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@58
    if-eqz v10, :cond_5

    #@5a
    iget-object v10, v3, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@5c
    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@5e
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@61
    move-result v10

    #@62
    const/16 v11, 0x7530

    #@64
    if-le v10, v11, :cond_5

    #@66
    .line 1972
    iget-object v10, v3, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@68
    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@6a
    const/4 v11, 0x0

    #@6b
    const/16 v12, 0x100

    #@6d
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    .line 1980
    .local v1, "front":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    #@73
    .line 1981
    :goto_3
    if-ge v2, v4, :cond_4

    #@75
    .line 1982
    new-instance v3, Landroid/os/StrictMode$ViolationInfo;

    #@77
    .end local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    if-eqz v0, :cond_3

    #@79
    const/4 v10, 0x0

    #@7a
    :goto_4
    invoke-direct {v3, p0, v10}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    #@7d
    .line 1981
    .restart local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v2, v2, 0x1

    #@7f
    goto :goto_3

    #@80
    .line 1965
    .end local v0    # "currentlyGathering":Z
    .end local v1    # "front":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v4    # "numViolations":I
    :cond_1
    const/4 v0, 0x0

    #@81
    .restart local v0    # "currentlyGathering":Z
    goto :goto_0

    #@82
    .line 1970
    .restart local v2    # "i":I
    .restart local v4    # "numViolations":I
    :cond_2
    const/4 v10, 0x1

    #@83
    goto :goto_2

    #@84
    .line 1982
    .restart local v1    # "front":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    #@85
    goto :goto_4

    #@86
    .line 1985
    .restart local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@89
    .line 1987
    const-string/jumbo v10, "StrictMode"

    #@8c
    new-instance v11, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v12, "Stack is too large: numViolations="

    #@94
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v11

    #@98
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v11

    #@9c
    .line 1988
    const-string/jumbo v12, " policy=#"

    #@9f
    .line 1987
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v11

    #@a3
    .line 1988
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a6
    move-result-object v12

    #@a7
    .line 1987
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v11

    #@ab
    .line 1989
    const-string/jumbo v12, " front="

    #@ae
    .line 1987
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v11

    #@b2
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v11

    #@b6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v11

    #@ba
    invoke-static {v10, v11}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 1990
    return-void

    #@be
    .line 1992
    .end local v1    # "front":Ljava/lang/String;
    :cond_5
    iget-object v10, v3, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@c0
    new-instance v11, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    iget-object v12, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@c7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v11

    #@cb
    const-string/jumbo v12, "# via Binder call with stack:\n"

    #@ce
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v11

    #@d2
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v11

    #@d6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v11

    #@da
    iput-object v11, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@dc
    .line 1993
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@df
    move-result-object v6

    #@e0
    .line 1994
    .local v6, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v10, v6, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@e2
    if-eqz v10, :cond_6

    #@e4
    .line 1995
    check-cast v6, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@e6
    .end local v6    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v6, v3}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    #@e9
    .line 1968
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@eb
    goto/16 :goto_1

    #@ed
    .line 1956
    .end local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    :cond_7
    return-void
.end method

.method private static setBlockGuardPolicy(I)V
    .locals 3
    .param p0, "policyMask"    # I

    #@0
    .prologue
    .line 899
    if-nez p0, :cond_0

    #@2
    .line 900
    sget-object v2, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    #@4
    invoke-static {v2}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    #@7
    .line 901
    return-void

    #@8
    .line 903
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@b
    move-result-object v1

    #@c
    .line 905
    .local v1, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v2, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@e
    if-eqz v2, :cond_1

    #@10
    move-object v0, v1

    #@11
    .line 906
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@13
    .line 911
    .local v0, "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    :goto_0
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    #@16
    .line 898
    return-void

    #@17
    .line 908
    .end local v0    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    :cond_1
    sget-object v2, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    #@19
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    #@1f
    .line 909
    .restart local v0    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    invoke-static {v0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    #@22
    goto :goto_0
.end method

.method private static setCloseGuardEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    #@0
    .prologue
    .line 916
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 917
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode$AndroidCloseGuardReporter;)V

    #@e
    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    #@11
    .line 919
    :cond_0
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    #@14
    .line 915
    return-void
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p0, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    #@0
    .prologue
    .line 882
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    #@2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    #@5
    .line 881
    return-void
.end method

.method private static setThreadPolicyMask(I)V
    .locals 0
    .param p0, "policyMask"    # I

    #@0
    .prologue
    .line 891
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    #@3
    .line 894
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    #@6
    .line 885
    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 8
    .param p0, "policy"    # Landroid/os/StrictMode$VmPolicy;

    #@0
    .prologue
    .line 1661
    const-class v6, Landroid/os/StrictMode;

    #@2
    monitor-enter v6

    #@3
    .line 1662
    :try_start_0
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    #@5
    .line 1663
    iget v5, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    #@7
    sput v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@9
    .line 1664
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    #@c
    move-result v5

    #@d
    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    #@10
    .line 1666
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@13
    move-result-object v1

    #@14
    .line 1667
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_1

    #@16
    .line 1668
    iget-object v2, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    #@18
    .line 1669
    .local v2, "mq":Landroid/os/MessageQueue;
    iget-object v5, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 1670
    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@22
    const/high16 v7, 0x6250000

    #@24
    and-int/2addr v5, v7

    #@25
    if-nez v5, :cond_5

    #@27
    .line 1671
    :cond_0
    sget-object v5, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    #@29
    invoke-virtual {v2, v5}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@2c
    .line 1672
    const/4 v5, 0x0

    #@2d
    sput-boolean v5, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    #@2f
    .line 1679
    .end local v2    # "mq":Landroid/os/MessageQueue;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    #@30
    .line 1680
    .local v4, "networkPolicy":I
    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@32
    and-int/lit16 v5, v5, 0x4000

    #@34
    if-eqz v5, :cond_3

    #@36
    .line 1681
    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@38
    const/high16 v7, 0x40000

    #@3a
    and-int/2addr v5, v7

    #@3b
    if-nez v5, :cond_2

    #@3d
    .line 1682
    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@3f
    const/high16 v7, 0x2000000

    #@41
    and-int/2addr v5, v7

    #@42
    if-eqz v5, :cond_6

    #@44
    .line 1683
    :cond_2
    const/4 v4, 0x2

    #@45
    .line 1690
    :cond_3
    :goto_1
    const-string/jumbo v5, "network_management"

    #@48
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4b
    move-result-object v5

    #@4c
    .line 1689
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    move-result-object v3

    #@50
    .line 1691
    .local v3, "netd":Landroid/os/INetworkManagementService;
    if-eqz v3, :cond_7

    #@52
    .line 1693
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@55
    move-result v5

    #@56
    invoke-interface {v3, v5, v4}, Landroid/os/INetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    :cond_4
    :goto_2
    monitor-exit v6

    #@5a
    .line 1660
    return-void

    #@5b
    .line 1673
    .end local v3    # "netd":Landroid/os/INetworkManagementService;
    .end local v4    # "networkPolicy":I
    .restart local v2    # "mq":Landroid/os/MessageQueue;
    :cond_5
    :try_start_2
    sget-boolean v5, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    #@5d
    if-nez v5, :cond_1

    #@5f
    .line 1674
    sget-object v5, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    #@61
    invoke-virtual {v2, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@64
    .line 1675
    const/4 v5, 0x1

    #@65
    sput-boolean v5, Landroid/os/StrictMode;->sIsIdlerRegistered:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    goto :goto_0

    #@68
    .line 1661
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v2    # "mq":Landroid/os/MessageQueue;
    :catchall_0
    move-exception v5

    #@69
    monitor-exit v6

    #@6a
    throw v5

    #@6b
    .line 1685
    .restart local v1    # "looper":Landroid/os/Looper;
    .restart local v4    # "networkPolicy":I
    :cond_6
    const/4 v4, 0x1

    #@6c
    goto :goto_1

    #@6d
    .line 1696
    .restart local v3    # "netd":Landroid/os/INetworkManagementService;
    :cond_7
    if-eqz v4, :cond_4

    #@6f
    .line 1697
    :try_start_3
    const-string/jumbo v5, "StrictMode"

    #@72
    const-string/jumbo v7, "Dropping requested network policy due to missing service!"

    #@75
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@78
    goto :goto_2

    #@79
    .line 1694
    :catch_0
    move-exception v0

    #@7a
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private static tooManyViolationsThisLoop()Z
    .locals 2

    #@0
    .prologue
    .line 1219
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    const/16 v1, 0xa

    #@e
    if-lt v0, v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public static trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "instance"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2242
    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    #@2
    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static vmCleartextNetworkEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1762
    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@3
    and-int/lit16 v1, v1, 0x4000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static vmClosableObjectLeaksEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1741
    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@3
    and-int/lit16 v1, v1, 0x200

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static vmFileUriExposureEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1755
    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@3
    and-int/lit16 v1, v1, 0x2000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static vmRegistrationLeaksEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1748
    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@3
    and-int/lit16 v1, v1, 0x1000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1734
    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    #@3
    and-int/lit16 v1, v1, 0x100

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .locals 9
    .param p0, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1930
    sget-object v4, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    #@4
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Ljava/util/ArrayList;

    #@a
    .line 1931
    .local v3, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v3, :cond_0

    #@c
    .line 1932
    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1947
    :goto_0
    sget-object v4, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    #@11
    invoke-virtual {v4, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@14
    .line 1929
    return-void

    #@15
    .line 1934
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v4

    #@19
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1935
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v4

    #@21
    if-ge v0, v4, :cond_2

    #@23
    .line 1936
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@26
    move-result v2

    #@27
    .line 1937
    .local v2, "start":I
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    #@2d
    invoke-virtual {v4, p0, v7}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@30
    .line 1938
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@33
    move-result v4

    #@34
    sub-int v1, v4, v2

    #@36
    .line 1939
    .local v1, "size":I
    const/16 v4, 0x2800

    #@38
    if-le v1, v4, :cond_1

    #@3a
    .line 1940
    const-string/jumbo v4, "StrictMode"

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "Wrote violation #"

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    const-string/jumbo v6, " of "

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@57
    move-result v6

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    const-string/jumbo v6, ": "

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 1941
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@66
    move-result v6

    #@67
    sub-int/2addr v6, v2

    #@68
    .line 1940
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    .line 1941
    const-string/jumbo v6, " bytes"

    #@6f
    .line 1940
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 1935
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 1944
    .end local v1    # "size":I
    .end local v2    # "start":I
    :cond_2
    sget-boolean v4, Landroid/os/StrictMode;->LOG_V:Z

    #@7f
    if-eqz v4, :cond_3

    #@81
    const-string/jumbo v4, "StrictMode"

    #@84
    new-instance v5, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v6, "wrote violations to response parcel; num="

    #@8c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v6

    #@94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 1945
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@a2
    goto/16 :goto_0
.end method
