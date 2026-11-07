.class Lcom/android/internal/telephony/cat/LanguageResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private blacklist mLang:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_31

    .line 196
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 197
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_22

    .line 205
    :cond_20
    new-array p0, v1, [B

    .line 208
    :goto_22
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 210
    array-length v0, p0

    :goto_27
    if-ge v1, v0, :cond_31

    aget-byte v2, p0, v1

    .line 211
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_31
    :goto_31
    return-void
.end method
