.class public Lsun/security/x509/PrivateKeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "PrivateKeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.PrivateKeyUsage"

.field public static final NAME:Ljava/lang/String; = "PrivateKeyUsage"

.field public static final NOT_AFTER:Ljava/lang/String; = "not_after"

.field public static final NOT_BEFORE:Ljava/lang/String; = "not_before"

.field private static final TAG_AFTER:B = 0x1t

.field private static final TAG_BEFORE:B


# instance fields
.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 6
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x18

    #@2
    const/4 v4, 0x0

    #@3
    .line 134
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@6
    .line 79
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@8
    .line 80
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@a
    .line 136
    sget-object v4, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@c
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@e
    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v4

    #@12
    iput-boolean v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    #@14
    .line 139
    check-cast p2, [B

    #@16
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    #@18
    .line 140
    new-instance v3, Lsun/security/util/DerInputStream;

    #@1a
    iget-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    #@1c
    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@1f
    .line 141
    .local v3, "str":Lsun/security/util/DerInputStream;
    const/4 v4, 0x2

    #@20
    invoke-virtual {v3, v4}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@23
    move-result-object v2

    #@24
    .line 146
    .local v2, "seq":[Lsun/security/util/DerValue;
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@26
    if-ge v0, v4, :cond_6

    #@28
    .line 147
    aget-object v1, v2, v0

    #@2a
    .line 149
    .local v1, "opt":Lsun/security/util/DerValue;
    const/4 v4, 0x0

    #@2b
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 150
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_2

    #@37
    .line 159
    :cond_0
    const/4 v4, 0x1

    #@38
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_1

    #@3e
    .line 160
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_4

    #@44
    .line 169
    :cond_1
    new-instance v4, Ljava/io/IOException;

    #@46
    const-string/jumbo v5, "Invalid encoding of PrivateKeyUsageExtension"

    #@49
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4

    #@4d
    .line 151
    :cond_2
    iget-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@4f
    if-eqz v4, :cond_3

    #@51
    .line 152
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    #@53
    .line 153
    const-string/jumbo v5, "Duplicate notBefore in PrivateKeyUsage."

    #@56
    .line 152
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@59
    throw v4

    #@5a
    .line 155
    :cond_3
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    #@5d
    .line 156
    new-instance v3, Lsun/security/util/DerInputStream;

    #@5f
    .end local v3    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@62
    move-result-object v4

    #@63
    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@66
    .line 157
    .restart local v3    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@69
    move-result-object v4

    #@6a
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@6c
    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 161
    :cond_4
    iget-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@71
    if-eqz v4, :cond_5

    #@73
    .line 162
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    #@75
    .line 163
    const-string/jumbo v5, "Duplicate notAfter in PrivateKeyUsage."

    #@78
    .line 162
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4

    #@7c
    .line 165
    :cond_5
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    #@7f
    .line 166
    new-instance v3, Lsun/security/util/DerInputStream;

    #@81
    .end local v3    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@84
    move-result-object v4

    #@85
    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@88
    .line 167
    .restart local v3    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@8b
    move-result-object v4

    #@8c
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@8e
    goto :goto_1

    #@8f
    .line 135
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "notBefore"    # Ljava/util/Date;
    .param p2, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@4
    .line 79
    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@6
    .line 80
    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@8
    .line 117
    iput-object p1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@a
    .line 118
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@c
    .line 120
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@e
    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@10
    .line 121
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    #@13
    .line 122
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    #@16
    .line 116
    return-void
.end method

.method private encodeThis()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, -0x80

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 84
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@6
    if-nez v3, :cond_0

    #@8
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@a
    if-nez v3, :cond_0

    #@c
    .line 85
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    #@e
    .line 86
    return-void

    #@f
    .line 88
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@11
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@14
    .line 90
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@16
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@19
    .line 91
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 92
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@1f
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@22
    .line 93
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@24
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    #@27
    .line 94
    invoke-static {v6, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@2e
    .line 97
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 98
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@34
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@37
    .line 99
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@39
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    #@3c
    .line 101
    const/4 v3, 0x1

    #@3d
    .line 100
    invoke-static {v6, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@40
    move-result v3

    #@41
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@44
    .line 103
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    const/16 v3, 0x30

    #@46
    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@49
    .line 104
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@4c
    move-result-object v3

    #@4d
    iput-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    #@4f
    .line 83
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 281
    const-string/jumbo v0, "not_before"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 282
    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@c
    .line 289
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    #@f
    .line 280
    return-void

    #@10
    .line 283
    :cond_0
    const-string/jumbo v0, "not_after"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 284
    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@1b
    goto :goto_0

    #@1c
    .line 286
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    #@1e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    #@21
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@24
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
    .line 231
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 232
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 233
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 234
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    #@10
    .line 235
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    #@13
    .line 237
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 238
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 230
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    const-string/jumbo v0, "not_before"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 267
    new-instance v0, Ljava/util/Date;

    #@b
    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@d
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@10
    move-result-wide v2

    #@11
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@14
    return-object v0

    #@15
    .line 268
    :cond_0
    const-string/jumbo v0, "not_after"

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 269
    new-instance v0, Ljava/util/Date;

    #@20
    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@22
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@25
    move-result-wide v2

    #@26
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@29
    return-object v0

    #@2a
    .line 271
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    #@2c
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    #@2f
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@32
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
    .line 297
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 298
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "not_before"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 299
    const-string/jumbo v1, "not_after"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 301
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 308
    const-string/jumbo v0, "PrivateKeyUsage"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    instance-of v0, p2, Ljava/util/Date;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 248
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6
    const-string/jumbo v1, "Attribute must be of type Date."

    #@9
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 250
    :cond_0
    const-string/jumbo v0, "not_before"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 251
    check-cast p2, Ljava/util/Date;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@1a
    .line 258
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    #@1d
    .line 246
    return-void

    #@1e
    .line 252
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "not_after"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 253
    check-cast p2, Ljava/util/Date;

    #@29
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@2b
    goto :goto_0

    #@2c
    .line 255
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateException;

    #@2e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    #@31
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 179
    const-string/jumbo v1, "PrivateKeyUsage: [\n"

    #@10
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 180
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@16
    if-nez v0, :cond_0

    #@18
    const-string/jumbo v0, ""

    #@1b
    .line 178
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 181
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@21
    if-nez v0, :cond_1

    #@23
    const-string/jumbo v0, ""

    #@26
    .line 178
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 182
    const-string/jumbo v1, "]\n"

    #@2d
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "From: "

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@44
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    const-string/jumbo v2, ", "

    #@4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    goto :goto_0

    #@58
    .line 181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v2, "To: "

    #@60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@66
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    goto :goto_1
.end method

.method public valid()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    .line 195
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/PrivateKeyUsageExtension;->valid(Ljava/util/Date;)V

    #@8
    .line 193
    return-void
.end method

.method public valid(Ljava/util/Date;)V
    .locals 3
    .param p1, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 215
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "NotBefore: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 216
    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    #@18
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 218
    :cond_0
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@2a
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 219
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "NotAfter: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 220
    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    #@40
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 208
    :cond_1
    return-void
.end method
