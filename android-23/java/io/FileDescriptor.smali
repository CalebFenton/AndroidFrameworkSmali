.class public final Ljava/io/FileDescriptor;
.super Ljava/lang/Object;
.source "FileDescriptor.java"


# static fields
.field public static final err:Ljava/io/FileDescriptor;

.field public static final in:Ljava/io/FileDescriptor;

.field public static final out:Ljava/io/FileDescriptor;


# instance fields
.field private descriptor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    sput-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@7
    .line 40
    new-instance v0, Ljava/io/FileDescriptor;

    #@9
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@c
    sput-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@e
    .line 45
    new-instance v0, Ljava/io/FileDescriptor;

    #@10
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@13
    sput-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    #@15
    .line 54
    sget-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@17
    sget v1, Landroid/system/OsConstants;->STDIN_FILENO:I

    #@19
    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    #@1b
    .line 55
    sget-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@1d
    sget v1, Landroid/system/OsConstants;->STDOUT_FILENO:I

    #@1f
    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    #@21
    .line 56
    sget-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    #@23
    sget v1, Landroid/system/OsConstants;->STDERR_FILENO:I

    #@25
    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    #@27
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@6
    .line 62
    return-void
.end method

.method private static native isSocket(I)Z
.end method


# virtual methods
.method public final getInt$()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@2
    return v0
.end method

.method public final isSocket$()Z
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@2
    invoke-static {v0}, Ljava/io/FileDescriptor;->isSocket(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final setInt$(I)V
    .locals 0
    .param p1, "fd"    # I

    #@0
    .prologue
    .line 105
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@2
    .line 104
    return-void
.end method

.method public sync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v2, p0}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 72
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@a
    invoke-interface {v2, p0}, Llibcore/io/Os;->tcdrain(Ljava/io/FileDescriptor;)V

    #@d
    .line 69
    :goto_0
    return-void

    #@e
    .line 74
    :cond_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@10
    invoke-interface {v2, p0}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 76
    :catch_0
    move-exception v0

    #@15
    .line 77
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/SyncFailedException;

    #@17
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/io/SyncFailedException;-><init>(Ljava/lang/String;)V

    #@1e
    .line 78
    .local v1, "sfe":Ljava/io/SyncFailedException;
    invoke-virtual {v1, v0}, Ljava/io/SyncFailedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@21
    .line 79
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "FileDescriptor["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public valid()Z
    .locals 2

    #@0
    .prologue
    .line 87
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method
