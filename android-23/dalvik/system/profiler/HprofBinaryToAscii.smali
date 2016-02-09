.class public final Ldalvik/system/profiler/HprofBinaryToAscii;
.super Ljava/lang/Object;
.source "HprofBinaryToAscii.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    #@0
    .prologue
    .line 149
    if-eqz p0, :cond_0

    #@2
    .line 151
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 148
    :cond_0
    :goto_0
    return-void

    #@6
    .line 152
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static convert([Ljava/lang/String;)Z
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 50
    array-length v3, p0

    #@2
    const/4 v4, 0x1

    #@3
    if-eq v3, v4, :cond_0

    #@5
    .line 51
    const-string/jumbo v3, "binary hprof file argument expected"

    #@8
    invoke-static {v3}, Ldalvik/system/profiler/HprofBinaryToAscii;->usage(Ljava/lang/String;)V

    #@b
    .line 52
    return v6

    #@c
    .line 54
    :cond_0
    new-instance v1, Ljava/io/File;

    #@e
    aget-object v3, p0, v6

    #@10
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@13
    .line 55
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_1

    #@19
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "file "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, " does not exist"

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {v3}, Ldalvik/system/profiler/HprofBinaryToAscii;->usage(Ljava/lang/String;)V

    #@37
    .line 57
    return v6

    #@38
    .line 60
    :cond_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->startsWithMagic(Ljava/io/File;)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_2

    #@3e
    .line 63
    :try_start_0
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->readHprof(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result-object v2

    #@42
    .line 69
    .local v2, "hprofData":Ldalvik/system/profiler/HprofData;
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->write(Ldalvik/system/profiler/HprofData;)Z

    #@45
    move-result v3

    #@46
    return v3

    #@47
    .line 64
    .end local v2    # "hprofData":Ldalvik/system/profiler/HprofData;
    :catch_0
    move-exception v0

    #@48
    .line 65
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4a
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v5, "Problem reading binary hprof data from "

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    .line 66
    const-string/jumbo v5, ": "

    #@5d
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 67
    return v6

    #@71
    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->readSnapshot(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@74
    move-result-object v2

    #@75
    .line 80
    .restart local v2    # "hprofData":Ldalvik/system/profiler/HprofData;
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->write(Ldalvik/system/profiler/HprofData;)Z

    #@78
    move-result v3

    #@79
    return v3

    #@7a
    .line 75
    .end local v2    # "hprofData":Ldalvik/system/profiler/HprofData;
    :catch_1
    move-exception v0

    #@7b
    .line 76
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7d
    new-instance v4, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v5, "Problem reading snapshot containing binary hprof data from "

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    .line 77
    const-string/jumbo v5, ": "

    #@90
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a3
    .line 78
    return v6
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-static {p0}, Ldalvik/system/profiler/HprofBinaryToAscii;->convert([Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@a
    .line 40
    return-void

    #@b
    .line 41
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private static read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    new-instance v0, Ldalvik/system/profiler/BinaryHprofReader;

    #@2
    invoke-direct {v0, p0}, Ldalvik/system/profiler/BinaryHprofReader;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 139
    .local v0, "reader":Ldalvik/system/profiler/BinaryHprofReader;
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Ldalvik/system/profiler/BinaryHprofReader;->setStrict(Z)V

    #@9
    .line 140
    invoke-virtual {v0}, Ldalvik/system/profiler/BinaryHprofReader;->read()V

    #@c
    .line 141
    invoke-virtual {v0}, Ldalvik/system/profiler/BinaryHprofReader;->getHprofData()Ldalvik/system/profiler/HprofData;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private static readHprof(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    .line 106
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    #@3
    new-instance v2, Ljava/io/FileInputStream;

    #@5
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@8
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 107
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@e
    .end local v0    # "inputStream":Ljava/io/InputStream;
    move-result-object v2

    #@f
    .line 109
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    #@12
    .line 107
    return-object v2

    #@13
    .line 108
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    #@14
    .line 109
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-static {v0}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    #@17
    .line 108
    throw v2

    #@18
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    #@19
    move-object v0, v1

    #@1a
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v0, "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static readSnapshot(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    .line 118
    const/4 v1, 0x0

    #@3
    .line 120
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    #@5
    new-instance v3, Ljava/io/FileInputStream;

    #@7
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@a
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 122
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@10
    move-result v0

    #@11
    .local v0, "ch":I
    const/4 v3, -0x1

    #@12
    if-eq v0, v3, :cond_1

    #@14
    .line 123
    if-ne v0, v4, :cond_0

    #@16
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@19
    move-result v3

    #@1a
    if-ne v3, v4, :cond_0

    #@1c
    .line 124
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-object v3

    #@20
    .line 129
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    #@23
    .line 124
    return-object v3

    #@24
    .line 127
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/EOFException;

    #@26
    const-string/jumbo v4, "Could not find expected header"

    #@29
    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    .line 128
    .end local v0    # "ch":I
    :catchall_0
    move-exception v3

    #@2e
    move-object v1, v2

    #@2f
    .line 129
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    #@32
    .line 128
    throw v3

    #@33
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    #@34
    goto :goto_0
.end method

.method private static startsWithMagic(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 89
    const/4 v1, 0x0

    #@2
    .line 91
    .local v1, "inputStream":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    #@4
    new-instance v4, Ljava/io/BufferedInputStream;

    #@6
    new-instance v5, Ljava/io/FileInputStream;

    #@8
    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@b
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@e
    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 92
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    invoke-static {v2}, Ldalvik/system/profiler/BinaryHprof;->readMagic(Ljava/io/DataInputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    move-result-object v4

    #@15
    if-eqz v4, :cond_0

    #@17
    const/4 v3, 0x1

    #@18
    .line 96
    :cond_0
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    #@1b
    .line 92
    return v3

    #@1c
    .line 93
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    #@1d
    .line 96
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    #@20
    .line 94
    return v3

    #@21
    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v3

    #@22
    .line 96
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    :goto_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    #@25
    .line 95
    throw v3

    #@26
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v3

    #@27
    move-object v1, v2

    #@28
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .local v1, "inputStream":Ljava/io/DataInputStream;
    goto :goto_1

    #@29
    .line 93
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_1
    move-exception v0

    #@2a
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@2b
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "ERROR: "

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8
    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d
    .line 177
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@12
    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    const-string/jumbo v1, "usage: HprofBinaryToAscii <binary-hprof-file>"

    #@17
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 179
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@1f
    .line 180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v1, "Reads a binary hprof file and print it in ASCII format"

    #@24
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 174
    return-void
.end method

.method private static write(Ldalvik/system/profiler/HprofData;)Z
    .locals 4
    .param p0, "hprofData"    # Ldalvik/system/profiler/HprofData;

    #@0
    .prologue
    .line 163
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-static {p0, v1}, Ldalvik/system/profiler/AsciiHprofWriter;->write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 168
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 164
    :catch_0
    move-exception v0

    #@8
    .line 165
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Problem writing ASCII hprof data: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@25
    .line 166
    const/4 v1, 0x0

    #@26
    return v1
.end method
