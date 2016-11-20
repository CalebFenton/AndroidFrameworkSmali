.class public Lsun/security/x509/SubjectKeyIdentifierExtension;
.super Lsun/security/x509/Extension;
.source "SubjectKeyIdentifierExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.SubjectKeyIdentifier"

.field public static final KEY_ID:Ljava/lang/String; = "key_id"

.field public static final NAME:Ljava/lang/String; = "SubjectKeyIdentifier"


# instance fields
.field private id:Lsun/security/x509/KeyIdentifier;


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
    .line 105
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 70
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@6
    .line 107
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    #@8
    iput-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@a
    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v1

    #@e
    iput-boolean v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    #@10
    .line 109
    check-cast p2, [B

    #@12
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    #@14
    .line 110
    new-instance v0, Lsun/security/util/DerValue;

    #@16
    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    #@18
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@1b
    .line 111
    .local v0, "val":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/KeyIdentifier;

    #@1d
    invoke-direct {v1, v0}, Lsun/security/x509/KeyIdentifier;-><init>(Lsun/security/util/DerValue;)V

    #@20
    iput-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@22
    .line 106
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "octetString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 70
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@6
    .line 90
    new-instance v0, Lsun/security/x509/KeyIdentifier;

    #@8
    invoke-direct {v0, p1}, Lsun/security/x509/KeyIdentifier;-><init>([B)V

    #@b
    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@d
    .line 92
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    #@f
    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@11
    .line 93
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    #@14
    .line 94
    invoke-direct {p0}, Lsun/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    #@17
    .line 89
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
    .line 74
    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 75
    iput-object v2, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    #@7
    .line 76
    return-void

    #@8
    .line 78
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@a
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@d
    .line 79
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@f
    invoke-virtual {v1, v0}, Lsun/security/x509/KeyIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    #@12
    .line 80
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    #@18
    .line 73
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
    .line 172
    const-string/jumbo v0, "key_id"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 173
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@c
    .line 178
    invoke-direct {p0}, Lsun/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    #@f
    .line 171
    return-void

    #@10
    .line 175
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectKeyIdentifierExtension."

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
    .line 129
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 130
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 131
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 132
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    #@10
    .line 133
    invoke-direct {p0}, Lsun/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    #@13
    .line 135
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 136
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 128
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
    .line 159
    invoke-virtual {p0, p1}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    const-string/jumbo v0, "key_id"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 161
    iget-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@b
    return-object v0

    #@c
    .line 163
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectKeyIdentifierExtension."

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
    .line 186
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 187
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "key_id"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 189
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
    .line 196
    const-string/jumbo v0, "SubjectKeyIdentifier"

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
    .line 143
    const-string/jumbo v0, "key_id"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 144
    instance-of v0, p2, Lsun/security/x509/KeyIdentifier;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 145
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type KeyIdentifier."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 148
    :cond_0
    check-cast p2, Lsun/security/x509/KeyIdentifier;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@1a
    .line 153
    invoke-direct {p0}, Lsun/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    #@1d
    .line 142
    return-void

    #@1e
    .line 150
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectKeyIdentifierExtension."

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 118
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
    const-string/jumbo v1, "SubjectKeyIdentifier [\n"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 119
    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 119
    const-string/jumbo v1, "]\n"

    #@21
    .line 118
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
