.class public Lsun/security/x509/IssuingDistributionPointExtension;
.super Lsun/security/x509/Extension;
.source "IssuingDistributionPointExtension.java"

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
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.IssuingDistributionPoint"

.field public static final blacklist INDIRECT_CRL:Ljava/lang/String; = "indirect_crl"

.field public static final blacklist NAME:Ljava/lang/String; = "IssuingDistributionPoint"

.field public static final blacklist ONLY_ATTRIBUTE_CERTS:Ljava/lang/String; = "only_attribute_certs"

.field public static final blacklist ONLY_CA_CERTS:Ljava/lang/String; = "only_ca_certs"

.field public static final blacklist ONLY_USER_CERTS:Ljava/lang/String; = "only_user_certs"

.field public static final blacklist POINT:Ljava/lang/String; = "point"

.field public static final blacklist REASONS:Ljava/lang/String; = "reasons"

.field private static final blacklist TAG_DISTRIBUTION_POINT:B = 0x0t

.field private static final blacklist TAG_INDIRECT_CRL:B = 0x4t

.field private static final blacklist TAG_ONLY_ATTRIBUTE_CERTS:B = 0x5t

.field private static final blacklist TAG_ONLY_CA_CERTS:B = 0x2t

.field private static final blacklist TAG_ONLY_SOME_REASONS:B = 0x3t

.field private static final blacklist TAG_ONLY_USER_CERTS:B = 0x1t


# instance fields
.field private blacklist distributionPoint:Lsun/security/x509/DistributionPointName;

.field private blacklist hasOnlyAttributeCerts:Z

.field private blacklist hasOnlyCACerts:Z

.field private blacklist hasOnlyUserCerts:Z

.field private blacklist isIndirectCRL:Z

