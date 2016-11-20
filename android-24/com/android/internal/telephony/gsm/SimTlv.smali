.class public Lcom/android/internal/telephony/gsm/SimTlv;
.super Ljava/lang/Object;
.source "SimTlv.java"


# instance fields
.field mCurDataLength:I

.field mCurDataOffset:I

.field mCurOffset:I

.field mHasValidTlvObject:Z

.field mRecord:[B

.field mTlvLength:I

.field mTlvOffset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .param p1, "record"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@5
    .line 41
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    #@7
    .line 42
    iput p3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    #@9
    .line 43
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@b
    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    #@e
    move-result v0

    #@f
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    #@11
    .line 38
    return-void
.end method

.method private parseCurrentTlvObject()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@3
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@5
    aget-byte v1, v1, v2

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@d
    aget-byte v1, v1, v2

    #@f
    and-int/lit16 v1, v1, 0xff

    #@11
    const/16 v2, 0xff

    #@13
    if-ne v1, v2, :cond_1

    #@15
    .line 93
    :cond_0
    return v4

    #@16
    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@18
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    aget-byte v1, v1, v2

    #@1e
    and-int/lit16 v1, v1, 0xff

    #@20
    const/16 v2, 0x80

    #@22
    if-ge v1, v2, :cond_2

    #@24
    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@26
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    aget-byte v1, v1, v2

    #@2c
    and-int/lit16 v1, v1, 0xff

    #@2e
    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    #@30
    .line 99
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@32
    add-int/lit8 v1, v1, 0x2

    #@34
    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 111
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    #@38
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    #@3a
    add-int/2addr v1, v2

    #@3b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    #@3d
    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    #@3f
    add-int/2addr v2, v3

    #@40
    if-le v1, v2, :cond_4

    #@42
    .line 112
    return v4

    #@43
    .line 100
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@45
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@47
    add-int/lit8 v2, v2, 0x1

    #@49
    aget-byte v1, v1, v2

    #@4b
    and-int/lit16 v1, v1, 0xff

    #@4d
    const/16 v2, 0x81

    #@4f
    if-ne v1, v2, :cond_3

    #@51
    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@53
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@55
    add-int/lit8 v2, v2, 0x2

    #@57
    aget-byte v1, v1, v2

    #@59
    and-int/lit16 v1, v1, 0xff

    #@5b
    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    #@5d
    .line 103
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@5f
    add-int/lit8 v1, v1, 0x3

    #@61
    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@63
    goto :goto_0

    #@64
    .line 107
    :catch_0
    move-exception v0

    #@65
    .line 108
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    return v4

    #@66
    .line 105
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    return v4

    #@67
    .line 115
    :cond_4
    const/4 v1, 0x1

    #@68
    return v1
.end method


# virtual methods
.method public getData()[B
    .locals 5

    #@0
    .prologue
    .line 76
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    return-object v1

    #@6
    .line 78
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    #@8
    new-array v0, v1, [B

    #@a
    .line 79
    .local v0, "ret":[B
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@c
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    #@e
    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    #@10
    const/4 v4, 0x0

    #@11
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 80
    return-object v0
.end method

.method public getTag()I
    .locals 2

    #@0
    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    #@8
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@a
    aget-byte v0, v0, v1

    #@c
    and-int/lit16 v0, v0, 0xff

    #@e
    return v0
.end method

.method public isValidObject()Z
    .locals 1

    #@0
    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    #@2
    return v0
.end method

.method public nextObject()Z
    .locals 2

    #@0
    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 50
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    #@8
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    #@a
    add-int/2addr v0, v1

    #@b
    iput v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    #@d
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    #@10
    move-result v0

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    #@13
    .line 52
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    #@15
    return v0
.end method
