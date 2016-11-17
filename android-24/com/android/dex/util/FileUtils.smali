.class public final Lcom/android/dex/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static hasArchiveSuffix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, ".zip"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 94
    const-string/jumbo v0, ".jar"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 93
    if-nez v0, :cond_0

    #@12
    .line 95
    const-string/jumbo v0, ".apk"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 93
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 11
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3
    move-result v8

    #@4
    if-nez v8, :cond_0

    #@6
    .line 51
    new-instance v8, Ljava/lang/RuntimeException;

    #@8
    new-instance v9, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v9

    #@11
    const-string/jumbo v10, ": file not found"

    #@14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v8

    #@20
    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@23
    move-result v8

    #@24
    if-nez v8, :cond_1

    #@26
    .line 55
    new-instance v8, Ljava/lang/RuntimeException;

    #@28
    new-instance v9, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v9

    #@31
    const-string/jumbo v10, ": not a file"

    #@34
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v9

    #@3c
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v8

    #@40
    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    #@43
    move-result v8

    #@44
    if-nez v8, :cond_2

    #@46
    .line 59
    new-instance v8, Ljava/lang/RuntimeException;

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    const-string/jumbo v10, ": file not readable"

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v8

    #@60
    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    #@63
    move-result-wide v6

    #@64
    .line 63
    .local v6, "longLength":J
    long-to-int v4, v6

    #@65
    .line 64
    .local v4, "length":I
    int-to-long v8, v4

    #@66
    cmp-long v8, v8, v6

    #@68
    if-eqz v8, :cond_3

    #@6a
    .line 65
    new-instance v8, Ljava/lang/RuntimeException;

    #@6c
    new-instance v9, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    const-string/jumbo v10, ": file too long"

    #@78
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@83
    throw v8

    #@84
    .line 68
    :cond_3
    new-array v5, v4, [B

    #@86
    .line 71
    .local v5, "result":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@88
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@8b
    .line 72
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    #@8c
    .line 73
    .local v1, "at":I
    :goto_0
    if-lez v4, :cond_5

    #@8e
    .line 74
    invoke-virtual {v3, v5, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@91
    move-result v0

    #@92
    .line 75
    .local v0, "amt":I
    const/4 v8, -0x1

    #@93
    if-ne v0, v8, :cond_4

    #@95
    .line 76
    new-instance v8, Ljava/lang/RuntimeException;

    #@97
    new-instance v9, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    const-string/jumbo v10, ": unexpected EOF"

    #@a3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v9

    #@ab
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@af
    .line 82
    .end local v0    # "amt":I
    .end local v1    # "at":I
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    #@b0
    .line 83
    .local v2, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@b2
    new-instance v9, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v9

    #@bb
    const-string/jumbo v10, ": trouble reading"

    #@be
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v9

    #@c2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v9

    #@c6
    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c9
    throw v8

    #@ca
    .line 78
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "amt":I
    .restart local v1    # "at":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_4
    add-int/2addr v1, v0

    #@cb
    .line 79
    sub-int/2addr v4, v0

    #@cc
    goto :goto_0

    #@cd
    .line 81
    .end local v0    # "amt":I
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@d0
    .line 86
    return-object v5
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 39
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/android/dex/util/FileUtils;->readFile(Ljava/io/File;)[B

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method
