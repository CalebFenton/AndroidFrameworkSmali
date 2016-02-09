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
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x76d895623651c3f4L


# instance fields
.field private final data:[B

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 217
    const/4 v0, 0x2

    #@2
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@4
    .line 218
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6
    const-string/jumbo v2, "type"

    #@9
    const-class v3, Ljava/lang/String;

    #@b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 219
    new-instance v1, Ljava/io/ObjectStreamField;

    #@13
    const-string/jumbo v2, "data"

    #@16
    const-class v3, [B

    #@18
    invoke-direct {v1, v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    #@1b
    aput-object v1, v0, v4

    #@1d
    .line 217
    sput-object v0, Ljava/security/cert/Certificate$CertificateRep;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@1f
    .line 207
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 232
    iput-object p1, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    #@5
    .line 233
    iput-object p2, p0, Ljava/security/cert/Certificate$CertificateRep;->data:[B

    #@7
    .line 231
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
    .line 246
    :try_start_0
    iget-object v2, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    #@2
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@5
    move-result-object v0

    #@6
    .line 247
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@8
    iget-object v3, p0, Ljava/security/cert/Certificate$CertificateRep;->data:[B

    #@a
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@d
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 248
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@13
    .line 249
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/NotSerializableException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Could not resolve certificate: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2
.end method
