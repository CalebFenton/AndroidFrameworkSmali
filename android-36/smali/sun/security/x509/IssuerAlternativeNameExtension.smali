.class public Lsun/security/x509/IssuerAlternativeNameExtension;
.super Lsun/security/x509/Extension;
.source "IssuerAlternativeNameExtension.java"

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
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.IssuerAlternativeName"

.field public static final blacklist ISSUER_NAME:Ljava/lang/String; = "issuer_name"

.field public static final blacklist NAME:Ljava/lang/String; = "IssuerAlternativeName"


# instance fields
.field blacklist names:Lsun/security/x509/GeneralNames;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 112
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    .line 114
    new-instance v0, Lsun/security/x509/GeneralNames;

    invoke-direct {v0}, Lsun/security/x509/GeneralNames;-><init>()V

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 127
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    .line 129
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    .line 130
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 131
    .local v0, "val":Lsun/security/util/DerValue;
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v1, :cond_28

    .line 132
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1}, Lsun/security/x509/GeneralNames;-><init>()V

    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 133
    return-void

    .line 136
    :cond_28
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Lsun/security/x509/GeneralNames;)V
    .registers 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 102
    iput-object p2, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 103
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    .line 105
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/x509/GeneralNames;)V
    .registers 3
    .param p1, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 86
    iput-object p1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 87
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    .line 89
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    .line 90
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1e

    .line 73
    :cond_d
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 74
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 75
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    .line 76
    return-void

    .line 70
    .end local v0    # "os":Lsun/security/util/DerOutputStream;
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    .line 71
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

    .line 206
    const-string v0, "issuer_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 212
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    .line 213
    return-void

    .line 209
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:IssuerAlternativeName."

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

    .line 163
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 164
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 165
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    .line 167
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    .line 169
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 170
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 171
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

    .line 50
    invoke-virtual {p0, p1}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

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

    .line 194
    const-string v0, "issuer_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    return-object v0

    .line 197
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:IssuerAlternativeName."

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

    .line 220
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 221
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "issuer_name"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 230
    const-string v0, "IssuerAlternativeName"

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

    .line 177
    const-string v0, "issuer_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 178
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    if-eqz v0, :cond_15

    .line 182
    move-object v0, p2

    check-cast v0, Lsun/security/x509/GeneralNames;

    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 187
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    .line 188
    return-void

    .line 179
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type GeneralNames."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:IssuerAlternativeName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IssuerAlternativeName [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    if-nez v1, :cond_2f

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    .line 148
    :cond_2f
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralName;

    .line 149
    .local v2, "name":Lsun/security/x509/GeneralName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .end local v2    # "name":Lsun/security/x509/GeneralName;
    goto :goto_39

    .line 152
    :cond_63
    :goto_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method
