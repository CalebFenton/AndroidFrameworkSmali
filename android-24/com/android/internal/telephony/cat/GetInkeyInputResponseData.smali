.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "inData"    # Ljava/lang/String;
    .param p2, "ucs2"    # Z
    .param p3, "packed"    # Z

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    #@3
    .line 82
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    #@5
    .line 83
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    #@7
    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@9
    .line 85
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    #@c
    .line 80
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "yesNoResponse"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    #@4
    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    #@6
    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    #@8
    .line 92
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@d
    .line 93
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    #@10
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    #@12
    .line 88
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 10
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 99
    if-nez p1, :cond_0

    #@4
    .line 100
    return-void

    #@5
    .line 104
    :cond_0
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@7
    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@a
    move-result v8

    #@b
    or-int/lit16 v4, v8, 0x80

    #@d
    .line 105
    .local v4, "tag":I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@10
    .line 109
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    #@12
    if-eqz v8, :cond_2

    #@14
    .line 110
    new-array v1, v6, [B

    #@16
    .line 111
    .local v1, "data":[B
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    #@18
    if-eqz v8, :cond_1

    #@1a
    :goto_0
    aput-byte v6, v1, v7

    #@1c
    .line 147
    :goto_1
    array-length v6, v1

    #@1d
    add-int/lit8 v6, v6, 0x1

    #@1f
    const/16 v8, 0xff

    #@21
    if-gt v6, v8, :cond_6

    #@23
    .line 148
    array-length v6, v1

    #@24
    add-int/lit8 v6, v6, 0x1

    #@26
    invoke-static {p1, v6}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    #@29
    .line 156
    :goto_2
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    #@2b
    if-eqz v6, :cond_7

    #@2d
    .line 157
    const/16 v6, 0x8

    #@2f
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@32
    .line 164
    :goto_3
    array-length v6, v1

    #@33
    :goto_4
    if-ge v7, v6, :cond_9

    #@35
    aget-byte v0, v1, v7

    #@37
    .line 165
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3a
    .line 164
    add-int/lit8 v7, v7, 0x1

    #@3c
    goto :goto_4

    #@3d
    .end local v0    # "b":B
    :cond_1
    move v6, v7

    #@3e
    .line 111
    goto :goto_0

    #@3f
    .line 112
    .end local v1    # "data":[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@41
    if-eqz v6, :cond_5

    #@43
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@45
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@48
    move-result v6

    #@49
    if-lez v6, :cond_5

    #@4b
    .line 116
    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    #@4d
    if-eqz v6, :cond_3

    #@4f
    .line 118
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@51
    const-string/jumbo v8, "UTF-16BE"

    #@54
    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@57
    move-result-object v1

    #@58
    .restart local v1    # "data":[B
    goto :goto_1

    #@59
    .line 119
    .end local v1    # "data":[B
    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    #@5b
    if-eqz v6, :cond_4

    #@5d
    .line 121
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@5f
    const/4 v8, 0x0

    #@60
    const/4 v9, 0x0

    #@61
    .line 120
    invoke-static {v6, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    #@64
    move-result-object v5

    #@65
    .line 126
    .local v5, "tempData":[B
    array-length v6, v5

    #@66
    add-int/lit8 v6, v6, -0x1

    #@68
    new-array v1, v6, [B

    #@6a
    .line 127
    .restart local v1    # "data":[B
    array-length v6, v5

    #@6b
    add-int/lit8 v6, v6, -0x1

    #@6d
    const/4 v8, 0x1

    #@6e
    const/4 v9, 0x0

    #@6f
    invoke-static {v5, v8, v1, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    #@72
    goto :goto_1

    #@73
    .line 131
    .end local v1    # "data":[B
    .end local v5    # "tempData":[B
    :catch_0
    move-exception v3

    #@74
    .line 132
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-array v1, v7, [B

    #@76
    .restart local v1    # "data":[B
    goto :goto_1

    #@77
    .line 129
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@79
    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    #@7c
    move-result-object v1

    #@7d
    .restart local v1    # "data":[B
    goto :goto_1

    #@7e
    .line 133
    .end local v1    # "data":[B
    :catch_1
    move-exception v2

    #@7f
    .line 134
    .local v2, "e":Lcom/android/internal/telephony/EncodeException;
    new-array v1, v7, [B

    #@81
    .restart local v1    # "data":[B
    goto :goto_1

    #@82
    .line 137
    .end local v1    # "data":[B
    .end local v2    # "e":Lcom/android/internal/telephony/EncodeException;
    :cond_5
    new-array v1, v7, [B

    #@84
    .restart local v1    # "data":[B
    goto :goto_1

    #@85
    .line 151
    :cond_6
    new-array v1, v7, [B

    #@87
    goto :goto_2

    #@88
    .line 158
    :cond_7
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    #@8a
    if-eqz v6, :cond_8

    #@8c
    .line 159
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@8f
    goto :goto_3

    #@90
    .line 161
    :cond_8
    const/4 v6, 0x4

    #@91
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@94
    goto :goto_3

    #@95
    .line 98
    :cond_9
    return-void
.end method
