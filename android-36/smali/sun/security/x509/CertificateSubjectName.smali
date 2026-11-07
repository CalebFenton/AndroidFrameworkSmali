.class public Lsun/security/x509/CertificateSubjectName;
.super Ljava/lang/Object;
.source "CertificateSubjectName.java"

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
.field public static final blacklist DN_NAME:Ljava/lang/String; = "dname"

.field public static final blacklist DN_PRINCIPAL:Ljava/lang/String; = "x500principal"

.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.subject"

.field public static final blacklist NAME:Ljava/lang/String; = "subject"


# instance fields
.field private blacklist dnName:Lsun/security/x509/X500Name;

.field private blacklist dnPrincipal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v0, "derVal":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 83
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/x509/X500Name;)V
    .registers 2
    .param p1, "name"    # Lsun/security/x509/X500Name;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 73
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

    .line 154
    const-string v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 156
    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 161
    return-void

    .line 158
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

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

    .line 111
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 112
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 114
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    return-void
.end method

.method public greylist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const-string v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    return-object v0

    .line 139
    :cond_b
    const-string v0, "x500principal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 140
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_23

    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    if-eqz v0, :cond_23

    .line 141
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 143
    :cond_23
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0

    .line 145
    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

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

    .line 168
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 169
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "dname"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 178
    const-string v0, "subject"

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

    .line 121
    instance-of v0, p2, Lsun/security/x509/X500Name;

    if-eqz v0, :cond_1d

    .line 124
    const-string v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 125
    move-object v0, p2

    check-cast v0, Lsun/security/x509/X500Name;

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 131
    return-void

    .line 128
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type X500Name."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 101
    :cond_7
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
