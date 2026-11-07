.class public Lsun/security/x509/CertificateVersion;
.super Ljava/lang/Object;
.source "CertificateVersion.java"

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
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.version"

.field public static final blacklist NAME:Ljava/lang/String; = "version"

.field public static final blacklist V1:I = 0x0

.field public static final blacklist V2:I = 0x1

.field public static final blacklist V3:I = 0x2

.field public static final blacklist VERSION:Ljava/lang/String; = "number"


# instance fields
.field blacklist version:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 90
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 91
    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 5
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 102
    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    goto :goto_2e

    .line 105
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X.509 Certificate version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2e
    :goto_2e
    iput p1, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 130
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 131
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 133
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    .line 134
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

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 117
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 118
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 120
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 143
    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 145
    invoke-direct {p0, p1}, Lsun/security/x509/CertificateVersion;->construct(Lsun/security/util/DerValue;)V

    .line 146
    return-void
.end method

.method private blacklist construct(Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 77
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getInteger()I

    move-result v0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 79
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 80
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "X.509 version, bad format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_29
    :goto_29
    return-void
.end method

.method private blacklist getVersion()I
    .registers 2

    .line 71
    iget v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    return v0
.end method


# virtual methods
.method public blacklist compare(I)I
    .registers 3
    .param p1, "vers"    # I

    .line 237
    iget v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 213
    return-void

    .line 210
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    if-nez v0, :cond_5

    .line 164
    return-void

    .line 166
    :cond_5
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 167
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 169
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 170
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, -0x80

    invoke-static {v4, v2, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 173
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 174
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 196
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lsun/security/x509/CertificateVersion;->getVersion()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 198
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 42
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificateVersion;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
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
    const-string v1, "number"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 230
    const-string v0, "version"

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

    .line 180
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    .line 183
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 184
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/CertificateVersion;->version:I

    .line 189
    return-void

    .line 186
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type Integer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version: V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/security/x509/CertificateVersion;->version:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
