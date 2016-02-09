.class public Llibcore/net/url/FileURLConnection;
.super Ljava/net/URLConnection;
.source "FileURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/url/FileURLConnection$1;
    }
.end annotation


# static fields
.field private static final CONTENT_LENGTH_VALUE_IDX:I = 0x3

.field private static final CONTENT_TYPE_VALUE_IDX:I = 0x1

.field private static final HEADER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_MODIFIED_VALUE_IDX:I = 0x5


# instance fields
.field private filename:Ljava/lang/String;

.field private headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final headerKeysAndValues:[Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private isDir:Z

.field private lastModified:J

.field private length:J

.field private permission:Ljava/io/FilePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    new-instance v0, Llibcore/net/url/FileURLConnection$1;

    #@2
    invoke-direct {v0}, Llibcore/net/url/FileURLConnection$1;-><init>()V

    #@5
    sput-object v0, Llibcore/net/url/FileURLConnection;->HEADER_COMPARATOR:Ljava/util/Comparator;

    #@7
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 91
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    #@6
    .line 65
    iput-wide v0, p0, Llibcore/net/url/FileURLConnection;->length:J

    #@8
    .line 67
    iput-wide v0, p0, Llibcore/net/url/FileURLConnection;->lastModified:J

    #@a
    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    #@10
    .line 93
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    #@12
    if-nez v0, :cond_0

    #@14
    .line 94
    const-string/jumbo v0, ""

    #@17
    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    #@19
    .line 96
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    #@1b
    invoke-static {v0}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    #@21
    .line 97
    const/4 v0, 0x6

    #@22
    new-array v0, v0, [Ljava/lang/String;

    #@24
    .line 98
    const-string/jumbo v1, "content-type"

    #@27
    const/4 v2, 0x0

    #@28
    aput-object v1, v0, v2

    #@2a
    const/4 v1, 0x1

    #@2b
    aput-object v3, v0, v1

    #@2d
    .line 99
    const-string/jumbo v1, "content-length"

    #@30
    const/4 v2, 0x2

    #@31
    aput-object v1, v0, v2

    #@33
    const/4 v1, 0x3

    #@34
    aput-object v3, v0, v1

    #@36
    .line 100
    const-string/jumbo v1, "last-modified"

    #@39
    const/4 v2, 0x4

    #@3a
    aput-object v1, v0, v2

    #@3c
    const/4 v1, 0x5

    #@3d
    aput-object v3, v0, v1

    #@3f
    .line 97
    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@41
    .line 90
    return-void
.end method

.method private getContentLengthLong()J
    .locals 4

    #@0
    .prologue
    .line 231
    :try_start_0
    iget-boolean v1, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 232
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 237
    :cond_0
    :goto_0
    iget-wide v2, p0, Llibcore/net/url/FileURLConnection;->length:J

    #@9
    return-wide v2

    #@a
    .line 234
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private getContentTypeForPlainFiles()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 253
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->url:Ljava/net/URL;

    #@2
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Llibcore/net/url/FileURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 254
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@c
    .line 255
    return-object v1

    #@d
    .line 259
    :cond_0
    :try_start_0
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    #@f
    invoke-static {v2}, Llibcore/net/url/FileURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v1

    #@13
    .line 263
    :goto_0
    if-eqz v1, :cond_1

    #@15
    .line 264
    return-object v1

    #@16
    .line 267
    :cond_1
    const-string/jumbo v2, "content/unknown"

    #@19
    return-object v2

    #@1a
    .line 260
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;
    .locals 8
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 277
    .local v1, "fileList":[Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@9
    .line 278
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    #@b
    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@e
    .line 279
    .local v3, "out":Ljava/io/PrintStream;
    const-string/jumbo v4, "<title>Directory Listing</title>\n"

    #@11
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@14
    .line 280
    const-string/jumbo v4, "<base href=\"file:"

    #@17
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1a
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    const/16 v6, 0x5c

    #@25
    const/16 v7, 0x2f

    #@27
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, "/\"><h1>"

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 282
    const-string/jumbo v5, "</h1>\n<hr>\n"

    #@41
    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4c
    .line 284
    const/4 v2, 0x0

    #@4d
    .local v2, "i":I
    :goto_0
    array-length v4, v1

    #@4e
    if-ge v2, v4, :cond_0

    #@50
    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    aget-object v5, v1, v2

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    const-string/jumbo v5, "<br>\n"

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@69
    .line 284
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 287
    :cond_0
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    #@6f
    .line 288
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@71
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@74
    move-result-object v5

    #@75
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@78
    return-object v4
.end method


# virtual methods
.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 113
    new-instance v1, Ljava/io/File;

    #@3
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    #@5
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 114
    .local v1, "f":Ljava/io/File;
    const/4 v0, 0x0

    #@9
    .line 115
    .local v0, "error":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 116
    iput-boolean v6, p0, Llibcore/net/url/FileURLConnection;->isDir:Z

    #@11
    .line 117
    invoke-direct {p0, v1}, Llibcore/net/url/FileURLConnection;->getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;

    #@14
    move-result-object v3

    #@15
    iput-object v3, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    #@17
    .line 119
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    #@1a
    move-result-wide v4

    #@1b
    iput-wide v4, p0, Llibcore/net/url/FileURLConnection;->lastModified:J

    #@1d
    .line 120
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@1f
    const-string/jumbo v4, "text/html"

    #@22
    aput-object v4, v3, v6

    #@24
    .line 137
    .end local v0    # "error":Ljava/io/IOException;
    :goto_0
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@26
    iget-wide v4, p0, Llibcore/net/url/FileURLConnection;->length:J

    #@28
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    const/4 v5, 0x3

    #@2d
    aput-object v4, v3, v5

    #@2f
    .line 138
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@31
    iget-wide v4, p0, Llibcore/net/url/FileURLConnection;->lastModified:J

    #@33
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    const/4 v5, 0x5

    #@38
    aput-object v4, v3, v5

    #@3a
    .line 140
    iput-boolean v6, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    #@3c
    .line 141
    if-eqz v0, :cond_2

    #@3e
    .line 142
    throw v0

    #@3f
    .line 123
    .restart local v0    # "error":Ljava/io/IOException;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    #@41
    new-instance v4, Ljava/io/FileInputStream;

    #@43
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@46
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@49
    iput-object v3, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 128
    .end local v0    # "error":Ljava/io/IOException;
    :goto_1
    if-nez v0, :cond_1

    #@4d
    .line 129
    invoke-virtual {v1}, Ljava/io/File;->length()J

    #@50
    move-result-wide v4

    #@51
    iput-wide v4, p0, Llibcore/net/url/FileURLConnection;->length:J

    #@53
    .line 130
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    #@56
    move-result-wide v4

    #@57
    iput-wide v4, p0, Llibcore/net/url/FileURLConnection;->lastModified:J

    #@59
    .line 131
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@5b
    invoke-direct {p0}, Llibcore/net/url/FileURLConnection;->getContentTypeForPlainFiles()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    aput-object v4, v3, v6

    #@61
    goto :goto_0

    #@62
    .line 124
    .restart local v0    # "error":Ljava/io/IOException;
    :catch_0
    move-exception v2

    #@63
    .line 125
    .local v2, "ioe":Ljava/io/IOException;
    move-object v0, v2

    #@64
    .local v0, "error":Ljava/io/IOException;
    goto :goto_1

    #@65
    .line 133
    .end local v0    # "error":Ljava/io/IOException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_1
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@67
    const-string/jumbo v4, "content/unknown"

    #@6a
    aput-object v4, v3, v6

    #@6c
    goto :goto_0

    #@6d
    .line 112
    :cond_2
    return-void
.end method

.method public getContentLength()I
    .locals 4

    #@0
    .prologue
    .line 222
    invoke-direct {p0}, Llibcore/net/url/FileURLConnection;->getContentLengthLong()J

    #@3
    move-result-wide v0

    #@4
    .line 223
    .local v0, "length":J
    const-wide/32 v2, 0x7fffffff

    #@7
    cmp-long v2, v0, v2

    #@9
    if-gtz v2, :cond_0

    #@b
    long-to-int v2, v0

    #@c
    :goto_0
    return v2

    #@d
    :cond_0
    const/4 v2, -0x1

    #@e
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 249
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Llibcore/net/url/FileURLConnection;->getHeaderField(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 184
    iget-boolean v1, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 186
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 192
    :cond_0
    if-ltz p1, :cond_1

    #@a
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@c
    array-length v1, v1

    #@d
    div-int/lit8 v1, v1, 0x2

    #@f
    if-le p1, v1, :cond_2

    #@11
    .line 193
    :cond_1
    return-object v2

    #@12
    .line 187
    :catch_0
    move-exception v0

    #@13
    .line 188
    .local v0, "ioe":Ljava/io/IOException;
    return-object v2

    #@14
    .line 196
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@16
    mul-int/lit8 v2, p1, 0x2

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    aget-object v1, v1, v2

    #@1c
    return-object v1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 148
    iget-boolean v2, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 150
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 156
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@b
    array-length v2, v2

    #@c
    if-ge v0, v2, :cond_2

    #@e
    .line 157
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@10
    aget-object v2, v2, v0

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 158
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@1a
    add-int/lit8 v3, v0, 0x1

    #@1c
    aget-object v2, v2, v3

    #@1e
    return-object v2

    #@1f
    .line 151
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    #@20
    .line 152
    .local v1, "ioe":Ljava/io/IOException;
    return-object v3

    #@21
    .line 156
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x2

    #@23
    goto :goto_0

    #@24
    .line 162
    :cond_2
    return-object v3
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 167
    iget-boolean v1, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 169
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 175
    :cond_0
    if-ltz p1, :cond_1

    #@a
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@c
    array-length v1, v1

    #@d
    div-int/lit8 v1, v1, 0x2

    #@f
    if-le p1, v1, :cond_2

    #@11
    .line 176
    :cond_1
    return-object v2

    #@12
    .line 170
    :catch_0
    move-exception v0

    #@13
    .line 171
    .local v0, "ioe":Ljava/io/IOException;
    return-object v2

    #@14
    .line 179
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@16
    mul-int/lit8 v2, p1, 0x2

    #@18
    aget-object v1, v1, v2

    #@1a
    return-object v1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 201
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerFields:Ljava/util/Map;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 202
    new-instance v0, Ljava/util/TreeMap;

    #@6
    sget-object v2, Llibcore/net/url/FileURLConnection;->HEADER_COMPARATOR:Ljava/util/Comparator;

    #@8
    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@b
    .line 204
    .local v0, "headerFieldsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@e
    array-length v2, v2

    #@f
    if-ge v1, v2, :cond_0

    #@11
    .line 205
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@13
    aget-object v2, v2, v1

    #@15
    .line 206
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    #@17
    add-int/lit8 v4, v1, 0x1

    #@19
    aget-object v3, v3, v4

    #@1b
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@1e
    move-result-object v3

    #@1f
    .line 205
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 204
    add-int/lit8 v1, v1, 0x2

    #@24
    goto :goto_0

    #@25
    .line 209
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Llibcore/net/url/FileURLConnection;->headerFields:Ljava/util/Map;

    #@2b
    .line 212
    .end local v0    # "headerFieldsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerFields:Ljava/util/Map;

    #@2d
    return-object v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    iget-boolean v0, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 308
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V

    #@7
    .line 310
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    #@9
    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x2f

    #@2
    .line 325
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    #@4
    if-nez v1, :cond_1

    #@6
    .line 326
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    #@8
    .line 327
    .local v0, "path":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 328
    sget-char v1, Ljava/io/File;->separatorChar:C

    #@e
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 330
    :cond_0
    new-instance v1, Ljava/io/FilePermission;

    #@14
    const-string/jumbo v2, "read"

    #@17
    invoke-direct {v1, v0, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    iput-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    #@1c
    .line 332
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    #@1e
    return-object v1
.end method
