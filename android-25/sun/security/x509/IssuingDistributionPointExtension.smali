.class public Lsun/security/x509/IssuingDistributionPointExtension;
.super Lsun/security/x509/Extension;
.source "IssuingDistributionPointExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.IssuingDistributionPoint"

.field public static final INDIRECT_CRL:Ljava/lang/String; = "indirect_crl"

.field public static final NAME:Ljava/lang/String; = "IssuingDistributionPoint"

.field public static final ONLY_ATTRIBUTE_CERTS:Ljava/lang/String; = "only_attribute_certs"

.field public static final ONLY_CA_CERTS:Ljava/lang/String; = "only_ca_certs"

.field public static final ONLY_USER_CERTS:Ljava/lang/String; = "only_user_certs"

.field public static final POINT:Ljava/lang/String; = "point"

.field public static final REASONS:Ljava/lang/String; = "reasons"

.field private static final TAG_DISTRIBUTION_POINT:B = 0x0t

.field private static final TAG_INDIRECT_CRL:B = 0x4t

.field private static final TAG_ONLY_ATTRIBUTE_CERTS:B = 0x5t

.field private static final TAG_ONLY_CA_CERTS:B = 0x2t

.field private static final TAG_ONLY_SOME_REASONS:B = 0x3t

.field private static final TAG_ONLY_USER_CERTS:B = 0x1t


# instance fields
.field private distributionPoint:Lsun/security/x509/DistributionPointName;

.field private hasOnlyAttributeCerts:Z

.field private hasOnlyCACerts:Z

.field private hasOnlyUserCerts:Z

.field private isIndirectCRL:Z

