.class public Lcom/android/internal/http/multipart/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field public static final MULTIPART_BOUNDARY:Ljava/lang/String; = "http.method.multipart.boundary"

.field private static MULTIPART_CHARS:[B = null

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private contentConsumed:Z

.field private multipartBoundary:[B

.field private params:Lorg/apache/http/params/HttpParams;

.field protected parts:[Lcom/android/internal/http/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 86
    const-class v0, Lcom/android/internal/http/multipart/MultipartEntity;

    #@2
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/http/multipart/MultipartEntity;->log:Lorg/apache/commons/logging/Log;

    #@8
    .line 103
    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    #@b
    .line 102
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    #@11
    .line 84
    return-void
.end method

.method public constructor <init>([Lcom/android/internal/http/multipart/Part;)V
    .locals 2
    .param p1, "parts"    # [Lcom/android/internal/http/multipart/Part;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 142
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@4
    .line 124
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    #@7
    .line 143
    const-string/jumbo v0, "multipart/form-data"

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/MultipartEntity;->setContentType(Ljava/lang/String;)V

    #@d
    .line 144
    if-nez p1, :cond_0

    #@f
    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "parts cannot be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 147
    :cond_0
    iput-object p1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    #@1a
    .line 148
    iput-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    #@1c
    .line 142
    return-void
.end method

.method public constructor <init>([Lcom/android/internal/http/multipart/Part;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@3
    .line 124
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    #@6
    .line 132
    if-nez p1, :cond_0

    #@8
    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "parts cannot be null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 135
    :cond_0
    if-nez p2, :cond_1

    #@13
    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "params cannot be null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 138
    :cond_1
    iput-object p1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    #@1e
    .line 139
    iput-object p2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    #@20
    .line 131
    return-void
.end method

.method private static generateMultipartBoundary()[B
    .locals 5

    #@0
    .prologue
    .line 109
    new-instance v2, Ljava/util/Random;

    #@2
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    #@5
    .line 110
    .local v2, "rand":Ljava/util/Random;
    const/16 v3, 0xb

    #@7
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    #@a
    move-result v3

    #@b
    add-int/lit8 v3, v3, 0x1e

    #@d
    new-array v0, v3, [B

    #@f
    .line 111
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@11
    if-ge v1, v3, :cond_0

    #@13
    .line 112
    sget-object v3, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    #@15
    sget-object v4, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    #@17
    array-length v4, v4

    #@18
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    #@1b
    move-result v4

    #@1c
    aget-byte v3, v3, v4

    #@1e
    aput-byte v3, v0, v1

    #@20
    .line 111
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 114
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->isRepeatable()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    iget-boolean v2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 217
    new-instance v2, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v3, "Content has been consumed"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 219
    :cond_0
    const/4 v2, 0x1

    #@14
    iput-boolean v2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    #@16
    .line 221
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@18
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1b
    .line 222
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    #@1d
    iget-object v3, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    #@1f
    invoke-static {v1, v2, v3}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    #@22
    .line 223
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@24
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@27
    move-result-object v2

    #@28
    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@2b
    .line 224
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    #@0
    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    #@5
    move-result-object v2

    #@6
    invoke-static {v1, v2}, Lcom/android/internal/http/multipart/Part;->getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-wide v2

    #@a
    return-wide v2

    #@b
    .line 209
    :catch_0
    move-exception v0

    #@c
    .line 210
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/http/multipart/MultipartEntity;->log:Lorg/apache/commons/logging/Log;

    #@e
    const-string/jumbo v2, "An exception occurred while getting the length of the parts"

    #@11
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@14
    .line 211
    const-wide/16 v2, 0x0

    #@16
    return-wide v2
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    #@0
    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "multipart/form-data"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 198
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "; boundary="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    .line 200
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    #@1b
    const-string/jumbo v2, "Content-Type"

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .locals 3

    #@0
    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    #@2
    if-nez v1, :cond_1

    #@4
    .line 162
    const/4 v0, 0x0

    #@5
    .line 163
    .local v0, "temp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 164
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    #@b
    const-string/jumbo v2, "http.method.multipart.boundary"

    #@e
    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .end local v0    # "temp":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@14
    .line 166
    :cond_0
    if-eqz v0, :cond_2

    #@16
    .line 167
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    #@1c
    .line 172
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    #@1e
    return-object v1

    #@1f
    .line 169
    :cond_2
    invoke-static {}, Lcom/android/internal/http/multipart/MultipartEntity;->generateMultipartBoundary()[B

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    #@25
    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 2

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 180
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1}, Lcom/android/internal/http/multipart/Part;->isRepeatable()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 181
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 184
    :cond_1
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 228
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    #@5
    move-result-object v1

    #@6
    invoke-static {p1, v0, v1}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    #@9
    .line 189
    return-void
.end method
