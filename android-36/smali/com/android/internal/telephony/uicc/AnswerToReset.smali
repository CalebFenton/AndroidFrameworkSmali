.class public Lcom/android/internal/telephony/uicc/AnswerToReset;
.super Ljava/lang/Object;
.source "AnswerToReset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;,
        Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    }
.end annotation


# static fields
.field public static final blacklist DIRECT_CONVENTION:B = 0x3bt

.field public static final blacklist INTERFACE_BYTES_MASK:I = 0xf0

.field public static final blacklist INVERSE_CONVENTION:B = 0x3ft

.field public static final blacklist TA_MASK:I = 0x10

.field public static final blacklist TB_MASK:I = 0x20

.field public static final blacklist TC_MASK:I = 0x40

.field public static final blacklist TD_MASK:I = 0x80

.field public static final blacklist T_MASK:I = 0xf

.field public static final blacklist T_VALUE_FOR_GLOBAL_INTERFACE:I = 0xf


# instance fields
.field private blacklist mCheckByte:Ljava/lang/Byte;

.field private blacklist mFormatByte:B

.field private blacklist mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

.field private blacklist mInterfaceBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsDirectConvention:Z

.field private blacklist mIsEuiccSupported:Z

.field private blacklist mIsMultipleEnabledProfilesSupported:Z

.field private blacklist mOnlyTEqualsZero:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbyteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsMultipleEnabledProfilesSupported:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    return-void
.end method

