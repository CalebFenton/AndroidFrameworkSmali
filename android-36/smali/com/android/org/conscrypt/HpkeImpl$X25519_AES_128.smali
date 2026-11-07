.class public Lcom/android/org/conscrypt/HpkeImpl$X25519_AES_128;
.super Lcom/android/org/conscrypt/HpkeImpl;
.source "HpkeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/HpkeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X25519_AES_128"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 191
    new-instance v0, Lcom/android/org/conscrypt/HpkeSuite;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/HpkeSuite;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/HpkeImpl;-><init>(Lcom/android/org/conscrypt/HpkeSuite;)V

    .line 192
    return-void
.end method
