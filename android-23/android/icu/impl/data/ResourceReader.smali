.class public Landroid/icu/impl/data/ResourceReader;
.super Ljava/lang/Object;
.source "ResourceReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private encoding:Ljava/lang/String;

.field private lineNo:I

.field private reader:Ljava/io/BufferedReader;

.field private resourceName:Ljava/lang/String;

.field private root:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 33
    iput-object v2, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@6
    .line 96
    iput-object v2, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    #@8
    .line 97
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    #@a
    .line 98
    iput-object p3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    #@c
    .line 100
    const/4 v2, -0x1

    #@d
    iput v2, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@f
    .line 102
    if-nez p3, :cond_0

    #@11
    .line 103
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    #@13
    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@16
    .line 106
    .local v1, "isr":Ljava/io/InputStreamReader;
    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    #@18
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1b
    iput-object v2, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@1d
    .line 107
    const/4 v2, 0x0

    #@1e
    iput v2, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@20
    .line 95
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    return-void

    #@21
    .line 104
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    #@23
    invoke-direct {v1, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .restart local v1    # "isr":Ljava/io/InputStreamReader;
    goto :goto_0

    #@27
    .line 109
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    #@28
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "rootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    #@1
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 33
    iput-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@6
    .line 130
    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    #@8
    .line 131
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    #@a
    .line 132
    iput-object v1, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    #@c
    .line 133
    const/4 v1, -0x1

    #@d
    iput v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@f
    .line 135
    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 129
    :goto_0
    return-void

    #@13
    .line 136
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    .local p1, "rootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@6
    .line 82
    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    #@8
    .line 83
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    #@a
    .line 84
    iput-object p3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    #@c
    .line 85
    const/4 v0, -0x1

    #@d
    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@f
    .line 86
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V

    #@12
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    const-class v0, Landroid/icu/impl/ICUData;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "data/"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@19
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    const-class v0, Landroid/icu/impl/ICUData;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "data/"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {p0, v0, v1, p2}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 56
    return-void
.end method

.method private _reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/impl/data/ResourceReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 236
    :goto_0
    iget v3, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@6
    if-nez v3, :cond_0

    #@8
    .line 237
    return-void

    #@9
    .line 235
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@b
    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    #@d
    iget-object v4, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    #@f
    invoke-static {v3, v4}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    #@12
    move-result-object v1

    #@13
    .line 240
    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_1

    #@15
    .line 241
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Can\'t open "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    iget-object v5, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3

    #@31
    .line 245
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    #@33
    if-nez v3, :cond_2

    #@35
    new-instance v2, Ljava/io/InputStreamReader;

    #@37
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@3a
    .line 247
    .local v2, "isr":Ljava/io/InputStreamReader;
    :goto_1
    new-instance v3, Ljava/io/BufferedReader;

    #@3c
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@3f
    iput-object v3, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@41
    .line 248
    iput v5, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@43
    .line 232
    return-void

    #@44
    .line 246
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    :cond_2
    new-instance v2, Ljava/io/InputStreamReader;

    #@46
    iget-object v3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    #@48
    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@4b
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 257
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 258
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    #@a
    .line 259
    iput-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@c
    .line 256
    :cond_0
    return-void
.end method

.method public describePosition()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

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
    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 197
    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@2
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 144
    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@3
    if-nez v1, :cond_2

    #@5
    .line 146
    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    iput v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@b
    .line 147
    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 148
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    const v2, 0xffef

    #@1a
    if-eq v1, v2, :cond_0

    #@1c
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    const v2, 0xfeff

    #@23
    if-ne v1, v2, :cond_1

    #@25
    .line 150
    :cond_0
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 152
    :cond_1
    return-object v0

    #@2b
    .line 154
    .end local v0    # "line":Ljava/lang/String;
    :cond_2
    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    iput v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    #@31
    .line 155
    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    #@33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method public readLineSkippingComments()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/impl/data/ResourceReader;->readLineSkippingComments(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public readLineSkippingComments(Z)Ljava/lang/String;
    .locals 4
    .param p1, "trim"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/data/ResourceReader;->readLine()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_1

    #@6
    .line 167
    return-object v0

    #@7
    .line 170
    :cond_1
    const/4 v2, 0x0

    #@8
    invoke-static {v0, v2}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@b
    move-result v1

    #@c
    .line 172
    .local v1, "pos":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    if-eq v1, v2, :cond_0

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v2

    #@16
    const/16 v3, 0x23

    #@18
    if-eq v2, v3, :cond_0

    #@1a
    .line 176
    if-eqz p1, :cond_2

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 177
    :cond_2
    return-object v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 218
    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 216
    :goto_0
    return-void

    #@4
    .line 219
    :catch_0
    move-exception v0

    #@5
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method
