.class public Landroid/icu/text/CharsetMatch;
.super Ljava/lang/Object;
.source "CharsetMatch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/CharsetMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o fCharsetName:Ljava/lang/String;

.field private greylist-max-o fConfidence:I

.field private greylist-max-o fInputStream:Ljava/io/InputStream;

.field private greylist-max-o fLang:Ljava/lang/String;

.field private greylist-max-o fRawInput:[B

.field private greylist-max-o fRawLength:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V
    .registers 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "rec"    # Landroid/icu/text/CharsetRecognizer;
    .param p3, "conf"    # I

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    .line 228
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 183
    iput p3, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    .line 188
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_16

    .line 191
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    .line 192
    iget v0, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    iput v0, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    .line 194
    :cond_16
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 195
    invoke-virtual {p2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    .line 196
    invoke-virtual {p2}, Landroid/icu/text/CharsetRecognizer;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    .line 197
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "rec"    # Landroid/icu/text/CharsetRecognizer;
    .param p3, "conf"    # I
    .param p4, "csName"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    .line 228
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 203
    iput p3, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    .line 208
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_16

    .line 211
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    .line 212
    iget v0, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    iput v0, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    .line 214
    :cond_16
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 215
    iput-object p4, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    .line 216
    iput-object p5, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/icu/text/CharsetMatch;)I
    .registers 5
    .param p1, "other"    # Landroid/icu/text/CharsetMatch;

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "compareResult":I
    iget v1, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    iget v2, p1, Landroid/icu/text/CharsetMatch;->fConfidence:I

    if-le v1, v2, :cond_9

    .line 172
    const/4 v0, 0x1

    goto :goto_10

    .line 173
    :cond_9
    iget v1, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    iget v2, p1, Landroid/icu/text/CharsetMatch;->fConfidence:I

    if-ge v1, v2, :cond_10

    .line 174
    const/4 v0, -0x1

    .line 176
    :cond_10
    :goto_10
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Landroid/icu/text/CharsetMatch;

    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetMatch;->compareTo(Landroid/icu/text/CharsetMatch;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getConfidence()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    return v0
.end method

.method public greylist-max-o getLanguage()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getReader()Ljava/io/Reader;
    .registers 6

    .line 47
    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 49
    .local v0, "inputStream":Ljava/io/InputStream;
    if-nez v0, :cond_f

    .line 50
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    const/4 v3, 0x0

    iget v4, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v0, v1

    .line 54
    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 55
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_1c

    return-object v1

    .line 56
    :catch_1c
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist-max-o getString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getString(I)Ljava/lang/String;
    .registers 11
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x400

    new-array v4, v3, [C

    .line 89
    .local v4, "buffer":[C
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;

    move-result-object v5

    .line 90
    .local v5, "reader":Ljava/io/Reader;
    if-gez p1, :cond_19

    const v6, 0x7fffffff

    goto :goto_1a

    :cond_19
    move v6, p1

    .line 91
    .local v6, "max":I
    :goto_1a
    const/4 v7, 0x0

    .line 93
    .local v7, "bytesRead":I
    :goto_1b
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v5, v4, v2, v8}, Ljava/io/Reader;->read([CII)I

    move-result v8

    move v7, v8

    if-ltz v8, :cond_2b

    .line 94
    invoke-virtual {v1, v4, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 95
    sub-int/2addr v6, v7

    goto :goto_1b

    .line 98
    :cond_2b
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 102
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "buffer":[C
    .end local v5    # "reader":Ljava/io/Reader;
    .end local v6    # "max":I
    .end local v7    # "bytesRead":I
    :cond_33
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "name":Ljava/lang/String;
    const-string v3, "_rtl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_41

    const-string v3, "_ltr"

    :cond_41
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, "startSuffix":I
    if-lez v3, :cond_4b

    .line 110
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_4b
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    invoke-direct {v2, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 114
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "startSuffix":I
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method