.method private static blacklist byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist checkEuiccSupportedCapabilities()V
    .registers 5

    const/4 v0, 0x0

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_96

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v1

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/16 v3, 0xf

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_92

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    .line 158
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v1

    if-eqz v1, :cond_92

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_68

    .line 161
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsEuiccSupported:Z

    .line 163
    :cond_68
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_96

    .line 165
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsMultipleEnabledProfilesSupported:Z

    return-void

    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_96
    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 439
    const-string v0, "AnswerToReset"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 443
    const-string v0, "AnswerToReset"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;
    .registers 2

    .line 139
    new-instance v0, Lcom/android/internal/telephony/uicc/AnswerToReset;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;-><init>()V

    .line 140
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtrString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist parseAtrString(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 292
    const-string p0, "The input ATR string can not be null"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v0

    .line 296
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2f

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The length of input ATR string "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not even."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v0

    .line 301
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3c

    .line 302
    const-string p0, "Valid ATR string must at least contains TS and T0."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v0

    .line 306
    :cond_3c
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_43

    return v0

    .line 311
    :cond_43
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseConventionByte([BI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4b

    return v0

    .line 316
    :cond_4b
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseFormatByte([BI)I

    move-result v2

    if-ne v2, v3, :cond_52

    return v0

    .line 321
    :cond_52
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseInterfaceBytes([BI)I

    move-result v2

    if-ne v2, v3, :cond_59

    return v0

    .line 326
    :cond_59
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseHistoricalBytes([BI)I

    move-result v2

    if-ne v2, v3, :cond_60

    return v0

    .line 331
    :cond_60
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseCheckBytes([BI)I

    move-result v2

    if-ne v2, v3, :cond_67

    return v0

    .line 336
    :cond_67
    array-length v1, v1

    if-eq v2, v1, :cond_70

    .line 337
    const-string p0, "Unexpected bytes after the check byte."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v0

    .line 340
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully parsed the ATR string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " into "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->log(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->checkEuiccSupportedCapabilities()V

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist parseCheckBytes([BI)I
    .registers 4

    .line 276
    array-length v0, p1

    if-ge p2, v0, :cond_e

    .line 277
    aget-byte p1, p1, p2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    add-int/lit8 p2, p2, 0x1

    return p2

    .line 280
    :cond_e
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    if-nez p0, :cond_19

    .line 281
    const-string p0, "Check byte must be present because T equals to values other than 0."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 284
    :cond_19
    const-string p0, "Check byte can be absent because T=0."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->log(Ljava/lang/String;)V

    return p2
.end method

.method private blacklist parseConventionByte([BI)I
    .registers 6

    .line 173
    array-length v0, p1

    const/4 v1, -0x1

    if-lt p2, v0, :cond_a

    .line 174
    const-string p0, "Failed to read the convention byte."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v1

    .line 177
    :cond_a
    aget-byte p1, p1, p2

    const/16 v0, 0x3b

    const/4 v2, 0x1

    if-ne p1, v0, :cond_14

    .line 179
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    goto :goto_1b

    :cond_14
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_1d

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    :goto_1b
    add-int/2addr p2, v2

    return p2

    .line 183
    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized convention byte "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist parseFormatByte([BI)I
    .registers 4

    .line 190
    array-length v0, p1

    if-lt p2, v0, :cond_a

    .line 191
    const-string p0, "Failed to read the format byte."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 194
    :cond_a
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private blacklist parseHistoricalBytes([BI)I
    .registers 6

    .line 264
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    and-int/lit8 v0, v0, 0xf

    add-int v1, v0, p2

    .line 265
    array-length v2, p1

    if-le v1, v2, :cond_10

    .line 266
    const-string p0, "Failed to read the historical bytes."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_10
    if-lez v0, :cond_18

    .line 270
    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->-$$Nest$smparseHistoricalBytes([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    :cond_18
    return v1
.end method

.method private blacklist parseInterfaceBytes([BI)I
    .registers 7

    .line 201
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    :cond_2
    :goto_2
    and-int/lit16 v1, v0, 0xf0

    if-nez v1, :cond_7

    return p2

    .line 209
    :cond_7
    new-instance v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;-><init>(Lcom/android/internal/telephony/uicc/AnswerToReset-IA;)V

    and-int/lit8 v2, v0, 0x10

    const/4 v3, -0x1

    if-eqz v2, :cond_26

    .line 212
    array-length v2, p1

    if-lt p2, v2, :cond_1b

    .line 213
    const-string p0, "Failed to read the byte for TA."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v3

    .line 216
    :cond_1b
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTA(Ljava/lang/Byte;)V

    add-int/lit8 p2, p2, 0x1

    :cond_26
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3e

    .line 221
    array-length v2, p1

    if-lt p2, v2, :cond_33

    .line 222
    const-string p0, "Failed to read the byte for TB."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v3

    .line 225
    :cond_33
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTB(Ljava/lang/Byte;)V

    add-int/lit8 p2, p2, 0x1

    :cond_3e
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_56

    .line 230
    array-length v2, p1

    if-lt p2, v2, :cond_4b

    .line 231
    const-string p0, "Failed to read the byte for TC."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v3

    .line 234
    :cond_4b
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTC(Ljava/lang/Byte;)V

    add-int/lit8 p2, p2, 0x1

    :cond_56
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6e

    .line 239
    array-length v0, p1

    if-lt p2, v0, :cond_63

    .line 240
    const-string p0, "Failed to read the byte for TD."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v3

    .line 243
    :cond_63
    aget-byte v0, p1, p2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTD(Ljava/lang/Byte;)V

    add-int/lit8 p2, p2, 0x1

    .line 246
    :cond_6e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v0

    if-nez v0, :cond_7a

    return p2

    .line 252
    :cond_7a
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 257
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    goto/16 :goto_2
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 521
    const-string p1, "AnswerToReset:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getCheckByte()Ljava/lang/Byte;
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    return-object p0
.end method

.method public blacklist getConventionByte()B
    .registers 1

    .line 447
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    if-eqz p0, :cond_7

    const/16 p0, 0x3b

    return p0

    :cond_7
    const/16 p0, 0x3f

    return p0
.end method

.method public blacklist getFormatByte()B
    .registers 1

    .line 451
    iget-byte p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    return p0
.end method

.method public blacklist getHistoricalBytes()Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    .registers 1

    .line 460
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    return-object p0
.end method

.method public blacklist getInterfaceBytes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist isEuiccSupported()Z
    .registers 1

    .line 469
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsEuiccSupported:Z

    return p0
.end method

.method public blacklist isExtendedApduSupported()Z
    .registers 5

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x7

    .line 477
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->getValue(I)[B

    move-result-object v0

    if-eqz v0, :cond_26

    .line 478
    array-length v2, v0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_12

    goto :goto_26

    .line 481
    :cond_12
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p0, :cond_20

    .line 482
    aget-byte p0, v0, v3

    and-int/lit8 p0, p0, 0x40

    if-lez p0, :cond_1f

    return v2

    :cond_1f
    return v1

    .line 484
    :cond_20
    aget-byte p0, v0, v3

    and-int/2addr p0, v3

    if-lez p0, :cond_26

    return v2

    :cond_26
    :goto_26
    return v1
.end method

.method public blacklist isMultipleEnabledProfilesSupported()Z
    .registers 1

    .line 489
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsMultipleEnabledProfilesSupported:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 494
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 496
    const-string v1, "AnswerToReset:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    const-string v1, "mConventionByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->getConventionByte()B

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    const-string v2, "mFormatByte="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const-string v2, "mInterfaceBytes={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_41
    if-ge v5, v3, :cond_53

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    .line 502
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 504
    :cond_53
    const-string v2, "},"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    const-string v3, "mHistoricalBytes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    if-eqz v3, :cond_77

    .line 507
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->getRawData()[B

    move-result-object v3

    array-length v5, v3

    :goto_66
    if-ge v4, v5, :cond_77

    aget-byte v6, v3, v4

    .line 508
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 511
    :cond_77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    const-string v1, "mCheckByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
