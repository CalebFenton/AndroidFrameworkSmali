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
    add-int/lit8 v5, p1, 0x1

    #@6
    :try_start_0
    aget-byte v0, p0, p1

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
    and-int/lit16 v0, v9, 0x80

    #@10
    if-eqz v0, :cond_2

    #@12
    const/4 v2, 0x1

    #@13
    .line 146
    .local v2, "cr":Z
    :goto_0
    and-int/lit16 v1, v9, -0x81

    #@15
    move v6, v5

    #@16
    .line 152
    .end local v5    # "curIndex":I
    .local v6, "curIndex":I
    :goto_1
    add-int/lit8 v5, v6, 0x1

    #@18
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    aget-byte v0, p0, v6

    #@1a
    and-int/lit16 v9, v0, 0xff

    #@1c
    .line 153
    if-ge v9, v10, :cond_3

    #@1e
    .line 154
    move v3, v9

    #@1f
    .line 195
    .local v3, "length":I
    :cond_0
    :goto_2
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@21
    move-object v4, p0

    #@22
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/ComprehensionTlv;-><init>(IZI[BI)V

    #@25
    return-object v0

    #@26
    .line 128
    .end local v1    # "tag":I
    .end local v2    # "cr":Z
    .end local v3    # "length":I
    :sswitch_0
    const-string/jumbo v0, "CAT     "

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v10, "decode: unexpected first tag byte="

    #@31
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    .line 129
    const-string/jumbo v10, ", startIndex="

    #@40
    .line 128
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 129
    const-string/jumbo v10, " curIndex="

    #@4b
    .line 128
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    .line 130
    const-string/jumbo v10, " endIndex="

    #@56
    .line 128
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 133
    const/4 v0, 0x0

    #@66
    return-object v0

    #@67
    .line 136
    :sswitch_1
    aget-byte v0, p0, v5

    #@69
    and-int/lit16 v0, v0, 0xff

    #@6b
    shl-int/lit8 v0, v0, 0x8

    #@6d
    .line 137
    add-int/lit8 v4, v5, 0x1

    #@6f
    aget-byte v4, p0, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@71
    and-int/lit16 v4, v4, 0xff

    #@73
    .line 136
    or-int v1, v0, v4

    #@75
    .line 138
    .restart local v1    # "tag":I
    const v0, 0x8000

    #@78
    and-int/2addr v0, v1

    #@79
    if-eqz v0, :cond_1

    #@7b
    const/4 v2, 0x1

    #@7c
    .line 139
    .restart local v2    # "cr":Z
    :goto_3
    const v0, -0x8001

    #@7f
    and-int/2addr v1, v0

    #@80
    .line 140
    add-int/lit8 v5, v5, 0x2

    #@82
    move v6, v5

    #@83
    .line 141
    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    goto :goto_1

    #@84
    .line 138
    .end local v2    # "cr":Z
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    :cond_1
    const/4 v2, 0x0

    #@85
    .restart local v2    # "cr":Z
    goto :goto_3

    #@86
    .line 145
    .end local v2    # "cr":Z
    :cond_2
    const/4 v2, 0x0

    #@87
    .restart local v2    # "cr":Z
    goto :goto_0

    #@88
    .line 155
    :cond_3
    const/16 v0, 0x81

    #@8a
    if-ne v9, v0, :cond_4

    #@8c
    .line 156
    add-int/lit8 v6, v5, 0x1

    #@8e
    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    :try_start_1
    aget-byte v0, p0, v5

    #@90
    and-int/lit16 v3, v0, 0xff

    #@92
    .line 157
    .restart local v3    # "length":I
    if-ge v3, v10, :cond_7

    #@94
    .line 158
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@96
    .line 159
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@98
    .line 160
    new-instance v10, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v11, "length < 0x80 length="

    #@a0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v10

    #@a4
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a7
    move-result-object v11

    #@a8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    .line 161
    const-string/jumbo v11, " startIndex="

    #@af
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v10

    #@b7
    .line 161
    const-string/jumbo v11, " curIndex="

    #@ba
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v10

    #@be
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v10

    #@c2
    .line 162
    const-string/jumbo v11, " endIndex="

    #@c5
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v10

    #@c9
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v10

    #@cd
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v10

    #@d1
    .line 158
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@d4
    throw v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@d5
    .line 197
    .end local v3    # "length":I
    :catch_0
    move-exception v7

    #@d6
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    move v5, v6

    #@d7
    .line 198
    .end local v1    # "tag":I
    .end local v2    # "cr":Z
    .end local v6    # "curIndex":I
    .end local v9    # "temp":I
    .restart local v5    # "curIndex":I
    :goto_4
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@d9
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@db
    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v11, "IndexOutOfBoundsException startIndex="

    #@e3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v10

    #@e7
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v10

    #@eb
    .line 200
    const-string/jumbo v11, " curIndex="

    #@ee
    .line 199
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v10

    #@f2
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v10

    #@f6
    .line 200
    const-string/jumbo v11, " endIndex="

    #@f9
    .line 199
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v10

    #@fd
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@100
    move-result-object v10

    #@101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v10

    #@105
    .line 198
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@108
    throw v0

    #@109
    .line 164
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "tag":I
    .restart local v2    # "cr":Z
    .restart local v9    # "temp":I
    :cond_4
    const/16 v0, 0x82

    #@10b
    if-ne v9, v0, :cond_5

    #@10d
    .line 165
    :try_start_2
    aget-byte v0, p0, v5

    #@10f
    and-int/lit16 v0, v0, 0xff

    #@111
    shl-int/lit8 v0, v0, 0x8

    #@113
    .line 166
    add-int/lit8 v4, v5, 0x1

    #@115
    aget-byte v4, p0, v4

    #@117
    and-int/lit16 v4, v4, 0xff

    #@119
    .line 165
    or-int v3, v0, v4

    #@11b
    .line 167
    .restart local v3    # "length":I
    add-int/lit8 v5, v5, 0x2

    #@11d
    .line 168
    const/16 v0, 0x100

    #@11f
    if-ge v3, v0, :cond_0

    #@121
    .line 169
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@123
    .line 170
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@125
    .line 171
    new-instance v10, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v11, "two byte length < 0x100 length="

    #@12d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v10

    #@131
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@134
    move-result-object v11

    #@135
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v10

    #@139
    .line 172
    const-string/jumbo v11, " startIndex="

    #@13c
    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v10

    #@140
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    move-result-object v10

    #@144
    .line 172
    const-string/jumbo v11, " curIndex="

    #@147
    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v10

    #@14b
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v10

    #@14f
    .line 173
    const-string/jumbo v11, " endIndex="

    #@152
    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v10

    #@156
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@159
    move-result-object v10

    #@15a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v10

    #@15e
    .line 169
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@161
    throw v0

    #@162
    .line 197
    .end local v1    # "tag":I
    .end local v2    # "cr":Z
    .end local v3    # "length":I
    .end local v9    # "temp":I
    :catch_1
    move-exception v7

    #@163
    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_4

    #@165
    .line 175
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "tag":I
    .restart local v2    # "cr":Z
    .restart local v9    # "temp":I
    :cond_5
    const/16 v0, 0x83

    #@167
    if-ne v9, v0, :cond_6

    #@169
    .line 176
    aget-byte v0, p0, v5

    #@16b
    and-int/lit16 v0, v0, 0xff

    #@16d
    shl-int/lit8 v0, v0, 0x10

    #@16f
    .line 177
    add-int/lit8 v4, v5, 0x1

    #@171
    aget-byte v4, p0, v4

    #@173
    and-int/lit16 v4, v4, 0xff

    #@175
    shl-int/lit8 v4, v4, 0x8

    #@177
    .line 176
    or-int/2addr v0, v4

    #@178
    .line 178
    add-int/lit8 v4, v5, 0x2

    #@17a
    aget-byte v4, p0, v4

    #@17c
    and-int/lit16 v4, v4, 0xff

    #@17e
    .line 176
    or-int v3, v0, v4

    #@180
    .line 179
    .restart local v3    # "length":I
    add-int/lit8 v5, v5, 0x3

    #@182
    .line 180
    const/high16 v0, 0x10000

    #@184
    if-ge v3, v0, :cond_0

    #@186
    .line 181
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@188
    .line 182
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@18a
    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    const-string/jumbo v11, "three byte length < 0x10000 length=0x"

    #@192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v10

    #@196
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@199
    move-result-object v11

    #@19a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v10

    #@19e
    .line 184
    const-string/jumbo v11, " startIndex="

    #@1a1
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v10

    #@1a5
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v10

    #@1a9
    .line 184
    const-string/jumbo v11, " curIndex="

    #@1ac
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v10

    #@1b0
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v10

    #@1b4
    .line 185
    const-string/jumbo v11, " endIndex="

    #@1b7
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v10

    #@1bb
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v10

    #@1bf
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v10

    #@1c3
    .line 181
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@1c6
    throw v0

    #@1c7
    .line 188
    .end local v3    # "length":I
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@1c9
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@1cb
    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v11, "Bad length modifer="

    #@1d3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v10

    #@1d7
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v10

    #@1db
    .line 190
    const-string/jumbo v11, " startIndex="

    #@1de
    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v10

    #@1e2
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v10

    #@1e6
    .line 190
    const-string/jumbo v11, " curIndex="

    #@1e9
    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v10

    #@1ed
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v10

    #@1f1
    .line 191
    const-string/jumbo v11, " endIndex="

    #@1f4
    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v10

    #@1f8
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v10

    #@1fc
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ff
    move-result-object v10

    #@200
    .line 188
    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@203
    throw v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    #@204
    .end local v5    # "curIndex":I
    .restart local v3    # "length":I
    .restart local v6    # "curIndex":I
    :cond_7
    move v5, v6

    #@205
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    goto/16 :goto_2

    #@207
    .line 124
    nop

    #@208
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
