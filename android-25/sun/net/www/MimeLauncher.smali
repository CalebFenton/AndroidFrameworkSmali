.class Lsun/net/www/MimeLauncher;
.super Ljava/lang/Thread;
.source "MimeLauncher.java"


# instance fields
.field execPath:Ljava/lang/String;

.field genericTempFileTemplate:Ljava/lang/String;

.field is:Ljava/io/InputStream;

.field m:Lsun/net/www/MimeEntry;

.field uc:Ljava/net/URLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/MimeEntry;Ljava/net/URLConnection;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "M"    # Lsun/net/www/MimeEntry;
    .param p2, "uc"    # Ljava/net/URLConnection;
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "tempFileTemplate"    # Ljava/lang/String;
    .param p5, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/www/ApplicationLaunchException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p5}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@3
    .line 41
    iput-object p1, p0, Lsun/net/www/MimeLauncher;->m:Lsun/net/www/MimeEntry;

    #@5
    .line 42
    iput-object p2, p0, Lsun/net/www/MimeLauncher;->uc:Ljava/net/URLConnection;

    #@7
    .line 43
    iput-object p3, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    #@9
    .line 44
    iput-object p4, p0, Lsun/net/www/MimeLauncher;->genericTempFileTemplate:Ljava/lang/String;

    #@b
    .line 47
    iget-object v3, p0, Lsun/net/www/MimeLauncher;->m:Lsun/net/www/MimeEntry;

    #@d
    invoke-virtual {v3}, Lsun/net/www/MimeEntry;->getLaunchString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 52
    .local v2, "launchString":Ljava/lang/String;
    invoke-direct {p0, v2}, Lsun/net/www/MimeLauncher;->findExecutablePath(Ljava/lang/String;)Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 55
    const/16 v3, 0x20

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v1

    #@1d
    .line 56
    .local v1, "index":I
    const/4 v3, -0x1

    #@1e
    if-eq v1, v3, :cond_0

    #@20
    .line 57
    const/4 v3, 0x0

    #@21
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 62
    .local v0, "appName":Ljava/lang/String;
    :goto_0
    new-instance v3, Lsun/net/www/ApplicationLaunchException;

    #@27
    invoke-direct {v3, v0}, Lsun/net/www/ApplicationLaunchException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 60
    .end local v0    # "appName":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    #@2c
    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 39
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method private findExecutablePath(Ljava/lang/String;)Z
    .locals 11
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 164
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v7

    #@8
    if-nez v7, :cond_1

    #@a
    .line 165
    :cond_0
    return v9

    #@b
    .line 169
    :cond_1
    const/16 v7, 0x20

    #@d
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v4

    #@11
    .line 170
    .local v4, "index":I
    const/4 v7, -0x1

    #@12
    if-eq v4, v7, :cond_2

    #@14
    .line 171
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 177
    .local v0, "command":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    #@1a
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1d
    .line 178
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_3

    #@23
    .line 180
    iput-object p1, p0, Lsun/net/www/MimeLauncher;->execPath:Ljava/lang/String;

    #@25
    .line 181
    return v10

    #@26
    .line 174
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    move-object v0, p1

    #@27
    .restart local v0    # "command":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 186
    .restart local v2    # "f":Ljava/io/File;
    :cond_3
    new-instance v7, Lsun/security/action/GetPropertyAction;

    #@2a
    const-string/jumbo v8, "exec.path"

    #@2d
    invoke-direct {v7, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@30
    .line 185
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Ljava/lang/String;

    #@36
    .line 187
    .local v1, "execPathList":Ljava/lang/String;
    if-nez v1, :cond_4

    #@38
    .line 189
    return v9

    #@39
    .line 192
    :cond_4
    new-instance v5, Ljava/util/StringTokenizer;

    #@3b
    const-string/jumbo v7, "|"

    #@3e
    invoke-direct {v5, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 193
    .local v5, "iter":Ljava/util/StringTokenizer;
    :cond_5
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    #@44
    move-result v7

    #@45
    if-eqz v7, :cond_6

    #@47
    .line 194
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Ljava/lang/String;

    #@4d
    .line 195
    .local v6, "prefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    #@58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 196
    .local v3, "fullCmd":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@66
    .end local v2    # "f":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@69
    .line 197
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    #@6c
    move-result v7

    #@6d
    if-eqz v7, :cond_5

    #@6f
    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v7

    #@78
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    #@7a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v7

    #@86
    iput-object v7, p0, Lsun/net/www/MimeLauncher;->execPath:Ljava/lang/String;

    #@88
    .line 199
    return v10

    #@89
    .line 203
    .end local v3    # "fullCmd":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_6
    return v9
.end method


# virtual methods
.method protected getTempFileName(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    move-object/from16 v8, p2

    #@2
    .line 73
    .local v8, "tempFilename":Ljava/lang/String;
    const-string/jumbo v12, "%s"

    #@5
    move-object/from16 v0, p2

    #@7
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@a
    move-result v9

    #@b
    .line 74
    .local v9, "wildcard":I
    const/4 v12, 0x0

    #@c
    move-object/from16 v0, p2

    #@e
    invoke-virtual {v0, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 76
    .local v6, "prefix":Ljava/lang/String;
    const-string/jumbo v7, ""

    #@15
    .line 77
    .local v7, "suffix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@18
    move-result v12

    #@19
    add-int/lit8 v12, v12, -0x2

    #@1b
    if-ge v9, v12, :cond_0

    #@1d
    .line 78
    add-int/lit8 v12, v9, 0x2

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@28
    move-result-wide v12

    #@29
    const-wide/16 v14, 0x3e8

    #@2b
    div-long v10, v12, v14

    #@2d
    .line 82
    .local v10, "timestamp":J
    const/4 v2, 0x0

    #@2e
    .line 83
    .local v2, "argIndex":I
    :goto_0
    const-string/jumbo v12, "%s"

    #@31
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@34
    move-result v2

    #@35
    if-ltz v2, :cond_1

    #@37
    .line 84
    new-instance v12, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const/4 v13, 0x0

    #@3d
    invoke-virtual {v6, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v13

    #@41
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v12

    #@45
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@48
    move-result-object v12

    #@49
    .line 86
    add-int/lit8 v13, v2, 0x2

    #@4b
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4e
    move-result-object v13

    #@4f
    .line 84
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v12

    #@53
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    goto :goto_0

    #@58
    .line 90
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 92
    .local v5, "filename":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@5f
    .line 93
    .local v4, "extension":Ljava/lang/String;
    const/16 v12, 0x2e

    #@61
    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(I)I

    #@64
    move-result v3

    #@65
    .line 97
    .local v3, "dot":I
    if-ltz v3, :cond_2

    #@67
    const/16 v12, 0x2f

    #@69
    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(I)I

    #@6c
    move-result v12

    #@6d
    if-le v3, v12, :cond_2

    #@6f
    .line 98
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    .line 101
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v13, "HJ"

    #@7b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v12

    #@7f
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->hashCode()I

    #@82
    move-result v13

    #@83
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v12

    #@87
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    .line 103
    new-instance v12, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v12

    #@94
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v12

    #@98
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v12

    #@9c
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v12

    #@a0
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v12

    #@a4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v8

    #@a8
    .line 105
    return-object v8
.end method

.method public run()V
    .locals 10

    #@0
    .prologue
    .line 110
    :try_start_0
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->m:Lsun/net/www/MimeEntry;

    #@2
    invoke-virtual {v8}, Lsun/net/www/MimeEntry;->getTempFileTemplate()Ljava/lang/String;

    #@5
    move-result-object v5

    #@6
    .line 111
    .local v5, "ofn":Ljava/lang/String;
    if-nez v5, :cond_0

    #@8
    .line 112
    iget-object v5, p0, Lsun/net/www/MimeLauncher;->genericTempFileTemplate:Ljava/lang/String;

    #@a
    .line 115
    :cond_0
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->uc:Ljava/net/URLConnection;

    #@c
    invoke-virtual {v8}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {p0, v8, v5}, Lsun/net/www/MimeLauncher;->getTempFileName(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@13
    move-result-object v5

    #@14
    .line 117
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    #@16
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@19
    .line 118
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v8, 0x800

    #@1b
    new-array v0, v8, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1d
    .line 119
    .local v0, "buf":[B
    const/4 v3, 0x0

    #@1e
    .line 121
    .local v3, "i":I
    :goto_0
    :try_start_2
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    #@20
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    #@23
    move-result v3

    #@24
    if-ltz v3, :cond_1

    #@26
    .line 122
    const/4 v8, 0x0

    #@27
    invoke-virtual {v6, v0, v8, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 124
    :catch_0
    move-exception v2

    #@2c
    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    #@2f
    .line 129
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    #@31
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@34
    .line 136
    .end local v0    # "buf":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/OutputStream;
    :goto_1
    const/4 v4, 0x0

    #@35
    .line 137
    .local v4, "inx":I
    :try_start_4
    iget-object v1, p0, Lsun/net/www/MimeLauncher;->execPath:Ljava/lang/String;

    #@37
    .line 138
    .local v1, "c":Ljava/lang/String;
    :goto_2
    const-string/jumbo v8, "%t"

    #@3a
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3d
    move-result v4

    #@3e
    if-ltz v4, :cond_2

    #@40
    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const/4 v9, 0x0

    #@46
    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v8

    #@4e
    iget-object v9, p0, Lsun/net/www/MimeLauncher;->uc:Ljava/net/URLConnection;

    #@50
    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    .line 140
    add-int/lit8 v9, v4, 0x2

    #@5a
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@65
    move-result-object v1

    #@66
    goto :goto_2

    #@67
    .line 128
    .end local v1    # "c":Ljava/lang/String;
    .end local v4    # "inx":I
    .restart local v0    # "buf":[B
    .restart local v3    # "i":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    #@6a
    .line 129
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    #@6c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    #@6f
    goto :goto_1

    #@70
    .line 131
    .end local v0    # "buf":[B
    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    #@71
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@72
    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v3    # "i":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v8

    #@73
    .line 128
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    #@76
    .line 129
    iget-object v9, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    #@78
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    #@7b
    .line 127
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@7c
    .line 143
    .end local v0    # "buf":[B
    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v1    # "c":Ljava/lang/String;
    .restart local v4    # "inx":I
    :cond_2
    const/4 v7, 0x0

    #@7d
    .line 144
    .local v7, "substituted":Z
    :goto_3
    :try_start_6
    const-string/jumbo v8, "%s"

    #@80
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@83
    move-result v4

    #@84
    if-ltz v4, :cond_3

    #@86
    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const/4 v9, 0x0

    #@8c
    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8f
    move-result-object v9

    #@90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v8

    #@98
    add-int/lit8 v9, v4, 0x2

    #@9a
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v1

    #@a6
    .line 146
    const/4 v7, 0x1

    #@a7
    goto :goto_3

    #@a8
    .line 148
    :cond_3
    if-nez v7, :cond_4

    #@aa
    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    const-string/jumbo v9, " <"

    #@b6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v8

    #@be
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v1

    #@c2
    .line 153
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@c5
    move-result-object v8

    #@c6
    invoke-virtual {v8, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@c9
    .line 108
    .end local v1    # "c":Ljava/lang/String;
    .end local v4    # "inx":I
    .end local v5    # "ofn":Ljava/lang/String;
    .end local v7    # "substituted":Z
    :goto_4
    return-void

    #@ca
    .line 154
    :catch_2
    move-exception v2

    #@cb
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4
.end method
