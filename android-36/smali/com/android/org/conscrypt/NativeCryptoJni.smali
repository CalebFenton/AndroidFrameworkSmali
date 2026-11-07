.class Lcom/android/org/conscrypt/NativeCryptoJni;
.super Ljava/lang/Object;
.source "NativeCryptoJni.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static blacklist init()V
    .registers 1

    .line 26
    const-string v0, "javacrypto"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method
