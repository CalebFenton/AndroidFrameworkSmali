.class Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;
.super Ljava/lang/Object;
.source "AndroidHttpConnectionFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidGoogleHttpConnection"
.end annotation


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private closed:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private response:Lorg/apache/http/HttpResponse;

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;


# direct methods
.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;Z)V
    .locals 5
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "usePost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 99
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 94
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    #@8
    .line 95
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    #@a
    .line 101
    if-nez p3, :cond_0

    #@c
    .line 104
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    #@e
    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    #@11
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 114
    :goto_0
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->lock:Ljava/lang/Object;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$100()Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    monitor-enter v4

    #@18
    .line 115
    :try_start_1
    # operator++ for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$208()I

    #@1b
    .line 118
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 119
    return-void

    #@1d
    .line 102
    :cond_0
    :try_start_2
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    #@1f
    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    #@22
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@24
    goto :goto_0

    #@25
    .line 113
    :catch_0
    move-exception v0

    #@26
    .line 107
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "URISyntaxException in HttpUriRequest, post="

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, ", url="

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 110
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    #@47
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    .line 111
    .local v1, "f":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4d
    .line 112
    throw v1

    #@4e
    .line 118
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "f":Ljava/io/IOException;
    .end local v2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@4f
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    throw v3
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;ZLandroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$1;)V
    .locals 0
    .param p1, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method private getResponse()Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 138
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    #@6
    return-object v1

    #@7
    .line 126
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    #@9
    if-nez v1, :cond_1

    #@b
    .line 132
    :goto_1
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@d
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$300(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;)Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    #@13
    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 136
    :catch_0
    move-exception v0

    #@1b
    .line 135
    .local v0, "e":Ljava/io/IOException;
    throw v0

    #@1c
    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    #@1e
    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    #@20
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    #@22
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    #@24
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    #@2b
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    #@2e
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 195
    :cond_0
    :goto_0
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->lock:Ljava/lang/Object;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$100()Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    monitor-enter v3

    #@9
    .line 196
    :try_start_0
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->closed:Z

    #@b
    if-nez v2, :cond_2

    #@d
    .line 199
    const/4 v2, 0x1

    #@e
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->closed:Z

    #@10
    .line 201
    # operator-- for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$210()I

    #@13
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Connection closed.  # of open connections="

    #@1b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$200()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 204
    .local v1, "logMessage":Ljava/lang/String;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 207
    return-void

    #@2d
    .line 186
    .end local v1    # "logMessage":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    #@2f
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@32
    move-result-object v0

    #@33
    .line 187
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    #@35
    .line 189
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    #@38
    goto :goto_0

    #@39
    .line 197
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2
    :try_start_1
    monitor-exit v3

    #@3a
    return-void

    #@3b
    .line 204
    :catchall_0
    move-exception v2

    #@3c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    throw v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@b
    move-result-object v0

    #@c
    .line 180
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    #@e
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    :goto_0
    return-object v1

    #@13
    :cond_0
    const-string/jumbo v1, ""

    #@16
    goto :goto_0
.end method

.method public getLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    new-instance v0, Ljava/io/DataInputStream;

    #@2
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@11
    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    #@2
    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    #@d
    .line 149
    new-instance v0, Ljava/io/DataOutputStream;

    #@f
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@14
    return-object v0

    #@15
    .line 145
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Can\'t open output stream on a GET to "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    #@25
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method public setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-string/jumbo v0, "Content-Length"

    #@3
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 164
    :cond_0
    return-void

    #@a
    :cond_1
    const-string/jumbo v0, "Transfer-Encoding"

    #@d
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 166
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    #@15
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 167
    return-void
.end method
