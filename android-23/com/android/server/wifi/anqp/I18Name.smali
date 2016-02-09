.class public Lcom/android/server/wifi/anqp/I18Name;
.super Ljava/lang/Object;
.source "I18Name.java"


# static fields
.field private static final LANG_CODE_LENGTH:I = 0x3


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x4

    #@9
    if-ge v2, v3, :cond_0

    #@b
    .line 22
    new-instance v2, Ljava/net/ProtocolException;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Truncated I18Name: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v4

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@2c
    move-result v2

    #@2d
    and-int/lit16 v1, v2, 0xff

    #@2f
    .line 25
    .local v1, "nameLength":I
    if-ge v1, v4, :cond_1

    #@31
    .line 26
    new-instance v2, Ljava/net/ProtocolException;

    #@33
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v4, "Runt I18Name: "

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 28
    :cond_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@4d
    invoke-static {p1, v4, v2}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    .line 29
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@54
    move-result-object v2

    #@55
    iput-object v2, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    #@57
    .line 30
    add-int/lit8 v2, v1, -0x3

    #@59
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@5b
    invoke-static {p1, v2, v3}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@61
    .line 20
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 43
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
