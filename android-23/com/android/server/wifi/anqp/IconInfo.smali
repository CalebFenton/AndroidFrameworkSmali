.class public Lcom/android/server/wifi/anqp/IconInfo;
.super Ljava/lang/Object;
.source "IconInfo.java"


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mHeight:I

.field private final mIconType:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mWidth:I


# direct methods
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
    const v3, 0xffff

    #@3
    const/4 v2, 0x1

    #@4
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x9

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 24
    new-instance v0, Ljava/net/ProtocolException;

    #@11
    const-string/jumbo v1, "Truncated icon meta data"

    #@14
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@1b
    move-result v0

    #@1c
    and-int/2addr v0, v3

    #@1d
    iput v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mWidth:I

    #@1f
    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@22
    move-result v0

    #@23
    and-int/2addr v0, v3

    #@24
    iput v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mHeight:I

    #@26
    .line 29
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@28
    const/4 v1, 0x3

    #@29
    invoke-static {p1, v1, v0}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mLocale:Ljava/util/Locale;

    #@33
    .line 30
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@35
    invoke-static {p1, v2, v0}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@3b
    .line 31
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3d
    invoke-static {p1, v2, v0}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@43
    .line 22
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mHeight:I

    #@2
    return v0
.end method

.method public getIconType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mWidth:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x27

    #@2
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "IconInfo{mWidth="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 57
    iget v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mWidth:I

    #@10
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 58
    const-string/jumbo v1, ", mHeight="

    #@17
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 58
    iget v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mHeight:I

    #@1d
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 59
    const-string/jumbo v1, ", mLocale="

    #@24
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 59
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mLocale:Ljava/util/Locale;

    #@2a
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 60
    const-string/jumbo v1, ", mIconType=\'"

    #@31
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 60
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@37
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 61
    const-string/jumbo v1, ", mFileName=\'"

    #@42
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 61
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@48
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 62
    const/16 v1, 0x7d

    #@52
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    return-object v0
.end method
