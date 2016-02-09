.class Lcom/android/internal/telephony/cat/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComprehensionTlv"


# instance fields
.field private mCr:Z

.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(IZI[BI)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "cr"    # Z
    .param p3, "length"    # I
    .param p4, "data"    # [B
    .param p5, "valueIndex"    # I

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput p1, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    #@5
    .line 54
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    #@7
    .line 55
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    #@9
    .line 56
    iput p5, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    #@b
    .line 57
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    #@d
    .line 52
    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x80

    #@2
    .line 116
    move v5, p1

    #@3
    .line 117
    .local v5, "curIndex":I
    array-length v8, p0

    #@4
    .line 123
    .local v8, "endIndex":I
    add-int/lit8 v6, v5, 0x1

    #@6
    .end local v5    # "curIndex":I
    .local v6, "curIndex":I
    :try_start_0
    aget-byte v0, p0, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    and-int/lit16 v9, v0, 0xff

    #@a
    .line 124
    .local v9, "temp":I
    sparse-switch v9, :sswitch_data_0

    #@d
    .line 144
    move v1, v9

    #@e
    .line 145
    .local v1, "tag":I
    and-int/lit16 v0, v1, 0x80

    #@10
    if-eqz v0, :cond_2

    #@12
    const/4 v2, 0x1

    #@13
    .line 146
    .local v2, "cr":Z
    :goto_0
    and-int/lit16 v1, v1, -0x81

    #@15
    .line 152
    :goto_1
    add-int/lit8 v5, v6, 0x1

    #@17
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    :try_start_1
    aget-byte v0, p0, v6

    #@19
    and-int/lit16 v9, v0, 0xff

    #@1b
    .line 153
    if-ge v9, v10, :cond_3

    #@1d
    .line 154
    move v3, v9

    #@1e
    .line 195
    .local v3, "length":I
    :cond_0
    :goto_2
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@20
    move-object v4, p0

    #@21
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/ComprehensionTlv;-><init>(IZI[BI)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    return-object v0

    #@25
    .line 128
    .end local v1    # "tag":I
    .end local v2    # "cr":Z
    .end local v3    # "length":I
    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    :sswitch_0
    :try_start_2
    const-string/jumbo v0, "CAT     "

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v10, "decode: unexpected first tag byte="

    #@30
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 129
    const-string/jumbo v10, ", startIndex="

    #@3f
    .line 128
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 129
    const-string/jumbo v10, " curIndex="

    #@4a
    .line 128
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 130
    const-string/jumbo v10, " endIndex="

    #@55
    .line 128
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 133
    const/4 v0, 0x0

    #@65
    return-object v0

    #@66
    .line 136
    :sswitch_1
    aget-byte v0, p0, v6

    #@68
    and-int/lit16 v0, v0, 0xff

    #@6a
    shl-int/lit8 v0, v0, 0x8

    #@6c
    .line 137
    add-int/lit8 v4, v6, 0x1

    #@6e
    aget-byte v4, p0, v4

    #@70
    and-int/lit16 v4, v4, 0xff

    #@72
    .line 136
    or-int v1, v0, v4

    #@74
    .line 138
    .restart local v1    # "tag":I
    const v0, 0x8000

    #@77
    and-int/2addr v0, v1

    #@78
    if-eqz v0, :cond_1

    #@7a
    const/4 v2, 0x1

    #@7b
    .line 139
    .restart local v2    # "cr":Z
    :goto_3
    const v0, -0x8001

    #@7e
    and-int/2addr v1, v0

    #@7f
    .line 140
    add-int/lit8 v5, v6, 0x2

    #@81
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    move v6, v5

    #@82
    .line 141
    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    goto :goto_1

    #@83
    .line 138
    .end local v2    # "cr":Z
    :cond_1
    const/4 v2, 0x0

    #@84
    .restart local v2    # "cr":Z
    goto :goto_3

    #@85
    .line 145
    .end local v2    # "cr":Z
    :cond_2
    const/4 v2, 0x0

    #@86
    .restart local v2    # "cr":Z
    goto :goto_0

    #@87
    .line 155
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    :cond_3
    const/16 v0, 0x81

    #@89
    if-ne v9, v0, :cond_4

    #@8b
    .line 156
    add-int/lit8 v6, v5, 0x1

    #@8d
    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    aget-byte v0, p0, v5

    #@8f
    and-int/lit16 v3, v0, 0xff

    #@91
    .line 157
    .restart local v3    # "length":I
    if-ge v3, v10, :cond_7

    #@93
    .line 158
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@95
    .line 159
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@97
    .line 160
    new-instance v10, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v11, "length < 0x80 length="

    #@9f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v10

    #@a3
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v10

    #@ab
    .line 161
    const-string/jumbo v11, " startIndex="

    #@ae
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v10

    #@b2
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v10

    #@b6
    .line 161
    const-string/jumbo v11, " curIndex="

    #@b9
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v10

    #@bd
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v10

    #@c1
    .line 162
    const-string/jumbo v11, " endIndex="

    #@c4
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v10

    #@c8
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v10

    #@cc
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v10

    #@d0
    .line 158
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@d3
    throw v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    #@d4
    .line 197
    .end local v1    # "tag":I
    .end local v2    # "cr":Z
    .end local v3    # "length":I
    .end local v9    # "temp":I
    :catch_0
    move-exception v7

    #@d5
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    move v5, v6

    #@d6
    .line 198
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    :goto_4
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@d8
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@da
    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v11, "IndexOutOfBoundsException startIndex="

    #@e2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v10

    #@e6
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v10

    #@ea
    .line 200
    const-string/jumbo v11, " curIndex="

    #@ed
    .line 199
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v10

    #@f1
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v10

    #@f5
    .line 200
    const-string/jumbo v11, " endIndex="

    #@f8
    .line 199
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v10

    #@fc
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v10

    #@100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v10

    #@104
    .line 198
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@107
    throw v0

    #@108
    .line 164
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "tag":I
    .restart local v2    # "cr":Z
    .restart local v9    # "temp":I
    :cond_4
    const/16 v0, 0x82

    #@10a
    if-ne v9, v0, :cond_5

    #@10c
    .line 165
    :try_start_3
    aget-byte v0, p0, v5

    #@10e
    and-int/lit16 v0, v0, 0xff

    #@110
    shl-int/lit8 v0, v0, 0x8

    #@112
    .line 166
    add-int/lit8 v4, v5, 0x1

    #@114
    aget-byte v4, p0, v4

    #@116
    and-int/lit16 v4, v4, 0xff

    #@118
    .line 165
    or-int v3, v0, v4

    #@11a
    .line 167
    .restart local v3    # "length":I
    add-int/lit8 v5, v5, 0x2

    #@11c
    .line 168
    const/16 v0, 0x100

    #@11e
    if-ge v3, v0, :cond_0

    #@120
    .line 169
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@122
    .line 170
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@124
    .line 171
    new-instance v10, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v11, "two byte length < 0x100 length="

    #@12c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v10

    #@130
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@133
    move-result-object v11

    #@134
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v10

    #@138
    .line 172
    const-string/jumbo v11, " startIndex="

    #@13b
    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v10

    #@13f
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@142
    move-result-object v10

    #@143
    .line 172
    const-string/jumbo v11, " curIndex="

    #@146
    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v10

    #@14a
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v10

    #@14e
    .line 173
    const-string/jumbo v11, " endIndex="

    #@151
    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v10

    #@155
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@158
    move-result-object v10

    #@159
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v10

    #@15d
    .line 169
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@160
    throw v0

    #@161
    .line 197
    .end local v3    # "length":I
    :catch_1
    move-exception v7

    #@162
    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_4

    #@164
    .line 175
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    const/16 v0, 0x83

    #@166
    if-ne v9, v0, :cond_6

    #@168
    .line 176
    aget-byte v0, p0, v5

    #@16a
    and-int/lit16 v0, v0, 0xff

    #@16c
    shl-int/lit8 v0, v0, 0x10

    #@16e
    .line 177
    add-int/lit8 v4, v5, 0x1

    #@170
    aget-byte v4, p0, v4

    #@172
    and-int/lit16 v4, v4, 0xff

    #@174
    shl-int/lit8 v4, v4, 0x8

    #@176
    .line 176
    or-int/2addr v0, v4

    #@177
    .line 178
    add-int/lit8 v4, v5, 0x2

    #@179
    aget-byte v4, p0, v4

    #@17b
    and-int/lit16 v4, v4, 0xff

    #@17d
    .line 176
    or-int v3, v0, v4

    #@17f
    .line 179
    .restart local v3    # "length":I
    add-int/lit8 v5, v5, 0x3

    #@181
    .line 180
    const/high16 v0, 0x10000

    #@183
    if-ge v3, v0, :cond_0

    #@185
    .line 181
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@187
    .line 182
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@189
    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v11, "three byte length < 0x10000 length=0x"

    #@191
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v10

    #@195
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@198
    move-result-object v11

    #@199
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v10

    #@19d
    .line 184
    const-string/jumbo v11, " startIndex="

    #@1a0
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v10

    #@1a4
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v10

    #@1a8
    .line 184
    const-string/jumbo v11, " curIndex="

    #@1ab
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v10

    #@1af
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v10

    #@1b3
    .line 185
    const-string/jumbo v11, " endIndex="

    #@1b6
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v10

    #@1ba
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v10

    #@1be
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c1
    move-result-object v10

    #@1c2
    .line 181
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@1c5
    throw v0

    #@1c6
    .line 188
    .end local v3    # "length":I
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@1c8
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@1ca
    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    #@1cc
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1cf
    const-string/jumbo v11, "Bad length modifer="

    #@1d2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v10

    #@1d6
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v10

    #@1da
    .line 190
    const-string/jumbo v11, " startIndex="

    #@1dd
    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v10

    #@1e1
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v10

    #@1e5
    .line 190
    const-string/jumbo v11, " curIndex="

    #@1e8
    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v10

    #@1ec
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v10

    #@1f0
    .line 191
    const-string/jumbo v11, " endIndex="

    #@1f3
    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v10

    #@1f7
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v10

    #@1fb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fe
    move-result-object v10

    #@1ff
    .line 188
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@202
    throw v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@203
    .end local v5    # "curIndex":I
    .restart local v3    # "length":I
    .restart local v6    # "curIndex":I
    :cond_7
    move v5, v6

    #@204
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    goto/16 :goto_2

    #@206
    .line 124
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7f -> :sswitch_1
        0x80 -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 91
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    array-length v1, p0

    #@6
    .line 92
    .local v1, "endIndex":I
    :goto_0
    if-ge p1, v1, :cond_1

    #@8
    .line 93
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@b
    move-result-object v0

    #@c
    .line 94
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    #@e
    .line 95
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 96
    iget v3, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    #@13
    iget v4, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    #@15
    add-int p1, v3, v4

    #@17
    goto :goto_0

    #@18
    .line 98
    :cond_0
    const-string/jumbo v3, "ComprehensionTlv"

    #@1b
    const-string/jumbo v4, "decodeMany: ctlv is null, stop decoding"

    #@1e
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 103
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    #@2
    return v0
.end method

.method public getRawValue()[B
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    #@2
    return-object v0
.end method

.method public getTag()I
    .locals 1

    #@0
    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    #@2
    return v0
.end method

.method public getValueIndex()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    #@2
    return v0
.end method

.method public isComprehensionRequired()Z
    .locals 1

    #@0
    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    #@2
    return v0
.end method
