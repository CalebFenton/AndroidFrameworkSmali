.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final blacklist GET_INKEY_NO:B = 0x0t

.field protected static final blacklist GET_INKEY_YES:B = 0x1t


# instance fields
.field public blacklist mInData:Ljava/lang/String;

.field private blacklist mIsPacked:Z

.field private blacklist mIsUcs2:Z

.field private blacklist mIsYesNo:Z

.field private blacklist mYesNoResponse:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ZZ)V
    .registers 4

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 90
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 91
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 102
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_6

    goto/16 :goto_85

    .line 112
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 113
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v2, :cond_1c

    .line 119
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    new-array v3, v1, [B

    aput-byte v2, v3, v0

    goto :goto_57

    .line 120
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v2, :cond_55

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_55

    .line 124
    :try_start_26
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v2, :cond_34

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v3, "UTF-16BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_32
    move-object v3, v2

    goto :goto_57

    .line 127
    :cond_34
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v2, :cond_48

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 129
    invoke-static {v2, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v2

    .line 134
    array-length v3, v2

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    .line 135
    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_57

    .line 137
    :cond_48
    iget-object v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_4e} :catch_52
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_26 .. :try_end_4e} :catch_4f

    goto :goto_32

    .line 142
    :catch_4f
    new-array v3, v0, [B

    goto :goto_57

    .line 140
    :catch_52
    new-array v3, v0, [B

    goto :goto_57

    .line 145
    :cond_55
    new-array v3, v0, [B

    .line 155
    :goto_57
    array-length v2, v3

    add-int/2addr v2, v1

    const/16 v4, 0xff

    if-gt v2, v4, :cond_63

    .line 156
    array-length v2, v3

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_65

    .line 159
    :cond_63
    new-array v3, v0, [B

    .line 164
    :goto_65
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v2, :cond_6f

    const/16 p0, 0x8

    .line 165
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7b

    .line 166
    :cond_6f
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz p0, :cond_77

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7b

    :cond_77
    const/4 p0, 0x4

    .line 169
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    :goto_7b
    array-length p0, v3

    :goto_7c
    if-ge v0, p0, :cond_85

    aget-byte v2, v3, v0

    .line 173
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/2addr v0, v1

    goto :goto_7c

    :cond_85
    :goto_85
    return-void
.end method
