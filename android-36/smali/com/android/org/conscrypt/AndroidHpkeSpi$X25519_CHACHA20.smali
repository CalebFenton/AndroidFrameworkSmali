.class public Lcom/android/org/conscrypt/AndroidHpkeSpi$X25519_CHACHA20;
.super Lcom/android/org/conscrypt/AndroidHpkeSpi;
.source "AndroidHpkeSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/AndroidHpkeSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X25519_CHACHA20"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 114
    new-instance v0, Lcom/android/org/conscrypt/HpkeImpl$X25519_CHACHA20;

    invoke-direct {v0}, Lcom/android/org/conscrypt/HpkeImpl$X25519_CHACHA20;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AndroidHpkeSpi;-><init>(Lcom/android/org/conscrypt/HpkeSpi;)V

    .line 115
    return-void
.end method