.field private revocationReasons:Lsun/security/x509/ReasonFlags;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 7
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 168
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@6
    .line 93
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@8
    .line 98
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@a
    .line 99
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@c
    .line 100
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@e
    .line 101
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@10
    .line 102
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@12
    .line 170
    sget-object v3, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    #@14
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@16
    .line 171
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@19
    move-result v3

    #@1a
    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    #@1c
    .line 173
    instance-of v3, p2, [B

    #@1e
    if-nez v3, :cond_0

    #@20
    .line 174
    new-instance v3, Ljava/io/IOException;

    #@22
    const-string/jumbo v4, "Illegal argument type"

    #@25
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 177
    :cond_0
    check-cast p2, [B

    #@2b
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    #@2d
    .line 178
    new-instance v2, Lsun/security/util/DerValue;

    #@2f
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    #@31
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@34
    .line 179
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@36
    const/16 v4, 0x30

    #@38
    if-eq v3, v4, :cond_1

    #@3a
    .line 180
    new-instance v3, Ljava/io/IOException;

    #@3c
    const-string/jumbo v4, "Invalid encoding for IssuingDistributionPointExtension."

    #@3f
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v3

    #@43
    .line 185
    :cond_1
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@45
    if-eqz v3, :cond_2

    #@47
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@49
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@4c
    move-result v3

    #@4d
    if-nez v3, :cond_3

    #@4f
    .line 186
    :cond_2
    return-void

    #@50
    .line 189
    :cond_3
    iget-object v0, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@52
    .line 190
    .local v0, "in":Lsun/security/util/DerInputStream;
    :goto_0
    if-eqz v0, :cond_f

    #@54
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_f

    #@5a
    .line 191
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@5d
    move-result-object v1

    #@5e
    .line 193
    .local v1, "opt":Lsun/security/util/DerValue;
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_4

    #@64
    .line 194
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@67
    move-result v3

    #@68
    .line 193
    if-eqz v3, :cond_4

    #@6a
    .line 196
    new-instance v3, Lsun/security/x509/DistributionPointName;

    #@6c
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@6e
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@71
    move-result-object v4

    #@72
    invoke-direct {v3, v4}, Lsun/security/x509/DistributionPointName;-><init>(Lsun/security/util/DerValue;)V

    #@75
    .line 195
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@77
    goto :goto_0

    #@78
    .line 197
    :cond_4
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@7b
    move-result v3

    #@7c
    if-eqz v3, :cond_5

    #@7e
    .line 198
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_a

    #@84
    .line 201
    :cond_5
    const/4 v3, 0x2

    #@85
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_6

    #@8b
    .line 202
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@8e
    move-result v3

    #@8f
    if-eqz v3, :cond_b

    #@91
    .line 205
    :cond_6
    const/4 v3, 0x3

    #@92
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@95
    move-result v3

    #@96
    if-eqz v3, :cond_7

    #@98
    .line 206
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@9b
    move-result v3

    #@9c
    if-eqz v3, :cond_c

    #@9e
    .line 208
    :cond_7
    const/4 v3, 0x4

    #@9f
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@a2
    move-result v3

    #@a3
    if-eqz v3, :cond_8

    #@a5
    .line 209
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@a8
    move-result v3

    #@a9
    if-eqz v3, :cond_d

    #@ab
    .line 212
    :cond_8
    const/4 v3, 0x5

    #@ac
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@af
    move-result v3

    #@b0
    if-eqz v3, :cond_9

    #@b2
    .line 213
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@b5
    move-result v3

    #@b6
    if-eqz v3, :cond_e

    #@b8
    .line 217
    :cond_9
    new-instance v3, Ljava/io/IOException;

    #@ba
    .line 218
    const-string/jumbo v4, "Invalid encoding of IssuingDistributionPoint"

    #@bd
    .line 217
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c0
    throw v3

    #@c1
    .line 199
    :cond_a
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    #@c4
    .line 200
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    #@c7
    move-result v3

    #@c8
    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@ca
    goto :goto_0

    #@cb
    .line 203
    :cond_b
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    #@ce
    .line 204
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    #@d1
    move-result v3

    #@d2
    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@d4
    goto/16 :goto_0

    #@d6
    .line 207
    :cond_c
    new-instance v3, Lsun/security/x509/ReasonFlags;

    #@d8
    invoke-direct {v3, v1}, Lsun/security/x509/ReasonFlags;-><init>(Lsun/security/util/DerValue;)V

    #@db
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@dd
    goto/16 :goto_0

    #@df
    .line 210
    :cond_d
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    #@e2
    .line 211
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    #@e5
    move-result v3

    #@e6
    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@e8
    goto/16 :goto_0

    #@ea
    .line 214
    :cond_e
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    #@ed
    .line 215
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    #@f0
    move-result v3

    #@f1
    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@f3
    goto/16 :goto_0

    #@f5
    .line 169
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_f
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/DistributionPointName;Lsun/security/x509/ReasonFlags;ZZZZ)V
    .locals 2
    .param p1, "distributionPoint"    # Lsun/security/x509/DistributionPointName;
    .param p2, "revocationReasons"    # Lsun/security/x509/ReasonFlags;
    .param p3, "hasOnlyUserCerts"    # Z
    .param p4, "hasOnlyCACerts"    # Z
    .param p5, "hasOnlyAttributeCerts"    # Z
    .param p6, "isIndirectCRL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 136
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@5
    .line 93
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@7
    .line 98
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@9
    .line 99
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@b
    .line 100
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@d
    .line 101
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@f
    .line 102
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@11
    .line 142
    if-eqz p3, :cond_0

    #@13
    if-nez p4, :cond_2

    #@15
    if-nez p5, :cond_2

    #@17
    .line 143
    :cond_0
    if-eqz p4, :cond_1

    #@19
    if-nez p3, :cond_2

    #@1b
    .line 142
    if-nez p5, :cond_2

    #@1d
    .line 144
    :cond_1
    if-eqz p5, :cond_3

    #@1f
    if-nez p3, :cond_2

    #@21
    .line 142
    if-eqz p4, :cond_3

    #@23
    .line 145
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    .line 146
    const-string/jumbo v1, "Only one of hasOnlyUserCerts, hasOnlyCACerts, hasOnlyAttributeCerts may be set to true"

    #@28
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 149
    :cond_3
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    #@2e
    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@30
    .line 150
    const/4 v0, 0x1

    #@31
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    #@33
    .line 151
    iput-object p1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@35
    .line 152
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@37
    .line 153
    iput-boolean p3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@39
    .line 154
    iput-boolean p4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@3b
    .line 155
    iput-boolean p5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@3d
    .line 156
    iput-boolean p6, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@3f
    .line 157
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    #@42
    .line 140
    return-void
.end method

.method private encodeThis()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const/16 v4, -0x80

    #@5
    .line 379
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@7
    if-nez v3, :cond_0

    #@9
    .line 380
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 381
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@f
    if-eqz v3, :cond_7

    #@11
    .line 391
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@13
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@16
    .line 393
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 394
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@1c
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1f
    .line 395
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@21
    invoke-virtual {v3, v2}, Lsun/security/x509/DistributionPointName;->encode(Lsun/security/util/DerOutputStream;)V

    #@24
    .line 396
    invoke-static {v4, v7, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@27
    move-result v3

    #@28
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@2b
    .line 400
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 401
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@31
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@34
    .line 402
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@36
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    #@39
    .line 403
    invoke-static {v4, v5, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@3c
    move-result v3

    #@3d
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@40
    .line 407
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@42
    if-eqz v3, :cond_3

    #@44
    .line 408
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@46
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@49
    .line 409
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@4b
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    #@4e
    .line 411
    const/4 v3, 0x2

    #@4f
    .line 410
    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@52
    move-result v3

    #@53
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@56
    .line 414
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_3
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 415
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@5c
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5f
    .line 416
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@61
    invoke-virtual {v3, v2}, Lsun/security/x509/ReasonFlags;->encode(Lsun/security/util/DerOutputStream;)V

    #@64
    .line 418
    const/4 v3, 0x3

    #@65
    .line 417
    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@68
    move-result v3

    #@69
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@6c
    .line 421
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_4
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@6e
    if-eqz v3, :cond_5

    #@70
    .line 422
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@72
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@75
    .line 423
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@77
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    #@7a
    .line 425
    const/4 v3, 0x4

    #@7b
    .line 424
    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@7e
    move-result v3

    #@7f
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@82
    .line 428
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_5
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@84
    if-eqz v3, :cond_6

    #@86
    .line 429
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@88
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@8b
    .line 430
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@8d
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    #@90
    .line 432
    const/4 v3, 0x5

    #@91
    .line 431
    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@94
    move-result v3

    #@95
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@98
    .line 435
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_6
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@9a
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9d
    .line 436
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    #@9f
    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@a2
    .line 437
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@a5
    move-result-object v3

    #@a6
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    #@a8
    .line 377
    return-void

    #@a9
    .line 382
    .end local v0    # "seq":Lsun/security/util/DerOutputStream;
    .end local v1    # "tagged":Lsun/security/util/DerOutputStream;
    :cond_7
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@ab
    if-nez v3, :cond_0

    #@ad
    .line 383
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@af
    if-nez v3, :cond_0

    #@b1
    .line 384
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@b3
    if-nez v3, :cond_0

    #@b5
    .line 386
    iput-object v6, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    #@b7
    .line 387
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 335
    const-string/jumbo v0, "point"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 336
    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@d
    .line 358
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    #@10
    .line 334
    return-void

    #@11
    .line 338
    :cond_0
    const-string/jumbo v0, "indirect_crl"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 339
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@1c
    goto :goto_0

    #@1d
    .line 341
    :cond_1
    const-string/jumbo v0, "reasons"

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 342
    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@28
    goto :goto_0

    #@29
    .line 344
    :cond_2
    const-string/jumbo v0, "only_user_certs"

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 345
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@34
    goto :goto_0

    #@35
    .line 347
    :cond_3
    const-string/jumbo v0, "only_ca_certs"

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_4

    #@3e
    .line 348
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@40
    goto :goto_0

    #@41
    .line 350
    :cond_4
    const-string/jumbo v0, "only_attribute_certs"

    #@44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_5

    #@4a
    .line 351
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@4c
    goto :goto_0

    #@4d
    .line 354
    :cond_5
    new-instance v0, Ljava/io/IOException;

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "Attribute name ["

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    .line 355
    const-string/jumbo v2, "] not recognized by "

    #@62
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    .line 356
    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    #@69
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@74
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
    .line 238
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 239
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 240
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 241
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    #@10
    .line 242
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    #@13
    .line 244
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 245
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 237
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    const-string/jumbo v0, "point"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 307
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@b
    return-object v0

    #@c
    .line 309
    :cond_0
    const-string/jumbo v0, "indirect_crl"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 310
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 312
    :cond_1
    const-string/jumbo v0, "reasons"

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 313
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@27
    return-object v0

    #@28
    .line 315
    :cond_2
    const-string/jumbo v0, "only_user_certs"

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3

    #@31
    .line 316
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 318
    :cond_3
    const-string/jumbo v0, "only_ca_certs"

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_4

    #@41
    .line 319
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 321
    :cond_4
    const-string/jumbo v0, "only_attribute_certs"

    #@4b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_5

    #@51
    .line 322
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@56
    move-result-object v0

    #@57
    return-object v0

    #@58
    .line 325
    :cond_5
    new-instance v0, Ljava/io/IOException;

    #@5a
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v2, "Attribute name ["

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    .line 326
    const-string/jumbo v2, "] not recognized by "

    #@6d
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    .line 327
    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    #@74
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7f
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
    .line 366
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 367
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "point"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 368
    const-string/jumbo v1, "reasons"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 369
    const-string/jumbo v1, "only_user_certs"

    #@14
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@17
    .line 370
    const-string/jumbo v1, "only_ca_certs"

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 371
    const-string/jumbo v1, "only_attribute_certs"

    #@20
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@23
    .line 372
    const-string/jumbo v1, "indirect_crl"

    #@26
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@29
    .line 373
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@2c
    move-result-object v1

    #@2d
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 227
    const-string/jumbo v0, "IssuingDistributionPoint"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    const-string/jumbo v0, "point"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 253
    instance-of v0, p2, Lsun/security/x509/DistributionPointName;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 254
    new-instance v0, Ljava/io/IOException;

    #@f
    .line 255
    const-string/jumbo v1, "Attribute value should be of type DistributionPointName."

    #@12
    .line 254
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 257
    :cond_0
    check-cast p2, Lsun/security/x509/DistributionPointName;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@1a
    .line 299
    :cond_1
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    #@1d
    .line 251
    return-void

    #@1e
    .line 259
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v0, "reasons"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 260
    instance-of v0, p2, Lsun/security/x509/ReasonFlags;

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 261
    new-instance v0, Ljava/io/IOException;

    #@2d
    .line 262
    const-string/jumbo v1, "Attribute value should be of type ReasonFlags."

    #@30
    .line 261
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 265
    :cond_3
    const-string/jumbo v0, "indirect_crl"

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_5

    #@3d
    .line 266
    instance-of v0, p2, Ljava/lang/Boolean;

    #@3f
    if-nez v0, :cond_4

    #@41
    .line 267
    new-instance v0, Ljava/io/IOException;

    #@43
    .line 268
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    #@46
    .line 267
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    .line 270
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    #@4c
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@4f
    move-result v0

    #@50
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@52
    goto :goto_0

    #@53
    .line 272
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v0, "only_user_certs"

    #@56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_7

    #@5c
    .line 273
    instance-of v0, p2, Ljava/lang/Boolean;

    #@5e
    if-nez v0, :cond_6

    #@60
    .line 274
    new-instance v0, Ljava/io/IOException;

    #@62
    .line 275
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    #@65
    .line 274
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@68
    throw v0

    #@69
    .line 277
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    #@6b
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@6e
    move-result v0

    #@6f
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@71
    goto :goto_0

    #@72
    .line 279
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v0, "only_ca_certs"

    #@75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_9

    #@7b
    .line 280
    instance-of v0, p2, Ljava/lang/Boolean;

    #@7d
    if-nez v0, :cond_8

    #@7f
    .line 281
    new-instance v0, Ljava/io/IOException;

    #@81
    .line 282
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    #@84
    .line 281
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0

    #@88
    .line 284
    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    #@8a
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@8d
    move-result v0

    #@8e
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@90
    goto :goto_0

    #@91
    .line 286
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_9
    const-string/jumbo v0, "only_attribute_certs"

    #@94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@97
    move-result v0

    #@98
    if-eqz v0, :cond_b

    #@9a
    .line 287
    instance-of v0, p2, Ljava/lang/Boolean;

    #@9c
    if-nez v0, :cond_a

    #@9e
    .line 288
    new-instance v0, Ljava/io/IOException;

    #@a0
    .line 289
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    #@a3
    .line 288
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v0

    #@a7
    .line 291
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    #@a9
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@ac
    move-result v0

    #@ad
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@af
    goto/16 :goto_0

    #@b1
    .line 295
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    #@b3
    new-instance v1, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v2, "Attribute name ["

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    .line 296
    const-string/jumbo v2, "] not recognized by "

    #@c6
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    .line 297
    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    #@cd
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v1

    #@d5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 446
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "IssuingDistributionPoint [\n  "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 448
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 449
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    .line 452
    :cond_0
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 453
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    .line 456
    :cond_1
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 457
    const-string/jumbo v1, "  Only contains user certs: true"

    #@28
    .line 456
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 458
    const-string/jumbo v2, "\n"

    #@2f
    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 460
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    #@34
    if-eqz v1, :cond_3

    #@36
    .line 461
    const-string/jumbo v1, "  Only contains CA certs: true"

    #@39
    .line 460
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 462
    const-string/jumbo v2, "\n"

    #@40
    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 464
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    #@45
    if-eqz v1, :cond_4

    #@47
    .line 465
    const-string/jumbo v1, "  Only contains attribute certs: true"

    #@4a
    .line 464
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 466
    const-string/jumbo v2, "\n"

    #@51
    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 468
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    #@56
    if-eqz v1, :cond_5

    #@58
    .line 469
    const-string/jumbo v1, "  Indirect CRL: true"

    #@5b
    .line 468
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    .line 470
    const-string/jumbo v2, "\n"

    #@62
    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 472
    const-string/jumbo v1, "]\n"

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    return-object v1

    #@70
    .line 458
    :cond_2
    const-string/jumbo v1, "  Only contains user certs: false"

    #@73
    goto :goto_0

    #@74
    .line 462
    :cond_3
    const-string/jumbo v1, "  Only contains CA certs: false"

    #@77
    goto :goto_1

    #@78
    .line 466
    :cond_4
    const-string/jumbo v1, "  Only contains attribute certs: false"

    #@7b
    goto :goto_2

    #@7c
    .line 470
    :cond_5
    const-string/jumbo v1, "  Indirect CRL: false"

    #@7f
    goto :goto_3
.end method
