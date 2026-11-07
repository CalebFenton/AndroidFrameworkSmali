.class public Lsun/security/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# static fields
.field public static final blacklist AA_COMPROMISE:I = 0x8

.field public static final blacklist AFFILIATION_CHANGED:I = 0x3

.field public static final blacklist CA_COMPROMISE:I = 0x2

.field public static final blacklist CERTIFICATE_HOLD:I = 0x6

.field public static final blacklist CESSATION_OF_OPERATION:I = 0x5

.field public static final blacklist KEY_COMPROMISE:I = 0x1

.field public static final blacklist PRIVILEGE_WITHDRAWN:I = 0x7

.field private static final blacklist REASON_STRINGS:[Ljava/lang/String;

.field public static final blacklist SUPERSEDED:I = 0x4

.field private static final blacklist TAG_DIST_PT:B = 0x0t

.field private static final blacklist TAG_FULL_NAME:B = 0x0t

.field private static final blacklist TAG_ISSUER:B = 0x2t

.field private static final blacklist TAG_REASONS:B = 0x1t

.field private static final blacklist TAG_REL_NAME:B = 0x1t


# instance fields
.field private blacklist crlIssuer:Lsun/security/x509/GeneralNames;

.field private blacklist fullName:Lsun/security/x509/GeneralNames;

.field private volatile blacklist hashCode:I

.field private blacklist reasonFlags:[Z

.field private blacklist relativeName:Lsun/security/x509/RDN;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 109
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "key compromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CA compromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliation changed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessation of operation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificate hold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "privilege withdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AA compromise"

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 8
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const-string v1, "Invalid encoding of DistributionPoint."

    const/16 v2, 0x30

    if-ne v0, v2, :cond_e1

    .line 198
    :goto_b
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v0, :cond_cb

    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_cb

    .line 199
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 201
    .local v0, "opt":Lsun/security/util/DerValue;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_79

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 202
    iget-object v4, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v4, :cond_71

    iget-object v4, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-nez v4, :cond_71

    .line 206
    iget-object v4, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    .line 207
    .local v4, "distPnt":Lsun/security/util/DerValue;
    invoke-virtual {v4, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 208
    invoke-virtual {v4}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 209
    invoke-virtual {v4, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 210
    new-instance v3, Lsun/security/x509/GeneralNames;

    invoke-direct {v3, v4}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    goto :goto_68

    .line 211
    :cond_50
    invoke-virtual {v4, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 212
    invoke-virtual {v4}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 213
    const/16 v3, 0x31

    invoke-virtual {v4, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 214
    new-instance v3, Lsun/security/x509/RDN;

    invoke-direct {v3, v4}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    .line 219
    .end local v4    # "distPnt":Lsun/security/util/DerValue;
    :goto_68
    goto :goto_bb

    .line 216
    .restart local v4    # "distPnt":Lsun/security/util/DerValue;
    :cond_69
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid DistributionPointName in DistributionPoint"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    .end local v4    # "distPnt":Lsun/security/util/DerValue;
    :cond_71
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Duplicate DistributionPointName in DistributionPoint."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_79
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 220
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-nez v3, :cond_a0

    .line 221
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-nez v3, :cond_98

    .line 225
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 226
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    goto :goto_bb

    .line 222
    :cond_98
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Duplicate Reasons in DistributionPoint."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_a0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 228
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 229
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-nez v3, :cond_bd

    .line 233
    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 234
    new-instance v3, Lsun/security/x509/GeneralNames;

    invoke-direct {v3, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 239
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :goto_bb
    goto/16 :goto_b

    .line 230
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    :cond_bd
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Duplicate CRLIssuer in DistributionPoint."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_c5
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_cb
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-nez v0, :cond_e0

    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v0, :cond_e0

    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v0, :cond_d8

    goto :goto_e0

    .line 241
    :cond_d8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "One of fullName, relativeName,  and crlIssuer has to be set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_e0
    :goto_e0
    return-void

    .line 192
    :cond_e1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V
    .registers 6
    .param p1, "fullName"    # Lsun/security/x509/GeneralNames;
    .param p2, "reasonFlags"    # [Z
    .param p3, "crlIssuer"    # Lsun/security/x509/GeneralNames;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-nez p1, :cond_10

    if-eqz p3, :cond_8

    goto :goto_10

    .line 154
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fullName and crlIssuer may not both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_10
    :goto_10
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    .line 158
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    .line 159
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 160
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/x509/RDN;[ZLsun/security/x509/GeneralNames;)V
    .registers 6
    .param p1, "relativeName"    # Lsun/security/x509/RDN;
    .param p2, "reasonFlags"    # [Z
    .param p3, "crlIssuer"    # Lsun/security/x509/GeneralNames;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    if-nez p1, :cond_10

    if-eqz p3, :cond_8

    goto :goto_10

    .line 176
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relativeName and crlIssuer may not both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_10
    :goto_10
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    .line 180
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    .line 181
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 182
    return-void
.end method

.method private static blacklist reasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 372
    if-lez p0, :cond_c

    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 373
    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 375
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 9
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 284
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    const/4 v2, 0x0

    const/16 v3, -0x80

    const/4 v4, 0x1

    if-nez v1, :cond_11

    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v1, :cond_4d

    .line 285
    :cond_11
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 286
    .local v1, "distributionPoint":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v5, :cond_2d

    .line 287
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 288
    .local v5, "derOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v6, v5}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 289
    nop

    .line 290
    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 289
    invoke-virtual {v1, v6, v5}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .end local v5    # "derOut":Lsun/security/util/DerOutputStream;
    goto :goto_44

    .line 292
    :cond_2d
    iget-object v5, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v5, :cond_44

    .line 293
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 294
    .restart local v5    # "derOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v6, v5}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 295
    nop

    .line 296
    invoke-static {v3, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 295
    invoke-virtual {v1, v6, v5}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_45

    .line 292
    .end local v5    # "derOut":Lsun/security/util/DerOutputStream;
    :cond_44
    :goto_44
    nop

    .line 299
    :goto_45
    nop

    .line 300
    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    .line 299
    invoke-virtual {v0, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 303
    .end local v1    # "distributionPoint":Lsun/security/util/DerOutputStream;
    :cond_4d
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v1, :cond_68

    .line 304
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 305
    .local v1, "reasons":Lsun/security/util/DerOutputStream;
    new-instance v5, Lsun/security/util/BitArray;

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-direct {v5, v6}, Lsun/security/util/BitArray;-><init>([Z)V

    .line 306
    .local v5, "rf":Lsun/security/util/BitArray;
    invoke-virtual {v1, v5}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 307
    nop

    .line 308
    invoke-static {v3, v2, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    .line 307
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 311
    .end local v1    # "reasons":Lsun/security/util/DerOutputStream;
    .end local v5    # "rf":Lsun/security/util/BitArray;
    :cond_68
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_7f

    .line 312
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 313
    .local v1, "issuer":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2, v1}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 314
    nop

    .line 315
    const/4 v2, 0x2

    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    .line 314
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 318
    .end local v1    # "issuer":Lsun/security/util/DerOutputStream;
    :cond_7f
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 319
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 328
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 329
    return v0

    .line 331
    :cond_4
    instance-of v1, p1, Lsun/security/x509/DistributionPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 332
    return v2

    .line 334
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/x509/DistributionPoint;

    .line 336
    .local v1, "other":Lsun/security/x509/DistributionPoint;
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    iget-object v4, v1, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    iget-object v4, v1, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    .line 337
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    iget-object v4, v1, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    .line 338
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    iget-object v4, v1, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    .line 339
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 340
    .local v0, "equal":Z
    :goto_37
    return v0
.end method

.method public blacklist getCRLIssuer()Lsun/security/x509/GeneralNames;
    .registers 2

    .line 271
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getFullName()Lsun/security/x509/GeneralNames;
    .registers 2

    .line 250
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getReasonFlags()[Z
    .registers 2

    .line 264
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    return-object v0
.end method

.method public blacklist getRelativeName()Lsun/security/x509/RDN;
    .registers 2

    .line 257
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 344
    iget v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    .line 345
    .local v0, "hash":I
    if-nez v0, :cond_3c

    .line 346
    const/4 v0, 0x1

    .line 347
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_10

    .line 348
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    :cond_10
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v1, :cond_1b

    .line 351
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v1}, Lsun/security/x509/RDN;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_1b
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_26

    .line 354
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_26
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v1, :cond_3a

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_3a

    .line 358
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_37

    .line 359
    add-int/2addr v0, v1

    .line 357
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 363
    .end local v1    # "i":I
    :cond_3a
    iput v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    .line 365
    :cond_3c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    const-string v2, "DistributionPoint:\n     "

    const-string v3, "\n"

    if-eqz v1, :cond_27

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_27
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v1, :cond_45

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_45
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v1, :cond_7b

    .line 391
    const-string v1, "   ReasonFlags:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4f
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_7b

    .line 393
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_78

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lsun/security/x509/DistributionPoint;->reasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 398
    .end local v1    # "i":I
    :cond_7b
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_9b

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   CRLIssuer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
