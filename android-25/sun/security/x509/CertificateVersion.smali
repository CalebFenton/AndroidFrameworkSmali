.class public Lsun/security/x509/CertificateVersion;
.super Ljava/lang/Object;
.source "CertificateVersion.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.version"

.field public static final NAME:Ljava/lang/String; = "version"

.field public static final V1:I = 0x0

.field public static final V2:I = 0x1

.field public static final V3:I = 0x2

.field public static final VERSION:Ljava/lang/String; = "number"


# instance fields
.field version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@6
    .line 90
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@8
    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@6
    .line 102
    if-eqz p1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    if-ne p1, v0, :cond_1

    #@b
    .line 103
    :cond_0
    iput p1, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@d
    .line 99
    return-void

    #@e
    .line 102
    :cond_1
    const/4 v0, 0x2

    #@f
    if-eq p1, v0, :cond_0

    #@11
    .line 105
    new-instance v0, Ljava/io/IOException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "X.509 Certificate version "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 106
    const-string/jumbo v2, " not supported.\n"

    #@26
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0
.end method

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
    const/4 v1, 0x0

    #@1
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@6
    .line 130
    iput v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@8
    .line 131
    new-instance v0, Lsun/security/util/DerValue;

    #@a
    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@d
    .line 133
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    #@10
    .line 129
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
    const/4 v1, 0x0

    #@1
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@6
    .line 117
    iput v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@8
    .line 118
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@b
    move-result-object v0

    #@c
    .line 120
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    #@f
    .line 116
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@6
    .line 143
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@8
    .line 145
    invoke-direct {p0, p1}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    #@b
    .line 142
    return-void
.end method

.method private construct(Lsun/security/util/DerValue;)V
    .locals 2
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 77
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@e
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@11
    move-result-object p1

    #@12
    .line 78
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getInteger()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@18
    .line 79
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1a
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 80
    new-instance v0, Ljava/io/IOException;

    #@22
    const-string/jumbo v1, "X.509 version, bad format"

    #@25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 75
    :cond_0
    return-void
.end method

.method private getVersion()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@2
    return v0
.end method


# virtual methods
.method public compare(I)I
    .locals 1
    .param p1, "vers"    # I

    #@0
    .prologue
    .line 237
    iget v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@2
    sub-int/2addr v0, p1

    #@3
    return v0
.end method

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
    .line 207
    const-string/jumbo v0, "number"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 208
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@c
    .line 206
    return-void

    #@d
    .line 210
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 163
    iget v2, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 164
    return-void

    #@6
    .line 166
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@8
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@b
    .line 167
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget v2, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@d
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@10
    .line 169
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@12
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@15
    .line 170
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    const/16 v2, -0x80

    #@17
    const/4 v3, 0x1

    #@18
    invoke-static {v2, v3, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@1f
    .line 173
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@26
    .line 161
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
    .line 195
    const-string/jumbo v0, "number"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 196
    new-instance v0, Ljava/lang/Integer;

    #@b
    invoke-direct {p0}, Lsun/security/x509/CertificateVersion;->getVersion()I

    #@e
    move-result v1

    #@f
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@12
    return-object v0

    #@13
    .line 198
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@15
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    #@18
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
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
    const-string/jumbo v1, "number"

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
    const-string/jumbo v0, "version"

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
    .line 180
    instance-of v0, p2, Ljava/lang/Integer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 181
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute must be of type Integer."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 183
    :cond_0
    const-string/jumbo v0, "number"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 184
    check-cast p2, Ljava/lang/Integer;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@1e
    .line 179
    return-void

    #@1f
    .line 186
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@21
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    #@24
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Version: V"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
