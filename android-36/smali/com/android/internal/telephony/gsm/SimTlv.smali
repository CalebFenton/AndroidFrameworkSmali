.class public Lcom/android/internal/telephony/gsm/SimTlv;
.super Ljava/lang/Object;
.source "SimTlv.java"


# instance fields
.field blacklist mCurDataLength:I

.field blacklist mCurDataOffset:I

.field blacklist mCurOffset:I

.field greylist-max-r mHasValidTlvObject:Z

.field blacklist mRecord:[B

.field blacklist mTlvLength:I

.field blacklist mTlvOffset:I


# direct methods
.method public constructor greylist <init>([BII)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    .line 46
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    .line 47
    iput p3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    .line 48
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return-void
.end method

.method private blacklist parseCurrentTlvObject()Z
    .registers 7

    const/4 v0, 0x0

    .line 101
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v3, v1, v2

    if-eqz v3, :cond_47

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_f

    goto :goto_47

    :cond_f
    add-int/lit8 v3, v2, 0x1

    .line 105
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    const/16 v5, 0x80

    if-ge v3, v5, :cond_24

    add-int/lit8 v3, v2, 0x1

    .line 107
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    add-int/lit8 v2, v2, 0x2

    .line 108
    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    goto :goto_38

    :cond_24
    add-int/lit8 v3, v2, 0x1

    .line 109
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    const/16 v5, 0x81

    if-ne v3, v5, :cond_47

    add-int/lit8 v3, v2, 0x2

    .line 111
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    add-int/lit8 v2, v2, 0x3

    .line 112
    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I
    :try_end_38
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_38} :catch_47

    .line 120
    :goto_38
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    iget p0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    add-int/2addr v2, p0

    if-le v1, v2, :cond_45

    return v0

    :cond_45
    const/4 p0, 0x1

    return p0

    :catch_47
    :cond_47
    :goto_47
    return v0
.end method


# virtual methods
.method public greylist getData()[B
    .registers 5

    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    new-array v1, v0, [B

    .line 88
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget p0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public greylist getTag()I
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget p0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public greylist isValidObject()Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return p0
.end method

.method public greylist nextObject()Z
    .registers 3

    .line 55
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return v0
.end method
