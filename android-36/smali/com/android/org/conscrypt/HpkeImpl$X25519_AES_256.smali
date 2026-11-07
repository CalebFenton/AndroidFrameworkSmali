.class public Lcom/android/org/conscrypt/HpkeImpl$X25519_AES_256;
.super Lcom/android/org/conscrypt/HpkeImpl;
.source "HpkeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/HpkeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X25519_AES_256"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 200
    new-instance v0, Lcom/android/org/conscrypt/HpkeSuite;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x20

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/HpkeSuite;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/HpkeImpl;-><init>(Lcom/android/org/conscrypt/HpkeSuite;)V

    .line 201
    return-void
.end method
