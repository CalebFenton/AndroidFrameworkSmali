.class public Ljava/io/WriteAbortedException;
.super Ljava/io/ObjectStreamException;
.source "WriteAbortedException.java"


# static fields
.field private static final serialVersionUID:J = -0x2e29d7644e20988aL


# instance fields
.field public detail:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    #@3
    .line 52
    iput-object p2, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    #@5
    .line 53
    invoke-virtual {p0, p2}, Ljava/io/WriteAbortedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8
    .line 50
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 65
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 66
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "; "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    #@1a
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 69
    :cond_0
    return-object v0
.end method
