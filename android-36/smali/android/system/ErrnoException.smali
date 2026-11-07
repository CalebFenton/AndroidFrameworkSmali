.class public final Landroid/system/ErrnoException;
.super Ljava/lang/Exception;
.source "ErrnoException.java"


# instance fields
.field public final whitelist test-api errno:I

.field private final greylist-max-o functionName:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errno"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    .line 42
    iput p2, p0, Landroid/system/ErrnoException;->errno:I

    .line 43
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errno"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 49
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 50
    iput-object p1, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    .line 51
    iput p2, p0, Landroid/system/ErrnoException;->errno:I

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 5

    .line 60
    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    invoke-static {v0}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "errnoName":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_1d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v2, p0, Landroid/system/ErrnoException;->errno:I

    invoke-interface {v1, v2}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "description":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api rethrowAsIOException()Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "newException":Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 78
    throw v0
.end method

.method public whitelist test-api rethrowAsSocketException()Ljava/net/SocketException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/net/SocketException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
