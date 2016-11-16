.class public final Landroid/system/GaiException;
.super Ljava/lang/RuntimeException;
.source "GaiException.java"


# instance fields
.field public final error:I

.field private final functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "error"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

    #@5
    .line 42
    iput p2, p0, Landroid/system/GaiException;->error:I

    #@7
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 50
    iput-object p1, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

    #@5
    .line 51
    iput p2, p0, Landroid/system/GaiException;->error:I

    #@7
    .line 48
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 60
    iget v2, p0, Landroid/system/GaiException;->error:I

    #@2
    invoke-static {v2}, Landroid/system/OsConstants;->gaiName(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 61
    .local v1, "gaiName":Ljava/lang/String;
    if-nez v1, :cond_0

    #@8
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "GAI_ error "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    iget v3, p0, Landroid/system/GaiException;->error:I

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 64
    :cond_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@20
    iget v3, p0, Landroid/system/GaiException;->error:I

    #@22
    invoke-interface {v2, v3}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 65
    .local v0, "description":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    iget-object v3, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

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

.method public rethrowAsUnknownHostException()Ljava/net/UnknownHostException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/system/GaiException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    #@7
    move-result-object v0

    #@8
    throw v0
.end method

.method public rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    new-instance v0, Ljava/net/UnknownHostException;

    #@2
    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@5
    .line 73
    .local v0, "newException":Ljava/net/UnknownHostException;
    invoke-virtual {v0, p0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8
    .line 74
    throw v0
.end method
