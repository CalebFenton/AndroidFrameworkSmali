.class public final Lcom/android/okhttp/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static synthetic -get0()Ljava/util/logging/Logger;
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/okio/Okio;->logger:Ljava/util/logging/Logger;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    const-class v0, Lcom/android/okhttp/okio/Okio;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/okhttp/okio/Okio;->logger:Ljava/util/logging/Logger;

    #@c
    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "file == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@11
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p0, "sink"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    .line 56
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "sink == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 57
    :cond_0
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSink;

    #@d
    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    #@10
    return-object v0
.end method

.method public static buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;
    .locals 2
    .param p0, "source"    # Lcom/android/okhttp/okio/Source;

    #@0
    .prologue
    .line 46
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 47
    :cond_0
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSource;

    #@d
    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    #@10
    return-object v0
.end method

.method public static sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "file == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 174
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    #@d
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@10
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 62
    new-instance v0, Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    #@5
    invoke-static {p0, v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lcom/android/okhttp/okio/Timeout;

    #@0
    .prologue
    .line 66
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "out == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 67
    :cond_0
    if-nez p1, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "timeout == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 69
    :cond_1
    new-instance v0, Lcom/android/okhttp/okio/Okio$1;

    #@18
    invoke-direct {v0, p1, p0}, Lcom/android/okhttp/okio/Okio$1;-><init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/OutputStream;)V

    #@1b
    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    if-nez p0, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "socket == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 114
    :cond_0
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;

    #@e
    move-result-object v1

    #@f
    .line 115
    .local v1, "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2, v1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;

    #@16
    move-result-object v0

    #@17
    .line 116
    .local v0, "sink":Lcom/android/okhttp/okio/Sink;
    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method public static source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "file == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 159
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    #@d
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@10
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 121
    new-instance v0, Lcom/android/okhttp/okio/Timeout;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    #@5
    invoke-static {p0, v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lcom/android/okhttp/okio/Timeout;

    #@0
    .prologue
    .line 125
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "in == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 126
    :cond_0
    if-nez p1, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "timeout == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 128
    :cond_1
    new-instance v0, Lcom/android/okhttp/okio/Okio$2;

    #@18
    invoke-direct {v0, p1, p0}, Lcom/android/okhttp/okio/Okio$2;-><init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/InputStream;)V

    #@1b
    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    if-nez p0, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "socket == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 199
    :cond_0
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;

    #@e
    move-result-object v1

    #@f
    .line 200
    .local v1, "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2, v1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;

    #@16
    move-result-object v0

    #@17
    .line 201
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method private static timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 205
    new-instance v0, Lcom/android/okhttp/okio/Okio$3;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Okio$3;-><init>(Ljava/net/Socket;)V

    #@5
    return-object v0
.end method
