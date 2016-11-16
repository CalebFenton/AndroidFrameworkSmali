.class Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpInputStream"
.end annotation


# static fields
.field private static final SKIP_BUFFER_SIZE:I = 0x1fa0


# instance fields
.field private cacheRequest:Ljava/net/CacheRequest;

.field private inCache:I

.field private markCount:I

.field private marked:Z

.field private outputStream:Ljava/io/OutputStream;

.field private skipBuffer:[B

.field final synthetic this$0:Lsun/net/www/protocol/http/HttpURLConnection;


# direct methods
.method public constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "this$0"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 2956
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@4
    .line 2957
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@7
    .line 2952
    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    #@9
    .line 2953
    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    #@b
    .line 2954
    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    #@d
    .line 2958
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@f
    .line 2959
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    #@11
    .line 2956
    return-void
.end method

.method public constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;Ljava/net/CacheRequest;)V
    .locals 3
    .param p1, "this$0"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "cacheRequest"    # Ljava/net/CacheRequest;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 2962
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@4
    .line 2963
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@7
    .line 2952
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    #@9
    .line 2953
    iput v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    #@b
    .line 2954
    iput v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    #@d
    .line 2964
    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@f
    .line 2966
    :try_start_0
    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 2962
    :goto_0
    return-void

    #@16
    .line 2967
    :catch_0
    move-exception v0

    #@17
    .line 2968
    .local v0, "ioex":Ljava/io/IOException;
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@19
    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    #@1c
    .line 2969
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@1e
    .line 2970
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    #@20
    goto :goto_0
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
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 3115
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 3116
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read()I

    #@9
    move-result v1

    #@a
    const/4 v2, -0x1

    #@b
    if-eq v1, v2, :cond_1

    #@d
    .line 3117
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@f
    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    #@12
    .line 3122
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 3129
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@17
    iput-object v3, v1, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@19
    .line 3130
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@1b
    invoke-static {v1, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->-wrap0(Lsun/net/www/protocol/http/HttpURLConnection;Z)V

    #@1e
    .line 3113
    return-void

    #@1f
    .line 3119
    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    #@21
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 3123
    :catch_0
    move-exception v0

    #@26
    .line 3124
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 3125
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@2c
    invoke-virtual {v1}, Ljava/net/CacheRequest;->abort()V

    #@2f
    .line 3127
    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    .line 3128
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@31
    .line 3129
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@33
    iput-object v3, v2, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@35
    .line 3130
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@37
    invoke-static {v2, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->-wrap0(Lsun/net/www/protocol/http/HttpURLConnection;Z)V

    #@3a
    .line 3128
    throw v1
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2993
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    #@4
    .line 2994
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2995
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    #@b
    .line 2996
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 2992
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3033
    const/4 v3, 0x1

    #@1
    :try_start_0
    new-array v0, v3, [B

    #@3
    .line 3034
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([B)I

    #@6
    move-result v2

    #@7
    .line 3035
    .local v2, "ret":I
    const/4 v3, -0x1

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .end local v2    # "ret":I
    :goto_0
    return v2

    #@b
    .restart local v2    # "ret":I
    :cond_0
    const/4 v3, 0x0

    #@c
    aget-byte v3, v0, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    and-int/lit16 v2, v3, 0xff

    #@10
    goto :goto_0

    #@11
    .line 3036
    .end local v0    # "b":[B
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    #@12
    .line 3037
    .local v1, "ioex":Ljava/io/IOException;
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 3038
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@18
    invoke-virtual {v3}, Ljava/net/CacheRequest;->abort()V

    #@1b
    .line 3040
    :cond_1
    throw v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3046
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3052
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@3
    move-result v2

    #@4
    .line 3055
    .local v2, "newLen":I
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    #@6
    if-lez v3, :cond_4

    #@8
    .line 3056
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    #@a
    if-lt v3, v2, :cond_2

    #@c
    .line 3057
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    #@e
    sub-int/2addr v3, v2

    #@f
    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    #@11
    .line 3058
    const/4 v1, 0x0

    #@12
    .line 3066
    .local v1, "nWrite":I
    :goto_0
    if-lez v1, :cond_0

    #@14
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 3067
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->outputStream:Ljava/io/OutputStream;

    #@1a
    sub-int v4, v2, v1

    #@1c
    add-int/2addr v4, p2

    #@1d
    invoke-virtual {v3, p1, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    #@20
    .line 3068
    :cond_0
    iget-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 3069
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    #@26
    add-int/2addr v3, v2

    #@27
    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    #@29
    .line 3071
    :cond_1
    return v2

    #@2a
    .line 3060
    .end local v1    # "nWrite":I
    :cond_2
    iget v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    #@2c
    sub-int v1, v2, v3

    #@2e
    .line 3061
    .restart local v1    # "nWrite":I
    const/4 v3, 0x0

    #@2f
    iput v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    goto :goto_0

    #@32
    .line 3072
    .end local v1    # "nWrite":I
    .end local v2    # "newLen":I
    :catch_0
    move-exception v0

    #@33
    .line 3073
    .local v0, "ioex":Ljava/io/IOException;
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@35
    if-eqz v3, :cond_3

    #@37
    .line 3074
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@39
    invoke-virtual {v3}, Ljava/net/CacheRequest;->abort()V

    #@3c
    .line 3076
    :cond_3
    throw v0

    #@3d
    .line 3064
    .end local v0    # "ioex":Ljava/io/IOException;
    .restart local v2    # "newLen":I
    :cond_4
    move v1, v2

    #@3e
    .restart local v1    # "nWrite":I
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 3023
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    #@4
    .line 3024
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 3025
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->marked:Z

    #@b
    .line 3026
    iget v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I

    #@d
    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->markCount:I

    #@f
    add-int/2addr v0, v1

    #@10
    iput v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->inCache:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 3022
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const-wide/16 v6, 0x0

    #@3
    .line 3089
    move-wide v2, p1

    #@4
    .line 3091
    .local v2, "remaining":J
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    #@6
    if-nez v4, :cond_0

    #@8
    .line 3092
    const/16 v4, 0x1fa0

    #@a
    new-array v4, v4, [B

    #@c
    iput-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    #@e
    .line 3094
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->skipBuffer:[B

    #@10
    .line 3096
    .local v0, "localSkipBuffer":[B
    cmp-long v4, p1, v6

    #@12
    if-gtz v4, :cond_2

    #@14
    .line 3097
    return-wide v6

    #@15
    .line 3106
    .local v1, "nr":I
    :cond_1
    int-to-long v4, v1

    #@16
    sub-long/2addr v2, v4

    #@17
    .line 3100
    .end local v1    # "nr":I
    :cond_2
    cmp-long v4, v2, v6

    #@19
    if-lez v4, :cond_3

    #@1b
    .line 3102
    const-wide/16 v4, 0x1fa0    # 4.0E-320

    #@1d
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@20
    move-result-wide v4

    #@21
    long-to-int v4, v4

    #@22
    .line 3101
    invoke-virtual {p0, v0, v8, v4}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;->read([BII)I

    #@25
    move-result v1

    #@26
    .line 3103
    .restart local v1    # "nr":I
    if-gez v1, :cond_1

    #@28
    .line 3109
    .end local v1    # "nr":I
    :cond_3
    sub-long v4, p1, v2

    #@2a
    return-wide v4
.end method
