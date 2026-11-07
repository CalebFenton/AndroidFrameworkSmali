.class public abstract Lcom/android/org/bouncycastle/util/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static blacklist illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;
    .registers 3

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static blacklist ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;
    .registers 3

    .line 23
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
