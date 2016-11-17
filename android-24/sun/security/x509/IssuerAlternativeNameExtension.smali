.class public Lsun/security/x509/IssuerAlternativeNameExtension;
.super Lsun/security/x509/Extension;
.source "IssuerAlternativeNameExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.IssuerAlternativeName"

.field public static final ISSUER_NAME:Ljava/lang/String; = "issuer_name"

.field public static final NAME:Ljava/lang/String; = "IssuerAlternativeName"


# instance fields
.field names:Lsun/security/x509/GeneralNames;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@6
    .line 112
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@8
    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@a
    .line 113
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    #@d
    .line 114
    new-instance v0, Lsun/security/x509/GeneralNames;

    #@f
    invoke-direct {v0}, Lsun/security/x509/GeneralNames;-><init>()V

    #@12
    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@14
    .line 111
    return-void
.end method

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
    const/4 v1, 0x0

    #@1
    .line 125
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@4
    .line 65
    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@6
    .line 127
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@8
    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@a
    .line 128
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v1

    #@e
    iput-boolean v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    #@10
    .line 129
    check-cast p2, [B

    #@12
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    #@14
    .line 130
    new-instance v0, Lsun/security/util/DerValue;

    #@16
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    #@18
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@1b
    .line 131
    .local v0, "val":Lsun/security/util/DerValue;
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 132
    new-instance v1, Lsun/security/x509/GeneralNames;

    #@21
    invoke-direct {v1}, Lsun/security/x509/GeneralNames;-><init>()V

    #@24
    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@26
    .line 133
    return-void

    #@27
    .line 136
    :cond_0
    new-instance v1, Lsun/security/x509/GeneralNames;

    #@29
    invoke-direct {v1, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    #@2c
    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@2e
    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lsun/security/x509/GeneralNames;)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@6
    .line 102
    iput-object p2, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@8
    .line 103
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@a
    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@c
    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    iput-boolean v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    #@12
    .line 105
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    #@15
    .line 101
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;)V
    .locals 1
    .param p1, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@6
    .line 86
    iput-object p1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@8
    .line 87
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@a
    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@c
    .line 88
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    #@f
    .line 89
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    #@12
    .line 85
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
    .line 69
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@7
    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 70
    :cond_0
    iput-object v2, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    #@f
    .line 71
    return-void

    #@10
    .line 73
    :cond_1
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@12
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@15
    .line 74
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@17
    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    #@1a
    .line 75
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    #@20
    .line 68
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
    .line 206
    const-string/jumbo v0, "issuer_name"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 207
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@c
    .line 212
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    #@f
    .line 205
    return-void

    #@10
    .line 209
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:IssuerAlternativeName."

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
    .line 163
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 164
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 165
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 166
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->critical:Z

    #@10
    .line 167
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    #@13
    .line 169
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 170
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 162
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "issuer_name"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 195
    iget-object v0, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@b
    return-object v0

    #@c
    .line 197
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:IssuerAlternativeName."

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
    .line 220
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 221
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "issuer_name"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 223
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
    .line 230
    const-string/jumbo v0, "IssuerAlternativeName"

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
    .line 177
    const-string/jumbo v0, "issuer_name"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 178
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 179
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type GeneralNames."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 182
    :cond_0
    check-cast p2, Lsun/security/x509/GeneralNames;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@1a
    .line 187
    invoke-direct {p0}, Lsun/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    #@1d
    .line 176
    return-void

    #@1e
    .line 184
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:IssuerAlternativeName."

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    const-string/jumbo v4, "IssuerAlternativeName [\n"

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 145
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@1a
    if-nez v3, :cond_1

    #@1c
    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, "  null\n"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 152
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v4, "]\n"

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 153
    return-object v2

    #@45
    .line 148
    :cond_1
    iget-object v3, p0, Lsun/security/x509/IssuerAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    #@47
    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v1

    #@4f
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_0

    #@55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Lsun/security/x509/GeneralName;

    #@5b
    .line 149
    .local v0, "name":Lsun/security/x509/GeneralName;
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    const-string/jumbo v4, "  "

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    const-string/jumbo v4, "\n"

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    goto :goto_0
.end method
