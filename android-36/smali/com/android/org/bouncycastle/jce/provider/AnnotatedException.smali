.class public Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
.super Ljava/lang/Exception;
.source "AnnotatedException.java"


# instance fields
.field private blacklist _underlyingException:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object p0
.end method

.method blacklist getUnderlyingException()Ljava/lang/Throwable;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object p0
.end method
