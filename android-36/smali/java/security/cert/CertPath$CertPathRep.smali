.class public Ljava/security/cert/CertPath$CertPathRep;
.super Ljava/lang/Object;
.source "CertPath.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/CertPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CertPathRep"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x29d9ae4d46fc6e13L


# instance fields
.field private greylist-max-o data:[B

.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    .line 319
    iput-object p2, p0, Ljava/security/cert/CertPath$CertPathRep;->data:[B

    .line 320
    return-void
.end method


# virtual methods
.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 332
    :try_start_0
    iget-object v0, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 333
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ljava/security/cert/CertPath$CertPathRep;->data:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 334
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_12
    move-exception v0

    .line 335
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/io/NotSerializableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java.security.cert.CertPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v1, v0}, Ljava/io/NotSerializableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 339
    throw v1
.end method
