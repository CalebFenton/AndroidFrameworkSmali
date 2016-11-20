.class public final Landroid/system/ErrnoException;
.super Ljava/lang/Exception;
.source "ErrnoException.java"


# instance fields
.field public final errno:I

.field private final functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errno"    # I

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    #@5
    .line 41
    iput p2, p0, Landroid/system/ErrnoException;->errno:I

    #@7
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errno"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 49
    iput-object p1, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    #@5
    .line 50
    iput p2, p0, Landroid/system/ErrnoException;->errno:I

    #@7
    .line 47
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 59
    iget v2, p0, Landroid/system/ErrnoException;->errno:I

    #@2
    invoke-static {v2}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 60
    .local v1, "errnoName":Ljava/lang/String;
    if-nez v1, :cond_0

    #@8
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "errno "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    iget v3, p0, Landroid/system/ErrnoException;->errno:I

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 63
    :cond_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@20
    iget v3, p0, Landroid/system/ErrnoException;->errno:I

    #@22
    invoke-interface {v2, v3}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 64
    .local v0, "description":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    iget-object v3, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, " failed: "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, " ("

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const-string/jumbo v3, ")"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    return-object v2
.end method

.method public rethrowAsIOException()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/io/IOException;

    #@2
    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9
    .line 72
    .local v0, "newException":Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@c
    .line 73
    throw v0
.end method

.method public rethrowAsSocketException()Ljava/net/SocketException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    new-instance v0, Ljava/net/SocketException;

    #@2
    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    throw v0
.end method
