.class public Lcom/android/internal/telephony/cat/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# instance fields
.field private blacklist mCr:Z

.field private blacklist mLength:I

.field private blacklist mRawValue:[B

.field private blacklist mTag:I

.field private blacklist mValueIndex:I


# direct methods
.method public constructor blacklist <init>(IZI[BI)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    .line 56
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    .line 57
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    .line 58
    iput p5, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    .line 59
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    return-void
.end method

.method public static blacklist decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 123
    const-string v6, " endIndex="

    const-string v7, " curIndex="

    array-length v8, p0

    add-int/lit8 v0, p1, 0x1

    .line 129
    :try_start_7
    aget-byte v1, p0, p1

    and-int/lit16 v2, v1, 0xff

    if-eqz v2, :cond_14d

    const/16 v3, 0xff

    if-eq v2, v3, :cond_14d

    const/4 v5, 0x0

    const/16 v9, 0x7f

    const/16 v10, 0x80

    const/4 v11, 0x1

    if-eq v2, v9, :cond_23

    if-eq v2, v10, :cond_14d

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_20

    move v5, v11

    :cond_20
    and-int/2addr v1, v9

    :goto_21
    move v2, v5

    goto :goto_3c

    .line 142
    :cond_23
    aget-byte v1, p0, v0

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    aget-byte v0, p0, v2
    :try_end_2c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_2c} :catch_17d

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_35

    move v5, v11

    :cond_35
    const v1, -0x8001

    and-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x3

    goto :goto_21

    :goto_3c
    add-int/lit8 v5, v0, 0x1

    .line 158
    :try_start_3e
    aget-byte v9, p0, v0
    :try_end_40
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_40} :catch_ca

    and-int/2addr v9, v3

    if-ge v9, v10, :cond_46

    :goto_43
    move v3, v9

    goto/16 :goto_ec

    :cond_46
    const/16 v11, 0x81

    .line 161
    const-string v12, " startIndex="

    if-ne v9, v11, :cond_85

    add-int/lit8 v0, v0, 0x2

    .line 162
    :try_start_4e
    aget-byte v5, p0, v5

    and-int/lit16 v9, v5, 0xff

    if-lt v9, v10, :cond_56

    :goto_54
    move v5, v0

    goto :goto_43

    .line 164
    :cond_56
    new-instance v1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length < 0x80 length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v1
    :try_end_85
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_85} :catch_17d

    :cond_85
    const/16 v10, 0x82

    if-ne v9, v10, :cond_cd

    .line 171
    :try_start_89
    aget-byte v9, p0, v5

    and-int/2addr v9, v3

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v0, 0x2

    aget-byte v5, p0, v10
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_89 .. :try_end_92} :catch_ca

    and-int/2addr v3, v5

    or-int/2addr v9, v3

    add-int/lit8 v0, v0, 0x3

    const/16 v3, 0x100

    if-lt v9, v3, :cond_9b

    goto :goto_54

    .line 175
    :cond_9b
    :try_start_9b
    new-instance v1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "two byte length < 0x100 length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v1
    :try_end_ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9b .. :try_end_ca} :catch_17d

    :catch_ca
    move v0, v5

    goto/16 :goto_17d

    :cond_cd
    const/16 v10, 0x83

    if-ne v9, v10, :cond_122

    .line 182
    :try_start_d1
    aget-byte v9, p0, v5

    and-int/2addr v9, v3

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v10, v0, 0x2

    aget-byte v10, p0, v10

    and-int/2addr v10, v3

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v0, 0x3

    aget-byte v5, p0, v10

    and-int/2addr v3, v5

    or-int/2addr v9, v3

    add-int/lit8 v0, v0, 0x4

    const/high16 v3, 0x10000

    if-lt v9, v3, :cond_f3

    goto/16 :goto_54

    .line 201
    :goto_ec
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/ComprehensionTlv;-><init>(IZI[BI)V
    :try_end_f2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d1 .. :try_end_f2} :catch_ca

    return-object v0

    .line 187
    :cond_f3
    :try_start_f3
    new-instance v1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "three byte length < 0x10000 length=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v1
    :try_end_122
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f3 .. :try_end_122} :catch_17d

    .line 194
    :cond_122
    :try_start_122
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length modifer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v0
    :try_end_14d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_122 .. :try_end_14d} :catch_ca

    .line 134
    :cond_14d
    :try_start_14d
    const-string v1, "CAT     "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode: unexpected first tag byte="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", startIndex="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14d .. :try_end_17b} :catch_17d

    const/4 v0, 0x0

    return-object v0

    .line 204
    :catch_17d
    :goto_17d
    new-instance v1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException startIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist decodeMany([BI)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    array-length v1, p0

    :goto_6
    if-ge p1, v1, :cond_1e

    .line 99
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 101
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget v2, p1, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    iget p1, p1, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    add-int/2addr p1, v2

    goto :goto_6

    .line 104
    :cond_17
    const-string p0, "ComprehensionTlv"

    const-string p1, "decodeMany: ctlv is null, stop decoding"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-object v0
.end method


# virtual methods
.method public greylist-max-r getLength()I
    .registers 1

    .line 73
    iget p0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    return p0
.end method

.method public greylist-max-r getRawValue()[B
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    return-object p0
.end method

.method public greylist-max-r getTag()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    return p0
.end method

.method public greylist-max-r getValueIndex()I
    .registers 1

    .line 78
    iget p0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    return p0
.end method

.method public blacklist isComprehensionRequired()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    return p0
.end method
