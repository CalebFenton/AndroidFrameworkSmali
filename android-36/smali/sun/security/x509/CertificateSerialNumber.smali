.class public Lsun/security/x509/CertificateSerialNumber;
.super Ljava/lang/Object;
.source "CertificateSerialNumber.java"

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
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.serialNumber"

.field public static final blacklist NAME:Ljava/lang/String; = "serialNumber"

.field public static final blacklist NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private blacklist serial:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor greylist <init>(I)V
    .registers 3
    .param p1, "num"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(I)V

    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    .line 73
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

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    .line 93
    return-void
.end method

.method public constructor greylist <init>(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "num"    # Ljava/math/BigInteger;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    .line 64
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
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    .line 83
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

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    .line 103
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

    .line 157
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    .line 163
    return-void

    .line 160
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

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

    .line 120
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 121
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    invoke-virtual {v1, v0}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    .line 123
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 124
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

    .line 42
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificateSerialNumber;->get(Ljava/lang/String;)Lsun/security/x509/SerialNumber;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Lsun/security/x509/SerialNumber;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    return-object v0

    .line 148
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

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

    .line 170
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 171
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "number"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 180
    const-string v0, "serialNumber"

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

    .line 130
    instance-of v0, p2, Lsun/security/x509/SerialNumber;

    if-eqz v0, :cond_1a

    .line 133
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 134
    move-object v0, p2

    check-cast v0, Lsun/security/x509/SerialNumber;

    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    .line 139
    return-void

    .line 136
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type SerialNumber."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 110
    :cond_7
    iget-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
