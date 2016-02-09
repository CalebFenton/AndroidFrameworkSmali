.class public Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv11;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLSv11"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 158
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV11_PROTOCOLS:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>([Ljava/lang/String;)V

    #@5
    .line 157
    return-void
.end method
