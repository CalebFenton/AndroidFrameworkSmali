.class public Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "CdmaSmsAddress.java"


# static fields
.field public static final DIGIT_MODE_4BIT_DTMF:I = 0x0

.field public static final DIGIT_MODE_8BIT_CHAR:I = 0x1

.field public static final NUMBERING_PLAN_ISDN_TELEPHONY:I = 0x1

.field public static final NUMBERING_PLAN_UNKNOWN:I = 0x0

.field public static final NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field public static final SMS_ADDRESS_MAX:I = 0x24

.field public static final SMS_SUBADDRESS_MAX:I = 0x24

.field public static final TON_ABBREVIATED:I = 0x6

.field public static final TON_ALPHANUMERIC:I = 0x5

.field public static final TON_INTERNATIONAL_OR_IP:I = 0x1

.field public static final TON_NATIONAL_OR_EMAIL:I = 0x2

.field public static final TON_NETWORK:I = 0x3

.field public static final TON_RESERVED:I = 0x7

.field public static final TON_SUBSCRIBER:I = 0x4

.field public static final TON_UNKNOWN:I

.field private static final numericCharDialableMap:Landroid/util/SparseBooleanArray;

.field private static final numericCharsDialable:[C

.field private static final numericCharsSugar:[C


# instance fields
.field public digitMode:I

.field public numberMode:I

.field public numberOfDigits:I

.field public numberPlan:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 133
    const/16 v1, 0xc

    #@2
    new-array v1, v1, [C

    #@4
    fill-array-data v1, :array_0

    #@7
    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    #@9
    .line 137
    const/16 v1, 0x8

    #@b
    new-array v1, v1, [C

    #@d
    fill-array-data v1, :array_1

    #@10
    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    #@12
    .line 141
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@14
    .line 142
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    #@16
    array-length v2, v2

    #@17
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    #@19
    array-length v3, v3

    #@1a
    add-int/2addr v2, v3

    #@1b
    .line 141
    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@1e
    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    #@20
    .line 144
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    #@23
    array-length v1, v1

    #@24
    if-ge v0, v1, :cond_0

    #@26
    .line 145
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    #@28
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    #@2a
    aget-char v2, v2, v0

    #@2c
    const/4 v3, 0x1

    #@2d
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@30
    .line 144
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 147
    :cond_0
    const/4 v0, 0x0

    #@34
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    #@36
    array-length v1, v1

    #@37
    if-ge v0, v1, :cond_1

    #@39
    .line 148
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    #@3b
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    #@3d
    aget-char v2, v2, v0

    #@3f
    const/4 v3, 0x0

    #@40
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@43
    .line 147
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_1

    #@46
    .line 25
    :cond_1
    return-void

    #@47
    .line 133
    nop

    #@48
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2as
        0x23s
    .end array-data

    #@58
    .line 137
    :array_1
    .array-data 2
        0x28s
        0x29s
        0x20s
        0x2ds
        0x2bs
        0x2es
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    #@3
    return-void
.end method

.method private static filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 160
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    .line 161
    .local v3, "len":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@c
    .line 162
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    .line 163
    .local v1, "c":C
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    #@12
    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    #@15
    move-result v4

    #@16
    .line 164
    .local v4, "mapIndex":I
    if-gez v4, :cond_0

    #@18
    const/4 v5, 0x0

    #@19
    return-object v5

    #@1a
    .line 165
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    #@1c
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@1f
    move-result v5

    #@20
    if-nez v5, :cond_1

    #@22
    .line 161
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 166
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    goto :goto_1

    #@29
    .line 168
    .end local v1    # "c":C
    .end local v4    # "mapIndex":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    return-object v5
.end method

.method private static filterWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    .line 178
    .local v3, "len":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@c
    .line 179
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    .line 180
    .local v1, "c":C
    const/16 v4, 0x20

    #@12
    if-eq v1, v4, :cond_0

    #@14
    const/16 v4, 0xd

    #@16
    if-ne v1, v4, :cond_1

    #@18
    .line 178
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 180
    :cond_1
    const/16 v4, 0xa

    #@1d
    if-eq v1, v4, :cond_0

    #@1f
    const/16 v4, 0x9

    #@21
    if-eq v1, v4, :cond_0

    #@23
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    goto :goto_1

    #@27
    .line 183
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    return-object v4
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 197
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@6
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    #@9
    .line 198
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    #@b
    .line 199
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@d
    .line 200
    const/4 v2, 0x0

    #@e
    .line 201
    .local v2, "origBytes":[B
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 202
    .local v1, "filteredAddr":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@14
    .line 203
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseToDtmf(Ljava/lang/String;)[B

    #@17
    move-result-object v2

    #@18
    .line 205
    .end local v2    # "origBytes":[B
    :cond_0
    if-eqz v2, :cond_2

    #@1a
    .line 206
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@1c
    .line 207
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@1e
    .line 208
    const/16 v3, 0x2b

    #@20
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@23
    move-result v3

    #@24
    if-eq v3, v6, :cond_1

    #@26
    .line 209
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@28
    .line 223
    :cond_1
    :goto_0
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@2a
    .line 224
    array-length v3, v2

    #@2b
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@2d
    .line 225
    return-object v0

    #@2e
    .line 212
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterWhitespace(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 213
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;->stringToAscii(Ljava/lang/String;)[B

    #@35
    move-result-object v2

    #@36
    .line 214
    .local v2, "origBytes":[B
    if-nez v2, :cond_3

    #@38
    .line 215
    return-object v3

    #@39
    .line 217
    :cond_3
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@3b
    .line 218
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@3d
    .line 219
    const/16 v3, 0x40

    #@3f
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@42
    move-result v3

    #@43
    if-eq v3, v6, :cond_1

    #@45
    .line 220
    const/4 v3, 0x2

    #@46
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@48
    goto :goto_0
.end method

.method private static parseToDtmf(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 119
    .local v1, "digits":I
    new-array v3, v1, [B

    #@6
    .line 120
    .local v3, "result":[B
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    #@9
    .line 121
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 122
    .local v0, "c":C
    const/4 v4, 0x0

    #@e
    .line 123
    .local v4, "val":I
    const/16 v5, 0x31

    #@10
    if-lt v0, v5, :cond_0

    #@12
    const/16 v5, 0x39

    #@14
    if-gt v0, v5, :cond_0

    #@16
    add-int/lit8 v4, v0, -0x30

    #@18
    .line 128
    :goto_1
    int-to-byte v5, v4

    #@19
    aput-byte v5, v3, v2

    #@1b
    .line 120
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 124
    :cond_0
    const/16 v5, 0x30

    #@20
    if-ne v0, v5, :cond_1

    #@22
    const/16 v4, 0xa

    #@24
    goto :goto_1

    #@25
    .line 125
    :cond_1
    const/16 v5, 0x2a

    #@27
    if-ne v0, v5, :cond_2

    #@29
    const/16 v4, 0xb

    #@2b
    goto :goto_1

    #@2c
    .line 126
    :cond_2
    const/16 v5, 0x23

    #@2e
    if-ne v0, v5, :cond_3

    #@30
    const/16 v4, 0xc

    #@32
    goto :goto_1

    #@33
    .line 127
    :cond_3
    const/4 v5, 0x0

    #@34
    return-object v5

    #@35
    .line 130
    .end local v0    # "c":C
    .end local v4    # "val":I
    :cond_4
    return-object v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 99
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "CdmaSmsAddress "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 100
    const-string/jumbo v1, "{ digitMode="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 101
    const-string/jumbo v1, ", numberMode="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 102
    const-string/jumbo v1, ", numberPlan="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 103
    const-string/jumbo v1, ", numberOfDigits="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 104
    const-string/jumbo v1, ", ton="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    .line 105
    const-string/jumbo v1, ", address=\""

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v2, "\""

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 106
    const-string/jumbo v1, ", origBytes="

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@63
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 107
    const-string/jumbo v1, " }"

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    return-object v1
.end method
