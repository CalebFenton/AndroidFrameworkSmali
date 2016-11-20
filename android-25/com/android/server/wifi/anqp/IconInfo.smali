.class public Lcom/android/server/wifi/anqp/IconInfo;
.super Ljava/lang/Object;
.source "IconInfo.java"


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mHeight:I

.field private final mIconType:Ljava/lang/String;

.field private final mLanguage:Ljava/lang/String;

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
    .line 30
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@28
    const/4 v1, 0x3

    #@29
    .line 29
    invoke-static {p1, v1, v0}, Lcom/android/server/wifi/anqp/Constants;->getTrimmedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    #@2f
    .line 31
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@31
    invoke-static {p1, v2, v0}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@37
    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@39
    invoke-static {p1, v2, v0}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@3f
    .line 22
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
    .line 57
    if-ne p0, p1, :cond_0

    #@3
    .line 58
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 60
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/IconInfo;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 61
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 64
    check-cast v0, Lcom/android/server/wifi/anqp/IconInfo;

    #@15
    .line 65
    .local v0, "that":Lcom/android/server/wifi/anqp/IconInfo;
    iget v2, p0, Lcom/android/server/wifi/anqp/IconInfo;->mHeight:I

    #@17
    iget v3, v0, Lcom/android/server/wifi/anqp/IconInfo;->mHeight:I

    #@19
    if-ne v2, v3, :cond_3

    #@1b
    .line 66
    iget v2, p0, Lcom/android/server/wifi/anqp/IconInfo;->mWidth:I

    #@1d
    iget v3, v0, Lcom/android/server/wifi/anqp/IconInfo;->mWidth:I

    #@1f
    if-ne v2, v3, :cond_3

    #@21
    .line 67
    iget-object v2, p0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@23
    iget-object v3, v0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    .line 65
    if-eqz v2, :cond_3

    #@2b
    .line 68
    iget-object v2, p0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@2d
    iget-object v3, v0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    .line 65
    if-eqz v2, :cond_3

    #@35
    .line 69
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    #@37
    iget-object v2, v0, Lcom/android/server/wifi/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    .line 65
    :cond_3
    return v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mHeight:I

    #@2
    return v0
.end method

.method public getIconType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mWidth:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/wifi/anqp/IconInfo;->mWidth:I

    #@2
    .line 75
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@4
    iget v2, p0, Lcom/android/server/wifi/anqp/IconInfo;->mHeight:I

    #@6
    add-int v0, v1, v2

    #@8
    .line 76
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget-object v2, p0, Lcom/android/server/wifi/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 77
    mul-int/lit8 v1, v0, 0x1f

    #@14
    iget-object v2, p0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@19
    move-result v2

    #@1a
    add-int v0, v1, v2

    #@1c
    .line 78
    mul-int/lit8 v1, v0, 0x1f

    #@1e
    iget-object v2, p0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@23
    move-result v2

    #@24
    add-int v0, v1, v2

    #@26
    .line 79
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x27

    #@2
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "IconInfo{Width="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 85
    iget v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mWidth:I

    #@10
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 86
    const-string/jumbo v1, ", Height="

    #@17
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 86
    iget v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mHeight:I

    #@1d
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 87
    const-string/jumbo v1, ", Language="

    #@24
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 87
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    #@2a
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 88
    const-string/jumbo v1, ", IconType=\'"

    #@31
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 88
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mIconType:Ljava/lang/String;

    #@37
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 89
    const-string/jumbo v1, ", FileName=\'"

    #@42
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 89
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IconInfo;->mFileName:Ljava/lang/String;

    #@48
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 90
    const/16 v1, 0x7d

    #@52
    .line 84
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
