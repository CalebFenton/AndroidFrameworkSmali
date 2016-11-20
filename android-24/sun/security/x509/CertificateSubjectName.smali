.class public Lsun/security/x509/CertificateSubjectName;
.super Ljava/lang/Object;
.source "CertificateSubjectName.java"

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
.field public static final DN_NAME:Ljava/lang/String; = "dname"

.field public static final DN_PRINCIPAL:Ljava/lang/String; = "x500principal"

.field public static final IDENT:Ljava/lang/String; = "x509.info.subject"

.field public static final NAME:Ljava/lang/String; = "subject"


# instance fields
.field private dnName:Lsun/security/x509/X500Name;

.field private dnPrincipal:Ljavax/security/auth/x500/X500Principal;


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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Lsun/security/util/DerValue;

    #@5
    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@8
    .line 93
    .local v0, "derVal":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/X500Name;

    #@a
    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    #@d
    iput-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@f
    .line 91
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    new-instance v0, Lsun/security/x509/X500Name;

    #@5
    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    #@8
    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@a
    .line 81
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;)V
    .locals 0
    .param p1, "name"    # Lsun/security/x509/X500Name;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput-object p1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@5
    .line 71
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
    const/4 v1, 0x0

    #@1
    .line 154
    const-string/jumbo v0, "dname"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 155
    iput-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@c
    .line 156
    iput-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@e
    .line 153
    return-void

    #@f
    .line 158
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@11
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    #@14
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
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
    .line 111
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 112
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@7
    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    #@a
    .line 114
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@11
    .line 110
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
    .line 137
    const-string/jumbo v0, "dname"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 138
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@b
    return-object v0

    #@c
    .line 139
    :cond_0
    const-string/jumbo v0, "x500principal"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 140
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@17
    if-nez v0, :cond_1

    #@19
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 141
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@1f
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@25
    .line 143
    :cond_1
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@27
    return-object v0

    #@28
    .line 145
    :cond_2
    new-instance v0, Ljava/io/IOException;

    #@2a
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    #@2d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
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
    .line 168
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 169
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "dname"

    #@8
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@b
    .line 171
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 178
    const-string/jumbo v0, "subject"

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
    .line 121
    instance-of v0, p2, Lsun/security/x509/X500Name;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 122
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute must be of type X500Name."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 124
    :cond_0
    const-string/jumbo v0, "dname"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 125
    nop

    #@17
    nop

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@1a
    .line 126
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@1d
    .line 120
    return-void

    #@1e
    .line 128
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 101
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    #@a
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
