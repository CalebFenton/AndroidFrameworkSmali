.class public Ljava/io/WriteAbortedException;
.super Ljava/io/ObjectStreamException;
.source "WriteAbortedException.java"


# static fields
.field private static final serialVersionUID:J = -0x2e29d7644e20988aL


# instance fields
.field public detail:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    #@3
    .line 68
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@7
    .line 69
    iput-object p2, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    #@9
    .line 66
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 78
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "; "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
