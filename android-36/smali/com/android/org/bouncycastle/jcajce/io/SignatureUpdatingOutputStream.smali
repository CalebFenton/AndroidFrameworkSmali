.class Lcom/android/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;
.super Ljava/io/OutputStream;
.source "SignatureUpdatingOutputStream.java"


# instance fields
.field private blacklist sig:Ljava/security/Signature;


# direct methods
.method constructor blacklist <init>(Ljava/security/Signature;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 2

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_6
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api write([B)V
    .registers 2

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api write([BII)V
    .registers 4

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method
