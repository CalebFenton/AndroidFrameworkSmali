.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field private static final TAG:Ljava/lang/String; = "ScriptC"

.field static mCachePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 39
    int-to-long v0, p1

    #@1
    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    #@4
    .line 38
    return-void
.end method

.method protected constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 60
    invoke-direct {p0, v2, v3, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    #@5
    .line 61
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    #@8
    move-result-wide v0

    #@9
    .line 62
    .local v0, "id":J
    cmp-long v2, v0, v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 63
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@f
    const-string/jumbo v3, "Loading of ScriptC script failed."

    #@12
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 65
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptC;->setID(J)V

    #@19
    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "bitcode32"    # [B
    .param p4, "bitcode64"    # [B

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 74
    invoke-direct {p0, v4, v5, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    #@5
    .line 75
    const-wide/16 v0, 0x0

    #@7
    .line 76
    .local v0, "id":J
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    #@9
    const/4 v3, 0x4

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 77
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    #@f
    move-result-wide v0

    #@10
    .line 81
    :goto_0
    cmp-long v2, v0, v4

    #@12
    if-nez v2, :cond_1

    #@14
    .line 82
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@16
    const-string/jumbo v3, "Loading of ScriptC script failed."

    #@19
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 79
    :cond_0
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    #@20
    move-result-wide v0

    #@21
    goto :goto_0

    #@22
    .line 84
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptC;->setID(J)V

    #@25
    .line 73
    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    #@0
    .prologue
    const-class v10, Landroid/renderscript/ScriptC;

    #@2
    monitor-enter v10

    #@3
    .line 97
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    move-result-object v5

    #@7
    .line 100
    .local v5, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    #@9
    :try_start_1
    new-array v6, v9, [B

    #@b
    .line 101
    .local v6, "pgm":[B
    const/4 v7, 0x0

    #@c
    .line 103
    .local v7, "pgmLength":I
    :goto_0
    array-length v9, v6

    #@d
    sub-int v1, v9, v7

    #@f
    .line 104
    .local v1, "bytesLeft":I
    if-nez v1, :cond_0

    #@11
    .line 105
    array-length v9, v6

    #@12
    mul-int/lit8 v9, v9, 0x2

    #@14
    new-array v0, v9, [B

    #@16
    .line 106
    .local v0, "buf2":[B
    array-length v9, v6

    #@17
    const/4 v11, 0x0

    #@18
    const/4 v12, 0x0

    #@19
    invoke-static {v6, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 107
    move-object v6, v0

    #@1d
    .line 108
    array-length v9, v6

    #@1e
    sub-int v1, v9, v7

    #@20
    .line 110
    .end local v0    # "buf2":[B
    :cond_0
    invoke-virtual {v5, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result v2

    #@24
    .line 111
    .local v2, "bytesRead":I
    if-gtz v2, :cond_2

    #@26
    .line 117
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    .line 123
    :try_start_3
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@2c
    move-result-object v8

    #@2d
    .line 126
    .local v8, "resName":Ljava/lang/String;
    sget-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    #@2f
    if-nez v9, :cond_1

    #@31
    .line 127
    new-instance v4, Ljava/io/File;

    #@33
    sget-object v9, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    #@35
    const-string/jumbo v11, "com.android.renderscript.cache"

    #@38
    invoke-direct {v4, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3b
    .line 128
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    sput-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    #@41
    .line 129
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    #@44
    .line 132
    .end local v4    # "f":Ljava/io/File;
    :cond_1
    sget-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    #@46
    invoke-virtual {p0, v8, v9, v6, v7}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@49
    move-result-wide v12

    #@4a
    monitor-exit v10

    #@4b
    return-wide v12

    #@4c
    .line 114
    .end local v8    # "resName":Ljava/lang/String;
    :cond_2
    add-int/2addr v7, v2

    #@4d
    goto :goto_0

    #@4e
    .line 116
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v6    # "pgm":[B
    .end local v7    # "pgmLength":I
    :catchall_0
    move-exception v9

    #@4f
    .line 117
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@52
    .line 116
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@53
    .line 119
    :catch_0
    move-exception v3

    #@54
    .line 120
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    #@56
    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    #@59
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5a
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    #@5b
    monitor-exit v10

    #@5c
    throw v9
.end method

.method private static declared-synchronized internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "bitcode"    # [B

    #@0
    .prologue
    const-class v2, Landroid/renderscript/ScriptC;

    #@2
    monitor-enter v2

    #@3
    .line 137
    :try_start_0
    sget-object v1, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 138
    new-instance v0, Ljava/io/File;

    #@9
    sget-object v1, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    #@b
    const-string/jumbo v3, "com.android.renderscript.cache"

    #@e
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    .line 139
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    sput-object v1, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    #@17
    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@1a
    .line 143
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    sget-object v1, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    #@1c
    array-length v3, p2

    #@1d
    invoke-virtual {p0, p1, v1, p2, v3}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-wide v4

    #@21
    monitor-exit v2

    #@22
    return-wide v4

    #@23
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method
