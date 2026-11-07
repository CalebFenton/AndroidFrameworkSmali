.class public abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-r retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_35

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object p1

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    if-eqz p0, :cond_1e

    .line 297
    :try_start_11
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_15} :catch_16

    return-object p0

    .line 300
    :catch_16
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 303
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alpha Id length="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ValueParser"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_35
    if-eqz p1, :cond_38

    return-object v0

    .line 312
    :cond_38
    const-string p0, "Default Message"

    return-object p0
.end method

.method static blacklist retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 55
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 56
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    add-int/lit8 p0, v2, 0x1

    .line 57
    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    add-int/lit8 v2, v2, 0x2

    .line 58
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_29} :catch_2a

    return-object v0

    .line 61
    :catch_2a
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static greylist-max-r retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p0

    .line 81
    :try_start_d
    aget-byte v2, v1, p0

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    add-int/lit8 p0, p0, 0x1

    .line 82
    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_1b} :catch_1c

    return-object v0

    .line 85
    :catch_1c
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static blacklist retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p0

    .line 105
    :try_start_a
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v1

    aget-byte v2, v0, p0

    and-int/lit16 v2, v2, 0xff

    aget-object v1, v1, v2

    add-int/lit8 p0, p0, 0x1

    .line 106
    aget-byte p0, v0, p0
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_18} :catch_20

    and-int/lit16 p0, p0, 0xff

    .line 110
    new-instance v0, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v0

    .line 108
    :catch_20
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static blacklist retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p0

    add-int/lit8 v2, p0, 0x1

    .line 178
    :try_start_f
    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    iput-boolean p0, v0, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 179
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_20} :catch_21

    return-object v0

    .line 181
    :catch_21
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static blacklist retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    if-eqz p0, :cond_28

    add-int/lit8 p0, p0, -0x1

    .line 131
    :try_start_10
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x1

    .line 132
    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance v0, Lcom/android/internal/telephony/cat/Item;

    invoke-direct {v0, v2, p0}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_1f} :catch_20

    return-object v0

    .line 136
    :catch_20
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p0

    .line 157
    :try_start_8
    aget-byte p0, v0, p0
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_a} :catch_d

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 159
    :catch_d
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static blacklist retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 197
    const-string v0, "ValueParser"

    const-string v1, "retrieveItemsIconId:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    .line 203
    new-array v4, p0, [I

    iput-object v4, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    add-int/lit8 v4, v2, 0x1

    .line 207
    :try_start_20
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v5, 0x0

    if-nez v2, :cond_28

    goto :goto_29

    :cond_28
    move v3, v5

    :goto_29
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    :goto_2b
    if-ge v5, p0, :cond_3a

    .line 210
    iget-object v2, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v1, v4

    aput v4, v2, v5
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_37} :catch_3b

    move v5, v3

    move v4, v6

    goto :goto_2b

    :cond_3a
    return-object v0

    .line 213
    :catch_3b
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static greylist-max-r retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    if-eqz v3, :cond_7b

    .line 237
    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    move v5, v4

    :goto_17
    if-ge v5, v3, :cond_7a

    .line 241
    :try_start_19
    aget-byte v6, v1, v2

    and-int/lit16 v8, v6, 0xff

    add-int/lit8 v6, v2, 0x1

    .line 242
    aget-byte v6, v1, v6

    and-int/lit16 v9, v6, 0xff

    add-int/lit8 v6, v2, 0x2

    .line 243
    aget-byte v6, v1, v6

    and-int/lit16 v7, v6, 0xff

    add-int/lit8 v10, v2, 0x3

    .line 244
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    and-int/lit8 v11, v6, 0x3

    .line 247
    invoke-static {v11}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v11

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3

    .line 250
    invoke-static {v7}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v7

    if-nez v7, :cond_41

    .line 253
    sget-object v7, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    :cond_41
    and-int/lit8 v12, v6, 0x10

    const/4 v13, 0x1

    if-eqz v12, :cond_48

    move v12, v13

    goto :goto_49

    :cond_48
    move v12, v4

    :goto_49
    and-int/lit8 v14, v6, 0x20

    if-eqz v14, :cond_4f

    move v14, v13

    goto :goto_51

    :cond_4f
    move v14, v13

    move v13, v4

    :goto_51
    and-int/lit8 v15, v6, 0x40

    if-eqz v15, :cond_57

    move v15, v14

    goto :goto_59

    :cond_57
    move v15, v14

    move v14, v4

    :goto_59
    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_5e

    goto :goto_5f

    :cond_5e
    move v15, v4

    .line 261
    :goto_5f
    invoke-static {v10}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v16

    move-object v10, v11

    move-object v11, v7

    .line 263
    new-instance v7, Lcom/android/internal/telephony/cat/TextAttribute;

    invoke-direct/range {v7 .. v16}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 266
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_6d} :catch_72

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_17

    .line 272
    :catch_72
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    :cond_7a
    return-object v0

    :cond_7b
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-r retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    add-int/lit8 p0, p0, -0x1

    .line 341
    :try_start_12
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    const/16 v3, 0x8

    if-nez v2, :cond_25

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr p0, v3

    .line 344
    div-int/lit8 p0, p0, 0x7

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2f

    add-int/lit8 v1, v1, 0x1

    .line 347
    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    if-ne v2, v3, :cond_3b

    .line 350
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const-string v3, "UTF-16"

    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    .line 352
    :cond_3b
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
    :try_end_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_43} :catch_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_43} :catch_43

    .line 360
    :catch_43
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 357
    :catch_4b
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method public static blacklist retrieveTpduAsSmsMessage(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Landroid/telephony/SmsMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    if-eqz p0, :cond_38

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    if-eqz p0, :cond_38

    add-int/2addr p0, v1

    .line 379
    :try_start_11
    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 380
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    .line 386
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 388
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 390
    const-string v0, "3gpp"

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_2f} :catch_30

    return-object p0

    .line 394
    :catch_30
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method
