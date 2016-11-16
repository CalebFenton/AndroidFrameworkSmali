.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mLengthValid:Z

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;Z)V
    .locals 1
    .param p1, "tag"    # I
    .param p3, "lengthValid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 38
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    #@6
    .line 30
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    #@9
    .line 31
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    #@c
    .line 39
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    #@e
    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    #@10
    .line 41
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    #@12
    .line 38
    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .locals 19
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    move-object/from16 v0, p0

    #@2
    array-length v6, v0

    #@3
    .line 81
    .local v6, "endIndex":I
    const/4 v11, 0x0

    #@4
    .line 82
    .local v11, "length":I
    const/4 v7, 0x1

    #@5
    .line 79
    .local v7, "isLengthValid":Z
    const/4 v15, 0x0

    #@6
    .line 86
    const/4 v2, 0x1

    #@7
    .local v2, "curIndex":I
    :try_start_0
    aget-byte v15, p0, v15
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_2

    #@9
    and-int/lit16 v12, v15, 0xff

    #@b
    .line 87
    .local v12, "tag":I
    const/16 v15, 0xd0

    #@d
    if-ne v12, v15, :cond_4

    #@f
    .line 89
    add-int/lit8 v3, v2, 0x1

    #@11
    .end local v2    # "curIndex":I
    .local v3, "curIndex":I
    :try_start_1
    aget-byte v15, p0, v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_3

    #@13
    and-int/lit16 v13, v15, 0xff

    #@15
    .line 90
    .local v13, "temp":I
    const/16 v15, 0x80

    #@17
    if-ge v13, v15, :cond_1

    #@19
    .line 91
    move v11, v13

    #@1a
    move v2, v3

    #@1b
    .line 124
    .end local v3    # "curIndex":I
    .end local v13    # "temp":I
    .restart local v2    # "curIndex":I
    :cond_0
    :goto_0
    sub-int v15, v6, v2

    #@1d
    if-ge v15, v11, :cond_5

    #@1f
    .line 125
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    #@21
    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@23
    .line 126
    new-instance v17, Ljava/lang/StringBuilder;

    #@25
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v18, "Command had extra data endIndex="

    #@2b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v17

    #@2f
    move-object/from16 v0, v17

    #@31
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v17

    #@35
    const-string/jumbo v18, " curIndex="

    #@38
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v17

    #@3c
    move-object/from16 v0, v17

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v17

    #@42
    .line 127
    const-string/jumbo v18, " length="

    #@45
    .line 126
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v17

    #@49
    move-object/from16 v0, v17

    #@4b
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v17

    #@4f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v17

    #@53
    .line 125
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@56
    throw v15

    #@57
    .line 92
    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    .restart local v13    # "temp":I
    :cond_1
    const/16 v15, 0x81

    #@59
    if-ne v13, v15, :cond_3

    #@5b
    .line 93
    add-int/lit8 v2, v3, 0x1

    #@5d
    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    :try_start_2
    aget-byte v15, p0, v3

    #@5f
    and-int/lit16 v13, v15, 0xff

    #@61
    .line 94
    const/16 v15, 0x80

    #@63
    if-ge v13, v15, :cond_2

    #@65
    .line 95
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    #@67
    .line 96
    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@69
    .line 97
    new-instance v17, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v18, "length < 0x80 length="

    #@71
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v17

    #@75
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@78
    move-result-object v18

    #@79
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v17

    #@7d
    .line 98
    const-string/jumbo v18, " curIndex="

    #@80
    .line 97
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v17

    #@84
    move-object/from16 v0, v17

    #@86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v17

    #@8a
    .line 98
    const-string/jumbo v18, " endIndex="

    #@8d
    .line 97
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v17

    #@91
    move-object/from16 v0, v17

    #@93
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v17

    #@97
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v17

    #@9b
    .line 95
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@9e
    throw v15
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    #@9f
    .line 115
    .end local v12    # "tag":I
    .end local v13    # "temp":I
    :catch_0
    move-exception v5

    #@a0
    .line 116
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    #@a2
    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@a4
    .line 117
    new-instance v17, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v18, "IndexOutOfBoundsException  curIndex="

    #@ac
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v17

    #@b0
    move-object/from16 v0, v17

    #@b2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v17

    #@b6
    .line 118
    const-string/jumbo v18, " endIndex="

    #@b9
    .line 117
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v17

    #@bd
    move-object/from16 v0, v17

    #@bf
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v17

    #@c3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v17

    #@c7
    .line 116
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@ca
    throw v15

    #@cb
    .line 101
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "tag":I
    .restart local v13    # "temp":I
    :cond_2
    move v11, v13

    #@cc
    goto/16 :goto_0

    #@ce
    .line 103
    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    :cond_3
    :try_start_3
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    #@d0
    .line 104
    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@d2
    .line 105
    new-instance v17, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v18, "Expected first byte to be length or a length tag and < 0x81 byte= "

    #@da
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v17

    #@de
    .line 106
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e1
    move-result-object v18

    #@e2
    .line 105
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v17

    #@e6
    .line 106
    const-string/jumbo v18, " curIndex="

    #@e9
    .line 105
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v17

    #@ed
    move-object/from16 v0, v17

    #@ef
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v17

    #@f3
    .line 107
    const-string/jumbo v18, " endIndex="

    #@f6
    .line 105
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v17

    #@fa
    move-object/from16 v0, v17

    #@fc
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v17

    #@100
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v17

    #@104
    .line 103
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@107
    throw v15
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_3

    #@108
    .line 115
    .end local v13    # "temp":I
    :catch_1
    move-exception v5

    #@109
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v3

    #@10a
    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    goto :goto_1

    #@10b
    .line 110
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    :try_start_4
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10d
    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_2

    #@110
    move-result v15

    #@111
    and-int/lit16 v0, v12, -0x81

    #@113
    move/from16 v16, v0

    #@115
    move/from16 v0, v16

    #@117
    if-ne v15, v0, :cond_0

    #@119
    .line 111
    const/4 v12, 0x0

    #@11a
    .line 112
    const/4 v2, 0x0

    #@11b
    goto/16 :goto_0

    #@11d
    .line 119
    .end local v12    # "tag":I
    :catch_2
    move-exception v4

    #@11e
    .line 120
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_2
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    #@120
    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@122
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->explanation()Ljava/lang/String;

    #@125
    move-result-object v17

    #@126
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    #@129
    throw v15

    #@12a
    .line 130
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .restart local v12    # "tag":I
    :cond_5
    move-object/from16 v0, p0

    #@12c
    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    #@12f
    move-result-object v1

    #@130
    .line 133
    .local v1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/16 v15, 0xd0

    #@132
    if-ne v12, v15, :cond_9

    #@134
    .line 134
    const/4 v14, 0x0

    #@135
    .line 135
    .local v14, "totalLength":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@138
    move-result-object v9

    #@139
    .local v9, "item$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@13c
    move-result v15

    #@13d
    if-eqz v15, :cond_8

    #@13f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@142
    move-result-object v8

    #@143
    check-cast v8, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@145
    .line 136
    .local v8, "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@148
    move-result v10

    #@149
    .line 137
    .local v10, "itemLength":I
    const/16 v15, 0x80

    #@14b
    if-lt v10, v15, :cond_6

    #@14d
    const/16 v15, 0xff

    #@14f
    if-gt v10, v15, :cond_6

    #@151
    .line 138
    add-int/lit8 v15, v10, 0x3

    #@153
    add-int/2addr v14, v15

    #@154
    .line 137
    goto :goto_3

    #@155
    .line 139
    :cond_6
    if-ltz v10, :cond_7

    #@157
    const/16 v15, 0x80

    #@159
    if-ge v10, v15, :cond_7

    #@15b
    .line 140
    add-int/lit8 v15, v10, 0x2

    #@15d
    add-int/2addr v14, v15

    #@15e
    .line 139
    goto :goto_3

    #@15f
    .line 142
    :cond_7
    const/4 v7, 0x0

    #@160
    .line 154
    .end local v8    # "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v10    # "itemLength":I
    :cond_8
    if-eq v11, v14, :cond_9

    #@162
    .line 155
    const/4 v7, 0x0

    #@163
    .line 159
    .end local v9    # "item$iterator":Ljava/util/Iterator;
    .end local v14    # "totalLength":I
    :cond_9
    new-instance v15, Lcom/android/internal/telephony/cat/BerTlv;

    #@165
    invoke-direct {v15, v12, v1, v7}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;Z)V

    #@168
    return-object v15

    #@169
    .line 119
    .end local v1    # "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    :catch_3
    move-exception v4

    #@16a
    .restart local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    move v2, v3

    #@16b
    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    goto :goto_2
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getTag()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    #@2
    return v0
.end method

.method public isLengthValid()Z
    .locals 1

    #@0
    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    #@2
    return v0
.end method
