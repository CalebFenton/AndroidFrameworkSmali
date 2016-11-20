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
.field private static final serialVersionUID:J = 0x29d9ae4d46fc6e13L


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
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 318
    iput-object p1, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    #@5
    .line 319
    iput-object p2, p0, Ljava/security/cert/CertPath$CertPathRep;->data:[B

    #@7
    .line 317
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
    .line 332
    :try_start_0
    iget-object v3, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    #@2
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@5
    move-result-object v1

    #@6
    .line 333
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@8
    iget-object v4, p0, Ljava/security/cert/CertPath$CertPathRep;->data:[B

    #@a
    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@d
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v3

    #@11
    return-object v3

    #@12
    .line 334
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    #@13
    .line 336
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/NotSerializableException;

    #@15
    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "java.security.cert.CertPath: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    iget-object v4, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 336
    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@2e
    .line 338
    .local v2, "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@31
    .line 339
    throw v2
.end method
