.class Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;
.super Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;

    #@0
    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;->this$0:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;)V

    #@6
    return-void
.end method


# virtual methods
.method public fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;->fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
