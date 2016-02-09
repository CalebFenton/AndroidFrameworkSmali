.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# instance fields
.field public mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
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
    .line 34
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@d
    const-wide/16 v2, 0x0

    #@f
    cmp-long v0, v0, v2

    #@11
    if-nez v0, :cond_0

    #@13
    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "error creating native FontFamily"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    const/4 v0, 0x0

    #@4
    .line 41
    .local v0, "varEnum":I
    const-string/jumbo v1, "compact"

    #@7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 42
    const/4 v0, 0x1

    #@e
    .line 46
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Landroid/graphics/FontFamily;->nCreateFamily(Ljava/lang/String;I)J

    #@11
    move-result-wide v2

    #@12
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@14
    .line 47
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@16
    const-wide/16 v4, 0x0

    #@18
    cmp-long v1, v2, v4

    #@1a
    if-nez v1, :cond_2

    #@1c
    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1e
    const-string/jumbo v2, "error creating native FontFamily"

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 43
    :cond_1
    const-string/jumbo v1, "elegant"

    #@28
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 44
    const/4 v0, 0x2

    #@2f
    goto :goto_0

    #@30
    .line 39
    :cond_2
    return-void
.end method

.method private static native nAddFont(JLjava/lang/String;)Z
.end method

.method private static native nAddFontFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)Z
.end method

.method private static native nAddFontWeightStyle(JLjava/lang/String;IZ)Z
.end method

.method private static native nCreateFamily(Ljava/lang/String;I)J
.end method

.method private static native nUnrefFamily(J)V
.end method


# virtual methods
.method public addFont(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/FontFamily;->nAddFont(JLjava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 2
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/FontFamily;->nAddFontFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addFontWeightStyle(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "style"    # Z

    #@0
    .prologue
    .line 66
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/lang/String;IZ)Z

    #@5
    move-result v0

    #@6
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
    .line 55
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nUnrefFamily(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 53
    return-void

    #@9
    .line 56
    :catchall_0
    move-exception v0

    #@a
    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 56
    throw v0
.end method
