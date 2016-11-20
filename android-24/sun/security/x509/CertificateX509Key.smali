.class public Lsun/security/x509/CertificateX509Key;
.super Ljava/lang/Object;
.source "CertificateX509Key.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.key"

.field public static final KEY:Ljava/lang/String; = "value"

.field public static final NAME:Ljava/lang/String; = "key"


# instance fields
.field private key:Ljava/security/PublicKey;


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
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    new-instance v0, Lsun/security/util/DerValue;

    #@5
    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@8
    .line 86
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@e
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@5
    .line 63
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
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@6
    move-result-object v0

    #@7
    .line 75
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@d
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
    .line 138
    const-string/jumbo v0, "value"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 139
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@c
    .line 137
    return-void

    #@d
    .line 141
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

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
    .line 104
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 105
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@7
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->write([B)V

    #@e
    .line 107
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@15
    .line 103
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
    .line 126
    const-string/jumbo v0, "value"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 127
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@b
    return-object v0

    #@c
    .line 129
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

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
    .line 151
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 152
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "value"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 154
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
    .line 161
    const-string/jumbo v0, "key"

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
    .line 114
    const-string/jumbo v0, "value"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 115
    check-cast p2, Ljava/security/PublicKey;

    #@b
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@d
    .line 113
    return-void

    #@e
    .line 117
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@10
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    #@13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 94
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    #@a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
