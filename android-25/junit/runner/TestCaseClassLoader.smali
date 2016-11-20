.class public Ljunit/runner/TestCaseClassLoader;
.super Ljava/lang/ClassLoader;
.source "TestCaseClassLoader.java"


# static fields
.field static final EXCLUDED_FILE:Ljava/lang/String; = "excluded.properties"


# instance fields
.field private defaultExclusions:[Ljava/lang/String;

.field private fExcluded:Ljava/util/Vector;

.field private fPathItems:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "java.class.path"

    #@3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;-><init>(Ljava/lang/String;)V

    #@a
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "classPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    #@3
    .line 28
    const/4 v0, 0x3

    #@4
    new-array v0, v0, [Ljava/lang/String;

    #@6
    .line 29
    const-string/jumbo v1, "junit.framework."

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    .line 30
    const-string/jumbo v1, "junit.extensions."

    #@f
    const/4 v2, 0x1

    #@10
    aput-object v1, v0, v2

    #@12
    .line 31
    const-string/jumbo v1, "junit.runner."

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    .line 28
    iput-object v0, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    #@1a
    .line 51
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->scanPath(Ljava/lang/String;)V

    #@1d
    .line 52
    invoke-direct {p0}, Ljunit/runner/TestCaseClassLoader;->readExcludedPackages()V

    #@20
    .line 50
    return-void
.end method

.method private getClassData(Ljava/io/File;)[B
    .locals 6
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 142
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    .line 143
    .local v4, "stream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@7
    const/16 v5, 0x3e8

    #@9
    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@c
    .line 144
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x3e8

    #@e
    new-array v0, v5, [B

    #@10
    .line 146
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    #@13
    move-result v2

    #@14
    .local v2, "n":I
    const/4 v5, -0x1

    #@15
    if-eq v2, v5, :cond_0

    #@17
    .line 147
    const/4 v5, 0x0

    #@18
    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@1b
    goto :goto_0

    #@1c
    .line 152
    .end local v0    # "b":[B
    .end local v2    # "n":I
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    #@1d
    .line 154
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    #@1e
    return-object v5

    #@1f
    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "b":[B
    .restart local v2    # "n":I
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    #@22
    .line 149
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    #@25
    .line 150
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v5

    #@29
    return-object v5
.end method

.method private loadFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 134
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 135
    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;->getClassData(Ljava/io/File;)[B

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 137
    :cond_0
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method private loadJarData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 158
    const/4 v9, 0x0

    #@2
    .line 159
    .local v9, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v8, 0x0

    #@3
    .line 160
    .local v8, "stream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 161
    .local v0, "archive":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@b
    move-result v10

    #@c
    if-nez v10, :cond_0

    #@e
    .line 162
    return-object v12

    #@f
    .line 164
    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    #@11
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 168
    .local v9, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v9, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@17
    move-result-object v3

    #@18
    .line 169
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_1

    #@1a
    .line 170
    return-object v12

    #@1b
    .line 165
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v4

    #@1c
    .line 166
    .local v4, "io":Ljava/io/IOException;
    return-object v12

    #@1d
    .line 171
    .end local v4    # "io":Ljava/io/IOException;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    #@20
    move-result-wide v10

    #@21
    long-to-int v7, v10

    #@22
    .line 173
    .local v7, "size":I
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@25
    move-result-object v8

    #@26
    .line 174
    .local v8, "stream":Ljava/io/InputStream;
    new-array v1, v7, [B

    #@28
    .line 175
    .local v1, "data":[B
    const/4 v6, 0x0

    #@29
    .line 176
    .local v6, "pos":I
    :goto_0
    if-ge v6, v7, :cond_2

    #@2b
    .line 177
    array-length v10, v1

    #@2c
    sub-int/2addr v10, v6

    #@2d
    invoke-virtual {v8, v1, v6, v10}, Ljava/io/InputStream;->read([BII)I

    #@30
    move-result v5

    #@31
    .line 178
    .local v5, "n":I
    add-int/2addr v6, v5

    #@32
    goto :goto_0

    #@33
    .line 180
    .end local v5    # "n":I
    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 185
    if-eqz v8, :cond_3

    #@38
    .line 186
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@3b
    .line 181
    :cond_3
    :goto_1
    return-object v1

    #@3c
    .line 187
    :catch_1
    move-exception v2

    #@3d
    .local v2, "e":Ljava/io/IOException;
    goto :goto_1

    #@3e
    .line 182
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "pos":I
    .end local v8    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    #@3f
    .line 185
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v8, :cond_4

    #@41
    .line 186
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@44
    .line 190
    :cond_4
    :goto_2
    return-object v12

    #@45
    .line 187
    :catch_3
    move-exception v2

    #@46
    goto :goto_2

    #@47
    .line 183
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    #@48
    .line 185
    if-eqz v8, :cond_5

    #@4a
    .line 186
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@4d
    .line 183
    :cond_5
    :goto_3
    throw v10

    #@4e
    .line 187
    :catch_4
    move-exception v2

    #@4f
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method private lookupClassData(Ljava/lang/String;)[B
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    .line 112
    .local v0, "data":[B
    const/4 v2, 0x0

    #@2
    .end local v0    # "data":[B
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    #@4
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@7
    move-result v4

    #@8
    if-ge v2, v4, :cond_2

    #@a
    .line 113
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    #@c
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/String;

    #@12
    .line 114
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const/16 v5, 0x2e

    #@19
    const/16 v6, 0x2f

    #@1b
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    const-string/jumbo v5, ".class"

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 115
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljunit/runner/TestCaseClassLoader;->isJar(Ljava/lang/String;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_0

    #@34
    .line 116
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadJarData(Ljava/lang/String;Ljava/lang/String;)[B

    #@37
    move-result-object v0

    #@38
    .line 120
    .local v0, "data":[B
    :goto_1
    if-eqz v0, :cond_1

    #@3a
    .line 121
    return-object v0

    #@3b
    .line 118
    .end local v0    # "data":[B
    :cond_0
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadFileData(Ljava/lang/String;Ljava/lang/String;)[B

    #@3e
    move-result-object v0

    #@3f
    .restart local v0    # "data":[B
    goto :goto_1

    #@40
    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 123
    .end local v0    # "data":[B
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/ClassNotFoundException;

    #@45
    invoke-direct {v4, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    #@48
    throw v4
.end method

.method private readExcludedPackages()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 194
    new-instance v7, Ljava/util/Vector;

    #@3
    const/16 v8, 0xa

    #@5
    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    #@8
    iput-object v7, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    #@a
    .line 195
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    #@d
    array-length v7, v7

    #@e
    if-ge v2, v7, :cond_0

    #@10
    .line 196
    iget-object v7, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    #@12
    iget-object v8, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    #@14
    aget-object v8, v8, v2

    #@16
    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@19
    .line 195
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 198
    :cond_0
    invoke-virtual {p0}, Ljunit/runner/TestCaseClassLoader;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v7

    #@20
    const-string/jumbo v8, "excluded.properties"

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@26
    move-result-object v3

    #@27
    .line 199
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_1

    #@29
    .line 200
    return-void

    #@2a
    .line 201
    :cond_1
    new-instance v5, Ljava/util/Properties;

    #@2c
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    #@2f
    .line 203
    .local v5, "p":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v5, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 209
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    .line 213
    :goto_1
    invoke-virtual {v5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    #@38
    move-result-object v1

    #@39
    .local v1, "e":Ljava/util/Enumeration;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_4

    #@3f
    .line 214
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@42
    move-result-object v4

    #@43
    check-cast v4, Ljava/lang/String;

    #@45
    .line 215
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v7, "excluded."

    #@48
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_2

    #@4e
    .line 216
    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    .line 217
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    .line 218
    const-string/jumbo v7, "*"

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5c
    move-result v7

    #@5d
    if-eqz v7, :cond_3

    #@5f
    .line 219
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@62
    move-result v7

    #@63
    add-int/lit8 v7, v7, -0x1

    #@65
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    .line 220
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@6c
    move-result v7

    #@6d
    if-lez v7, :cond_2

    #@6f
    .line 221
    iget-object v7, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    #@71
    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@74
    goto :goto_2

    #@75
    .line 210
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@76
    .local v0, "e":Ljava/io/IOException;
    goto :goto_1

    #@77
    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@78
    .line 209
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@7b
    .line 206
    :goto_3
    return-void

    #@7c
    .line 210
    :catch_2
    move-exception v0

    #@7d
    goto :goto_3

    #@7e
    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@7f
    .line 209
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@82
    .line 207
    :goto_4
    throw v7

    #@83
    .line 210
    :catch_3
    move-exception v0

    #@84
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    #@85
    .line 193
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/util/Enumeration;
    :cond_4
    return-void
.end method

.method private scanPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "classPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    const-string/jumbo v2, "path.separator"

    #@3
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 57
    .local v0, "separator":Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    #@9
    const/16 v3, 0xa

    #@b
    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    #@e
    iput-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    #@10
    .line 58
    new-instance v1, Ljava/util/StringTokenizer;

    #@12
    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 59
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 60
    iget-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    #@1d
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@24
    goto :goto_0

    #@25
    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isExcluded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    #@3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 74
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 75
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 78
    :cond_1
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method isJar(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathEntry"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, ".jar"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 128
    const-string/jumbo v0, ".apk"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 127
    if-nez v0, :cond_0

    #@12
    .line 129
    const-string/jumbo v0, ".zip"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 127
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    .line 85
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 86
    return-object v0

    #@9
    .line 91
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->isExcluded(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 93
    :try_start_2
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12
    move-result-object v0

    #@13
    monitor-exit p0

    #@14
    .line 94
    return-object v0

    #@15
    .line 95
    :catch_0
    move-exception v2

    #@16
    .line 99
    :cond_1
    if-nez v0, :cond_3

    #@18
    .line 100
    :try_start_3
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->lookupClassData(Ljava/lang/String;)[B

    #@1b
    move-result-object v1

    #@1c
    .line 101
    .local v1, "data":[B
    if-nez v1, :cond_2

    #@1e
    .line 102
    new-instance v3, Ljava/lang/ClassNotFoundException;

    #@20
    invoke-direct {v3}, Ljava/lang/ClassNotFoundException;-><init>()V

    #@23
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "data":[B
    :catchall_0
    move-exception v3

    #@25
    monitor-exit p0

    #@26
    throw v3

    #@27
    .line 103
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "data":[B
    :cond_2
    :try_start_4
    array-length v3, v1

    #@28
    const/4 v4, 0x0

    #@29
    invoke-virtual {p0, p1, v1, v4, v3}, Ljunit/runner/TestCaseClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    #@2c
    move-result-object v0

    #@2d
    .line 105
    .end local v1    # "data":[B
    :cond_3
    if-eqz p2, :cond_4

    #@2f
    .line 106
    invoke-virtual {p0, v0}, Ljunit/runner/TestCaseClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@32
    :cond_4
    monitor-exit p0

    #@33
    .line 107
    return-object v0
.end method
