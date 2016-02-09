.class Lcom/android/internal/telephony/cat/LanguageResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    #@3
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    #@5
    .line 165
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 172
    if-nez p1, :cond_0

    #@3
    .line 173
    return-void

    #@4
    .line 177
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@6
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@9
    move-result v4

    #@a
    or-int/lit16 v2, v4, 0x80

    #@c
    .line 178
    .local v2, "tag":I
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@f
    .line 182
    iget-object v4, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    #@11
    if-eqz v4, :cond_1

    #@13
    iget-object v4, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    #@15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@18
    move-result v4

    #@19
    if-lez v4, :cond_1

    #@1b
    .line 183
    iget-object v4, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    #@1d
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    #@20
    move-result-object v1

    #@21
    .line 189
    .local v1, "data":[B
    :goto_0
    array-length v4, v1

    #@22
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@25
    .line 191
    array-length v4, v1

    #@26
    :goto_1
    if-ge v3, v4, :cond_2

    #@28
    aget-byte v0, v1, v3

    #@2a
    .line 192
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2d
    .line 191
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 186
    .end local v0    # "b":B
    .end local v1    # "data":[B
    :cond_1
    new-array v1, v3, [B

    #@32
    .restart local v1    # "data":[B
    goto :goto_0

    #@33
    .line 171
    :cond_2
    return-void
.end method
