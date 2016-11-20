.class public Lsun/misc/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field private static final JVMTI_THREAD_STATE_ALIVE:I = 0x1

.field private static final JVMTI_THREAD_STATE_BLOCKED_ON_MONITOR_ENTER:I = 0x400

.field private static final JVMTI_THREAD_STATE_RUNNABLE:I = 0x4

.field private static final JVMTI_THREAD_STATE_TERMINATED:I = 0x2

.field private static final JVMTI_THREAD_STATE_WAITING_INDEFINITELY:I = 0x10

.field private static final JVMTI_THREAD_STATE_WAITING_WITH_TIMEOUT:I = 0x20

.field public static final STATE_GREEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_RED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_YELLOW:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static allowArraySyntax:Z

.field private static allowGetCallerClass:Z

.field private static volatile booted:Z

.field private static defaultAllowArraySyntax:Z

.field private static directMemory:J

.field private static volatile finalRefCount:I

.field private static pageAlignDirectMemory:Z

.field private static volatile peakFinalRefCount:I

.field private static final savedProps:Ljava/util/Properties;

.field private static suspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    sput-boolean v2, Lsun/misc/VM;->suspended:Z

    #@3
    .line 145
    sput-boolean v2, Lsun/misc/VM;->booted:Z

    #@5
    .line 168
    const-wide/32 v0, 0x4000000

    #@8
    sput-wide v0, Lsun/misc/VM;->directMemory:J

    #@a
    .line 198
    sput-boolean v2, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    #@c
    .line 199
    sget-boolean v0, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    #@e
    sput-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    #@10
    .line 215
    const/4 v0, 0x1

    #@11
    sput-boolean v0, Lsun/misc/VM;->allowGetCallerClass:Z

    #@13
    .line 249
    new-instance v0, Ljava/util/Properties;

    #@15
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@18
    sput-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    #@1a
    .line 318
    sput v2, Lsun/misc/VM;->finalRefCount:I

    #@1c
    .line 321
    sput v2, Lsun/misc/VM;->peakFinalRefCount:I

    #@1e
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addFinalRefCount(I)V
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 350
    sget v0, Lsun/misc/VM;->finalRefCount:I

    #@2
    add-int/2addr v0, p0

    #@3
    sput v0, Lsun/misc/VM;->finalRefCount:I

    #@5
    .line 351
    sget v0, Lsun/misc/VM;->finalRefCount:I

    #@7
    sget v1, Lsun/misc/VM;->peakFinalRefCount:I

    #@9
    if-le v0, v1, :cond_0

    #@b
    .line 352
    sget v0, Lsun/misc/VM;->finalRefCount:I

    #@d
    sput v0, Lsun/misc/VM;->peakFinalRefCount:I

    #@f
    .line 347
    :cond_0
    return-void
.end method

.method public static allowArraySyntax()Z
    .locals 1

    #@0
    .prologue
    .line 212
    sget-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    #@2
    return v0
.end method

.method public static allowGetCallerClass()Z
    .locals 1

    #@0
    .prologue
    .line 223
    sget-boolean v0, Lsun/misc/VM;->allowGetCallerClass:Z

    #@2
    return v0
.end method

