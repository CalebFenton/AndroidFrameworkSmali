.class public final Lcom/android/org/conscrypt/DefaultSSLContextImpl$TLSv12;
.super Lcom/android/org/conscrypt/DefaultSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/DefaultSSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLSv12"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;-><init>([Ljava/lang/String;Lcom/android/org/conscrypt/DefaultSSLContextImpl-IA;)V

    .line 134
    return-void
.end method
