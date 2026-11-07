.class public Lsun/security/x509/CertificateIssuerExtension;
.super Lsun/security/x509/Extension;
.source "CertificateIssuerExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist ISSUER:Ljava/lang/String; = "issuer"

.field public static final blacklist NAME:Ljava/lang/String; = "CertificateIssuer"


# instance fields
.field private blacklist names:Lsun/security/x509/GeneralNames;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 112
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/CertificateIssuerExtension;->critical:Z

    .line 115
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    .line 116
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 117
    .local v0, "val":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    .line 118
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/x509/GeneralNames;)V
    .registers 3
    .param p1, "issuer"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 95
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/CertificateIssuerExtension;->critical:Z

    .line 97
    iput-object p1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    .line 98
    invoke-direct {p0}, Lsun/security/x509/CertificateIssuerExtension;->encodeThis()V

    .line 99
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1e

    .line 82
    :cond_d
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 83
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 84
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    .line 85
    return-void

    .line 79
    .end local v0    # "os":Lsun/security/util/DerOutputStream;
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const-string v0, "issuer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    .line 165
    invoke-direct {p0}, Lsun/security/x509/CertificateIssuerExtension;->encodeThis()V

    .line 166
    return-void

    .line 162
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateIssuer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 184
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 185
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/CertificateIssuerExtension;->critical:Z

    .line 187
    invoke-direct {p0}, Lsun/security/x509/CertificateIssuerExtension;->encodeThis()V

    .line 189
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 190
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 191
    return-void
.end method

.method public bridge synthetic blacklist get(Ljava/lang/String;)Ljava/lang/Object;
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
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificateIssuerExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const-string v0, "issuer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    return-object v0

    .line 148
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateIssuer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 199
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "issuer"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 207
    const-string v0, "CertificateIssuer"

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const-string v0, "issuer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 127
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    if-eqz v0, :cond_15

    .line 131
    move-object v0, p2

    check-cast v0, Lsun/security/x509/GeneralNames;

    iput-object v0, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    .line 136
    invoke-direct {p0}, Lsun/security/x509/CertificateIssuerExtension;->encodeThis()V

    .line 137
    return-void

    .line 128
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value must be of type GeneralNames"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateIssuer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Certificate Issuer [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/CertificateIssuerExtension;->names:Lsun/security/x509/GeneralNames;

    .line 173
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method
