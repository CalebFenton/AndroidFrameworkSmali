.class public Lsun/security/x509/CertificateSerialNumber;
.super Ljava/lang/Object;
.source "CertificateSerialNumber.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.serialNumber"

.field public static final NAME:Ljava/lang/String; = "serialNumber"

.field public static final NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private serial:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "num"    # I

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    new-instance v0, Lsun/security/x509/SerialNumber;

    #@5
    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(I)V

    #@8
    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@a
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
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
    new-instance v0, Lsun/security/x509/SerialNumber;

    #@5
    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/io/InputStream;)V

    #@8
    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@a
    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    new-instance v0, Lsun/security/x509/SerialNumber;

    #@5
    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    #@8
    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@a
    .line 62
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
    new-instance v0, Lsun/security/x509/SerialNumber;

    #@5
    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerInputStream;)V

    #@8
    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@a
    .line 81
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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    new-instance v0, Lsun/security/x509/SerialNumber;

    #@5
    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    #@8
    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@a
    .line 101
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
    .line 157
    const-string/jumbo v0, "number"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 158
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@c
    .line 156
    return-void

    #@d
    .line 160
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

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
    .line 120
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 121
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@7
    invoke-virtual {v1, v0}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    #@a
    .line 123
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@11
    .line 119
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
    .line 145
    const-string/jumbo v0, "number"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 146
    iget-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@b
    return-object v0

    #@c
    .line 148
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

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
    .line 170
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 171
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "number"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 173
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
    .line 180
    const-string/jumbo v0, "serialNumber"

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
    .line 130
    instance-of v0, p2, Lsun/security/x509/SerialNumber;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 131
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute must be of type SerialNumber."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 133
    :cond_0
    const-string/jumbo v0, "number"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 134
    check-cast p2, Lsun/security/x509/SerialNumber;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@1a
    .line 129
    return-void

    #@1b
    .line 136
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1d
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

    #@20
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 110
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateSerialNumber;->serial:Lsun/security/x509/SerialNumber;

    #@a
    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
