.class public Lsun/security/x509/SubjectKeyIdentifierExtension;
.super Lsun/security/x509/Extension;
.source "SubjectKeyIdentifierExtension.java"

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
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.SubjectKeyIdentifier"

.field public static final blacklist KEY_ID:Ljava/lang/String; = "key_id"

.field public static final blacklist NAME:Ljava/lang/String; = "SubjectKeyIdentifier"


# instance fields
.field private blacklist id:Lsun/security/x509/KeyIdentifier;


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

    .line 106
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 107
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    .line 109
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    .line 110
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 111
    .local v0, "val":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/KeyIdentifier;

    invoke-direct {v1, v0}, Lsun/security/x509/KeyIdentifier;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 112
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 3
    .param p1, "octetString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 90
    new-instance v0, Lsun/security/x509/KeyIdentifier;

    invoke-direct {v0, p1}, Lsun/security/x509/KeyIdentifier;-><init>([B)V

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 92
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    .line 94
    invoke-direct {p0}, Lsun/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    .line 95
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-nez v0, :cond_8

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    .line 76
    return-void

    .line 78
    :cond_8
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 79
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v1, v0}, Lsun/security/x509/KeyIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    .line 80
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    .line 81
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

    .line 172
    const-string v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 178
    invoke-direct {p0}, Lsun/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    .line 179
    return-void

    .line 175
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:SubjectKeyIdentifierExtension."

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

    .line 129
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 130
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 131
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    .line 133
    invoke-direct {p0}, Lsun/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    .line 135
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 136
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 137
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

    .line 55
    invoke-virtual {p0, p1}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const-string v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 161
    iget-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    return-object v0

    .line 163
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:SubjectKeyIdentifierExtension."

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

    .line 186
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 187
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "key_id"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 196
    const-string v0, "SubjectKeyIdentifier"

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

    .line 143
    const-string v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 144
    instance-of v0, p2, Lsun/security/x509/KeyIdentifier;

    if-eqz v0, :cond_15

    .line 148
    move-object v0, p2

    check-cast v0, Lsun/security/x509/KeyIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 153
    invoke-direct {p0}, Lsun/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    .line 154
    return-void

    .line 145
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type KeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:SubjectKeyIdentifierExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubjectKeyIdentifier [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/SubjectKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 119
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    return-object v0
.end method
