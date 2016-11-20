.class public Lsun/net/www/protocol/file/FileURLConnection;
.super Lsun/net/www/URLConnection;
.source "FileURLConnection.java"


# static fields
.field static CONTENT_LENGTH:Ljava/lang/String;

.field static CONTENT_TYPE:Ljava/lang/String;

.field static LAST_MODIFIED:Ljava/lang/String;

.field static TEXT_PLAIN:Ljava/lang/String;


# instance fields
.field contentType:Ljava/lang/String;

.field exists:Z

.field file:Ljava/io/File;

.field filename:Ljava/lang/String;

.field files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initializedHeaders:Z

.field is:Ljava/io/InputStream;

.field isDirectory:Z

.field lastModified:J

.field length:J

.field permission:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const-string/jumbo v0, "content-length"

    #@3
    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_LENGTH:Ljava/lang/String;

    #@5
    .line 51
    const-string/jumbo v0, "content-type"

    #@8
    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    #@a
    .line 52
    const-string/jumbo v0, "text/plain"

    #@d
    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->TEXT_PLAIN:Ljava/lang/String;

    #@f
    .line 53
    const-string/jumbo v0, "last-modified"

    #@12
    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->LAST_MODIFIED:Ljava/lang/String;

    #@14
    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/io/File;)V
    .locals 3
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 68
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    #@4
    .line 60
    iput-boolean v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    #@6
    .line 61
    iput-boolean v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z

    #@8
    .line 64
    const-wide/16 v0, -0x1

    #@a
    iput-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    #@c
    .line 65
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    #@10
    .line 106
    iput-boolean v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    #@12
    .line 69
    iput-object p2, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@14
    .line 67
    return-void
.end method

