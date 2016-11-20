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
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@7
    .line 80
    const/4 v0, 0x1

    #@8
    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@e
    .line 89
    const/4 v0, 0x2

    #@f
    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    #@15
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@6
    .line 57
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "descriptor"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@5
    .line 61
    return-void
.end method

.method private static dupFd(I)Ljava/io/FileDescriptor;
    .locals 5
    .param p0, "fd"    # I

    #@0
    .prologue
    .line 163
    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    #@2
    new-instance v2, Ljava/io/FileDescriptor;

    #@4
    invoke-direct {v2, p0}, Ljava/io/FileDescriptor;-><init>(I)V

    #@7
    sget v3, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    #@9
    const/4 v4, 0x0

    #@a
    invoke-static {v2, v3, v4}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    #@d
    move-result v2

    #@e
    invoke-direct {v1, v2}, Ljava/io/FileDescriptor;-><init>(I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v1

    #@12
    .line 164
    :catch_0
    move-exception v0

    #@13
    .line 165
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method private static native isSocket(I)Z
.end method


# virtual methods
.method public final getInt$()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@2
    return v0
.end method

.method public isSocket$()Z
    .locals 1

    #@0
    .prologue
    .line 157
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
    .line 149
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    #@2
    .line 148
    return-void
.end method

.method public native sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation
.end method

.method public valid()Z
    .locals 2

    #@0
    .prologue
    .line 99
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