.field private blacklist revocationReasons:Lsun/security/x509/ReasonFlags;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 98
    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 100
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 101
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 102
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 170
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 171
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 173
    instance-of v1, p2, [B

    if-eqz v1, :cond_ec

    .line 177
    move-object v1, p2

    check-cast v1, [B

    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    .line 178
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 179
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-ne v2, v3, :cond_e4

    .line 185
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_e3

    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_e3

    .line 189
    :cond_3f
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 190
    .local v2, "in":Lsun/security/util/DerInputStream;
    :goto_41
    if-eqz v2, :cond_e2

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_e2

    .line 191
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 193
    .local v3, "opt":Lsun/security/util/DerValue;
    invoke-virtual {v3, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 194
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 195
    new-instance v4, Lsun/security/x509/DistributionPointName;

    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 196
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/x509/DistributionPointName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    goto/16 :goto_d8

    .line 197
    :cond_68
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 198
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_7f

    .line 199
    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 200
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_d8

    .line 201
    :cond_7f
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 202
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_96

    .line 203
    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 204
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_d8

    .line 205
    :cond_96
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 206
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_ab

    .line 207
    new-instance v4, Lsun/security/x509/ReasonFlags;

    invoke-direct {v4, v3}, Lsun/security/x509/ReasonFlags;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto :goto_d8

    .line 208
    :cond_ab
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 209
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_c2

    .line 210
    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 211
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_d8

    .line 212
    :cond_c2
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 213
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_da

    .line 214
    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 215
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 220
    .end local v3    # "opt":Lsun/security/util/DerValue;
    :goto_d8
    goto/16 :goto_41

    .line 217
    .restart local v3    # "opt":Lsun/security/util/DerValue;
    :cond_da
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Invalid encoding of IssuingDistributionPoint"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    .end local v3    # "opt":Lsun/security/util/DerValue;
    :cond_e2
    return-void

    .line 186
    .end local v2    # "in":Lsun/security/util/DerInputStream;
    :cond_e3
    :goto_e3
    return-void

    .line 180
    :cond_e4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid encoding for IssuingDistributionPointExtension."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    .end local v1    # "val":Lsun/security/util/DerValue;
    :cond_ec
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Illegal argument type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/x509/DistributionPointName;Lsun/security/x509/ReasonFlags;ZZZZ)V
    .registers 9
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

    .line 140
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 98
    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 100
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 101
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 102
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 142
    if-eqz p3, :cond_17

    if-nez p4, :cond_24

    if-nez p5, :cond_24

    :cond_17
    if-eqz p4, :cond_1d

    if-nez p3, :cond_24

    if-nez p5, :cond_24

    :cond_1d
    if-eqz p5, :cond_2c

    if-nez p3, :cond_24

    if-nez p4, :cond_24

    goto :goto_2c

    .line 145
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of hasOnlyUserCerts, hasOnlyCACerts, hasOnlyAttributeCerts may be set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2c
    :goto_2c
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 151
    iput-object p1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 152
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 153
    iput-boolean p3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 154
    iput-boolean p4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 155
    iput-boolean p5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 156
    iput-boolean p6, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 157
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 158
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-nez v0, :cond_1c

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    .line 387
    return-void

    .line 391
    :cond_1c
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 393
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, -0x80

    if-eqz v1, :cond_3a

    .line 394
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 395
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    invoke-virtual {v5, v1}, Lsun/security/x509/DistributionPointName;->encode(Lsun/security/util/DerOutputStream;)V

    .line 396
    invoke-static {v4, v2, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v0, v5, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 400
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_3a
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v1, :cond_4f

    .line 401
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 402
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-virtual {v1, v5}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 403
    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 407
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_4f
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v1, :cond_65

    .line 408
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 409
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 410
    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 414
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_65
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-eqz v1, :cond_7b

    .line 415
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 416
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    invoke-virtual {v2, v1}, Lsun/security/x509/ReasonFlags;->encode(Lsun/security/util/DerOutputStream;)V

    .line 417
    const/4 v2, 0x3

    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 421
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_7b
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v1, :cond_91

    .line 422
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 423
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 424
    const/4 v2, 0x4

    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 428
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_91
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v1, :cond_a7

    .line 429
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 430
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 431
    const/4 v2, 0x5

    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 435
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_a7
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 436
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 437
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    .line 438
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

    .line 335
    const-string v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 336
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    goto :goto_43

    .line 338
    :cond_c
    const-string v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 339
    iput-boolean v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_43

    .line 341
    :cond_18
    const-string v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 342
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto :goto_43

    .line 344
    :cond_23
    const-string v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 345
    iput-boolean v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_43

    .line 347
    :cond_2e
    const-string v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 348
    iput-boolean v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_43

    .line 350
    :cond_39
    const-string v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 351
    iput-boolean v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 358
    :goto_43
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 359
    return-void

    .line 354
    :cond_47
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 238
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 239
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 240
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 242
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 244
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 245
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 246
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const-string v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 307
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    return-object v0

    .line 309
    :cond_b
    const-string v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 310
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 312
    :cond_1a
    const-string v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 313
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    return-object v0

    .line 315
    :cond_25
    const-string v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 316
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 318
    :cond_34
    const-string v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 319
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 321
    :cond_43
    const-string v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 322
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 325
    :cond_52
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 366
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 367
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "point"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 368
    const-string v1, "reasons"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 369
    const-string v1, "only_user_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 370
    const-string v1, "only_ca_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 371
    const-string v1, "only_attribute_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 372
    const-string v1, "indirect_crl"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 227
    const-string v0, "IssuingDistributionPoint"

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

    .line 252
    const-string v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 253
    instance-of v0, p2, Lsun/security/x509/DistributionPointName;

    if-eqz v0, :cond_13

    .line 257
    move-object v0, p2

    check-cast v0, Lsun/security/x509/DistributionPointName;

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    goto/16 :goto_a1

    .line 254
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type DistributionPointName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1b
    const-string v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 260
    instance-of v0, p2, Lsun/security/x509/ReasonFlags;

    if-eqz v0, :cond_2e

    .line 264
    move-object v0, p2

    check-cast v0, Lsun/security/x509/ReasonFlags;

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto/16 :goto_a1

    .line 261
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type ReasonFlags."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_36
    const-string v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Attribute value should be of type Boolean."

    if-eqz v0, :cond_54

    .line 267
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4e

    .line 271
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_a1

    .line 268
    :cond_4e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_54
    const-string v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 274
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6a

    .line 278
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_a1

    .line 275
    :cond_6a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_70
    const-string v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 281
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_86

    .line 285
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_a1

    .line 282
    :cond_86
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_8c
    const-string v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 288
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a5

    .line 292
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 299
    :goto_a1
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 300
    return-void

    .line 289
    :cond_a5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_ab
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IssuingDistributionPoint [\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-eqz v1, :cond_17

    .line 449
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    :cond_17
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-eqz v1, :cond_20

    .line 453
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    :cond_20
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v1, :cond_27

    .line 457
    const-string v1, "  Only contains user certs: true"

    goto :goto_29

    .line 458
    :cond_27
    const-string v1, "  Only contains user certs: false"

    .line 456
    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 458
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v1, :cond_39

    .line 461
    const-string v1, "  Only contains CA certs: true"

    goto :goto_3b

    .line 462
    :cond_39
    const-string v1, "  Only contains CA certs: false"

    .line 460
    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v1, :cond_49

    .line 465
    const-string v1, "  Only contains attribute certs: true"

    goto :goto_4b

    .line 466
    :cond_49
    const-string v1, "  Only contains attribute certs: false"

    .line 464
    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v1, :cond_59

    .line 469
    const-string v1, "  Indirect CRL: true"

    goto :goto_5b

    .line 470
    :cond_59
    const-string v1, "  Indirect CRL: false"

    .line 468
    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
