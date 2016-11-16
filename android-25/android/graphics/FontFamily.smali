.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    const-string/jumbo v0, "FontFamily"

    #@3
    sput-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    #@5
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(Ljava/lang/String;I)J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@b
    .line 44
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@d
    const-wide/16 v2, 0x0

    #@f
    cmp-long v0, v0, v2

    #@11
    if-nez v0, :cond_0

    #@13
    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "error creating native FontFamily"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    .line 51
    .local v0, "varEnum":I
    const-string/jumbo v1, "compact"

    #@7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 52
    const/4 v0, 0x1

    #@e
    .line 56
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Landroid/graphics/FontFamily;->nCreateFamily(Ljava/lang/String;I)J

    #@11
    move-result-wide v2

    #@12
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@14
    .line 57
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@16
    const-wide/16 v4, 0x0

    #@18
    cmp-long v1, v2, v4

    #@1a
    if-nez v1, :cond_2

    #@1c
    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1e
    const-string/jumbo v2, "error creating native FontFamily"

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 53
    :cond_1
    const-string/jumbo v1, "elegant"

    #@28
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 54
    const/4 v0, 0x2

    #@2f
    goto :goto_0

    #@30
    .line 49
    :cond_2
    return-void
.end method

.method private static native nAddFont(JLjava/nio/ByteBuffer;I)Z
.end method

.method private static native nAddFontFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)Z
.end method

.method private static native nAddFontWeightStyle(JLjava/nio/ByteBuffer;ILjava/util/List;IZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Axis;",
            ">;IZ)Z"
        }
    .end annotation
.end method

.method private static native nCreateFamily(Ljava/lang/String;I)J
.end method

.method private static native nUnrefFamily(J)V
.end method


# virtual methods
.method public addFont(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 72
    const/4 v7, 0x0

    #@2
    .local v7, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    #@4
    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 73
    .end local v7    # "file":Ljava/io/FileInputStream;
    .local v8, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@a
    move-result-object v0

    #@b
    .line 74
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    #@e
    move-result-wide v4

    #@f
    .line 75
    .local v4, "fontSize":J
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@11
    const-wide/16 v2, 0x0

    #@13
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@16
    move-result-object v9

    #@17
    .line 76
    .local v9, "fontBuffer":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@19
    invoke-static {v2, v3, v9, p2}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1c
    move-result v1

    #@1d
    .line 80
    if-eqz v8, :cond_0

    #@1f
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@22
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    #@24
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@25
    .line 77
    :catch_0
    move-exception v6

    #@26
    .local v6, "e":Ljava/io/IOException;
    move-object v7, v8

    #@27
    .line 78
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "fontSize":J
    .end local v8    # "file":Ljava/io/FileInputStream;
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    sget-object v1, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "Error mapping font file "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 79
    const/4 v1, 0x0

    #@41
    return v1

    #@42
    .line 80
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "fontSize":J
    .restart local v8    # "file":Ljava/io/FileInputStream;
    .restart local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v10

    #@43
    goto :goto_0

    #@44
    .line 76
    :cond_1
    return v1

    #@45
    .line 80
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "fontSize":J
    .end local v8    # "file":Ljava/io/FileInputStream;
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    #@46
    .end local v7    # "file":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@47
    :catchall_0
    move-exception v2

    #@48
    move-object v11, v2

    #@49
    move-object v2, v1

    #@4a
    move-object v1, v11

    #@4b
    :goto_3
    if-eqz v7, :cond_2

    #@4d
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@50
    :cond_2
    :goto_4
    if-eqz v2, :cond_4

    #@52
    :try_start_6
    throw v2

    #@53
    .line 77
    :catch_3
    move-exception v6

    #@54
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_1

    #@55
    .line 80
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    #@56
    if-nez v2, :cond_3

    #@58
    move-object v2, v3

    #@59
    goto :goto_4

    #@5a
    :cond_3
    if-eq v2, v3, :cond_2

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@5f
    goto :goto_4

    #@60
    :cond_4
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@61
    .restart local v7    # "file":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    #@62
    move-object v2, v10

    #@63
    goto :goto_3

    #@64
    .end local v7    # "file":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v1

    #@65
    move-object v2, v10

    #@66
    move-object v7, v8

    #@67
    .end local v8    # "file":Ljava/io/FileInputStream;
    .local v7, "file":Ljava/io/FileInputStream;
    goto :goto_3

    #@68
    .end local v7    # "file":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    #@69
    move-object v7, v8

    #@6a
    .end local v8    # "file":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 2
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/FontFamily;->nAddFontFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addFontWeightStyle(Ljava/nio/ByteBuffer;ILjava/util/List;IZ)Z
    .locals 7
    .param p1, "font"    # Ljava/nio/ByteBuffer;
    .param p2, "ttcIndex"    # I
    .param p4, "weight"    # I
    .param p5, "style"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Axis;",
            ">;IZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 85
    .local p3, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move-object v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    invoke-static/range {v0 .. v6}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;ILjava/util/List;IZ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nUnrefFamily(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 67
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 63
    return-void

    #@9
    .line 66
    :catchall_0
    move-exception v0

    #@a
    .line 67
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 66
    throw v0
.end method
