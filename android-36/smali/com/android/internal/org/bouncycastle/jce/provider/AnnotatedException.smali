.class public Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
.super Ljava/lang/Exception;
.source "AnnotatedException.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jce/exception/ExtException;


# instance fields
.field private blacklist _underlyingException:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method

.method blacklist getUnderlyingException()Ljava/lang/Throwable;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method
