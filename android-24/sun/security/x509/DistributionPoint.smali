.class public Lsun/security/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# static fields
.field public static final AA_COMPROMISE:I = 0x8

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x7

.field private static final REASON_STRINGS:[Ljava/lang/String;

.field public static final SUPERSEDED:I = 0x4

.field private static final TAG_DIST_PT:B = 0x0t

.field private static final TAG_FULL_NAME:B = 0x0t

.field private static final TAG_ISSUER:B = 0x2t

.field private static final TAG_REASONS:B = 0x1t

.field private static final TAG_REL_NAME:B = 0x1t


# instance fields
.field private crlIssuer:Lsun/security/x509/GeneralNames;

.field private fullName:Lsun/security/x509/GeneralNames;

.field private volatile hashCode:I

.field private reasonFlags:[Z

.field private relativeName:Lsun/security/x509/RDN;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 109
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 110
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    .line 111
    const-string/jumbo v1, "key compromise"

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v1, v0, v2

    #@e
    .line 112
    const-string/jumbo v1, "CA compromise"

    #@11
    const/4 v2, 0x2

    #@12
    aput-object v1, v0, v2

    #@14
    .line 113
    const-string/jumbo v1, "affiliation changed"

    #@17
    const/4 v2, 0x3

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 114
    const-string/jumbo v1, "superseded"

    #@1d
    const/4 v2, 0x4

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 115
    const-string/jumbo v1, "cessation of operation"

    #@23
    const/4 v2, 0x5

    #@24
    aput-object v1, v0, v2

    #@26
    .line 116
    const-string/jumbo v1, "certificate hold"

    #@29
    const/4 v2, 0x6

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 117
    const-string/jumbo v1, "privilege withdrawn"

    #@2f
    const/4 v2, 0x7

    #@30
    aput-object v1, v0, v2

    #@32
    .line 118
    const-string/jumbo v1, "AA compromise"

    #@35
    const/16 v2, 0x8

    #@37
    aput-object v1, v0, v2

    #@39
    .line 109
    sput-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    #@3b
    .line 96
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/16 v4, 0x30

    #@3
    const/4 v3, 0x0

    #@4
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 191
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    #@9
    if-eq v2, v4, :cond_1

    #@b
    .line 192
    new-instance v2, Ljava/io/IOException;

    #@d
    const-string/jumbo v3, "Invalid encoding of DistributionPoint."

    #@10
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 206
    .local v1, "opt":Lsun/security/util/DerValue;
    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@16
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@19
    move-result-object v0

    #@1a
    .line 207
    .local v0, "distPnt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 208
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@23
    move-result v2

    #@24
    .line 207
    if-eqz v2, :cond_3

    #@26
    .line 209
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    #@29
    .line 210
    new-instance v2, Lsun/security/x509/GeneralNames;

    #@2b
    invoke-direct {v2, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    #@2e
    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@30
    .line 198
    .end local v0    # "distPnt":Lsun/security/util/DerValue;
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_1
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@32
    if-eqz v2, :cond_b

    #@34
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@36
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_b

    #@3c
    .line 199
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3e
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@41
    move-result-object v1

    #@42
    .line 201
    .restart local v1    # "opt":Lsun/security/util/DerValue;
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_5

    #@48
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_5

    #@4e
    .line 202
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@50
    if-nez v2, :cond_2

    #@52
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@54
    if-eqz v2, :cond_0

    #@56
    .line 203
    :cond_2
    new-instance v2, Ljava/io/IOException;

    #@58
    const-string/jumbo v3, "Duplicate DistributionPointName in DistributionPoint."

    #@5b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2

    #@5f
    .line 211
    .restart local v0    # "distPnt":Lsun/security/util/DerValue;
    :cond_3
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_4

    #@65
    .line 212
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@68
    move-result v2

    #@69
    .line 211
    if-eqz v2, :cond_4

    #@6b
    .line 213
    const/16 v2, 0x31

    #@6d
    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    #@70
    .line 214
    new-instance v2, Lsun/security/x509/RDN;

    #@72
    invoke-direct {v2, v0}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    #@75
    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@77
    goto :goto_0

    #@78
    .line 216
    :cond_4
    new-instance v2, Ljava/io/IOException;

    #@7a
    const-string/jumbo v3, "Invalid DistributionPointName in DistributionPoint"

    #@7d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@80
    throw v2

    #@81
    .line 219
    .end local v0    # "distPnt":Lsun/security/util/DerValue;
    :cond_5
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_6

    #@87
    .line 220
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_7

    #@8d
    .line 227
    :cond_6
    const/4 v2, 0x2

    #@8e
    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_a

    #@94
    .line 228
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@97
    move-result v2

    #@98
    .line 227
    if-eqz v2, :cond_a

    #@9a
    .line 229
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@9c
    if-eqz v2, :cond_9

    #@9e
    .line 230
    new-instance v2, Ljava/io/IOException;

    #@a0
    const-string/jumbo v3, "Duplicate CRLIssuer in DistributionPoint."

    #@a3
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v2

    #@a7
    .line 221
    :cond_7
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@a9
    if-eqz v2, :cond_8

    #@ab
    .line 222
    new-instance v2, Ljava/io/IOException;

    #@ad
    const-string/jumbo v3, "Duplicate Reasons in DistributionPoint."

    #@b0
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v2

    #@b4
    .line 225
    :cond_8
    const/4 v2, 0x3

    #@b5
    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    #@b8
    .line 226
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@bf
    move-result-object v2

    #@c0
    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@c2
    goto/16 :goto_0

    #@c4
    .line 233
    :cond_9
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    #@c7
    .line 234
    new-instance v2, Lsun/security/x509/GeneralNames;

    #@c9
    invoke-direct {v2, v1}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    #@cc
    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@ce
    goto/16 :goto_0

    #@d0
    .line 236
    :cond_a
    new-instance v2, Ljava/io/IOException;

    #@d2
    const-string/jumbo v3, "Invalid encoding of DistributionPoint."

    #@d5
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v2

    #@d9
    .line 240
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_b
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@db
    if-nez v2, :cond_c

    #@dd
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@df
    if-nez v2, :cond_c

    #@e1
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@e3
    if-nez v2, :cond_c

    #@e5
    .line 241
    new-instance v2, Ljava/io/IOException;

    #@e7
    const-string/jumbo v3, "One of fullName, relativeName,  and crlIssuer has to be set"

    #@ea
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v2

    #@ee
    .line 190
    :cond_c
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V
    .locals 2
    .param p1, "fullName"    # Lsun/security/x509/GeneralNames;
    .param p2, "reasonFlags"    # [Z
    .param p3, "crlIssuer"    # Lsun/security/x509/GeneralNames;

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 153
    if-nez p1, :cond_0

    #@5
    if-nez p3, :cond_0

    #@7
    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 155
    const-string/jumbo v1, "fullName and crlIssuer may not both be null"

    #@c
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 157
    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@12
    .line 158
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@14
    .line 159
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@16
    .line 152
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/RDN;[ZLsun/security/x509/GeneralNames;)V
    .locals 2
    .param p1, "relativeName"    # Lsun/security/x509/RDN;
    .param p2, "reasonFlags"    # [Z
    .param p3, "crlIssuer"    # Lsun/security/x509/GeneralNames;

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 175
    if-nez p1, :cond_0

    #@5
    if-nez p3, :cond_0

    #@7
    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 177
    const-string/jumbo v1, "relativeName and crlIssuer may not both be null"

    #@c
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 179
    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@12
    .line 180
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@14
    .line 181
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@16
    .line 174
    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 325
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method private static reasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    #@0
    .prologue
    .line 379
    if-lez p0, :cond_0

    #@2
    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    #@4
    array-length v0, v0

    #@5
    if-ge p0, v0, :cond_0

    #@7
    .line 380
    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    #@9
    aget-object v0, v0, p0

    #@b
    return-object v0

    #@c
    .line 382
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "Unknown reason "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 10
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/16 v8, -0x80

    #@3
    const/4 v7, 0x1

    #@4
    .line 281
    new-instance v5, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 284
    .local v5, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@b
    if-nez v6, :cond_0

    #@d
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@f
    if-eqz v6, :cond_2

    #@11
    .line 285
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@13
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@16
    .line 286
    .local v1, "distributionPoint":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@18
    if-eqz v6, :cond_5

    #@1a
    .line 287
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@1c
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1f
    .line 288
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@21
    invoke-virtual {v6, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    #@24
    .line 290
    invoke-static {v8, v7, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@27
    move-result v6

    #@28
    .line 289
    invoke-virtual {v1, v6, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@2b
    .line 300
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    :cond_1
    :goto_0
    invoke-static {v8, v7, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@2e
    move-result v6

    #@2f
    .line 299
    invoke-virtual {v5, v6, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@32
    .line 303
    .end local v1    # "distributionPoint":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@34
    if-eqz v6, :cond_3

    #@36
    .line 304
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@38
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@3b
    .line 305
    .local v3, "reasons":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/BitArray;

    #@3d
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@3f
    invoke-direct {v4, v6}, Lsun/security/util/BitArray;-><init>([Z)V

    #@42
    .line 306
    .local v4, "rf":Lsun/security/util/BitArray;
    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    #@45
    .line 308
    invoke-static {v8, v9, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@48
    move-result v6

    #@49
    .line 307
    invoke-virtual {v5, v6, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@4c
    .line 311
    .end local v3    # "reasons":Lsun/security/util/DerOutputStream;
    .end local v4    # "rf":Lsun/security/util/BitArray;
    :cond_3
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@4e
    if-eqz v6, :cond_4

    #@50
    .line 312
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@52
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@55
    .line 313
    .local v2, "issuer":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@57
    invoke-virtual {v6, v2}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    #@5a
    .line 315
    const/4 v6, 0x2

    #@5b
    invoke-static {v8, v7, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@5e
    move-result v6

    #@5f
    .line 314
    invoke-virtual {v5, v6, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@62
    .line 318
    .end local v2    # "issuer":Lsun/security/util/DerOutputStream;
    :cond_4
    const/16 v6, 0x30

    #@64
    invoke-virtual {p1, v6, v5}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@67
    .line 280
    return-void

    #@68
    .line 292
    .restart local v1    # "distributionPoint":Lsun/security/util/DerOutputStream;
    :cond_5
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@6a
    if-eqz v6, :cond_1

    #@6c
    .line 293
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@6e
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@71
    .line 294
    .restart local v0    # "derOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@73
    invoke-virtual {v6, v0}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    #@76
    .line 296
    invoke-static {v8, v7, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@79
    move-result v6

    #@7a
    .line 295
    invoke-virtual {v1, v6, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@7d
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 335
    if-ne p0, p1, :cond_0

    #@3
    .line 336
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 338
    :cond_0
    instance-of v2, p1, Lsun/security/x509/DistributionPoint;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 339
    return v0

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 341
    check-cast v1, Lsun/security/x509/DistributionPoint;

    #@d
    .line 343
    .local v1, "other":Lsun/security/x509/DistributionPoint;
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@f
    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@11
    invoke-static {v2, v3}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 344
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@19
    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@1b
    invoke-static {v2, v3}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    .line 343
    if-eqz v2, :cond_2

    #@21
    .line 345
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@23
    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@25
    invoke-static {v2, v3}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    .line 343
    if-eqz v2, :cond_2

    #@2b
    .line 346
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@2d
    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@2f
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@32
    move-result v0

    #@33
    .line 347
    .local v0, "equal":Z
    :cond_2
    return v0
.end method

.method public getCRLIssuer()Lsun/security/x509/GeneralNames;
    .locals 1

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method public getFullName()Lsun/security/x509/GeneralNames;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method public getReasonFlags()[Z
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@2
    return-object v0
.end method

.method public getRelativeName()Lsun/security/x509/RDN;
    .locals 1

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 351
    iget v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    #@2
    .line 352
    .local v0, "hash":I
    if-nez v0, :cond_5

    #@4
    .line 353
    const/4 v0, 0x1

    #@5
    .line 354
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 355
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@b
    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->hashCode()I

    #@e
    move-result v2

    #@f
    add-int/lit8 v0, v2, 0x1

    #@11
    .line 357
    :cond_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 358
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@17
    invoke-virtual {v2}, Lsun/security/x509/RDN;->hashCode()I

    #@1a
    move-result v2

    #@1b
    add-int/2addr v0, v2

    #@1c
    .line 360
    :cond_1
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 361
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@22
    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->hashCode()I

    #@25
    move-result v2

    #@26
    add-int/2addr v0, v2

    #@27
    .line 363
    :cond_2
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@29
    if-eqz v2, :cond_4

    #@2b
    .line 364
    const/4 v1, 0x0

    #@2c
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@2e
    array-length v2, v2

    #@2f
    if-ge v1, v2, :cond_4

    #@31
    .line 365
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@33
    aget-boolean v2, v2, v1

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 366
    add-int/2addr v0, v1

    #@38
    .line 364
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 370
    .end local v1    # "i":I
    :cond_4
    iput v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    #@3d
    .line 372
    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 390
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 391
    const-string/jumbo v2, "DistributionPoint:\n     "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "\n"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 393
    :cond_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 394
    const-string/jumbo v2, "DistributionPoint:\n     "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, "\n"

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 397
    :cond_1
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 398
    const-string/jumbo v2, "   ReasonFlags:\n"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 399
    const/4 v0, 0x0

    #@3e
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@40
    array-length v2, v2

    #@41
    if-ge v0, v2, :cond_3

    #@43
    .line 400
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    #@45
    aget-boolean v2, v2, v0

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 401
    const-string/jumbo v2, "    "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v0}, Lsun/security/x509/DistributionPoint;->reasonToString(I)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    const-string/jumbo v3, "\n"

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@60
    goto :goto_0

    #@61
    .line 405
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@63
    if-eqz v2, :cond_4

    #@65
    .line 406
    const-string/jumbo v2, "   CRLIssuer:"

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    const-string/jumbo v3, "\n"

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 408
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    return-object v2
.end method
