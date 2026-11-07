.class public final Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv13;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLSv13"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 179
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV13_PROTOCOLS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>([Ljava/lang/String;)V

    .line 180
    return-void
.end method
