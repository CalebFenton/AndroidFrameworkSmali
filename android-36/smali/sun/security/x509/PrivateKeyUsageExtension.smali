.class public Lsun/security/x509/PrivateKeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "PrivateKeyUsageExtension.java"

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
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.PrivateKeyUsage"

.field public static final blacklist NAME:Ljava/lang/String; = "PrivateKeyUsage"

.field public static final blacklist NOT_AFTER:Ljava/lang/String; = "not_after"

.field public static final blacklist NOT_BEFORE:Ljava/lang/String; = "not_before"

.field private static final blacklist TAG_AFTER:B = 0x1t

.field private static final blacklist TAG_BEFORE:B


# instance fields
.field private blacklist notAfter:Ljava/util/Date;

.field private blacklist notBefore:Ljava/util/Date;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 81
    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 137
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    .line 140
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    .line 141
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 142
    .local v0, "str":Lsun/security/util/DerInputStream;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 147
    .local v1, "seq":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    array-length v3, v1

    if-ge v2, v3, :cond_8f

    .line 148
    aget-object v3, v1, v2

    .line 150
    .local v3, "opt":Lsun/security/util/DerValue;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    const/16 v5, 0x18

    if-eqz v4, :cond_58

    .line 151
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-nez v4, :cond_58

    .line 152
    iget-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-nez v4, :cond_50

    .line 156
    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 157
    new-instance v4, Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 158
    .end local v0    # "str":Lsun/security/util/DerInputStream;
    .local v4, "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    move-object v0, v4

    goto :goto_7c

    .line 153
    .end local v4    # "str":Lsun/security/util/DerInputStream;
    .restart local v0    # "str":Lsun/security/util/DerInputStream;
    :cond_50
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    const-string v5, "Duplicate notBefore in PrivateKeyUsage."

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_58
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 161
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-nez v4, :cond_87

    .line 162
    iget-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-nez v4, :cond_7f

    .line 166
    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 167
    new-instance v4, Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 168
    .end local v0    # "str":Lsun/security/util/DerInputStream;
    .restart local v4    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    move-object v0, v4

    .line 147
    .end local v3    # "opt":Lsun/security/util/DerValue;
    .end local v4    # "str":Lsun/security/util/DerInputStream;
    .restart local v0    # "str":Lsun/security/util/DerInputStream;
    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 163
    .restart local v3    # "opt":Lsun/security/util/DerValue;
    :cond_7f
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    const-string v5, "Duplicate notAfter in PrivateKeyUsage."

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_87
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid encoding of PrivateKeyUsageExtension"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    .end local v2    # "i":I
    .end local v3    # "opt":Lsun/security/util/DerValue;
    :cond_8f
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;)V
    .registers 4
    .param p1, "notBefore"    # Ljava/util/Date;
    .param p2, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 81
    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 118
    iput-object p1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 119
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 121
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    .line 123
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    .line 124
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-nez v0, :cond_c

    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-nez v0, :cond_c

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    .line 87
    return-void

    .line 89
    :cond_c
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 91
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 92
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    const/16 v3, -0x80

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    .line 93
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 94
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v2, v5}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 95
    invoke-static {v3, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v1, v5, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 98
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2e
    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-eqz v2, :cond_44

    .line 99
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 100
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v2, v5}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 101
    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 104
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_44
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 105
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    .line 106
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    const-string v0, "not_before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 284
    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    goto :goto_16

    .line 285
    :cond_c
    const-string v0, "not_after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 286
    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 291
    :goto_16
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    .line 292
    return-void

    .line 288
    :cond_1a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

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

    .line 233
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 234
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 235
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    .line 237
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    .line 239
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 240
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 241
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

    .line 62
    invoke-virtual {p0, p1}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 268
    const-string v0, "not_before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 269
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 270
    :cond_14
    const-string v0, "not_after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 271
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 273
    :cond_28
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

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

    .line 299
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 300
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "not_before"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 301
    const-string v1, "not_after"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 303
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 310
    const-string v0, "PrivateKeyUsage"

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_2b

    .line 252
    const-string v0, "not_before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 253
    move-object v0, p2

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    goto :goto_1f

    .line 254
    :cond_12
    const-string v0, "not_after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 255
    move-object v0, p2

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 260
    :goto_1f
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    .line 261
    return-void

    .line 257
    :cond_23
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2b
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Attribute must be of type Date."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PrivateKeyUsage: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    const-string v2, ""

    if-nez v1, :cond_1b

    move-object v1, v2

    goto :goto_3a

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-nez v1, :cond_43

    goto :goto_5c

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    return-object v0
.end method

.method public blacklist valid()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 196
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/PrivateKeyUsageExtension;->valid(Ljava/util/Date;)V

    .line 197
    return-void
.end method

.method public blacklist valid(Ljava/util/Date;)V
    .registers 5
    .param p1, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    .line 210
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2f

    .line 217
    :cond_10
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotBefore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 218
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_5b

    .line 221
    :cond_3c
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotAfter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 222
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_5b
    :goto_5b
    return-void
.end method
