.class public final Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLSv12"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 190
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>([Ljava/lang/String;)V

    .line 191
    return-void
.end method
