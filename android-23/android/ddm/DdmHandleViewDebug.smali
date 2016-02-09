.class public Landroid/ddm/DdmHandleViewDebug;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleViewDebug.java"


# static fields
.field public static final CHUNK_VUGL:I

.field private static final CHUNK_VULW:I

.field private static final CHUNK_VUOP:I

.field private static final CHUNK_VURT:I

.field private static final ERR_EXCEPTION:I = -0x3

.field private static final ERR_INVALID_OP:I = -0x1

.field private static final ERR_INVALID_PARAM:I = -0x2

.field private static final TAG:Ljava/lang/String; = "DdmViewDebug"

.field private static final VUOP_CAPTURE_VIEW:I = 0x1

.field private static final VUOP_DUMP_DISPLAYLIST:I = 0x2

.field private static final VUOP_INVOKE_VIEW_METHOD:I = 0x4

.field private static final VUOP_PROFILE_VIEW:I = 0x3

.field private static final VUOP_SET_LAYOUT_PARAMETER:I = 0x5

.field private static final VURT_CAPTURE_LAYERS:I = 0x2

.field private static final VURT_DUMP_HIERARCHY:I = 0x1

.field private static final VURT_DUMP_THEME:I = 0x3

.field private static final sInstance:Landroid/ddm/DdmHandleViewDebug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "VUGL"

    #@3
    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    #@9
    .line 48
    const-string/jumbo v0, "VULW"

    #@c
    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    #@12
    .line 51
    const-string/jumbo v0, "VURT"

    #@15
    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    #@1b
    .line 66
    const-string/jumbo v0, "VUOP"

    #@1e
    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    #@24
    .line 94
    new-instance v0, Landroid/ddm/DdmHandleViewDebug;

    #@26
    invoke-direct {v0}, Landroid/ddm/DdmHandleViewDebug;-><init>()V

    #@29
    sput-object v0, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    #@2b
    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    #@3
    return-void
.end method

