.class public Lsun/security/x509/CertificateAlgorithmId;
.super Ljava/lang/Object;
.source "CertificateAlgorithmId.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final IDENT:Ljava/lang/String; = "x509.info.algorithmID"

.field public static final NAME:Ljava/lang/String; = "algorithmID"


# instance fields
.field private algId:Lsun/security/x509/AlgorithmId;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    new-instance v0, Lsun/security/util/DerValue;

    #@5
    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@8
    .line 90
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@e
    .line 88
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 2
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@6
    move-result-object v0

    #@7
    .line 79
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 77
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/AlgorithmId;)V
    .locals 0
    .param p1, "algId"    # Lsun/security/x509/AlgorithmId;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p1, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@5
    .line 67
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    const-string/jumbo v0, "algorithm"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 147
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@c
    .line 145
    return-void

    #@d
    .line 149
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateAlgorithmId."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 110
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@7
    invoke-virtual {v1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@a
    .line 112
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@11
    .line 108
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    const-string/jumbo v0, "algorithm"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 135
    iget-object v0, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@b
    return-object v0

    #@c
    .line 137
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateAlgorithmId."

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 160
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "algorithm"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 161
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    const-string/jumbo v0, "algorithmID"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    instance-of v0, p2, Lsun/security/x509/AlgorithmId;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 120
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute must be of type AlgorithmId."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 122
    :cond_0
    const-string/jumbo v0, "algorithm"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 123
    check-cast p2, Lsun/security/x509/AlgorithmId;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@1a
    .line 118
    return-void

    #@1b
    .line 125
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1d
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateAlgorithmId."

    #@20
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    iget-object v1, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@f
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 99
    const-string/jumbo v1, ", OID = "

    #@1a
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 99
    iget-object v1, p0, Lsun/security/x509/CertificateAlgorithmId;->algId:Lsun/security/x509/AlgorithmId;

    #@20
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 99
    const-string/jumbo v1, "\n"

    #@2f
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
