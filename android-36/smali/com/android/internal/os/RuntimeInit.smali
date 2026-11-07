.class public Lcom/android/internal/os/RuntimeInit;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RuntimeInit$LoggingHandler;,
        Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;,
        Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;,
        Lcom/android/internal/os/RuntimeInit$Arguments;,
        Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field private static final blacklist SYSPROP_CRASH_COUNT:Ljava/lang/String; = "sys.system_server.crash_java"

.field static final blacklist TAG:Ljava/lang/String; = "AndroidRuntime"

.field private static greylist initialized:Z

.field private static greylist mApplicationObject:Landroid/os/IBinder;

.field private static blacklist mCrashCount:I

.field private static volatile blacklist mCrashing:Z

.field private static volatile blacklist sDefaultApplicationWtfHandler:Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;

.field public static blacklist sErr$ravenwood:Ljava/io/PrintStream;

.field public static blacklist sOut$ravenwood:Ljava/io/PrintStream;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCrashCount()I
    .registers 1

    sget v0, Lcom/android/internal/os/RuntimeInit;->mCrashCount:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCrashing()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmCrashCount(I)V
    .registers 1

    sput p0, Lcom/android/internal/os/RuntimeInit;->mCrashCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmCrashing(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 84
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method protected static blacklist applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 7
    .param p0, "targetSdkVersion"    # I
    .param p1, "disabledCompatChanges"    # [J
    .param p2, "argv"    # [Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 383
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->nativeSetExitWithoutCleanup(Z)V

    .line 385
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setTargetSdkVersion(I)V

    .line 386
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/VMRuntime;->setDisabledCompatChanges([J)V

    .line 388
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p2}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 391
    .local v0, "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 394
    iget-object v1, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    invoke-static {v1, v2, p3}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method protected static final greylist commonInit()V
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;-><init>(Lcom/android/internal/os/RuntimeInit-IA;)V

    .line 246
    .local v0, "loggingHandler":Lcom/android/internal/os/RuntimeInit$LoggingHandler;
    invoke-static {v0}, Ldalvik/system/RuntimeHooks;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 247
    new-instance v1, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;

    invoke-direct {v1, v0}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;-><init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 252
    new-instance v1, Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ldalvik/system/RuntimeHooks;->setTimeZoneIdSupplier(Ljava/util/function/Supplier;)V

    .line 261
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/LogManager;->reset()V

    .line 262
    new-instance v1, Lcom/android/internal/logging/AndroidConfig;

    invoke-direct {v1}, Lcom/android/internal/logging/AndroidConfig;-><init>()V

    .line 267
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "userAgent":Ljava/lang/String;
    const-string v2, "http.agent"

    invoke-static {v2, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    invoke-static {}, Landroid/net/TrafficStats;->attachSocketTagger()V

    .line 275
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/os/RuntimeInit;->initialized:Z

    .line 276
    return-void
.end method

.method private static blacklist enableDdms()V
    .registers 0

    .line 521
    invoke-static {}, Landroid/ddm/DdmRegister;->registerHandlers()V

    .line 522
    return-void
.end method

.method protected static blacklist findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 322
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_77

    .line 327
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 331
    :try_start_6
    const-string v2, "main"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_13} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_13} :catch_43

    .line 338
    .local v0, "m":Ljava/lang/reflect/Method;
    nop

    .line 340
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 341
    .local v2, "modifiers":I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 352
    new-instance v3, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;

    invoke-direct {v3, v0, p1}, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    return-object v3

    .line 342
    :cond_2a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Main method is not public and static on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "modifiers":I
    :catch_43
    move-exception v0

    .line 336
    .local v0, "ex":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem getting static main on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 332
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_5d
    move-exception v0

    .line 333
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing static main on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 323
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_77
    move-exception v0

    .line 324
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class when invoking static main "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final greylist getApplicationObject()Landroid/os/IBinder;
    .registers 1

    .line 513
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method private static blacklist getDefaultUserAgent()Ljava/lang/String;
    .registers 4

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "Dalvik/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, " (Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 289
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_24

    move-object v2, v1

    goto :goto_26

    :cond_24
    const-string v2, "1.0"

    :goto_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v2, "REL"

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 293
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 294
    .local v2, "model":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 295
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .end local v2    # "model":Ljava/lang/String;
    :cond_43
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 300
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_53

    .line 301
    const-string v3, " Build/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_53
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static synthetic blacklist lambda$commonInit$0()Ljava/lang/String;
    .registers 1

    .line 252
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist logUncaught(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 7
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v1, "FATAL EXCEPTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    if-eqz p1, :cond_25

    .line 94
    const-string v1, "Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_25
    const-string v1, "PID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "AndroidRuntime"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void
.end method

.method public static final greylist main([Ljava/lang/String;)V
    .registers 3
    .param p0, "argv"    # [Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V

    .line 358
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    aget-object v0, p0, v0

    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 360
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 365
    :cond_15
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 371
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->nativeFinishInit()V

    .line 374
    return-void
.end method

.method private static final native blacklist nativeFinishInit()V
.end method

.method private static final native blacklist nativeSetExitWithoutCleanup(Z)V
.end method

.method public static blacklist preForkInit()V
    .registers 1

    .line 225
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 234
    new-instance v0, Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Llibcore/content/type/MimeMap;->setDefaultSupplier(Ljava/util/function/Supplier;)V

    .line 235
    return-void
.end method

.method public static blacklist redirectLogStreams()V
    .registers 3

    .line 402
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 403
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v1, 0x4

    const-string v2, "System.out"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 404
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 405
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v1, 0x5

    const-string v2, "System.err"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 406
    return-void
.end method

.method public static blacklist redirectLogStreams$ravenwood()V
    .registers 3

    .line 409
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->sOut$ravenwood:Ljava/io/PrintStream;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/internal/os/RuntimeInit;->sErr$ravenwood:Ljava/io/PrintStream;

    if-eqz v0, :cond_9

    .line 410
    return-void

    .line 418
    :cond_9
    const-string v0, "X"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 420
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->sOut$ravenwood:Ljava/io/PrintStream;

    if-nez v0, :cond_22

    .line 421
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/android/internal/os/RuntimeInit;->sOut$ravenwood:Ljava/io/PrintStream;

    .line 422
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v1, 0x4

    const-string v2, "System.out"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 424
    :cond_22
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->sErr$ravenwood:Ljava/io/PrintStream;

    if-nez v0, :cond_35

    .line 425
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lcom/android/internal/os/RuntimeInit;->sErr$ravenwood:Ljava/io/PrintStream;

    .line 426
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v1, 0x5

    const-string v2, "System.err"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 428
    :cond_35
    return-void
.end method

.method public static final blacklist setApplicationObject(Landroid/os/IBinder;)V
    .registers 1
    .param p0, "app"    # Landroid/os/IBinder;

    .line 508
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    .line 509
    return-void
.end method

.method public static blacklist setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V
    .registers 1
    .param p0, "handler"    # Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;

    .line 484
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->sDefaultApplicationWtfHandler:Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;

    .line 485
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 14
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "system"    # Z

    .line 440
    const-string v1, "Original WTF:"

    const-string v2, "AndroidRuntime"

    const/4 v0, 0x0

    .line 441
    .local v0, "exit":Z
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    move-object v4, v3

    .line 442
    .local v4, "am":Landroid/app/IActivityManager;
    if-eqz v4, :cond_1f

    .line 443
    sget-object v5, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    new-instance v8, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v8, p1}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 446
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_54

    .line 443
    move-object v6, p0

    move v7, p2

    .end local p0    # "tag":Ljava/lang/String;
    .end local p2    # "system":Z
    .local v6, "tag":Ljava/lang/String;
    .local v7, "system":Z
    :try_start_19
    invoke-interface/range {v4 .. v9}, Landroid/app/IActivityManager;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    move v0, p0

    goto :goto_42

    .line 449
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "system":Z
    .restart local p0    # "tag":Ljava/lang/String;
    .restart local p2    # "system":Z
    :cond_1f
    move-object v6, p0

    move v7, p2

    .end local p0    # "tag":Ljava/lang/String;
    .end local p2    # "system":Z
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "system":Z
    sget-object v5, Lcom/android/internal/os/RuntimeInit;->sDefaultApplicationWtfHandler:Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_51

    .line 450
    .local v5, "handler":Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;
    if-eqz v5, :cond_3f

    .line 451
    move v8, v7

    move-object v7, v6

    .end local v6    # "tag":Ljava/lang/String;
    .local v7, "tag":Ljava/lang/String;
    .local v8, "system":Z
    :try_start_27
    sget-object v6, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    new-instance v9, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v9, p1}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 454
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 451
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_3a

    move-object v6, v7

    move v7, v8

    .end local v8    # "system":Z
    .restart local v6    # "tag":Ljava/lang/String;
    .local v7, "system":Z
    move v0, p0

    goto :goto_42

    .line 465
    .end local v0    # "exit":Z
    .end local v4    # "am":Landroid/app/IActivityManager;
    .end local v5    # "handler":Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;
    .end local v6    # "tag":Ljava/lang/String;
    .local v7, "tag":Ljava/lang/String;
    .restart local v8    # "system":Z
    :catchall_3a
    move-exception v0

    move-object v6, v7

    move v7, v8

    move-object p0, v0

    .end local v8    # "system":Z
    .restart local v6    # "tag":Ljava/lang/String;
    .local v7, "system":Z
    goto :goto_58

    .line 457
    .restart local v0    # "exit":Z
    .restart local v4    # "am":Landroid/app/IActivityManager;
    .restart local v5    # "handler":Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;
    :cond_3f
    :try_start_3f
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    .end local v5    # "handler":Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;
    :goto_42
    if-eqz v0, :cond_50

    .line 462
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 463
    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_51

    .line 472
    .end local v0    # "exit":Z
    .end local v4    # "am":Landroid/app/IActivityManager;
    :cond_50
    goto :goto_65

    .line 465
    :catchall_51
    move-exception v0

    move-object p0, v0

    goto :goto_58

    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "system":Z
    .restart local p0    # "tag":Ljava/lang/String;
    .restart local p2    # "system":Z
    :catchall_54
    move-exception v0

    move-object v6, p0

    move v7, p2

    move-object p0, v0

    .line 466
    .end local p2    # "system":Z
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "system":Z
    .local p0, "t2":Ljava/lang/Throwable;
    :goto_58
    instance-of p2, p0, Landroid/os/DeadObjectException;

    if-eqz p2, :cond_5d

    goto :goto_65

    .line 469
    :cond_5d
    const-string p2, "Error reporting WTF"

    invoke-static {v2, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    .end local p0    # "t2":Ljava/lang/Throwable;
    :goto_65
    return-void
.end method

.method public static blacklist wtf$ravenwood(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "system"    # Z

    .line 478
    return-void
.end method
