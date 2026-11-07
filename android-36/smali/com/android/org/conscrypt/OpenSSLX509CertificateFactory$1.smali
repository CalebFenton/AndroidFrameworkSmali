.class Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;
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
        "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<",
        "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 265
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 253
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public blacklist fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 247
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;->fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object p1

    return-object p1
.end method