.method private captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .param p1, "rootView"    # Landroid/view/View;

    #@0
    .prologue
    .line 257
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    const/16 v4, 0x400

    #@4
    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@7
    .line 258
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    #@9
    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@c
    .line 260
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 266
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@12
    .line 272
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15
    move-result-object v1

    #@16
    .line 273
    .local v1, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@18
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    #@1a
    array-length v6, v1

    #@1b
    const/4 v7, 0x0

    #@1c
    invoke-direct {v4, v5, v1, v7, v6}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@1f
    return-object v4

    #@20
    .line 267
    .end local v1    # "data":[B
    :catch_0
    move-exception v3

    #@21
    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    #@22
    .line 261
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    #@23
    .line 262
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "Unexpected error while obtaining view hierarchy: "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 263
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 262
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    const/4 v5, 0x1

    #@3c
    invoke-static {v5, v4}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    move-result-object v4

    #@40
    .line 266
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@43
    .line 262
    :goto_1
    return-object v4

    #@44
    .line 267
    :catch_2
    move-exception v3

    #@45
    goto :goto_1

    #@46
    .line 264
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@47
    .line 266
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@4a
    .line 264
    :goto_2
    throw v4

    #@4b
    .line 267
    :catch_3
    move-exception v3

    #@4c
    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    #@0
    .prologue
    .line 293
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    const/16 v3, 0x400

    #@4
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@7
    .line 295
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p1, v0, p2}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 301
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@d
    move-result-object v1

    #@e
    .line 302
    .local v1, "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@10
    sget v4, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    #@12
    array-length v5, v1

    #@13
    const/4 v6, 0x0

    #@14
    invoke-direct {v3, v4, v1, v6, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@17
    return-object v3

    #@18
    .line 296
    .end local v1    # "data":[B
    :catch_0
    move-exception v2

    #@19
    .line 297
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Unexpected error while capturing view: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 298
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    const/4 v4, 0x1

    #@32
    invoke-static {v4, v3}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@35
    move-result-object v3

    #@36
    return-object v3
.end method

.method private dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    #@0
    .prologue
    .line 307
    new-instance v0, Landroid/ddm/DdmHandleViewDebug$1;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/ddm/DdmHandleViewDebug$1;-><init>(Landroid/ddm/DdmHandleViewDebug;Landroid/view/View;Landroid/view/View;)V

    #@5
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@8
    .line 313
    const/4 v0, 0x0

    #@9
    return-object v0
.end method

.method private dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 14
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "in"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 230
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v10

    #@4
    if-lez v10, :cond_0

    #@6
    const/4 v6, 0x1

    #@7
    .line 231
    .local v6, "skipChildren":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@a
    move-result v10

    #@b
    if-lez v10, :cond_1

    #@d
    const/4 v3, 0x1

    #@e
    .line 232
    .local v3, "includeProperties":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@11
    move-result v10

    #@12
    if-eqz v10, :cond_2

    #@14
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@17
    move-result v10

    #@18
    if-lez v10, :cond_2

    #@1a
    const/4 v7, 0x1

    #@1b
    .line 234
    .local v7, "v2":Z
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1e
    move-result-wide v8

    #@1f
    .line 236
    .local v8, "start":J
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@21
    const/high16 v10, 0x200000

    #@23
    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@26
    .line 238
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    if-eqz v7, :cond_3

    #@28
    .line 239
    :try_start_0
    invoke-static {p1, v0}, Landroid/view/ViewDebug;->dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 248
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2e
    move-result-wide v4

    #@2f
    .line 249
    .local v4, "end":J
    const-string/jumbo v10, "DdmViewDebug"

    #@32
    new-instance v11, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v12, "Time to obtain view hierarchy (ms): "

    #@3a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v11

    #@3e
    sub-long v12, v4, v8

    #@40
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@43
    move-result-object v11

    #@44
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v11

    #@48
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 251
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@4e
    move-result-object v1

    #@4f
    .line 252
    .local v1, "data":[B
    new-instance v10, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@51
    sget v11, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    #@53
    array-length v12, v1

    #@54
    const/4 v13, 0x0

    #@55
    invoke-direct {v10, v11, v1, v13, v12}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@58
    return-object v10

    #@59
    .line 230
    .end local v0    # "b":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v3    # "includeProperties":Z
    .end local v4    # "end":J
    .end local v6    # "skipChildren":Z
    .end local v7    # "v2":Z
    .end local v8    # "start":J
    :cond_0
    const/4 v6, 0x0

    #@5a
    .restart local v6    # "skipChildren":Z
    goto :goto_0

    #@5b
    .line 231
    :cond_1
    const/4 v3, 0x0

    #@5c
    .restart local v3    # "includeProperties":Z
    goto :goto_1

    #@5d
    .line 232
    :cond_2
    const/4 v7, 0x0

    #@5e
    .restart local v7    # "v2":Z
    goto :goto_2

    #@5f
    .line 241
    .restart local v0    # "b":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "start":J
    :cond_3
    :try_start_1
    invoke-static {p1, v6, v3, v0}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    goto :goto_3

    #@63
    .line 243
    :catch_0
    move-exception v2

    #@64
    .line 244
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v11, "Unexpected error while obtaining view hierarchy: "

    #@6c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v10

    #@70
    .line 245
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@73
    move-result-object v11

    #@74
    .line 244
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v10

    #@7c
    const/4 v11, 0x1

    #@7d
    invoke-static {v11, v10}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@80
    move-result-object v10

    #@81
    return-object v10
.end method

.method private dumpTheme(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    #@0
    .prologue
    .line 280
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    const/16 v3, 0x400

    #@4
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@7
    .line 282
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p1, v0}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 288
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@d
    move-result-object v1

    #@e
    .line 289
    .local v1, "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@10
    sget v4, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    #@12
    array-length v5, v1

    #@13
    const/4 v6, 0x0

    #@14
    invoke-direct {v3, v4, v1, v6, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@17
    return-object v3

    #@18
    .line 283
    .end local v1    # "data":[B
    :catch_0
    move-exception v2

    #@19
    .line 284
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Unexpected error while dumping the theme: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 285
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 284
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    const/4 v4, 0x1

    #@32
    invoke-static {v4, v3}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@35
    move-result-object v3

    #@36
    return-object v3
.end method

.method private getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;
    .locals 4
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v2

    #@4
    .line 199
    .local v2, "viewRootNameLength":I
    invoke-static {p1, v2}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 200
    .local v1, "viewRootName":Ljava/lang/String;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, v1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 201
    .end local v1    # "viewRootName":Ljava/lang/String;
    .end local v2    # "viewRootNameLength":I
    :catch_0
    move-exception v0

    #@12
    .line 202
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v3, 0x0

    #@13
    return-object v3
.end method

.method private getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "in"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v1

    #@4
    .line 212
    .local v1, "viewLength":I
    invoke-static {p2, v1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    .line 217
    .local v2, "viewName":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 213
    .end local v1    # "viewLength":I
    .end local v2    # "viewName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@e
    .line 214
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v3, 0x0

    #@f
    return-object v3
.end method

.method private handleOpenGlTrace(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 2
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 169
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 170
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Landroid/opengl/GLUtils;->setTracingLevel(I)V

    #@b
    .line 171
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method private invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 16
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "in"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 333
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v8

    #@4
    .line 334
    .local v8, "l":I
    move-object/from16 v0, p3

    #@6
    invoke-static {v0, v8}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@9
    move-result-object v10

    #@a
    .line 338
    .local v10, "methodName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@d
    move-result v13

    #@e
    if-nez v13, :cond_1

    #@10
    .line 339
    const/4 v13, 0x0

    #@11
    new-array v2, v13, [Ljava/lang/Class;

    #@13
    .line 340
    .local v2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    #@14
    new-array v3, v13, [Ljava/lang/Object;

    #@16
    .line 390
    .local v3, "args":[Ljava/lang/Object;
    :cond_0
    const/4 v9, 0x0

    #@17
    .line 392
    .local v9, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v13

    #@1b
    invoke-virtual {v13, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v9

    #@1f
    .line 400
    .local v9, "method":Ljava/lang/reflect/Method;
    :try_start_1
    move-object/from16 v0, p2

    #@21
    invoke-static {v0, v9, v3}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    .line 410
    const/4 v13, 0x0

    #@25
    return-object v13

    #@26
    .line 342
    .end local v2    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    #@29
    move-result v12

    #@2a
    .line 344
    .local v12, "nArgs":I
    new-array v2, v12, [Ljava/lang/Class;

    #@2c
    .line 345
    .restart local v2    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v3, v12, [Ljava/lang/Object;

    #@2e
    .line 347
    .restart local v3    # "args":[Ljava/lang/Object;
    const/4 v7, 0x0

    #@2f
    .local v7, "i":I
    :goto_0
    if-ge v7, v12, :cond_0

    #@31
    .line 348
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getChar()C

    #@34
    move-result v4

    #@35
    .line 349
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_0

    #@38
    .line 383
    const-string/jumbo v13, "DdmViewDebug"

    #@3b
    new-instance v14, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v15, "arg "

    #@43
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v14

    #@47
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v14

    #@4b
    const-string/jumbo v15, ", unrecognized type: "

    #@4e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v14

    #@52
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    move-result-object v14

    #@56
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v14

    #@5a
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 385
    new-instance v13, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v14, "Unsupported parameter type ("

    #@65
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v13

    #@69
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v13

    #@6d
    const-string/jumbo v14, ") to invoke view method."

    #@70
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v13

    #@74
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v13

    #@78
    .line 384
    const/4 v14, -0x2

    #@79
    invoke-static {v14, v13}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@7c
    move-result-object v13

    #@7d
    return-object v13

    #@7e
    .line 351
    :sswitch_0
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@80
    aput-object v13, v2, v7

    #@82
    .line 352
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    #@85
    move-result v13

    #@86
    if-nez v13, :cond_2

    #@88
    const/4 v13, 0x0

    #@89
    :goto_1
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8c
    move-result-object v13

    #@8d
    aput-object v13, v3, v7

    #@8f
    .line 347
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@91
    goto :goto_0

    #@92
    .line 352
    :cond_2
    const/4 v13, 0x1

    #@93
    goto :goto_1

    #@94
    .line 355
    :sswitch_1
    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@96
    aput-object v13, v2, v7

    #@98
    .line 356
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    #@9b
    move-result v13

    #@9c
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@9f
    move-result-object v13

    #@a0
    aput-object v13, v3, v7

    #@a2
    goto :goto_2

    #@a3
    .line 359
    :sswitch_2
    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@a5
    aput-object v13, v2, v7

    #@a7
    .line 360
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getChar()C

    #@aa
    move-result v13

    #@ab
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@ae
    move-result-object v13

    #@af
    aput-object v13, v3, v7

    #@b1
    goto :goto_2

    #@b2
    .line 363
    :sswitch_3
    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@b4
    aput-object v13, v2, v7

    #@b6
    .line 364
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getShort()S

    #@b9
    move-result v13

    #@ba
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@bd
    move-result-object v13

    #@be
    aput-object v13, v3, v7

    #@c0
    goto :goto_2

    #@c1
    .line 367
    :sswitch_4
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c3
    aput-object v13, v2, v7

    #@c5
    .line 368
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    #@c8
    move-result v13

    #@c9
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v13

    #@cd
    aput-object v13, v3, v7

    #@cf
    goto :goto_2

    #@d0
    .line 371
    :sswitch_5
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@d2
    aput-object v13, v2, v7

    #@d4
    .line 372
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getLong()J

    #@d7
    move-result-wide v14

    #@d8
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@db
    move-result-object v13

    #@dc
    aput-object v13, v3, v7

    #@de
    goto :goto_2

    #@df
    .line 375
    :sswitch_6
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@e1
    aput-object v13, v2, v7

    #@e3
    .line 376
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getFloat()F

    #@e6
    move-result v13

    #@e7
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@ea
    move-result-object v13

    #@eb
    aput-object v13, v3, v7

    #@ed
    goto :goto_2

    #@ee
    .line 379
    :sswitch_7
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@f0
    aput-object v13, v2, v7

    #@f2
    .line 380
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getDouble()D

    #@f5
    move-result-wide v14

    #@f6
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@f9
    move-result-object v13

    #@fa
    aput-object v13, v3, v7

    #@fc
    goto :goto_2

    #@fd
    .line 393
    .end local v4    # "c":C
    .end local v7    # "i":I
    .end local v12    # "nArgs":I
    .local v9, "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    #@fe
    .line 394
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v13, "DdmViewDebug"

    #@101
    new-instance v14, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v15, "No such method: "

    #@109
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v14

    #@10d
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    #@110
    move-result-object v15

    #@111
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v14

    #@115
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v14

    #@119
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11c
    .line 396
    new-instance v13, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v14, "No such method: "

    #@124
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v13

    #@128
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    #@12b
    move-result-object v14

    #@12c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v13

    #@130
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v13

    #@134
    .line 395
    const/4 v14, -0x2

    #@135
    invoke-static {v14, v13}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@138
    move-result-object v13

    #@139
    return-object v13

    #@13a
    .line 401
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .local v9, "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    #@13b
    .line 402
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "DdmViewDebug"

    #@13e
    new-instance v14, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v15, "Exception while invoking method: "

    #@146
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v14

    #@14a
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@14d
    move-result-object v15

    #@14e
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@151
    move-result-object v15

    #@152
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v14

    #@156
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v14

    #@15a
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15d
    .line 403
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@160
    move-result-object v13

    #@161
    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@164
    move-result-object v11

    #@165
    .line 404
    .local v11, "msg":Ljava/lang/String;
    if-nez v11, :cond_3

    #@167
    .line 405
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@16a
    move-result-object v13

    #@16b
    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@16e
    move-result-object v11

    #@16f
    .line 407
    :cond_3
    const/4 v13, -0x3

    #@170
    invoke-static {v13, v11}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@173
    move-result-object v13

    #@174
    return-object v13

    #@175
    .line 349
    nop

    #@176
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 176
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {v5}, Landroid/view/WindowManagerGlobal;->getViewRootNames()[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 178
    .local v3, "windowNames":[Ljava/lang/String;
    const/4 v2, 0x4

    #@a
    .line 179
    .local v2, "responseLength":I
    array-length v6, v3

    #@b
    move v5, v4

    #@c
    :goto_0
    if-ge v5, v6, :cond_0

    #@e
    aget-object v0, v3, v5

    #@10
    .line 180
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x4

    #@12
    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@15
    move-result v7

    #@16
    mul-int/lit8 v7, v7, 0x2

    #@18
    add-int/2addr v2, v7

    #@19
    .line 179
    add-int/lit8 v5, v5, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 184
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v1

    #@20
    .line 185
    .local v1, "out":Ljava/nio/ByteBuffer;
    sget-object v5, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    #@22
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@25
    .line 187
    array-length v5, v3

    #@26
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@29
    .line 188
    array-length v5, v3

    #@2a
    :goto_1
    if-ge v4, v5, :cond_1

    #@2c
    aget-object v0, v3, v4

    #@2e
    .line 189
    .restart local v0    # "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@31
    move-result v6

    #@32
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@35
    .line 190
    invoke-static {v1, v0}, Landroid/ddm/DdmHandleViewDebug;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@38
    .line 188
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 193
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@3d
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    #@3f
    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    #@42
    return-object v4
.end method

.method private profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    #@0
    .prologue
    const v5, 0x8000

    #@3
    .line 430
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@8
    .line 431
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    #@a
    new-instance v4, Ljava/io/OutputStreamWriter;

    #@c
    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@f
    invoke-direct {v1, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    #@12
    .line 433
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-static {p2, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 438
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@18
    .line 444
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1b
    move-result-object v2

    #@1c
    .line 445
    .local v2, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1e
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    #@20
    array-length v6, v2

    #@21
    const/4 v7, 0x0

    #@22
    invoke-direct {v4, v5, v2, v7, v6}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@25
    return-object v4

    #@26
    .line 439
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    #@27
    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    #@28
    .line 434
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    #@29
    .line 435
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Unexpected error while profiling view: "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    const/4 v5, 0x1

    #@42
    invoke-static {v5, v4}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    move-result-object v4

    #@46
    .line 438
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@49
    .line 435
    :goto_1
    return-object v4

    #@4a
    .line 439
    :catch_2
    move-exception v3

    #@4b
    goto :goto_1

    #@4c
    .line 436
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@4d
    .line 438
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@50
    .line 436
    :goto_2
    throw v4

    #@51
    .line 439
    :catch_3
    move-exception v3

    #@52
    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public static register()V
    .locals 2

    #@0
    .prologue
    .line 100
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    #@2
    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    #@4
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@7
    .line 101
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    #@9
    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    #@b
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@e
    .line 102
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    #@10
    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    #@12
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@15
    .line 103
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    #@17
    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    #@19
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@1c
    .line 99
    return-void
.end method

.method private setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "in"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 414
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v1

    #@4
    .line 415
    .local v1, "l":I
    invoke-static {p3, v1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 416
    .local v2, "param":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    move-result v3

    #@c
    .line 418
    .local v3, "value":I
    :try_start_0
    invoke-static {p2, v2, v3}, Landroid/view/ViewDebug;->setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 425
    const/4 v4, 0x0

    #@10
    return-object v4

    #@11
    .line 419
    :catch_0
    move-exception v0

    #@12
    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DdmViewDebug"

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "Exception setting layout parameter: "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Error accessing field "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 422
    const-string/jumbo v5, ":"

    #@3f
    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    const/4 v5, -0x3

    #@50
    invoke-static {v5, v4}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@53
    move-result-object v4

    #@54
    return-object v4
.end method


# virtual methods
.method public connected()V
    .locals 0

    #@0
    .prologue
    .line 107
    return-void
.end method

.method public disconnected()V
    .locals 0

    #@0
    .prologue
    .line 111
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, -0x2

    #@2
    .line 116
    iget v4, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@4
    .line 118
    .local v4, "type":I
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    #@6
    if-ne v4, v5, :cond_0

    #@8
    .line 119
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleViewDebug;->handleOpenGlTrace(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@b
    move-result-object v5

    #@c
    return-object v5

    #@d
    .line 120
    :cond_0
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    #@f
    if-ne v4, v5, :cond_1

    #@11
    .line 121
    invoke-direct {p0}, Landroid/ddm/DdmHandleViewDebug;->listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@14
    move-result-object v5

    #@15
    return-object v5

    #@16
    .line 124
    :cond_1
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@19
    move-result-object v0

    #@1a
    .line 125
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@1d
    move-result v1

    #@1e
    .line 127
    .local v1, "op":I
    invoke-direct {p0, v0}, Landroid/ddm/DdmHandleViewDebug;->getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;

    #@21
    move-result-object v2

    #@22
    .line 128
    .local v2, "rootView":Landroid/view/View;
    if-nez v2, :cond_2

    #@24
    .line 129
    const-string/jumbo v5, "Invalid View Root"

    #@27
    invoke-static {v6, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@2a
    move-result-object v5

    #@2b
    return-object v5

    #@2c
    .line 132
    :cond_2
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    #@2e
    if-ne v4, v5, :cond_6

    #@30
    .line 133
    const/4 v5, 0x1

    #@31
    if-ne v1, v5, :cond_3

    #@33
    .line 134
    invoke-direct {p0, v2, v0}, Landroid/ddm/DdmHandleViewDebug;->dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@36
    move-result-object v5

    #@37
    return-object v5

    #@38
    .line 135
    :cond_3
    const/4 v5, 0x2

    #@39
    if-ne v1, v5, :cond_4

    #@3b
    .line 136
    invoke-direct {p0, v2}, Landroid/ddm/DdmHandleViewDebug;->captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@3e
    move-result-object v5

    #@3f
    return-object v5

    #@40
    .line 137
    :cond_4
    const/4 v5, 0x3

    #@41
    if-ne v1, v5, :cond_5

    #@43
    .line 138
    invoke-direct {p0, v2}, Landroid/ddm/DdmHandleViewDebug;->dumpTheme(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@46
    move-result-object v5

    #@47
    return-object v5

    #@48
    .line 140
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "Unknown view root operation: "

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-static {v7, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@5f
    move-result-object v5

    #@60
    return-object v5

    #@61
    .line 143
    :cond_6
    invoke-direct {p0, v2, v0}, Landroid/ddm/DdmHandleViewDebug;->getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;

    #@64
    move-result-object v3

    #@65
    .line 144
    .local v3, "targetView":Landroid/view/View;
    if-nez v3, :cond_7

    #@67
    .line 145
    const-string/jumbo v5, "Invalid target view"

    #@6a
    invoke-static {v6, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@6d
    move-result-object v5

    #@6e
    return-object v5

    #@6f
    .line 148
    :cond_7
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    #@71
    if-ne v4, v5, :cond_8

    #@73
    .line 149
    packed-switch v1, :pswitch_data_0

    #@76
    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v6, "Unknown view operation: "

    #@7e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-static {v7, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@8d
    move-result-object v5

    #@8e
    return-object v5

    #@8f
    .line 151
    :pswitch_0
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@92
    move-result-object v5

    #@93
    return-object v5

    #@94
    .line 153
    :pswitch_1
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@97
    move-result-object v5

    #@98
    return-object v5

    #@99
    .line 155
    :pswitch_2
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@9c
    move-result-object v5

    #@9d
    return-object v5

    #@9e
    .line 157
    :pswitch_3
    invoke-direct {p0, v2, v3, v0}, Landroid/ddm/DdmHandleViewDebug;->invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@a1
    move-result-object v5

    #@a2
    return-object v5

    #@a3
    .line 159
    :pswitch_4
    invoke-direct {p0, v2, v3, v0}, Landroid/ddm/DdmHandleViewDebug;->setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@a6
    move-result-object v5

    #@a7
    return-object v5

    #@a8
    .line 164
    :cond_8
    new-instance v5, Ljava/lang/RuntimeException;

    #@aa
    new-instance v6, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v7, "Unknown packet "

    #@b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v6

    #@b6
    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    #@b9
    move-result-object v7

    #@ba
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v6

    #@c2
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v5

    #@c6
    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
