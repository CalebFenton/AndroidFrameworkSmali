.class public final Landroid/system/GaiException;
.super Ljava/lang/RuntimeException;
.source "GaiException.java"


# instance fields
.field public final greylist-max-o error:I

.field private final greylist-max-o functionName:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

    .line 42
    iput p2, p0, Landroid/system/GaiException;->error:I

    .line 43
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 49
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    iput-object p1, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

    .line 51
    iput p2, p0, Landroid/system/GaiException;->error:I

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 5

    .line 60
    iget v0, p0, Landroid/system/GaiException;->error:I

    invoke-static {v0}, Landroid/system/OsConstants;->gaiName(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "gaiName":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GAI_ error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/system/GaiException;->error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_1d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v2, p0, Landroid/system/GaiException;->error:I

    invoke-interface {v1, v2}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "description":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

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

.method public greylist-max-o rethrowAsUnknownHostException()Ljava/net/UnknownHostException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Landroid/system/GaiException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;
    .registers 3
    .param p1, "detailMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "newException":Ljava/net/UnknownHostException;
    invoke-virtual {v0, p0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 74
    throw v0
.end method
