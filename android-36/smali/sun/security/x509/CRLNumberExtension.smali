.class public Lsun/security/x509/CRLNumberExtension;
.super Lsun/security/x509/Extension;
.source "CRLNumberExtension.java"

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
.field private static final blacklist LABEL:Ljava/lang/String; = "CRL Number"

.field public static final blacklist NAME:Ljava/lang/String; = "CRLNumber"

.field public static final blacklist NUMBER:Ljava/lang/String; = "value"


# instance fields
.field private blacklist crlNumber:Ljava/math/BigInteger;

.field private blacklist extensionLabel:Ljava/lang/String;

.field private blacklist extensionName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 8
    .param p1, "crlNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const-string v4, "CRLNumber"

    const-string v5, "CRL Number"

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const-string v4, "CRLNumber"

    const-string v5, "CRL Number"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "critical":Ljava/lang/Boolean;
    .end local p2    # "value":Ljava/lang/Object;
    .local v2, "critical":Ljava/lang/Boolean;
    .local v3, "value":Ljava/lang/Object;
    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 8
    .param p1, "crlNum"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const-string v4, "CRLNumber"

    const-string v5, "CRL Number"

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "crlNum":Ljava/math/BigInteger;
    .local v3, "crlNum":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method protected constructor blacklist <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "critical"    # Ljava/lang/Boolean;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "extensionName"    # Ljava/lang/String;
    .param p5, "extensionLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 130
    iput-object p1, p0, Lsun/security/x509/CRLNumberExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 131
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/CRLNumberExtension;->critical:Z

    .line 132
    move-object v0, p3

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    .line 133
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 134
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 135
    iput-object p4, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lsun/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    .line 137
    return-void
.end method

.method protected constructor blacklist <init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "crlNum"    # Ljava/math/BigInteger;
    .param p4, "extensionName"    # Ljava/lang/String;
    .param p5, "extensionLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 102
    iput-object p1, p0, Lsun/security/x509/CRLNumberExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 103
    iput-boolean p2, p0, Lsun/security/x509/CRLNumberExtension;->critical:Z

    .line 104
    iput-object p3, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 105
    iput-object p4, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lsun/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lsun/security/x509/CRLNumberExtension;->encodeThis()V

    .line 108
    return-void
.end method

.method private greylist encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    if-nez v0, :cond_8

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    .line 67
    return-void

    .line 69
    :cond_8
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 70
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 71
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 177
    invoke-direct {p0}, Lsun/security/x509/CRLNumberExtension;->encodeThis()V

    .line 178
    return-void

    .line 174
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name not recognized by CertAttrSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 198
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lsun/security/x509/CRLNumberExtension;->encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V

    .line 199
    return-void
.end method

.method protected blacklist encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "isCritical"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 210
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->extensionValue:[B

    if-nez v1, :cond_10

    .line 211
    iput-object p2, p0, Lsun/security/x509/CRLNumberExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 212
    iput-boolean p3, p0, Lsun/security/x509/CRLNumberExtension;->critical:Z

    .line 213
    invoke-direct {p0}, Lsun/security/x509/CRLNumberExtension;->encodeThis()V

    .line 215
    :cond_10
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 216
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 217
    return-void
.end method

.method public bridge synthetic greylist-max-r get(Ljava/lang/String;)Ljava/lang/Object;
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

    .line 48
    invoke-virtual {p0, p1}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r get(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 160
    iget-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    return-object v0

    .line 162
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name not recognized by CertAttrSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 224
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 225
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 144
    instance-of v0, p2, Ljava/math/BigInteger;

    if-eqz v0, :cond_15

    .line 147
    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    .line 152
    invoke-direct {p0}, Lsun/security/x509/CRLNumberExtension;->encodeThis()V

    .line 153
    return-void

    .line 145
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type BigInteger."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name not recognized by CertAttrSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    if-nez v1, :cond_20

    const-string v1, ""

    goto :goto_26

    :cond_20
    iget-object v1, p0, Lsun/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    invoke-static {v1}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
