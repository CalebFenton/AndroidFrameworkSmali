.class public Landroid/webkit/WebResourceResponse;
.super Ljava/lang/Object;
.source "WebResourceResponse.java"


# instance fields
.field private greylist-max-o mEncoding:Ljava/lang/String;

.field private greylist mImmutable:Z

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private greylist-max-o mMimeType:Ljava/lang/String;

.field private greylist-max-o mReasonPhrase:Ljava/lang/String;

.field private greylist-max-o mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mStatusCode:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "reasonPhrase"    # Ljava/lang/String;
    .param p6, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 92
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 93
    invoke-virtual {p0, p3, p4}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 94
    invoke-virtual {p0, p5}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, p3}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    .line 68
    return-void
.end method

.method public constructor whitelist <init>(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .registers 8
    .param p1, "immutable"    # Z
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/io/InputStream;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 237
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-boolean p1, p0, Landroid/webkit/WebResourceResponse;->mImmutable:Z

    .line 239
    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    .line 241
    iput p4, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    .line 242
    iput-object p5, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    .line 243
    iput-object p6, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    .line 244
    iput-object p7, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    .line 245
    return-void
.end method

.method private greylist-max-o checkImmutable()V
    .registers 3

    .line 248
    iget-boolean v0, p0, Landroid/webkit/WebResourceResponse;->mImmutable:Z

    if-nez v0, :cond_5

    .line 250
    return-void

    .line 249
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This WebResourceResponse instance is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getData()Ljava/io/InputStream;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public whitelist getEncoding()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    return v0
.end method

.method public whitelist setData(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "data"    # Ljava/io/InputStream;

    .line 213
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    .line 215
    if-eqz p1, :cond_1a

    const-class v0, Ljava/io/StringBufferInputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 216
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StringBufferInputStream is deprecated and must not be passed to a WebResourceResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1a
    :goto_1a
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    .line 220
    return-void
.end method

.method public whitelist setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    .line 124
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public whitelist setMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    .line 104
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public whitelist setResponseHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    .line 192
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    .line 193
    return-void
.end method

.method public whitelist setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    .line 146
    const/16 v0, 0x64

    if-lt p1, v0, :cond_64

    .line 148
    const/16 v0, 0x257

    if-gt p1, v0, :cond_5b

    .line 150
    const/16 v0, 0x12b

    if-le p1, v0, :cond_1d

    const/16 v0, 0x190

    if-lt p1, v0, :cond_14

    goto :goto_1d

    .line 151
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "statusCode can\'t be in the [300, 399] range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1d
    :goto_1d
    if-eqz p2, :cond_52

    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 157
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 158
    .local v1, "c":I
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_3b

    .line 156
    .end local v1    # "c":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 159
    .restart local v1    # "c":I
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "reasonPhrase can\'t contain non-ASCII characters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    .end local v0    # "i":I
    .end local v1    # "c":I
    :cond_44
    iput p1, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    .line 164
    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    .line 165
    return-void

    .line 155
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reasonPhrase can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reasonPhrase can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "statusCode can\'t be greater than 599."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "statusCode can\'t be less than 100."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
