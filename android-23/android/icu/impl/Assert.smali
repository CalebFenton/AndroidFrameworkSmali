.class public Landroid/icu/impl/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static assrt(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 21
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "assert \'"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "\' failed"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 20
    :cond_0
    return-void
.end method

.method public static assrt(Z)V
    .locals 2
    .param p0, "val"    # Z

    #@0
    .prologue
    .line 18
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4
    const-string/jumbo v1, "assert failed"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 17
    :cond_0
    return-void
.end method

.method public static fail(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/Assert;->fail(Ljava/lang/String;)V

    #@7
    .line 11
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "failure \'"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "\'"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method
