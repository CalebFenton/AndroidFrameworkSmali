.class public Lsun/net/www/protocol/file/FileURLConnection;
.super Lsun/net/www/URLConnection;
.source "FileURLConnection.java"


# static fields
.field static blacklist CONTENT_LENGTH:Ljava/lang/String;

.field static blacklist CONTENT_TYPE:Ljava/lang/String;

.field static blacklist LAST_MODIFIED:Ljava/lang/String;

.field static blacklist TEXT_PLAIN:Ljava/lang/String;


# instance fields
.field blacklist contentType:Ljava/lang/String;

.field blacklist exists:Z

.field blacklist file:Ljava/io/File;

.field blacklist filename:Ljava/lang/String;

.field blacklist files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist initializedHeaders:Z

.field blacklist is:Ljava/io/InputStream;

.field blacklist isDirectory:Z

.field blacklist lastModified:J

.field blacklist length:J

.field blacklist permission:Ljava/security/Permission;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-string v0, "content-length"

    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_LENGTH:Ljava/lang/String;

    .line 51
    const-string v0, "content-type"

    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    .line 52
    const-string v0, "text/plain"

    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->TEXT_PLAIN:Ljava/lang/String;

    .line 53
    const-string v0, "last-modified"

    sput-object v0, Lsun/net/www/protocol/file/FileURLConnection;->LAST_MODIFIED:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/net/URL;Ljava/io/File;)V
    .registers 6
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    .line 68
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    .line 61
    iput-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z

    .line 64
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    .line 65
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    .line 106
    iput-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    .line 69
    iput-object p2, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    .line 70
    return-void
.end method

.method private blacklist initializeHeaders()V
    .registers 7

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/file/FileURLConnection;->connect()V

    .line 111
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 113
    goto :goto_d

    .line 112
    :catch_c
    move-exception v0

    .line 114
    :goto_d
    iget-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->exists:Z

    if-nez v0, :cond_88

    .line 115
    :cond_15
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    .line 116
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    .line 118
    iget-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    if-nez v0, :cond_7c

    .line 119
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    .line 120
    .local v0, "map":Ljava/net/FileNameMap;
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 122
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->properties:Lsun/net/www/MessageHeader;

    sget-object v2, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_42
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->properties:Lsun/net/www/MessageHeader;

    sget-object v2, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_LENGTH:Ljava/lang/String;

    iget-wide v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-wide v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7b

    .line 132
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 133
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 135
    .local v2, "fo":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 136
    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->properties:Lsun/net/www/MessageHeader;

    sget-object v4, Lsun/net/www/protocol/file/FileURLConnection;->LAST_MODIFIED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v0    # "map":Ljava/net/FileNameMap;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "fo":Ljava/text/SimpleDateFormat;
    :cond_7b
    goto :goto_85

    .line 139
    :cond_7c
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->properties:Lsun/net/www/MessageHeader;

    sget-object v1, Lsun/net/www/protocol/file/FileURLConnection;->CONTENT_TYPE:Ljava/lang/String;

    sget-object v2, Lsun/net/www/protocol/file/FileURLConnection;->TEXT_PLAIN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->initializedHeaders:Z

    .line 143
    :cond_88
    return-void
.end method


# virtual methods
.method public whitelist test-api connect()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "GET"

    iget-boolean v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v1, :cond_81

    .line 81
    :try_start_6
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    .line 83
    iget-boolean v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    if-eqz v1, :cond_44

    .line 84
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "fileList":[Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 87
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    .line 88
    .end local v0    # "fileList":[Ljava/lang/String;
    goto :goto_7a

    .line 86
    .restart local v0    # "fileList":[Ljava/lang/String;
    :cond_29
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists, but is not accessible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/net/www/protocol/file/FileURLConnection;
    throw v1

    .line 90
    .end local v0    # "fileList":[Ljava/lang/String;
    .restart local p0    # "this":Lsun/net/www/protocol/file/FileURLConnection;
    :cond_44
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    .line 93
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1, v2, v0}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v1

    .line 94
    .local v1, "meteredInput":Z
    if-eqz v1, :cond_7a

    .line 95
    new-instance v2, Lsun/net/ProgressSource;

    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->url:Ljava/net/URL;

    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v2, v3, v0, v4, v5}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    .line 96
    .local v2, "pi":Lsun/net/ProgressSource;
    new-instance v0, Lsun/net/www/MeteredStream;

    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lsun/net/www/protocol/file/FileURLConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v0, v3, v2, v4, v5}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    iput-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_7a} :catch_7f

    .line 101
    .end local v1    # "meteredInput":Z
    .end local v2    # "pi":Lsun/net/ProgressSource;
    :cond_7a
    :goto_7a
    nop

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->connected:Z

    goto :goto_81

    .line 99
    :catch_7f
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :cond_81
    :goto_81
    return-void
.end method

.method public whitelist test-api getContentLength()I
    .registers 5

    .line 156
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 157
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 158
    const/4 v0, -0x1

    return v0

    .line 159
    :cond_e
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getContentLengthLong()J
    .registers 3

    .line 163
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 164
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->length:J

    return-wide v0
.end method

.method public whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .line 151
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 152
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 147
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .line 168
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 169
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 188
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/protocol/file/FileURLConnection;->connect()V

    .line 190
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    if-nez v0, :cond_5f

    .line 191
    iget-boolean v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->isDirectory:Z

    if-eqz v0, :cond_57

    .line 192
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    .line 194
    .local v0, "map":Ljava/net/FileNameMap;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    if-eqz v2, :cond_4f

    .line 200
    iget-object v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 203
    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->files:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    nop

    .end local v3    # "fileName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 208
    .end local v2    # "i":I
    .end local p0    # "this":Lsun/net/www/protocol/file/FileURLConnection;
    :cond_3f
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    .line 209
    .end local v0    # "map":Ljava/net/FileNameMap;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    goto :goto_5f

    .line 197
    .restart local v0    # "map":Ljava/net/FileNameMap;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    :cond_4f
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    .end local v0    # "map":Ljava/net/FileNameMap;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :cond_57
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    monitor-exit p0

    return-object v0

    .line 187
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0
.end method

.method public whitelist test-api getLastModified()J
    .registers 3

    .line 178
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 179
    iget-wide v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->lastModified:J

    return-wide v0
.end method

.method public whitelist test-api getPermission()Ljava/security/Permission;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    if-nez v0, :cond_2b

    .line 223
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "decodedPath":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    const-string v2, "read"

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_1e

    .line 225
    new-instance v1, Ljava/io/FilePermission;

    invoke-direct {v1, v0, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    goto :goto_2b

    .line 227
    :cond_1e
    new-instance v1, Ljava/io/FilePermission;

    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 228
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    .line 231
    .end local v0    # "decodedPath":Ljava/lang/String;
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lsun/net/www/protocol/file/FileURLConnection;->permission:Ljava/security/Permission;

    return-object v0
.end method

.method public blacklist getProperties()Lsun/net/www/MessageHeader;
    .registers 2

    .line 173
    invoke-direct {p0}, Lsun/net/www/protocol/file/FileURLConnection;->initializeHeaders()V

    .line 174
    invoke-super {p0}, Lsun/net/www/URLConnection;->getProperties()Lsun/net/www/MessageHeader;

    move-result-object v0

    return-object v0
.end method