.method private initializeHeaders()V
    .locals 8

    #@0
    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/file/FileURLConnection;->connect()V

    #@3
    .line 111
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@8
    move-result v4

    #@9
    iput-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 114
    :goto_0
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    #@d
    if-eqz v4, :cond_0

    #@f
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 108
    :goto_1
    return-void

    #@14
    .line 115
    :cond_0
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@16
    invoke-virtual {v4}, Ljava/io/File;->length()J

    #@19
    move-result-wide v4

    #@1a
    iput-wide v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    #@1c
    .line 116
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@1e
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    #@21
    move-result-wide v4

    #@22
    iput-wide v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    #@24
    .line 118
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    #@26
    if-nez v4, :cond_3

    #@28
    .line 119
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    #@2b
    move-result-object v3

    #@2c
    .line 120
    .local v3, "map":Ljava/net/FileNameMap;
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    #@2e
    invoke-interface {v3, v4}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    #@34
    .line 121
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 122
    iget-object v4, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@3a
    sget-object v5, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    #@3c
    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    #@3e
    invoke-virtual {v4, v5, v6}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 124
    :cond_1
    iget-object v4, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@43
    sget-object v5, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_LENGTH:Ljava/lang/String;

    #@45
    iget-wide v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    #@47
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v4, v5, v6}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 131
    iget-wide v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    #@50
    const-wide/16 v6, 0x0

    #@52
    cmp-long v4, v4, v6

    #@54
    if-eqz v4, :cond_2

    #@56
    .line 132
    new-instance v0, Ljava/util/Date;

    #@58
    iget-wide v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    #@5a
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@5d
    .line 134
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@5f
    const-string/jumbo v4, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    #@62
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@64
    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@67
    .line 135
    .local v2, "fo":Ljava/text/SimpleDateFormat;
    const-string/jumbo v4, "GMT"

    #@6a
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@71
    .line 136
    iget-object v4, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@73
    sget-object v5, Lsun/net/www/protocol/file/FileURLConnection;->LAST_MODIFIED:Ljava/lang/String;

    #@75
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v4, v5, v6}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7c
    .line 141
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "fo":Ljava/text/SimpleDateFormat;
    .end local v3    # "map":Ljava/net/FileNameMap;
    :cond_2
    :goto_2
    const/4 v4, 0x1

    #@7d
    iput-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    #@7f
    goto :goto_1

    #@80
    .line 139
    :cond_3
    iget-object v4, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@82
    sget-object v5, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    #@84
    sget-object v6, Lsun/net/www/protocol/file/FileURLConnection;->TEXT_PLAIN:Ljava/lang/String;

    #@86
    invoke-virtual {v4, v5, v6}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@89
    goto :goto_2

    #@8a
    .line 112
    :catch_0
    move-exception v1

    #@8b
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    iget-boolean v4, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-nez v4, :cond_2

    #@4
    .line 81
    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@6
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    #@c
    .line 82
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@e
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    #@11
    move-result v4

    #@12
    iput-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    #@14
    .line 83
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    #@16
    if-eqz v4, :cond_3

    #@18
    .line 84
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@1a
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 85
    .local v1, "fileList":[Ljava/lang/String;
    if-nez v1, :cond_0

    #@20
    .line 86
    new-instance v4, Ljava/io/FileNotFoundException;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    const-string/jumbo v6, " exists, but is not accessible"

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 99
    .end local v1    # "fileList":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3d
    .line 100
    .local v0, "e":Ljava/io/IOException;
    throw v0

    #@3e
    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileList":[Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@41
    move-result-object v4

    #@42
    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@44
    .line 102
    .end local v1    # "fileList":[Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    #@45
    iput-boolean v4, p0, Ljava/net/URLConnection;->connected:Z

    #@47
    .line 78
    :cond_2
    return-void

    #@48
    .line 90
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    #@4a
    new-instance v5, Ljava/io/FileInputStream;

    #@4c
    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    #@4e
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@51
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@54
    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    #@56
    .line 93
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    #@59
    move-result-object v4

    #@5a
    iget-object v5, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@5c
    const-string/jumbo v6, "GET"

    #@5f
    invoke-virtual {v4, v5, v6}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    #@62
    move-result v2

    #@63
    .line 94
    .local v2, "meteredInput":Z
    if-eqz v2, :cond_1

    #@65
    .line 95
    new-instance v3, Lsun/net/ProgressSource;

    #@67
    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@69
    const-string/jumbo v5, "GET"

    #@6c
    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@6e
    invoke-virtual {v6}, Ljava/io/File;->length()J

    #@71
    move-result-wide v6

    #@72
    invoke-direct {v3, v4, v5, v6, v7}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    #@75
    .line 96
    .local v3, "pi":Lsun/net/ProgressSource;
    new-instance v4, Lsun/net/www/MeteredStream;

    #@77
    iget-object v5, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    #@79
    iget-object v6, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    #@7b
    invoke-virtual {v6}, Ljava/io/File;->length()J

    #@7e
    move-result-wide v6

    #@7f
    invoke-direct {v4, v5, v3, v6, v7}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    #@82
    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@84
    goto :goto_0
.end method

.method public getContentLength()I
    .locals 4

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    #@3
    .line 157
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    #@5
    const-wide/32 v2, 0x7fffffff

    #@8
    cmp-long v0, v0, v2

    #@a
    if-lez v0, :cond_0

    #@c
    .line 158
    const/4 v0, -0x1

    #@d
    return v0

    #@e
    .line 159
    :cond_0
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    #@10
    long-to-int v0, v0

    #@11
    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    #@3
    .line 164
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    #@5
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    #@3
    .line 152
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderField(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    #@3
    .line 147
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    #@3
    .line 169
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 188
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/file/FileURLConnection;->connect()V

    #@4
    .line 190
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    #@6
    if-nez v4, :cond_2

    #@8
    .line 191
    iget-boolean v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    #@a
    if-eqz v4, :cond_3

    #@c
    .line 192
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    #@f
    move-result-object v3

    #@10
    .line 194
    .local v3, "map":Ljava/net/FileNameMap;
    new-instance v0, Ljava/lang/StringBuffer;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@15
    .line 196
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    #@17
    if-nez v4, :cond_0

    #@19
    .line 197
    new-instance v4, Ljava/io/FileNotFoundException;

    #@1b
    iget-object v5, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    #@1d
    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "map":Ljava/net/FileNameMap;
    :catchall_0
    move-exception v4

    #@22
    monitor-exit p0

    #@23
    throw v4

    #@24
    .line 200
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v3    # "map":Ljava/net/FileNameMap;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    #@26
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@29
    move-result-object v5

    #@2a
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@2d
    .line 202
    const/4 v2, 0x0

    #@2e
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    #@30
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@33
    move-result v4

    #@34
    if-ge v2, v4, :cond_1

    #@36
    .line 203
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    #@38
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Ljava/lang/String;

    #@3e
    .line 204
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    .line 205
    const-string/jumbo v4, "\n"

    #@44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    .line 202
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 208
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@53
    move-result-object v5

    #@54
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@57
    iput-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    #@59
    .line 213
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "map":Ljava/net/FileNameMap;
    :cond_2
    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    monitor-exit p0

    #@5c
    return-object v4

    #@5d
    .line 210
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/FileNotFoundException;

    #@5f
    iget-object v5, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    #@61
    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@64
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getLastModified()J
    .locals 2

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    #@3
    .line 179
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    #@5
    return-wide v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x2f

    #@2
    .line 222
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 223
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@8
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 224
    .local v0, "decodedPath":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    #@12
    if-ne v1, v3, :cond_1

    #@14
    .line 225
    new-instance v1, Ljava/io/FilePermission;

    #@16
    const-string/jumbo v2, "read"

    #@19
    invoke-direct {v1, v0, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    #@1e
    .line 231
    .end local v0    # "decodedPath":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    #@20
    return-object v1

    #@21
    .line 227
    .restart local v0    # "decodedPath":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/FilePermission;

    #@23
    .line 228
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@25
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, "read"

    #@2c
    .line 227
    invoke-direct {v1, v2, v3}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    #@31
    goto :goto_0
.end method

.method public getProperties()Lsun/net/www/MessageHeader;
    .locals 1

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    #@3
    .line 174
    invoke-super {p0}, Lsun/net/www/URLConnection;->getProperties()Lsun/net/www/MessageHeader;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
