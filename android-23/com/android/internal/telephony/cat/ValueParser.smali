.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 11
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 278
    if-eqz p0, :cond_1

    #@3
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@6
    move-result-object v4

    #@7
    .line 280
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@a
    move-result v6

    #@b
    .line 281
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@e
    move-result v2

    #@f
    .line 282
    .local v2, "length":I
    if-eqz v2, :cond_0

    #@11
    .line 284
    :try_start_0
    invoke-static {v4, v6, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v7

    #@15
    return-object v7

    #@16
    .line 286
    :catch_0
    move-exception v1

    #@17
    .line 287
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    #@19
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@1b
    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@1e
    throw v7

    #@1f
    .line 290
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string/jumbo v8, "ValueParser"

    #@22
    new-instance v9, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v10, "Alpha Id length="

    #@2a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v9

    #@2e
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v9

    #@36
    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 291
    return-object v7

    #@3a
    .line 299
    .end local v2    # "length":I
    .end local v4    # "rawValue":[B
    .end local v6    # "valueIndex":I
    :cond_1
    const/4 v3, 0x0

    #@3b
    .line 300
    .local v3, "noAlphaUsrCnf":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3e
    move-result-object v5

    #@3f
    .line 303
    .local v5, "resource":Landroid/content/res/Resources;
    const v8, 0x112007b

    #@42
    .line 302
    :try_start_1
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@45
    move-result v3

    #@46
    .line 307
    .end local v3    # "noAlphaUsrCnf":Z
    :goto_0
    if-eqz v3, :cond_2

    #@48
    :goto_1
    return-object v7

    #@49
    .line 304
    .restart local v3    # "noAlphaUsrCnf":Z
    :catch_1
    move-exception v0

    #@4a
    .line 305
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    #@4b
    goto :goto_0

    #@4c
    .line 307
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "noAlphaUsrCnf":Z
    :cond_2
    const-string/jumbo v7, "Default Message"

    #@4f
    goto :goto_1
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    #@5
    .line 43
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@8
    move-result-object v2

    #@9
    .line 44
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@c
    move-result v3

    #@d
    .line 46
    .local v3, "valueIndex":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    #@10
    move-result v4

    #@11
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@13
    .line 47
    aget-byte v4, v2, v3

    #@15
    and-int/lit16 v4, v4, 0xff

    #@17
    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    #@19
    .line 48
    add-int/lit8 v4, v3, 0x1

    #@1b
    aget-byte v4, v2, v4

    #@1d
    and-int/lit16 v4, v4, 0xff

    #@1f
    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@21
    .line 49
    add-int/lit8 v4, v3, 0x2

    #@23
    aget-byte v4, v2, v4

    #@25
    and-int/lit16 v4, v4, 0xff

    #@27
    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 50
    return-object v0

    #@2a
    .line 51
    :catch_0
    move-exception v1

    #@2b
    .line 52
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    #@2d
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@2f
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@32
    throw v4
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    #@5
    .line 68
    .local v0, "devIds":Lcom/android/internal/telephony/cat/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@8
    move-result-object v2

    #@9
    .line 69
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@c
    move-result v3

    #@d
    .line 71
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3

    #@f
    and-int/lit16 v4, v4, 0xff

    #@11
    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    #@13
    .line 72
    add-int/lit8 v4, v3, 0x1

    #@15
    aget-byte v4, v2, v4

    #@17
    and-int/lit16 v4, v4, 0xff

    #@19
    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 73
    return-object v0

    #@1c
    .line 74
    :catch_0
    move-exception v1

    #@1d
    .line 75
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    #@1f
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@21
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@24
    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    const/4 v2, 0x0

    #@1
    .line 89
    .local v2, "timeInterval":I
    sget-object v3, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@3
    .line 91
    .local v3, "timeUnit":Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@6
    move-result-object v1

    #@7
    .line 92
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@a
    move-result v4

    #@b
    .line 95
    .local v4, "valueIndex":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@e
    move-result-object v5

    #@f
    aget-byte v6, v1, v4

    #@11
    and-int/lit16 v6, v6, 0xff

    #@13
    aget-object v3, v5, v6

    #@15
    .line 96
    add-int/lit8 v5, v4, 0x1

    #@17
    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    and-int/lit16 v2, v5, 0xff

    #@1b
    .line 100
    new-instance v5, Lcom/android/internal/telephony/cat/Duration;

    #@1d
    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    #@20
    return-object v5

    #@21
    .line 97
    :catch_0
    move-exception v0

    #@22
    .line 98
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    #@24
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@26
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@29
    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 163
    new-instance v1, Lcom/android/internal/telephony/cat/IconId;

    #@3
    invoke-direct {v1}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    #@6
    .line 165
    .local v1, "id":Lcom/android/internal/telephony/cat/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@9
    move-result-object v2

    #@a
    .line 166
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@d
    move-result v3

    #@e
    .line 168
    .local v3, "valueIndex":I
    add-int/lit8 v4, v3, 0x1

    #@10
    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    :try_start_0
    aget-byte v6, v2, v3

    #@12
    and-int/lit16 v6, v6, 0xff

    #@14
    if-nez v6, :cond_0

    #@16
    const/4 v5, 0x1

    #@17
    :cond_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@19
    .line 169
    aget-byte v5, v2, v4

    #@1b
    and-int/lit16 v5, v5, 0xff

    #@1d
    iput v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 174
    return-object v1

    #@20
    .line 170
    :catch_0
    move-exception v0

    #@21
    .line 171
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    #@23
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@25
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@28
    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    const/4 v2, 0x0

    #@1
    .line 113
    .local v2, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@4
    move-result-object v4

    #@5
    .line 114
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@8
    move-result v7

    #@9
    .line 115
    .local v7, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@c
    move-result v3

    #@d
    .line 117
    .local v3, "length":I
    if-eqz v3, :cond_0

    #@f
    .line 118
    add-int/lit8 v6, v3, -0x1

    #@11
    .line 121
    .local v6, "textLen":I
    :try_start_0
    aget-byte v8, v4, v7

    #@13
    and-int/lit16 v1, v8, 0xff

    #@15
    .line 123
    .local v1, "id":I
    add-int/lit8 v8, v7, 0x1

    #@17
    .line 122
    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    .line 124
    .local v5, "text":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/cat/Item;

    #@1d
    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 130
    .end local v1    # "id":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "textLen":I
    :cond_0
    return-object v2

    #@21
    .line 125
    .restart local v6    # "textLen":I
    :catch_0
    move-exception v0

    #@22
    .line 126
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    #@24
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@26
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@29
    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    const/4 v1, 0x0

    #@1
    .line 143
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@4
    move-result-object v2

    #@5
    .line 144
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@8
    move-result v3

    #@9
    .line 147
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    and-int/lit16 v1, v4, 0xff

    #@d
    .line 152
    return v1

    #@e
    .line 148
    :catch_0
    move-exception v0

    #@f
    .line 149
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    #@11
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@13
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@16
    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 11
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 187
    const-string/jumbo v9, "ValueParser"

    #@4
    const-string/jumbo v10, "retrieveItemsIconId:"

    #@7
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 188
    new-instance v1, Lcom/android/internal/telephony/cat/ItemsIconId;

    #@c
    invoke-direct {v1}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    #@f
    .line 190
    .local v1, "id":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@12
    move-result-object v5

    #@13
    .line 191
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@16
    move-result v6

    #@17
    .line 192
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@1a
    move-result v9

    #@1b
    add-int/lit8 v4, v9, -0x1

    #@1d
    .line 193
    .local v4, "numOfItems":I
    new-array v9, v4, [I

    #@1f
    iput-object v9, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@21
    .line 197
    add-int/lit8 v7, v6, 0x1

    #@23
    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :try_start_0
    aget-byte v9, v5, v6

    #@25
    and-int/lit16 v9, v9, 0xff

    #@27
    if-nez v9, :cond_0

    #@29
    const/4 v8, 0x1

    #@2a
    :cond_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    #@2c
    .line 199
    const/4 v2, 0x0

    #@2d
    .local v2, "index":I
    move v3, v2

    #@2e
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v3, v4, :cond_1

    #@30
    .line 200
    iget-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    add-int/lit8 v2, v3, 0x1

    #@34
    .end local v3    # "index":I
    .restart local v2    # "index":I
    add-int/lit8 v6, v7, 0x1

    #@36
    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_1
    aget-byte v9, v5, v7

    #@38
    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@3a
    move v3, v2

    #@3b
    .end local v2    # "index":I
    .restart local v3    # "index":I
    move v7, v6

    #@3c
    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_0

    #@3d
    .line 202
    .end local v3    # "index":I
    :catch_0
    move-exception v0

    #@3e
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move v6, v7

    #@3f
    .line 203
    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :goto_1
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    #@41
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@43
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@46
    throw v8

    #@47
    .line 205
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "valueIndex":I
    .restart local v3    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_1
    return-object v1

    #@48
    .line 202
    .end local v3    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_1
    move-exception v0

    #@49
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_1
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
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
    .line 218
    new-instance v18, Ljava/util/ArrayList;

    #@2
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 220
    .local v18, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@8
    move-result-object v19

    #@9
    .line 221
    .local v19, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@c
    move-result v21

    #@d
    .line 222
    .local v21, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@10
    move-result v17

    #@11
    .line 224
    .local v17, "length":I
    if-eqz v17, :cond_6

    #@13
    .line 226
    div-int/lit8 v16, v17, 0x4

    #@15
    .line 229
    .local v16, "itemCount":I
    const/4 v15, 0x0

    #@16
    .local v15, "i":I
    :goto_0
    move/from16 v0, v16

    #@18
    if-ge v15, v0, :cond_5

    #@1a
    .line 230
    :try_start_0
    aget-byte v22, v19, v21

    #@1c
    move/from16 v0, v22

    #@1e
    and-int/lit16 v2, v0, 0xff

    #@20
    .line 231
    .local v2, "start":I
    add-int/lit8 v22, v21, 0x1

    #@22
    aget-byte v22, v19, v22

    #@24
    move/from16 v0, v22

    #@26
    and-int/lit16 v3, v0, 0xff

    #@28
    .line 232
    .local v3, "textLength":I
    add-int/lit8 v22, v21, 0x2

    #@2a
    aget-byte v22, v19, v22

    #@2c
    move/from16 v0, v22

    #@2e
    and-int/lit16 v14, v0, 0xff

    #@30
    .line 233
    .local v14, "format":I
    add-int/lit8 v22, v21, 0x3

    #@32
    aget-byte v22, v19, v22

    #@34
    move/from16 v0, v22

    #@36
    and-int/lit16 v12, v0, 0xff

    #@38
    .line 235
    .local v12, "colorValue":I
    and-int/lit8 v11, v14, 0x3

    #@3a
    .line 236
    .local v11, "alignValue":I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    #@3d
    move-result-object v4

    #@3e
    .line 238
    .local v4, "align":Lcom/android/internal/telephony/cat/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    #@40
    and-int/lit8 v20, v22, 0x3

    #@42
    .line 239
    .local v20, "sizeValue":I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    #@45
    move-result-object v5

    #@46
    .line 240
    .local v5, "size":Lcom/android/internal/telephony/cat/FontSize;
    if-nez v5, :cond_0

    #@48
    .line 242
    sget-object v5, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    #@4a
    .line 245
    :cond_0
    and-int/lit8 v22, v14, 0x10

    #@4c
    if-eqz v22, :cond_1

    #@4e
    const/4 v6, 0x1

    #@4f
    .line 246
    .local v6, "bold":Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    #@51
    if-eqz v22, :cond_2

    #@53
    const/4 v7, 0x1

    #@54
    .line 247
    .local v7, "italic":Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    #@56
    if-eqz v22, :cond_3

    #@58
    const/4 v8, 0x1

    #@59
    .line 248
    .local v8, "underlined":Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    #@5b
    move/from16 v22, v0

    #@5d
    if-eqz v22, :cond_4

    #@5f
    const/4 v9, 0x1

    #@60
    .line 250
    .local v9, "strikeThrough":Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    #@63
    move-result-object v10

    #@64
    .line 252
    .local v10, "color":Lcom/android/internal/telephony/cat/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cat/TextAttribute;

    #@66
    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    #@69
    .line 255
    .local v1, "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    move-object/from16 v0, v18

    #@6b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 229
    add-int/lit8 v15, v15, 0x1

    #@70
    add-int/lit8 v21, v21, 0x4

    #@72
    goto :goto_0

    #@73
    .line 245
    .end local v1    # "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v9    # "strikeThrough":Z
    .end local v10    # "color":Lcom/android/internal/telephony/cat/TextColor;
    :cond_1
    const/4 v6, 0x0

    #@74
    .restart local v6    # "bold":Z
    goto :goto_1

    #@75
    .line 246
    :cond_2
    const/4 v7, 0x0

    #@76
    .restart local v7    # "italic":Z
    goto :goto_2

    #@77
    .line 247
    :cond_3
    const/4 v8, 0x0

    #@78
    .restart local v8    # "underlined":Z
    goto :goto_3

    #@79
    .line 248
    :cond_4
    const/4 v9, 0x0

    #@7a
    .restart local v9    # "strikeThrough":Z
    goto :goto_4

    #@7b
    .line 258
    .end local v2    # "start":I
    .end local v3    # "textLength":I
    .end local v4    # "align":Lcom/android/internal/telephony/cat/TextAlignment;
    .end local v5    # "size":Lcom/android/internal/telephony/cat/FontSize;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v9    # "strikeThrough":Z
    .end local v11    # "alignValue":I
    .end local v12    # "colorValue":I
    .end local v14    # "format":I
    .end local v20    # "sizeValue":I
    :cond_5
    return-object v18

    #@7c
    .line 260
    :catch_0
    move-exception v13

    #@7d
    .line 261
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cat/ResultException;

    #@7f
    sget-object v23, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@81
    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@84
    throw v22

    #@85
    .line 264
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "i":I
    .end local v16    # "itemCount":I
    :cond_6
    const/16 v22, 0x0

    #@87
    return-object v22
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@3
    move-result-object v3

    #@4
    .line 321
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@7
    move-result v6

    #@8
    .line 322
    .local v6, "valueIndex":I
    const/4 v0, 0x0

    #@9
    .line 323
    .local v0, "codingScheme":B
    const/4 v4, 0x0

    #@a
    .line 324
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@d
    move-result v5

    #@e
    .line 327
    .local v5, "textLen":I
    if-nez v5, :cond_0

    #@10
    .line 328
    return-object v4

    #@11
    .line 331
    :cond_0
    add-int/lit8 v5, v5, -0x1

    #@13
    .line 335
    :try_start_0
    aget-byte v7, v3, v6

    #@15
    and-int/lit8 v7, v7, 0xc

    #@17
    int-to-byte v0, v7

    #@18
    .line 337
    .local v0, "codingScheme":B
    if-nez v0, :cond_1

    #@1a
    .line 339
    add-int/lit8 v7, v6, 0x1

    #@1c
    mul-int/lit8 v8, v5, 0x8

    #@1e
    div-int/lit8 v8, v8, 0x7

    #@20
    .line 338
    invoke-static {v3, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 349
    .local v4, "text":Ljava/lang/String;
    :goto_0
    return-object v4

    #@25
    .line 340
    .local v4, "text":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    #@26
    if-ne v0, v7, :cond_2

    #@28
    .line 342
    add-int/lit8 v7, v6, 0x1

    #@2a
    .line 341
    invoke-static {v3, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .local v4, "text":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 343
    .local v4, "text":Ljava/lang/String;
    :cond_2
    const/16 v7, 0x8

    #@31
    if-ne v0, v7, :cond_3

    #@33
    .line 344
    new-instance v4, Ljava/lang/String;

    #@35
    .end local v4    # "text":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    #@37
    const-string/jumbo v8, "UTF-16"

    #@3a
    invoke-direct {v4, v3, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@3d
    .local v4, "text":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 346
    .local v4, "text":Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    #@40
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@42
    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@45
    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    #@46
    .line 350
    .end local v0    # "codingScheme":B
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@47
    .line 351
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    #@49
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@4b
    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@4e
    throw v7

    #@4f
    .line 352
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    #@50
    .line 354
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    #@52
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@54
    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@57
    throw v7
.end method
