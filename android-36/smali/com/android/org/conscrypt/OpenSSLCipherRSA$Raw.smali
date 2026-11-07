.class public final Lcom/android/org/conscrypt/OpenSSLCipherRSA$Raw;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Raw"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 434
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;-><init>(I)V

    .line 435
    return-void
.end method
