.class public Landroid/icu/impl/data/ResourceReader;
.super Ljava/lang/Object;
.source "ResourceReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private blacklist encoding:Ljava/lang/String;

.field private blacklist lineNo:I

.field private blacklist reader:Ljava/io/BufferedReader;

.field private blacklist resourceName:Ljava/lang/String;

.field private blacklist root:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "resourceName"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 102
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    .line 103
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 108
    if-nez p3, :cond_17

    .line 109
    :try_start_11
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_1c

    .line 110
    :cond_17
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_1c
    nop

    .line 112
    .local v0, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_27} :catch_28

    .line 116
    .end local v0    # "isr":Ljava/io/InputStreamReader;
    goto :goto_29

    .line 115
    :catch_28
    move-exception v0

    .line 117
    :goto_29
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .param p2, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 135
    .local p1, "rootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 136
    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    .line 137
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 141
    :try_start_f
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_12} :catch_13

    .line 142
    :goto_12
    goto :goto_15

    :catch_13
    move-exception v0

    goto :goto_12

    .line 143
    :goto_15
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
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

    .line 87
    .local p1, "rootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 88
    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    .line 89
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 92
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 73
    const-class v0, Landroid/icu/impl/ICUData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 63
    const-class v0, Landroid/icu/impl/ICUData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private blacklist _reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 240
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/impl/data/ResourceReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 241
    :goto_3
    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3

    .line 242
    :goto_6
    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    if-nez v0, :cond_b

    .line 243
    return-void

    .line 245
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 246
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_32

    .line 251
    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    if-nez v1, :cond_1f

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_26

    .line 252
    :cond_1f
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_26
    nop

    .line 253
    .local v1, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 254
    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 255
    return-void

    .line 247
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_c

    .line 265
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 268
    :cond_c
    return-void
.end method

.method public blacklist describePosition()Ljava/lang/String;
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLineNumber()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    return v0
.end method

.method public blacklist readLine()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 152
    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 153
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_29

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xffef

    if-eq v3, v4, :cond_25

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xfeff

    if-ne v2, v3, :cond_29

    .line 156
    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_29
    return-object v0

    .line 160
    .end local v0    # "line":Ljava/lang/String;
    :cond_2a
    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 161
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readLineSkippingComments()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/data/ResourceReader;->readLineSkippingComments(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readLineSkippingComments(Z)Ljava/lang/String;
    .registers 6
    .param p1, "trim"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    nop

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/icu/impl/data/ResourceReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 173
    return-object v0

    .line 176
    :cond_8
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 178
    .local v1, "pos":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1c

    .line 179
    goto :goto_1

    .line 182
    :cond_1c
    if-eqz p1, :cond_22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_22
    return-object v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 224
    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_4

    .line 225
    :goto_3
    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3

    .line 229
    :goto_6
    return-void
.end method
