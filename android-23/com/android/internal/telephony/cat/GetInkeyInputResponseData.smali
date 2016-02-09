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
    .locals 11
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 99
    if-nez p1, :cond_0

    #@4
    .line 100
    return-void

    #@5
    .line 104
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@7
    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@a
    move-result v9

    #@b
    or-int/lit16 v5, v9, 0x80

    #@d
    .line 105
    .local v5, "tag":I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@10
    .line 109
    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    #@12
    if-eqz v9, :cond_2

    #@14
    .line 110
    new-array v1, v7, [B

    #@16
    .line 111
    .local v1, "data":[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    #@18
    if-eqz v9, :cond_1

    #@1a
    :goto_0
    aput-byte v7, v1, v8

    #@1c
    .line 142
    :goto_1
    array-length v7, v1

    #@1d
    add-int/lit8 v7, v7, 0x1

    #@1f
    invoke-static {p1, v7}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    #@22
    .line 145
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    #@24
    if-eqz v7, :cond_6

    #@26
    .line 146
    const/16 v7, 0x8

    #@28
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2b
    .line 153
    :goto_2
    array-length v7, v1

    #@2c
    :goto_3
    if-ge v8, v7, :cond_8

    #@2e
    aget-byte v0, v1, v8

    #@30
    .line 154
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@33
    .line 153
    add-int/lit8 v8, v8, 0x1

    #@35
    goto :goto_3

    #@36
    .end local v0    # "b":B
    :cond_1
    move v7, v8

    #@37
    .line 111
    goto :goto_0

    #@38
    .line 112
    .end local v1    # "data":[B
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@3a
    if-eqz v7, :cond_5

    #@3c
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@3e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@41
    move-result v7

    #@42
    if-lez v7, :cond_5

    #@44
    .line 116
    :try_start_0
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    #@46
    if-eqz v7, :cond_3

    #@48
    .line 118
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@4a
    const-string/jumbo v9, "UTF-16BE"

    #@4d
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@50
    move-result-object v1

    #@51
    .restart local v1    # "data":[B
    goto :goto_1

    #@52
    .line 119
    .end local v1    # "data":[B
    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    #@54
    if-eqz v7, :cond_4

    #@56
    .line 120
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@58
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@5b
    move-result v4

    #@5c
    .line 123
    .local v4, "size":I
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@5e
    const/4 v9, 0x0

    #@5f
    const/4 v10, 0x0

    #@60
    .line 122
    invoke-static {v7, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    #@63
    move-result-object v6

    #@64
    .line 124
    .local v6, "tempData":[B
    new-array v1, v4, [B

    #@66
    .line 128
    .restart local v1    # "data":[B
    const/4 v7, 0x1

    #@67
    const/4 v9, 0x0

    #@68
    invoke-static {v6, v7, v1, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    #@6b
    goto :goto_1

    #@6c
    .line 132
    .end local v1    # "data":[B
    .end local v4    # "size":I
    .end local v6    # "tempData":[B
    :catch_0
    move-exception v3

    #@6d
    .line 133
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-array v1, v8, [B

    #@6f
    .restart local v1    # "data":[B
    goto :goto_1

    #@70
    .line 130
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    #@72
    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    #@75
    move-result-object v1

    #@76
    .restart local v1    # "data":[B
    goto :goto_1

    #@77
    .line 134
    .end local v1    # "data":[B
    :catch_1
    move-exception v2

    #@78
    .line 135
    .local v2, "e":Lcom/android/internal/telephony/EncodeException;
    new-array v1, v8, [B

    #@7a
    .restart local v1    # "data":[B
    goto :goto_1

    #@7b
    .line 138
    .end local v1    # "data":[B
    .end local v2    # "e":Lcom/android/internal/telephony/EncodeException;
    :cond_5
    new-array v1, v8, [B

    #@7d
    .restart local v1    # "data":[B
    goto :goto_1

    #@7e
    .line 147
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    #@80
    if-eqz v7, :cond_7

    #@82
    .line 148
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@85
    goto :goto_2

    #@86
    .line 150
    :cond_7
    const/4 v7, 0x4

    #@87
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@8a
    goto :goto_2

    #@8b
    .line 98
    :cond_8
    return-void
.end method
