.class public Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLSv12"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 152
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>([Ljava/lang/String;)V

    #@5
    .line 151
    return-void
.end method
