.class public Lcom/android/org/conscrypt/OpenSSLCipherRSA$PKCS1;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 349
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    #@4
    .line 348
    return-void
.end method
