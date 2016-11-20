.class public Lcom/android/internal/os/RuntimeInit;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RuntimeInit$Arguments;,
        Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"

.field private static initialized:Z

.field private static mApplicationObject:Landroid/os/IBinder;

.field private static volatile mCrashing:Z


# direct methods
.method static synthetic -get0()Landroid/os/IBinder;
    .locals 1

    #@0
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    #@0
    sput-boolean p0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    #@2
    return p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    #@3
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 61
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x6

    #@2
    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    const/4 v2, 0x1

    #@1
    invoke-static {v2}, Lcom/android/internal/os/RuntimeInit;->nativeSetExitWithoutCleanup(Z)V

    #@4
    .line 321
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@7
    move-result-object v2

    #@8
    const/high16 v3, 0x3f400000    # 0.75f

    #@a
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@d
    .line 322
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p0}, Ldalvik/system/VMRuntime;->setTargetSdkVersion(I)V

    #@14
    .line 326
    :try_start_0
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    #@16
    invoke-direct {v0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 334
    .local v0, "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    const-wide/16 v2, 0x40

    #@1b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@1e
    .line 337
    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    #@20
    iget-object v3, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    #@22
    invoke-static {v2, v3, p2}, Lcom/android/internal/os/RuntimeInit;->invokeStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@25
    .line 311
    return-void

    #@26
    .line 327
    .end local v0    # "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    :catch_0
    move-exception v1

    #@27
    .line 328
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "AndroidRuntime"

    #@2a
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 330
    return-void
.end method

.method private static final commonInit()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 121
    new-instance v2, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;

    #@3
    invoke-direct {v2, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>(Lcom/android/internal/os/RuntimeInit$UncaughtHandler;)V

    #@6
    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@9
    .line 126
    new-instance v2, Lcom/android/internal/os/RuntimeInit$1;

    #@b
    invoke-direct {v2}, Lcom/android/internal/os/RuntimeInit$1;-><init>()V

    #@e
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->setInstance(Lorg/apache/harmony/luni/internal/util/TimezoneGetter;)V

    #@11
    .line 132
    invoke-static {v3}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    #@14
    .line 141
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/util/logging/LogManager;->reset()V

    #@1b
    .line 142
    new-instance v2, Lcom/android/internal/logging/AndroidConfig;

    #@1d
    invoke-direct {v2}, Lcom/android/internal/logging/AndroidConfig;-><init>()V

    #@20
    .line 147
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getDefaultUserAgent()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 148
    .local v1, "userAgent":Ljava/lang/String;
    const-string/jumbo v2, "http.agent"

    #@27
    invoke-static {v2, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 153
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->install()V

    #@2d
    .line 161
    const-string/jumbo v2, "ro.kernel.android.tracing"

    #@30
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 162
    .local v0, "trace":Ljava/lang/String;
    const-string/jumbo v2, "1"

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_0

    #@3d
    .line 163
    const-string/jumbo v2, "AndroidRuntime"

    #@40
    const-string/jumbo v3, "NOTE: emulator trace profiling enabled"

    #@43
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 164
    invoke-static {}, Landroid/os/Debug;->enableEmulatorTraceOutput()V

    #@49
    .line 167
    :cond_0
    const/4 v2, 0x1

    #@4a
    sput-boolean v2, Lcom/android/internal/os/RuntimeInit;->initialized:Z

    #@4c
    .line 117
    return-void
.end method

.method static final enableDdms()V
    .locals 0

    #@0
    .prologue
    .line 392
    invoke-static {}, Landroid/ddm/DdmRegister;->registerHandlers()V

    #@3
    .line 390
    return-void
.end method

.method public static final getApplicationObject()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 384
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method private static getDefaultUserAgent()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const/16 v4, 0x40

    #@4
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 176
    .local v2, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Dalvik/"

    #@a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 177
    const-string/jumbo v4, "java.vm.version"

    #@10
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 178
    const-string/jumbo v4, " (Linux; U; Android "

    #@1a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 180
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@1f
    .line 181
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@22
    move-result v4

    #@23
    if-lez v4, :cond_2

    #@25
    .end local v3    # "version":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 184
    const-string/jumbo v4, "REL"

    #@2b
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    .line 185
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@35
    .line 186
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@38
    move-result v4

    #@39
    if-lez v4, :cond_0

    #@3b
    .line 187
    const-string/jumbo v4, "; "

    #@3e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 191
    .end local v1    # "model":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    #@46
    .line 192
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@49
    move-result v4

    #@4a
    if-lez v4, :cond_1

    #@4c
    .line 193
    const-string/jumbo v4, " Build/"

    #@4f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 196
    :cond_1
    const-string/jumbo v4, ")"

    #@58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    return-object v4

    #@60
    .line 181
    .end local v0    # "id":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "1.0"

    #@63
    goto :goto_0
.end method

.method private static invokeStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 11
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 214
    const/4 v7, 0x1

    #@2
    :try_start_0
    invoke-static {p0, v7, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v0

    #@6
    .line 223
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v7, "main"

    #@9
    const/4 v8, 0x1

    #@a
    new-array v8, v8, [Ljava/lang/Class;

    #@c
    const-class v9, [Ljava/lang/String;

    #@e
    const/4 v10, 0x0

    #@f
    aput-object v9, v8, v10

    #@11
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@14
    move-result-object v4

    #@15
    .line 232
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    #@18
    move-result v5

    #@19
    .line 233
    .local v5, "modifiers":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_0

    #@1f
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@22
    move-result v6

    #@23
    :cond_0
    if-nez v6, :cond_1

    #@25
    .line 234
    new-instance v6, Ljava/lang/RuntimeException;

    #@27
    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v8, "Main method is not public and static on "

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 234
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v6

    #@3f
    .line 215
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "modifiers":I
    :catch_0
    move-exception v1

    #@40
    .line 216
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@42
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v8, "Missing class when invoking static main "

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    .line 216
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    throw v6

    #@5a
    .line 227
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    #@5b
    .line 228
    .local v3, "ex":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@5d
    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v8, "Problem getting static main on "

    #@65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    .line 228
    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@74
    throw v6

    #@75
    .line 224
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    #@76
    .line 225
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@78
    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v8, "Missing static main on "

    #@80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v7

    #@8c
    .line 225
    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8f
    throw v6

    #@90
    .line 244
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    .restart local v5    # "modifiers":I
    :cond_1
    new-instance v6, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    #@92
    invoke-direct {v6, v4, p1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    #@95
    throw v6
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 248
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    #@3
    .line 249
    array-length v0, p0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    aget-object v0, p0, v0

    #@a
    const-string/jumbo v1, "application"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 251
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    #@16
    .line 256
    :cond_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    #@19
    .line 262
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->nativeFinishInit()V

    #@1c
    .line 247
    return-void
.end method

.method private static final native nativeFinishInit()V
.end method

.method private static final native nativeSetExitWithoutCleanup(Z)V
.end method

.method private static final native nativeZygoteInit()V
.end method

.method public static redirectLogStreams()V
    .locals 3

    #@0
    .prologue
    .line 344
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    #@5
    .line 345
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    #@7
    const-string/jumbo v1, "System.out"

    #@a
    const/4 v2, 0x4

    #@b
    invoke-direct {v0, v2, v1}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    #@e
    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    #@11
    .line 346
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    #@16
    .line 347
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    #@18
    const-string/jumbo v1, "System.err"

    #@1b
    const/4 v2, 0x5

    #@1c
    invoke-direct {v0, v2, v1}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    #@1f
    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    #@22
    .line 343
    return-void
.end method

.method public static final setApplicationObject(Landroid/os/IBinder;)V
    .locals 0
    .param p0, "app"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 380
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    #@2
    .line 379
    return-void
.end method

.method public static wrapperInit(I[Ljava/lang/String;)V
    .locals 1
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@4
    .line 304
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "system"    # Z

    #@0
    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 360
    sget-object v2, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    #@6
    new-instance v3, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@8
    invoke-direct {v3, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    #@b
    .line 359
    invoke-interface {v1, v2, p0, p2, v3}, Landroid/app/IActivityManager;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 362
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@14
    move-result v1

    #@15
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    #@18
    .line 363
    const/16 v1, 0xa

    #@1a
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 357
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 365
    :catch_0
    move-exception v0

    #@1f
    .line 366
    .local v0, "t2":Ljava/lang/Throwable;
    instance-of v1, v0, Landroid/os/DeadObjectException;

    #@21
    if-nez v1, :cond_0

    #@23
    .line 369
    const-string/jumbo v1, "AndroidRuntime"

    #@26
    const-string/jumbo v2, "Error reporting WTF"

    #@29
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 370
    const-string/jumbo v1, "AndroidRuntime"

    #@2f
    const-string/jumbo v2, "Original WTF:"

    #@32
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0
.end method

.method public static final zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    const-string/jumbo v0, "RuntimeInit"

    #@3
    const-wide/16 v2, 0x40

    #@5
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 285
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    #@b
    .line 287
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    #@e
    .line 288
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->nativeZygoteInit()V

    #@11
    .line 289
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@14
    .line 281
    return-void
.end method
