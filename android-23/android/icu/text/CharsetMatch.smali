.class public Landroid/icu/text/CharsetMatch;
.super Ljava/lang/Object;
.source "CharsetMatch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/CharsetMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private fCharsetName:Ljava/lang/String;

.field private fConfidence:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLang:Ljava/lang/String;

.field private fRawInput:[B

.field private fRawLength:I


# direct methods
.method constructor <init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V
    .locals 1
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "rec"    # Landroid/icu/text/CharsetRecognizer;
    .param p3, "conf"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 233
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    #@6
    .line 237
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    #@8
    .line 192
    iput p3, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    #@a
    .line 197
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 200
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@10
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    #@12
    .line 201
    iget v0, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@14
    iput v0, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    #@16
    .line 203
    :cond_0
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    #@18
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    #@1a
    .line 204
    invoke-virtual {p2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    #@20
    .line 205
    invoke-virtual {p2}, Landroid/icu/text/CharsetRecognizer;->getLanguage()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    #@26
    .line 191
    return-void
.end method

.method constructor <init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "rec"    # Landroid/icu/text/CharsetRecognizer;
    .param p3, "conf"    # I
    .param p4, "csName"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 233
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    #@6
    .line 237
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    #@8
    .line 212
    iput p3, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    #@a
    .line 217
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 220
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@10
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    #@12
    .line 221
    iget v0, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@14
    iput v0, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    #@16
    .line 223
    :cond_0
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    #@18
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    #@1a
    .line 224
    iput-object p4, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    #@1c
    .line 225
    iput-object p5, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    #@1e
    .line 211
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/CharsetMatch;)I
    .locals 3
    .param p1, "other"    # Landroid/icu/text/CharsetMatch;

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    .line 180
    .local v0, "compareResult":I
    iget v1, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    #@3
    iget v2, p1, Landroid/icu/text/CharsetMatch;->fConfidence:I

    #@5
    if-le v1, v2, :cond_1

    #@7
    .line 181
    const/4 v0, 0x1

    #@8
    .line 185
    :cond_0
    :goto_0
    return v0

    #@9
    .line 182
    :cond_1
    iget v1, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    #@b
    iget v2, p1, Landroid/icu/text/CharsetMatch;->fConfidence:I

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 183
    const/4 v0, -0x1

    #@10
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 178
    check-cast p1, Landroid/icu/text/CharsetMatch;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetMatch;->compareTo(Landroid/icu/text/CharsetMatch;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getConfidence()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    #@2
    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 46
    iget-object v1, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    #@3
    .line 48
    .local v1, "inputStream":Ljava/io/InputStream;
    if-nez v1, :cond_0

    #@5
    .line 49
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@7
    .end local v1    # "inputStream":Ljava/io/InputStream;
    iget-object v2, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    #@9
    iget v3, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    #@b
    const/4 v4, 0x0

    #@c
    invoke-direct {v1, v2, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@f
    .line 53
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    #@12
    .line 54
    new-instance v2, Ljava/io/InputStreamReader;

    #@14
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    return-object v2

    #@1c
    .line 55
    :catch_0
    move-exception v0

    #@1d
    .line 56
    .local v0, "e":Ljava/io/IOException;
    return-object v5
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 11
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x400

    #@2
    const/4 v9, 0x0

    #@3
    .line 88
    const/4 v5, 0x0

    #@4
    .line 89
    .local v5, "result":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    #@6
    if-eqz v8, :cond_2

    #@8
    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 91
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-array v0, v10, [C

    #@f
    .line 92
    .local v0, "buffer":[C
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;

    #@12
    move-result-object v4

    #@13
    .line 93
    .local v4, "reader":Ljava/io/Reader;
    if-gez p1, :cond_0

    #@15
    const v2, 0x7fffffff

    #@18
    .line 94
    .local v2, "max":I
    :goto_0
    const/4 v1, 0x0

    #@19
    .line 96
    .local v1, "bytesRead":I
    :goto_1
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    #@1c
    move-result v8

    #@1d
    invoke-virtual {v4, v0, v9, v8}, Ljava/io/Reader;->read([CII)I

    #@20
    move-result v1

    #@21
    if-ltz v1, :cond_1

    #@23
    .line 97
    invoke-virtual {v6, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@26
    .line 98
    sub-int/2addr v2, v1

    #@27
    goto :goto_1

    #@28
    .line 93
    .end local v1    # "bytesRead":I
    .end local v2    # "max":I
    :cond_0
    move v2, p1

    #@29
    .restart local v2    # "max":I
    goto :goto_0

    #@2a
    .line 101
    .restart local v1    # "bytesRead":I
    :cond_1
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    #@2d
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    return-object v8

    #@32
    .line 105
    .end local v0    # "buffer":[C
    .end local v1    # "bytesRead":I
    .end local v2    # "max":I
    .end local v4    # "reader":Ljava/io/Reader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 111
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v8, "_rtl"

    #@39
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3c
    move-result v8

    #@3d
    if-gez v8, :cond_4

    #@3f
    const-string/jumbo v8, "_ltr"

    #@42
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@45
    move-result v7

    #@46
    .line 112
    .local v7, "startSuffix":I
    :goto_2
    if-lez v7, :cond_3

    #@48
    .line 113
    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 115
    :cond_3
    new-instance v5, Ljava/lang/String;

    #@4e
    .end local v5    # "result":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    #@50
    invoke-direct {v5, v8, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@53
    .line 117
    .local v5, "result":Ljava/lang/String;
    return-object v5

    #@54
    .line 111
    .end local v7    # "startSuffix":I
    .local v5, "result":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "_rtl"

    #@57
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@5a
    move-result v7

    #@5b
    .restart local v7    # "startSuffix":I
    goto :goto_2
.end method
