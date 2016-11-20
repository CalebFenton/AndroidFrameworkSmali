.class public Lcom/android/internal/telephony/cdma/sms/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field public static final ASCII_CR_INDEX:I = 0xd

.field public static final ASCII_MAP:[C

.field public static final ASCII_MAP_BASE_INDEX:I = 0x20

.field public static final ASCII_MAP_MAX_INDEX:I

.field public static final ASCII_NL_INDEX:I = 0xa

.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_GSM_7BIT_ALPHABET:I = 0x9

.field public static final ENCODING_GSM_DCS:I = 0xa

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_IS91_EXTENDED_PROTOCOL:I = 0x1

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_OCTET:I = 0x0

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE_16:I = 0x4

.field public static final IS91_MSG_TYPE_CLI:I = 0x84

.field public static final IS91_MSG_TYPE_SHORT_MESSAGE:I = 0x85

.field public static final IS91_MSG_TYPE_SHORT_MESSAGE_FULL:I = 0x83

.field public static final IS91_MSG_TYPE_VOICEMAIL_STATUS:I = 0x82

.field public static final PRINTABLE_ASCII_MIN_INDEX:I = 0x20

.field static final UNENCODABLE_7_BIT_CHAR:B = 0x20t

.field public static final charToAscii:Landroid/util/SparseIntArray;


# instance fields
.field public msgEncoding:I

.field public msgEncodingSet:Z

.field public msgType:I

.field public numFields:I

.field public paddingBits:I

.field public payload:[B

.field public payloadStr:Ljava/lang/String;

.field public userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xd

    #@2
    const/16 v4, 0xa

    #@4
    .line 65
    const/16 v1, 0x5f

    #@6
    new-array v1, v1, [C

    #@8
    fill-array-data v1, :array_0

    #@b
    sput-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    #@d
    .line 87
    new-instance v1, Landroid/util/SparseIntArray;

    #@f
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@12
    sput-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    #@14
    .line 89
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    #@17
    array-length v1, v1

    #@18
    if-ge v0, v1, :cond_0

    #@1a
    .line 90
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    #@1c
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    #@1e
    aget-char v2, v2, v0

    #@20
    add-int/lit8 v3, v0, 0x20

    #@22
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@25
    .line 89
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 92
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    #@2a
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@2d
    .line 93
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    #@2f
    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@32
    .line 121
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    #@34
    array-length v1, v1

    #@35
    add-int/lit8 v1, v1, 0x20

    #@37
    add-int/lit8 v1, v1, -0x1

    #@39
    sput v1, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    #@3b
    .line 24
    return-void

    #@3c
    .line 65
    :array_0
    .array-data 2
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
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
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@6
    .line 24
    return-void
.end method

.method public static stringToAscii(Ljava/lang/String;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 107
    .local v2, "len":I
    new-array v3, v2, [B

    #@7
    .line 108
    .local v3, "result":[B
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@a
    .line 109
    sget-object v4, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v5

    #@10
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    #@13
    move-result v0

    #@14
    .line 110
    .local v0, "charCode":I
    if-ne v0, v6, :cond_0

    #@16
    const/4 v4, 0x0

    #@17
    return-object v4

    #@18
    .line 111
    :cond_0
    int-to-byte v4, v0

    #@19
    aput-byte v4, v3, v1

    #@1b
    .line 108
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 113
    .end local v0    # "charCode":I
    :cond_1
    return-object v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 153
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UserData "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 154
    const-string/jumbo v1, "{ msgEncoding="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    .line 155
    const-string/jumbo v1, ", msgType="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    .line 156
    const-string/jumbo v1, ", paddingBits="

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    .line 157
    const-string/jumbo v1, ", numFields="

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    .line 158
    const-string/jumbo v1, ", userDataHeader="

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    .line 159
    const-string/jumbo v1, ", payload=\'"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@58
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    const-string/jumbo v2, "\'"

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 160
    const-string/jumbo v1, ", payloadStr=\'"

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string/jumbo v2, "\'"

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 161
    const-string/jumbo v1, " }"

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    return-object v1

    #@84
    .line 154
    :cond_0
    const-string/jumbo v1, "unset"

    #@87
    goto :goto_0
.end method
