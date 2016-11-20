.class public Lsun/security/x509/CertificateIssuerExtension;
.super Lsun/security/x509/Extension;
.source "CertificateIssuerExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ISSUER:Ljava/lang/String; = "issuer"

.field public static final NAME:Ljava/lang/String; = "CertificateIssuer"


# instance fields
.field private names:Lsun/security/x509/GeneralNames;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 112
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v1

    #@b
    iput-boolean v1, p0, Lsun/security/x509/CertificateIssuerExtension;->critical:Z

    #@d
    .line 115
    check-cast p2, [B

    #@f
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    #@11
    .line 116
    new-instance v0, Lsun/security/util/DerValue;

    #@13
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    #@15
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@18
    .line 117
    .local v0, "val":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralNames;

    #@1a
    invoke-direct {v1, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    #@1d
    iput-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@1f
    .line 111
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;)V
    .locals 1
    .param p1, "issuer"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 95
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 96
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lsun/security/x509/CertificateIssuerExtension;->critical:Z

    #@a
    .line 97
    iput-object p1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@c
    .line 98
    invoke-direct {p0}, Lsun/security/x509/CertificateIssuerExtension;->encodeThis()V

    #@f
    .line 94
    return-void
.end method

.method private encodeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 78
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@7
    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 79
    :cond_0
    iput-object v2, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    #@f
    .line 80
    return-void

    #@10
    .line 82
    :cond_1
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@12
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@15
    .line 83
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@17
    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    #@1a
    .line 84
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    #@20
    .line 77
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
    .line 159
    const-string/jumbo v0, "issuer"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 160
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@c
    .line 165
    invoke-direct {p0}, Lsun/security/x509/CertificateIssuerExtension;->encodeThis()V

    #@f
    .line 158
    return-void

    #@10
    .line 162
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateIssuer"

    #@15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
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
    .line 183
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 184
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 185
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 186
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lsun/security/x509/CertificateIssuerExtension;->critical:Z

    #@10
    .line 187
    invoke-direct {p0}, Lsun/security/x509/CertificateIssuerExtension;->encodeThis()V

    #@13
    .line 189
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 190
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 182
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
    .line 145
    const-string/jumbo v0, "issuer"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 146
    iget-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@b
    return-object v0

    #@c
    .line 148
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateIssuer"

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
    .line 198
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 199
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "issuer"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 200
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
    .line 207
    const-string/jumbo v0, "CertificateIssuer"

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
    .line 126
    const-string/jumbo v0, "issuer"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 127
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 128
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value must be of type GeneralNames"

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 131
    :cond_0
    check-cast p2, Lsun/security/x509/GeneralNames;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@1a
    .line 136
    invoke-direct {p0}, Lsun/security/x509/CertificateIssuerExtension;->encodeThis()V

    #@1d
    .line 125
    return-void

    #@1e
    .line 133
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateIssuer"

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "Certificate Issuer [\n"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 173
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    #@16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 173
    const-string/jumbo v1, "]\n"

    #@21
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
