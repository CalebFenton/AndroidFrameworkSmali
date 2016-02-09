.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_JIT:I = 0x20

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final DEBUG_GENERATE_DEBUG_INFO:I = 0x40

.field public static final MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_READ:I = 0x2

.field public static final MOUNT_EXTERNAL_WRITE:I = 0x3

.field private static final VM_HOOKS:Ldalvik/system/ZygoteHooks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    new-instance v0, Ldalvik/system/ZygoteHooks;

    #@2
    invoke-direct {v0}, Ldalvik/system/ZygoteHooks;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    #@7
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 6
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 181
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p1, v1

    #@6
    .line 182
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v3, " \'"

    #@9
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    const-string/jumbo v4, "\'"

    #@10
    const-string/jumbo v5, "\'\\\'\'"

    #@13
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, "\'"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 181
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 180
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static callPostForkChildHooks(ILjava/lang/String;)V
    .locals 1
    .param p0, "debugFlags"    # I
    .param p1, "instructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    #@2
    invoke-virtual {v0, p0, p1}, Ldalvik/system/ZygoteHooks;->postForkChild(ILjava/lang/String;)V

    #@5
    .line 150
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .locals 4
    .param p0, "command"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 163
    const/4 v2, 0x3

    #@2
    new-array v0, v2, [Ljava/lang/String;

    #@4
    const-string/jumbo v2, "/system/bin/sh"

    #@7
    aput-object v2, v0, v3

    #@9
    const-string/jumbo v2, "-c"

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v0, v3

    #@f
    const/4 v2, 0x2

    #@10
    aput-object p0, v0, v2

    #@12
    .line 165
    .local v0, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    #@13
    :try_start_0
    aget-object v2, v0, v2

    #@15
    invoke-static {v2, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 162
    return-void

    #@19
    .line 166
    :catch_0
    move-exception v1

    #@1a
    .line 167
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@1c
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v2
.end method

.method public static forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;
    .param p8, "fdsToClose"    # [I
    .param p9, "instructionSet"    # Ljava/lang/String;
    .param p10, "appDataDir"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    #@2
    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    #@5
    .line 93
    invoke-static/range {p0 .. p10}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 97
    .local v0, "pid":I
    if-nez v0, :cond_0

    #@b
    .line 98
    const/4 v1, 0x1

    #@c
    invoke-static {v1}, Landroid/os/Trace;->setTracingEnabled(Z)V

    #@f
    .line 101
    const-string/jumbo v1, "PostFork"

    #@12
    const-wide/16 v2, 0x40

    #@14
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@17
    .line 103
    :cond_0
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    #@19
    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    #@1c
    .line 104
    return v0
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .locals 3
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    #@0
    .prologue
    .line 136
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    #@2
    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    #@5
    .line 137
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    #@8
    move-result v0

    #@9
    .line 140
    .local v0, "pid":I
    if-nez v0, :cond_0

    #@b
    .line 141
    const/4 v1, 0x1

    #@c
    invoke-static {v1}, Landroid/os/Trace;->setTracingEnabled(Z)V

    #@f
    .line 143
    :cond_0
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    #@11
    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    #@14
    .line 144
    return v0
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method
