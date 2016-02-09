.class public final Lorg/apache/harmony/security/x509/ExtendedKeyUsage;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "ExtendedKeyUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 97
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@2
    new-instance v1, Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;

    #@4
    invoke-direct {v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@a
    sput-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@c
    .line 43
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "encoding"    # [B

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 51
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "Extended Key Usage: "

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 75
    iget-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    #@c
    if-nez v2, :cond_0

    #@e
    .line 77
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 84
    :cond_0
    const/16 v2, 0x5b

    #@16
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 85
    iget-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    #@1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 86
    const-string/jumbo v2, " \""

    #@28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    const/16 v3, 0x22

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_1

    #@3f
    .line 88
    const/16 v2, 0x2c

    #@41
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    goto :goto_0

    #@45
    .line 78
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    #@46
    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-super {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;)V

    #@49
    .line 81
    return-void

    #@4a
    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    const-string/jumbo v2, " ]\n"

    #@4d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 73
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 68
    sget-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    #@e
    .line 70
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    #@10
    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 61
    sget-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getEncoded()[B

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/List;

    #@10
    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    #@12
    .line 63
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    #@14
    return-object v0
.end method
