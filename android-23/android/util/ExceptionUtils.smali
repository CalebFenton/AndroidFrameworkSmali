.class public Landroid/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final PREFIX_IO:Ljava/lang/String; = "\u2603"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 45
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    #@7
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, ": "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 49
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@1b
    move-result-object p1

    #@1c
    if-eqz p1, :cond_1

    #@1e
    .line 50
    const-string/jumbo v1, ": "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_0

    #@2d
    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    return-object v1
.end method

.method public static getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static maybeUnwrapIOException(Ljava/lang/RuntimeException;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/RuntimeException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "\u2603"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 39
    new-instance v0, Ljava/io/IOException;

    #@13
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "\u2603"

    #@1a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 37
    :cond_0
    return-void
.end method

.method public static wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .locals 3
    .param p0, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "\u2603"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method
