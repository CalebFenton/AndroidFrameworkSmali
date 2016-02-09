.class public Landroid/webkit/WebResourceResponse;
.super Ljava/lang/Object;
.source "WebResourceResponse.java"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mImmutable:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 0
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    #@3
    .line 76
    invoke-virtual {p0, p3, p4}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    #@6
    .line 77
    invoke-virtual {p0, p5}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    #@9
    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    #@5
    .line 53
    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    #@7
    .line 54
    invoke-virtual {p0, p3}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    #@a
    .line 51
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "immutable"    # Z
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 220
    iput-boolean p1, p0, Landroid/webkit/WebResourceResponse;->mImmutable:Z

    #@5
    .line 221
    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    #@7
    .line 222
    iput-object p3, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    #@9
    .line 223
    iput p4, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    #@b
    .line 224
    iput-object p5, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    #@d
    .line 225
    iput-object p6, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    #@f
    .line 226
    iput-object p7, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    #@11
    .line 219
    return-void
.end method

.method private checkImmutable()V
    .locals 2

    #@0
    .prologue
    .line 230
    iget-boolean v0, p0, Landroid/webkit/WebResourceResponse;->mImmutable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "This WebResourceResponse instance is immutable"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    #@2
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    #@2
    return v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "data"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    #@3
    .line 197
    if-eqz p1, :cond_0

    #@5
    const-class v0, Ljava/io/StringBufferInputStream;

    #@7
    invoke-virtual {p1}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "StringBufferInputStream is deprecated and must not be passed to a WebResourceResponse"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 201
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    #@1c
    .line 194
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    #@3
    .line 107
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    #@5
    .line 105
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    #@3
    .line 87
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    #@5
    .line 85
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 174
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    #@3
    .line 175
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    #@5
    .line 173
    return-void
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    #@3
    .line 129
    const/16 v2, 0x64

    #@5
    if-ge p1, v2, :cond_0

    #@7
    .line 130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v3, "statusCode can\'t be less than 100."

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 131
    :cond_0
    const/16 v2, 0x257

    #@12
    if-le p1, v2, :cond_1

    #@14
    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v3, "statusCode can\'t be greater than 599."

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 133
    :cond_1
    const/16 v2, 0x12b

    #@1f
    if-le p1, v2, :cond_2

    #@21
    const/16 v2, 0x190

    #@23
    if-ge p1, v2, :cond_2

    #@25
    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v3, "statusCode can\'t be in the [300, 399] range."

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 135
    :cond_2
    if-nez p2, :cond_3

    #@30
    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v3, "reasonPhrase can\'t be null."

    #@35
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 137
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_4

    #@43
    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v3, "reasonPhrase can\'t be empty."

    #@48
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2

    #@4c
    .line 139
    :cond_4
    const/4 v1, 0x0

    #@4d
    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@50
    move-result v2

    #@51
    if-ge v1, v2, :cond_6

    #@53
    .line 140
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v0

    #@57
    .line 141
    .local v0, "c":I
    const/16 v2, 0x7f

    #@59
    if-le v0, v2, :cond_5

    #@5b
    .line 142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5d
    .line 143
    const-string/jumbo v3, "reasonPhrase can\'t contain non-ASCII characters."

    #@60
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v2

    #@64
    .line 139
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_0

    #@67
    .line 146
    .end local v0    # "c":I
    :cond_6
    iput p1, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    #@69
    .line 147
    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    #@6b
    .line 127
    return-void
.end method
