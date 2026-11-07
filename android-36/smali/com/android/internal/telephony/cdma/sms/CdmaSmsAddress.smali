.class public Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "CdmaSmsAddress.java"


# static fields
.field public static final blacklist DIGIT_MODE_4BIT_DTMF:I = 0x0

.field public static final blacklist DIGIT_MODE_8BIT_CHAR:I = 0x1

.field public static final blacklist NUMBERING_PLAN_ISDN_TELEPHONY:I = 0x1

.field public static final blacklist NUMBERING_PLAN_UNKNOWN:I = 0x0

.field public static final blacklist NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final blacklist NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field public static final blacklist SMS_ADDRESS_MAX:I = 0x24

.field public static final blacklist SMS_SUBADDRESS_MAX:I = 0x24

.field public static final blacklist TON_ABBREVIATED:I = 0x6

.field public static final blacklist TON_ALPHANUMERIC:I = 0x5

.field public static final blacklist TON_INTERNATIONAL_OR_IP:I = 0x1

.field public static final blacklist TON_NATIONAL_OR_EMAIL:I = 0x2

.field public static final blacklist TON_NETWORK:I = 0x3

.field public static final blacklist TON_RESERVED:I = 0x7

.field public static final blacklist TON_SUBSCRIBER:I = 0x4

.field public static final blacklist TON_UNKNOWN:I

.field private static final blacklist numericCharDialableMap:Landroid/util/SparseBooleanArray;

.field private static final blacklist numericCharsDialable:[C

.field private static final blacklist numericCharsSugar:[C


# instance fields
.field public greylist digitMode:I

.field public greylist numberMode:I

.field public greylist numberOfDigits:I

.field public greylist numberPlan:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 139
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    .line 143
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_58

    sput-object v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    .line 147
    new-instance v0, Landroid/util/SparseBooleanArray;

    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 151
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    aget-char v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 153
    .end local v0    # "i":I
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_34
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v1, v1

    if-ge v0, v1, :cond_46

    .line 154
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    aget-char v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 156
    .end local v0    # "i":I
    :cond_46
    return-void

    nop

    :array_48
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

    :array_58
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

.method public constructor greylist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 100
    return-void
.end method

.method private static blacklist filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 167
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_29

    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 169
    .local v3, "c":C
    sget-object v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    .line 170
    .local v4, "mapIndex":I
    if-gez v4, :cond_1a

    const/4 v5, 0x0

    return-object v5

    .line 171
    :cond_1a
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_26

    .line 172
    :cond_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .end local v3    # "c":C
    .end local v4    # "mapIndex":I
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 174
    .end local v2    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist filterWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "address"    # Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 184
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_27

    .line 185
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 186
    .local v3, "c":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_24

    const/16 v4, 0xd

    if-eq v3, v4, :cond_24

    const/16 v4, 0xa

    if-eq v3, v4, :cond_24

    const/16 v4, 0x9

    if-ne v3, v4, :cond_21

    goto :goto_24

    .line 187
    :cond_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    .end local v3    # "c":C
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 189
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 204
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 205
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 206
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 207
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 208
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 209
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 212
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "filteredAddr":Ljava/lang/String;
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    if-nez v2, :cond_1f

    goto :goto_24

    .line 237
    :cond_1f
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseToDtmf(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "origBytes":[B
    goto :goto_54

    .line 216
    .end local v1    # "origBytes":[B
    :cond_24
    :goto_24
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 217
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 218
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v5, "@"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 222
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    goto :goto_50

    .line 223
    :cond_39
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 228
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 229
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 230
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 231
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 234
    :cond_50
    :goto_50
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;->stringToAscii(Ljava/lang/String;)[B

    move-result-object v1

    .line 240
    .restart local v1    # "origBytes":[B
    :goto_54
    if-nez v1, :cond_58

    .line 241
    const/4 v3, 0x0

    return-object v3

    .line 244
    :cond_58
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 245
    array-length v3, v1

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 246
    return-object v0
.end method

.method public static blacklist parseToDtmf(Ljava/lang/String;)[B
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 125
    .local v0, "digits":I
    new-array v1, v0, [B

    .line 126
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_35

    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 128
    .local v3, "c":C
    const/4 v4, 0x0

    .line 129
    .local v4, "val":I
    const/16 v5, 0x31

    if-lt v3, v5, :cond_19

    const/16 v5, 0x39

    if-gt v3, v5, :cond_19

    add-int/lit8 v4, v3, -0x30

    goto :goto_2d

    .line 130
    :cond_19
    const/16 v5, 0x30

    if-ne v3, v5, :cond_20

    const/16 v4, 0xa

    goto :goto_2d

    .line 131
    :cond_20
    const/16 v5, 0x2a

    if-ne v3, v5, :cond_27

    const/16 v4, 0xb

    goto :goto_2d

    .line 132
    :cond_27
    const/16 v5, 0x23

    if-ne v3, v5, :cond_33

    const/16 v4, 0xc

    .line 134
    :goto_2d
    int-to-byte v5, v4

    aput-byte v5, v1, v2

    .line 126
    .end local v3    # "c":C
    .end local v4    # "val":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 133
    .restart local v3    # "c":C
    .restart local v4    # "val":I
    :cond_33
    const/4 v5, 0x0

    return-object v5

    .line 136
    .end local v2    # "i":I
    .end local v3    # "c":C
    .end local v4    # "val":I
    :cond_35
    return-object v1
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "CdmaSmsAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ digitMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberPlan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfDigits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", address=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
