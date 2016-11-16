.class public Lcom/android/server/wifi/anqp/I18Name;
.super Ljava/lang/Object;
.source "I18Name.java"


# instance fields
.field private final mLanguage:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "compoundString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 37
    new-instance v0, Ljava/io/IOException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "I18String too short: \'"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, "\'"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 39
    :cond_0
    const/4 v0, 0x0

    #@2c
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    #@32
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@38
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    #@3a
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    #@40
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x4

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 22
    new-instance v1, Ljava/net/ProtocolException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Truncated I18Name: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@2c
    move-result v1

    #@2d
    and-int/lit16 v0, v1, 0xff

    #@2f
    .line 25
    .local v0, "nameLength":I
    if-ge v0, v3, :cond_1

    #@31
    .line 26
    new-instance v1, Ljava/net/ProtocolException;

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "Runt I18Name: "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 29
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@4d
    .line 28
    invoke-static {p1, v3, v1}, Lcom/android/server/wifi/anqp/Constants;->getTrimmedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    iput-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    #@53
    .line 30
    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    #@55
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@58
    move-result-object v1

    #@59
    iput-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    #@5b
    .line 31
    add-int/lit8 v1, v0, -0x3

    #@5d
    .line 32
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@5f
    .line 31
    invoke-static {p1, v1, v2}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    iput-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@65
    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    if-ne p0, p1, :cond_0

    #@3
    .line 59
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 61
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/I18Name;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 62
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 65
    check-cast v0, Lcom/android/server/wifi/anqp/I18Name;

    #@15
    .line 66
    .local v0, "that":Lcom/android/server/wifi/anqp/I18Name;
    iget-object v2, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    #@17
    iget-object v3, v0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@21
    iget-object v2, v0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    :cond_3
    return v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 72
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    iget-object v2, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@d
    move-result v2

    #@e
    add-int v0, v1, v2

    #@10
    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const/16 v1, 0x3a

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    #@13
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
