.class public Ljava/security/cert/Certificate$CertificateRep;
.super Ljava/lang/Object;
.source "Certificate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CertificateRep"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x76d895623651c3f4L


# instance fields
.field private data:[B

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 225
    iput-object p1, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    #@5
    .line 226
    iput-object p2, p0, Ljava/security/cert/Certificate$CertificateRep;->data:[B

    #@7
    .line 224
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    :try_start_0
    iget-object v2, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    #@2
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@5
    move-result-object v0

    #@6
    .line 243
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@8
    iget-object v3, p0, Ljava/security/cert/Certificate$CertificateRep;->data:[B

    #@a
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@d
    .line 242
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 244
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@13
    .line 245
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/NotSerializableException;

    #@15
    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "java.security.cert.Certificate: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 247
    iget-object v4, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    #@23
    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 248
    const-string/jumbo v4, ": "

    #@2a
    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 249
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 245
    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2
.end method