.method public static allowThreadSuspension(Ljava/lang/ThreadGroup;Z)Z
    .locals 1
    .param p0, "g"    # Ljava/lang/ThreadGroup;
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->allowThreadSuspension(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static asChange(II)V
    .locals 0
    .param p0, "as_old"    # I
    .param p1, "as_new"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 97
    return-void
.end method

.method public static asChange_otherthread(II)V
    .locals 0
    .param p0, "as_old"    # I
    .param p1, "as_new"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 101
    return-void
.end method

.method public static booted()V
    .locals 1

    #@0
    .prologue
    .line 153
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Lsun/misc/VM;->booted:Z

    #@3
    .line 152
    return-void
.end method

.method public static getFinalRefCount()I
    .locals 1

    #@0
    .prologue
    .line 329
    sget v0, Lsun/misc/VM;->finalRefCount:I

    #@2
    return v0
.end method

.method public static getPeakFinalRefCount()I
    .locals 1

    #@0
    .prologue
    .line 338
    sget v0, Lsun/misc/VM;->peakFinalRefCount:I

    #@2
    return v0
.end method

.method public static getSavedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 243
    sget-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final getState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 92
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public static initializeOSEnvironment()V
    .locals 0

    #@0
    .prologue
    .line 314
    return-void
.end method

.method public static isBooted()Z
    .locals 1

    #@0
    .prologue
    .line 157
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    #@2
    return v0
.end method

.method public static isDirectMemoryPageAligned()Z
    .locals 1

    #@0
    .prologue
    .line 186
    sget-boolean v0, Lsun/misc/VM;->pageAlignDirectMemory:Z

    #@2
    return v0
.end method

.method public static maxDirectMemory()J
    .locals 2

    #@0
    .prologue
    .line 175
    sget-wide v0, Lsun/misc/VM;->directMemory:J

    #@2
    return-wide v0
.end method

.method public static saveAndRemoveProperties(Ljava/util/Properties;)V
    .locals 8
    .param p0, "props"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 256
    sget-boolean v3, Lsun/misc/VM;->booted:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 257
    new-instance v3, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v4, "System initialization has completed"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 259
    :cond_0
    sget-object v3, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    #@10
    invoke-virtual {v3, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    #@13
    .line 266
    const-string/jumbo v3, "sun.nio.MaxDirectMemorySize"

    #@16
    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/lang/String;

    #@1c
    .line 267
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@1e
    .line 268
    const-string/jumbo v3, "-1"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_3

    #@27
    .line 270
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    #@2e
    move-result-wide v6

    #@2f
    sput-wide v6, Lsun/misc/VM;->directMemory:J

    #@31
    .line 279
    :cond_1
    :goto_0
    const-string/jumbo v3, "sun.nio.PageAlignDirectMemory"

    #@34
    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    .end local v2    # "s":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    #@3a
    .line 280
    .restart local v2    # "s":Ljava/lang/String;
    const-string/jumbo v3, "true"

    #@3d
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_2

    #@43
    .line 281
    sput-boolean v4, Lsun/misc/VM;->pageAlignDirectMemory:Z

    #@45
    .line 286
    :cond_2
    const-string/jumbo v3, "sun.lang.ClassLoader.allowArraySyntax"

    #@48
    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 287
    if-nez v2, :cond_4

    #@4e
    .line 288
    sget-boolean v3, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    #@50
    .line 287
    :goto_1
    sput-boolean v3, Lsun/misc/VM;->allowArraySyntax:Z

    #@52
    .line 294
    const-string/jumbo v3, "jdk.reflect.allowGetCallerClass"

    #@55
    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 295
    if-eqz v2, :cond_5

    #@5b
    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@5e
    move-result v3

    #@5f
    if-nez v3, :cond_5

    #@61
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@64
    move-result v3

    #@65
    .line 295
    if-nez v3, :cond_5

    #@67
    .line 298
    const-string/jumbo v3, "jdk.logging.allowStackWalkSearch"

    #@6a
    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@75
    move-result v3

    #@76
    .line 295
    :goto_2
    sput-boolean v3, Lsun/misc/VM;->allowGetCallerClass:Z

    #@78
    .line 302
    const-string/jumbo v3, "java.lang.Integer.IntegerCache.high"

    #@7b
    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 305
    const-string/jumbo v3, "sun.zip.disableMemoryMapping"

    #@81
    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 308
    const-string/jumbo v3, "sun.java.launcher.diag"

    #@87
    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 255
    return-void

    #@8b
    .line 272
    :cond_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@8e
    move-result-wide v0

    #@8f
    .line 273
    .local v0, "l":J
    const-wide/16 v6, -0x1

    #@91
    cmp-long v3, v0, v6

    #@93
    if-lez v3, :cond_1

    #@95
    .line 274
    sput-wide v0, Lsun/misc/VM;->directMemory:J

    #@97
    goto :goto_0

    #@98
    .line 289
    .end local v0    # "l":J
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@9b
    move-result v3

    #@9c
    goto :goto_1

    #@9d
    :cond_5
    move v3, v4

    #@9e
    .line 295
    goto :goto_2
.end method

.method public static suspendThreads()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 58
    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    #@3
    .line 59
    return v0
.end method

.method public static threadsSuspended()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 48
    sget-boolean v0, Lsun/misc/VM;->suspended:Z

    #@2
    return v0
.end method

.method public static toThreadState(I)Ljava/lang/Thread$State;
    .locals 1
    .param p0, "threadStatus"    # I

    #@0
    .prologue
    .line 360
    and-int/lit8 v0, p0, 0x4

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 361
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    #@6
    return-object v0

    #@7
    .line 362
    :cond_0
    and-int/lit16 v0, p0, 0x400

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 363
    sget-object v0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    #@d
    return-object v0

    #@e
    .line 364
    :cond_1
    and-int/lit8 v0, p0, 0x10

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 365
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    #@14
    return-object v0

    #@15
    .line 366
    :cond_2
    and-int/lit8 v0, p0, 0x20

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 367
    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    #@1b
    return-object v0

    #@1c
    .line 368
    :cond_3
    and-int/lit8 v0, p0, 0x2

    #@1e
    if-eqz v0, :cond_4

    #@20
    .line 369
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    #@22
    return-object v0

    #@23
    .line 370
    :cond_4
    and-int/lit8 v0, p0, 0x1

    #@25
    if-nez v0, :cond_5

    #@27
    .line 371
    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    #@29
    return-object v0

    #@2a
    .line 373
    :cond_5
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    #@2c
    return-object v0
.end method

.method public static unsuspendSomeThreads()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 72
    return-void
.end method

.method public static unsuspendThreads()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    #@3
    .line 65
    return-void
.end method
