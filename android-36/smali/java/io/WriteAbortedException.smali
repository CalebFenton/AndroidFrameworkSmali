.class public Ljava/io/WriteAbortedException;
.super Ljava/io/ObjectStreamException;
.source "WriteAbortedException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x2e29d7644e20988aL


# instance fields
.field public whitelist test-api detail:Ljava/lang/Exception;
    .annotation runtime Ljava/lang/Deprecated;
        since = "17"
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 61
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/WriteAbortedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 63
    iput-object p2, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 86
    iget-object v0, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    if-nez v0, :cond_9

    .line 72
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
