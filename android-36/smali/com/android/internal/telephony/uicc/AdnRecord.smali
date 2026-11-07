.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mAdditionalNumbers:[Ljava/lang/String;

.field greylist-max-r mAlphaTag:Ljava/lang/String;

.field greylist-max-r mEfid:I

.field greylist-max-r mEmails:[Ljava/lang/String;

.field greylist-max-r mExtRecord:I

.field greylist-max-r mNumber:Ljava/lang/String;

.field greylist-max-r mRecordNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 52
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 204
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 205
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 206
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 207
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-r <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 52
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 184
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 185
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 186
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 188
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 52
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 194
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 195
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 196
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 198
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 199
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-r <init>(II[B)V
    .registers 5

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    const/16 v0, 0xff

    .line 52
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 163
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 164
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 165
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 179
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist-max-r <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    return-void
.end method

.method private static blacklist arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 294
    :cond_4
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 295
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 297
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 298
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 300
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_26

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_26
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static blacklist decodeAlphaTag([BII)Ljava/lang/String;
    .registers 3

    .line 140
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist encodeAlphaTag(Ljava/lang/String;)[B
    .registers 2

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    .line 129
    new-array p0, p0, [B

    return-object p0

    .line 131
    :cond_a
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getMaxAlphaTagBytes(I)I
    .registers 2

    add-int/lit8 p0, p0, -0xe

    const/4 v0, 0x0

    .line 117
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static blacklist getMaxPhoneNumberDigits()I
    .registers 1

    .line 0
    const/16 v0, 0x14

    return v0
.end method

.method private blacklist parseRecord([B)V
    .registers 7

    .line 431
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    array-length v2, p1

    add-int/lit8 v2, v2, -0xe

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->decodeAlphaTag([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 434
    array-length v2, p1

    add-int/lit8 v3, v2, -0xe

    .line 436
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xb

    if-le v3, v4, :cond_1d

    .line 440
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-void

    :catch_1b
    move-exception p1

    goto :goto_33

    :cond_1d
    add-int/lit8 v2, v2, -0xd

    const/4 v4, 0x1

    .line 451
    invoke-static {p1, v2, v3, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 458
    array-length v2, p1

    sub-int/2addr v2, v4

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 460
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 461
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_32} :catch_1b

    return-void

    .line 463
    :goto_33
    const-string v2, "AdnRecord"

    const-string v3, "Error parsing AdnRecord"

    invoke-static {v2, v3, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 465
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 466
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 467
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method private static blacklist stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 279
    :cond_4
    const-string v0, ""

    if-nez p0, :cond_9

    move-object p0, v0

    :cond_9
    if-nez p1, :cond_c

    move-object p1, v0

    .line 285
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist appendExtRecord([B)V
    .registers 6

    .line 396
    :try_start_0
    array-length v0, p1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    goto :goto_3d

    :cond_6
    const/4 v0, 0x0

    .line 400
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto :goto_3d

    :cond_f
    const/4 v0, 0x1

    .line 405
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa

    if-le v2, v3, :cond_19

    goto :goto_3d

    .line 410
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v1, v3, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p0

    .line 419
    const-string p1, "AdnRecord"

    const-string v0, "Error parsing AdnRecord ext record"

    invoke-static {p1, v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    return-void
.end method

.method public greylist-max-r buildAdnString(I)[B
    .registers 10

    add-int/lit8 v0, p1, -0xe

    .line 346
    new-array v1, p1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v4, -0x1

    if-ge v3, p1, :cond_e

    .line 348
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 351
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "AdnRecord"

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 352
    const-string p0, "[buildAdnString] Empty dialing number"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 354
    :cond_26
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x14

    if-le v3, v7, :cond_39

    .line 356
    const-string p0, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 361
    :cond_39
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->encodeAlphaTag(Ljava/lang/String;)[B

    move-result-object v3

    .line 363
    array-length v7, v3

    if-le v7, v0, :cond_57

    .line 364
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[buildAdnString] Max length of tag is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 367
    :cond_57
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_70

    .line 368
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {p0, v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object p0

    add-int/lit8 v5, p1, -0xd

    .line 371
    array-length v7, p0

    invoke-static {p0, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    array-length p0, p0

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    :cond_70
    add-int/lit8 p0, p1, -0x2

    .line 377
    aput-byte v4, v1, p0

    sub-int/2addr p1, v6

    .line 379
    aput-byte v4, v1, p1

    .line 382
    array-length p0, v3

    if-lez p0, :cond_7e

    .line 383
    array-length p0, v3

    invoke-static {v3, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7e
    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAdditionalNumbers()[Ljava/lang/String;
    .registers 1

    .line 250
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getAlphaTag()Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEfid()I
    .registers 1

    .line 219
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    return p0
.end method

.method public greylist-max-r getEmails()[Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getNumber()Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRecId()I
    .registers 1

    .line 223
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return p0
.end method

.method public blacklist hasExtendedRecord()Z
    .registers 2

    .line 271
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz p0, :cond_a

    const/16 v0, 0xff

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r isEmpty()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 309
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 310
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 311
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setAdditionalNumbers([Ljava/lang/String;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setEmails([Ljava/lang/String;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-void
.end method

.method public blacklist setNumber(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRecId(I)V
    .registers 2

    .line 227
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v2, "AdnRecord"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 260
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 261
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 322
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
