.class public Lsun/security/x509/CertificateX509Key;
.super Ljava/lang/Object;
.source "CertificateX509Key.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.key"

.field public static final blacklist KEY:Ljava/lang/String; = "value"

.field public static final blacklist NAME:Ljava/lang/String; = "key"


# instance fields
.field private blacklist key:Ljava/security/PublicKey;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 87
    return-void
.end method

.method public constructor greylist <init>(Ljava/security/PublicKey;)V
    .registers 2
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 75
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 76
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

    .line 138
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 144
    return-void

    .line 141
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 105
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 107
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 108
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

    .line 43
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificateX509Key;->get(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    return-object v0

    .line 129
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

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

    .line 151
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 152
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 161
    const-string v0, "key"

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

    .line 114
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 115
    move-object v0, p2

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    .line 120
    return-void

    .line 117
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 94
    :cond_7
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
