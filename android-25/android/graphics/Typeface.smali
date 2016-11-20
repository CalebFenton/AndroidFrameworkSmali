.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x3

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    .line 46
    const-string/jumbo v0, "Typeface"

    #@8
    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@a
    .line 65
    new-instance v0, Landroid/util/LongSparseArray;

    #@c
    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    #@f
    .line 64
    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    #@11
    .line 70
    new-instance v0, Landroid/util/LruCache;

    #@13
    const/16 v2, 0x10

    #@15
    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    #@18
    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    #@1a
    .line 389
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    #@1d
    move-object v0, v1

    #@1e
    .line 391
    nop

    #@1f
    nop

    #@20
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@26
    move-object v0, v1

    #@27
    .line 392
    nop

    #@28
    nop

    #@29
    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@2c
    move-result-object v0

    #@2d
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@2f
    .line 393
    const-string/jumbo v0, "sans-serif"

    #@32
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@38
    .line 394
    const-string/jumbo v0, "serif"

    #@3b
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@41
    .line 395
    const-string/jumbo v0, "monospace"

    #@44
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@47
    move-result-object v0

    #@48
    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@4a
    .line 397
    const/4 v0, 0x4

    #@4b
    new-array v2, v0, [Landroid/graphics/Typeface;

    #@4d
    .line 398
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@4f
    aput-object v0, v2, v3

    #@51
    .line 399
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@53
    aput-object v0, v2, v5

    #@55
    move-object v0, v1

    #@56
    .line 400
    nop

    #@57
    nop

    #@58
    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@5b
    move-result-object v0

    #@5c
    aput-object v0, v2, v6

    #@5e
    .line 401
    nop

    #@5f
    nop

    #@60
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@63
    move-result-object v0

    #@64
    aput-object v0, v2, v4

    #@66
    .line 397
    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    #@68
    .line 44
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    #@6
    .line 289
    const-wide/16 v0, 0x0

    #@8
    cmp-long v0, p1, v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v1, "native typeface cannot be made"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 293
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    #@17
    .line 294
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    #@1d
    .line 288
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    #@0
    .prologue
    .line 141
    if-ltz p1, :cond_0

    #@2
    const/4 v4, 0x3

    #@3
    if-le p1, v4, :cond_1

    #@5
    .line 142
    :cond_0
    const/4 p1, 0x0

    #@6
    .line 144
    :cond_1
    const-wide/16 v0, 0x0

    #@8
    .line 145
    .local v0, "ni":J
    if-eqz p0, :cond_3

    #@a
    .line 147
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    #@c
    if-ne v4, p1, :cond_2

    #@e
    .line 148
    return-object p0

    #@f
    .line 151
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    #@11
    .line 155
    :cond_3
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    #@13
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/util/SparseArray;

    #@19
    .line 157
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_4

    #@1b
    .line 158
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/graphics/Typeface;

    #@21
    .line 159
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_4

    #@23
    .line 160
    return-object v3

    #@24
    .line 164
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    new-instance v3, Landroid/graphics/Typeface;

    #@26
    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    #@29
    move-result-wide v4

    #@2a
    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    #@2d
    .line 165
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_5

    #@2f
    .line 166
    new-instance v2, Landroid/util/SparseArray;

    #@31
    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    #@32
    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    #@35
    .line 167
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    #@37
    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@3a
    .line 169
    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    .line 171
    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 123
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 124
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    #@7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/graphics/Typeface;

    #@d
    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 126
    :cond_0
    return-object v1
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    #@3
    move-result-object v2

    #@4
    .line 218
    .local v2, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 219
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v3

    #@d
    .line 220
    .local v3, "size":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@10
    .line 221
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Ljava/lang/String;

    #@16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 222
    const-string/jumbo v4, "-"

    #@1c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 220
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 224
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    return-object v4
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 191
    sget-object v4, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@2
    if-eqz v4, :cond_2

    #@4
    .line 192
    sget-object v5, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    #@6
    monitor-enter v5

    #@7
    .line 193
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 194
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    #@d
    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 195
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_0

    #@15
    monitor-exit v5

    #@16
    return-object v3

    #@17
    .line 197
    :cond_0
    :try_start_1
    new-instance v1, Landroid/graphics/FontFamily;

    #@19
    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    #@1c
    .line 198
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 199
    const/4 v4, 0x1

    #@23
    new-array v0, v4, [Landroid/graphics/FontFamily;

    #@25
    const/4 v4, 0x0

    #@26
    aput-object v1, v0, v4

    #@28
    .line 200
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    #@2b
    move-result-object v3

    #@2c
    .line 201
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    #@2e
    invoke-virtual {v4, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    monitor-exit v5

    #@32
    .line 202
    return-object v3

    #@33
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    :cond_1
    monitor-exit v5

    #@34
    .line 206
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v6, "Font asset not found "

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v4

    #@4e
    .line 192
    :catchall_0
    move-exception v4

    #@4f
    monitor-exit v5

    #@50
    throw v4
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    #@0
    .prologue
    .line 262
    array-length v2, p0

    #@1
    new-array v1, v2, [J

    #@3
    .line 263
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 264
    aget-object v2, p0, v0

    #@9
    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    #@b
    aput-wide v2, v1, v0

    #@d
    .line 263
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 266
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    #@12
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    #@15
    move-result-wide v4

    #@16
    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    #@19
    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    #@0
    .prologue
    .line 277
    array-length v2, p0

    #@1
    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@3
    array-length v3, v3

    #@4
    add-int/2addr v2, v3

    #@5
    new-array v1, v2, [J

    #@7
    .line 278
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 279
    aget-object v2, p0, v0

    #@d
    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    #@f
    aput-wide v2, v1, v0

    #@11
    .line 278
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 281
    :cond_0
    const/4 v0, 0x0

    #@15
    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@17
    array-length v2, v2

    #@18
    if-ge v0, v2, :cond_1

    #@1a
    .line 282
    array-length v2, p0

    #@1b
    add-int/2addr v2, v0

    #@1c
    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@1e
    aget-object v3, v3, v0

    #@20
    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    #@22
    aput-wide v4, v1, v2

    #@24
    .line 281
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_1

    #@27
    .line 284
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    #@29
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    #@2c
    move-result-wide v4

    #@2d
    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    #@30
    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 245
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 246
    new-instance v1, Landroid/graphics/FontFamily;

    #@7
    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    #@a
    .line 247
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, v3}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 248
    const/4 v2, 0x1

    #@11
    new-array v0, v2, [Landroid/graphics/FontFamily;

    #@13
    aput-object v1, v0, v3

    #@15
    .line 249
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 252
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "Font not found "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    #@0
    .prologue
    .line 180
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    #@2
    aget-object v0, v0, p0

    #@4
    return-object v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 407
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/system/etc/"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method private static init()V
    .locals 28

    #@0
    .prologue
    .line 328
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    #@3
    move-result-object v21

    #@4
    .line 329
    .local v21, "systemFontConfigLocation":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    #@6
    const-string/jumbo v25, "fonts.xml"

    #@9
    move-object/from16 v0, v21

    #@b
    move-object/from16 v1, v25

    #@d
    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 331
    .local v8, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    #@12
    move-object/from16 v0, v18

    #@14
    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@17
    .line 332
    .local v18, "fontsIn":Ljava/io/FileInputStream;
    invoke-static/range {v18 .. v18}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    #@1a
    move-result-object v16

    #@1b
    .line 334
    .local v16, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v7, Ljava/util/HashMap;

    #@1d
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@20
    .line 336
    .local v7, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v15, Ljava/util/ArrayList;

    #@22
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 339
    .local v15, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/16 v19, 0x0

    #@27
    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v16

    #@29
    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@2b
    move-object/from16 v25, v0

    #@2d
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    #@30
    move-result v25

    #@31
    move/from16 v0, v19

    #@33
    move/from16 v1, v25

    #@35
    if-ge v0, v1, :cond_2

    #@37
    .line 340
    move-object/from16 v0, v16

    #@39
    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@3b
    move-object/from16 v25, v0

    #@3d
    move-object/from16 v0, v25

    #@3f
    move/from16 v1, v19

    #@41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v13

    #@45
    check-cast v13, Landroid/graphics/FontListParser$Family;

    #@47
    .line 341
    .local v13, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v19, :cond_0

    #@49
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    #@4b
    move-object/from16 v25, v0

    #@4d
    if-nez v25, :cond_1

    #@4f
    .line 342
    :cond_0
    invoke-static {v13, v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    #@52
    move-result-object v25

    #@53
    move-object/from16 v0, v25

    #@55
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@58
    .line 339
    :cond_1
    add-int/lit8 v19, v19, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 345
    .end local v13    # "f":Landroid/graphics/FontListParser$Family;
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@5e
    move-result v25

    #@5f
    move/from16 v0, v25

    #@61
    new-array v0, v0, [Landroid/graphics/FontFamily;

    #@63
    move-object/from16 v25, v0

    #@65
    move-object/from16 v0, v25

    #@67
    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6a
    move-result-object v25

    #@6b
    check-cast v25, [Landroid/graphics/FontFamily;

    #@6d
    sput-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@6f
    .line 346
    sget-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@71
    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    #@74
    move-result-object v25

    #@75
    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    #@78
    .line 348
    new-instance v22, Ljava/util/HashMap;

    #@7a
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    #@7d
    .line 349
    .local v22, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/16 v19, 0x0

    #@7f
    :goto_1
    move-object/from16 v0, v16

    #@81
    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@83
    move-object/from16 v25, v0

    #@85
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    #@88
    move-result v25

    #@89
    move/from16 v0, v19

    #@8b
    move/from16 v1, v25

    #@8d
    if-ge v0, v1, :cond_5

    #@8f
    .line 351
    move-object/from16 v0, v16

    #@91
    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@93
    move-object/from16 v25, v0

    #@95
    move-object/from16 v0, v25

    #@97
    move/from16 v1, v19

    #@99
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9c
    move-result-object v13

    #@9d
    check-cast v13, Landroid/graphics/FontListParser$Family;

    #@9f
    .line 352
    .restart local v13    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    #@a1
    move-object/from16 v25, v0

    #@a3
    if-eqz v25, :cond_3

    #@a5
    .line 353
    if-nez v19, :cond_4

    #@a7
    .line 356
    sget-object v23, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    #@a9
    .line 362
    .local v23, "typeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    #@ab
    move-object/from16 v25, v0

    #@ad
    move-object/from16 v0, v22

    #@af
    move-object/from16 v1, v25

    #@b1
    move-object/from16 v2, v23

    #@b3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 349
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    add-int/lit8 v19, v19, 0x1

    #@b8
    goto :goto_1

    #@b9
    .line 358
    :cond_4
    invoke-static {v13, v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    #@bc
    move-result-object v17

    #@bd
    .line 359
    .local v17, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v25, 0x1

    #@bf
    move/from16 v0, v25

    #@c1
    new-array v14, v0, [Landroid/graphics/FontFamily;

    #@c3
    const/16 v25, 0x0

    #@c5
    aput-object v17, v14, v25

    #@c7
    .line 360
    .local v14, "families":[Landroid/graphics/FontFamily;
    invoke-static {v14}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    #@ca
    move-result-object v23

    #@cb
    .restart local v23    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    #@cc
    .line 365
    .end local v13    # "f":Landroid/graphics/FontListParser$Family;
    .end local v14    # "families":[Landroid/graphics/FontFamily;
    .end local v17    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v23    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    move-object/from16 v0, v16

    #@ce
    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    #@d0
    move-object/from16 v25, v0

    #@d2
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d5
    move-result-object v5

    #@d6
    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d9
    move-result v25

    #@da
    if-eqz v25, :cond_7

    #@dc
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@df
    move-result-object v4

    #@e0
    check-cast v4, Landroid/graphics/FontListParser$Alias;

    #@e2
    .line 366
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    #@e4
    move-object/from16 v25, v0

    #@e6
    move-object/from16 v0, v22

    #@e8
    move-object/from16 v1, v25

    #@ea
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    move-result-object v6

    #@ee
    check-cast v6, Landroid/graphics/Typeface;

    #@f0
    .line 367
    .local v6, "base":Landroid/graphics/Typeface;
    move-object/from16 v20, v6

    #@f2
    .line 368
    .local v20, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    #@f4
    move/from16 v24, v0

    #@f6
    .line 369
    .local v24, "weight":I
    const/16 v25, 0x190

    #@f8
    move/from16 v0, v24

    #@fa
    move/from16 v1, v25

    #@fc
    if-eq v0, v1, :cond_6

    #@fe
    .line 370
    new-instance v20, Landroid/graphics/Typeface;

    #@100
    .end local v20    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v6, Landroid/graphics/Typeface;->native_instance:J

    #@102
    move-wide/from16 v26, v0

    #@104
    move-wide/from16 v0, v26

    #@106
    move/from16 v2, v24

    #@108
    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    #@10b
    move-result-wide v26

    #@10c
    move-object/from16 v0, v20

    #@10e
    move-wide/from16 v1, v26

    #@110
    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    #@113
    .line 372
    .restart local v20    # "newFace":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    #@115
    move-object/from16 v25, v0

    #@117
    move-object/from16 v0, v22

    #@119
    move-object/from16 v1, v25

    #@11b
    move-object/from16 v2, v20

    #@11d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    #@120
    goto :goto_3

    #@121
    .line 376
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "base":Landroid/graphics/Typeface;
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    .end local v20    # "newFace":Landroid/graphics/Typeface;
    .end local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v24    # "weight":I
    :catch_0
    move-exception v11

    #@122
    .line 377
    .local v11, "e":Ljava/lang/RuntimeException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@124
    const-string/jumbo v26, "Didn\'t create default family (most likely, non-Minikin build)"

    #@127
    move-object/from16 v0, v25

    #@129
    move-object/from16 v1, v26

    #@12b
    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12e
    .line 326
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :goto_4
    return-void

    #@12f
    .line 374
    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    .restart local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v18    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v19    # "i":I
    .restart local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_7
    :try_start_1
    sput-object v22, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    #@131
    goto :goto_4

    #@132
    .line 379
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "fontsIn":Ljava/io/FileInputStream;
    .end local v19    # "i":I
    .end local v22    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v9

    #@133
    .line 380
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@135
    new-instance v26, Ljava/lang/StringBuilder;

    #@137
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v27, "Error opening "

    #@13d
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v26

    #@141
    move-object/from16 v0, v26

    #@143
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v26

    #@147
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v26

    #@14b
    move-object/from16 v0, v25

    #@14d
    move-object/from16 v1, v26

    #@14f
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@152
    goto :goto_4

    #@153
    .line 383
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    #@154
    .line 384
    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@156
    new-instance v26, Ljava/lang/StringBuilder;

    #@158
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    const-string/jumbo v27, "XML parse exception for "

    #@15e
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v26

    #@162
    move-object/from16 v0, v26

    #@164
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v26

    #@168
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v26

    #@16c
    move-object/from16 v0, v25

    #@16e
    move-object/from16 v1, v26

    #@170
    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@173
    goto :goto_4

    #@174
    .line 381
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v10

    #@175
    .line 382
    .local v10, "e":Ljava/io/IOException;
    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@177
    new-instance v26, Ljava/lang/StringBuilder;

    #@179
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    const-string/jumbo v27, "Error reading "

    #@17f
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v26

    #@183
    move-object/from16 v0, v26

    #@185
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v26

    #@189
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v26

    #@18d
    move-object/from16 v0, v25

    #@18f
    move-object/from16 v1, v26

    #@191
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@194
    goto :goto_4
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;
    .locals 20
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/FontListParser$Family;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    #@0
    .prologue
    .line 299
    .local p1, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v8, Landroid/graphics/FontFamily;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v3, v0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    #@a
    invoke-direct {v8, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 300
    .local v8, "fontFamily":Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v18

    #@15
    .local v18, "font$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_6

    #@1b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v17

    #@1f
    check-cast v17, Landroid/graphics/FontListParser$Font;

    #@21
    .line 301
    .local v17, "font":Landroid/graphics/FontListParser$Font;
    move-object/from16 v0, v17

    #@23
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    #@25
    move-object/from16 v0, p1

    #@27
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    check-cast v9, Ljava/nio/ByteBuffer;

    #@2d
    .line 302
    .local v9, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_5

    #@2f
    .line 303
    const/4 v10, 0x0

    #@30
    const/4 v15, 0x0

    #@31
    .local v15, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    #@33
    move-object/from16 v0, v17

    #@35
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    #@37
    move-object/from16 v0, v16

    #@39
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3c
    .line 304
    .end local v15    # "file":Ljava/io/FileInputStream;
    .local v16, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@3f
    move-result-object v2

    #@40
    .line 305
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    #@43
    move-result-wide v6

    #@44
    .line 306
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@46
    const-wide/16 v4, 0x0

    #@48
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@4b
    move-result-object v9

    #@4c
    .line 307
    move-object/from16 v0, v17

    #@4e
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    #@50
    move-object/from16 v0, p1

    #@52
    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@55
    .line 311
    if-eqz v16, :cond_1

    #@57
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@5a
    :cond_1
    :goto_1
    if-eqz v10, :cond_5

    #@5c
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@5d
    .line 308
    :catch_0
    move-exception v14

    #@5e
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    #@60
    .line 309
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@62
    new-instance v4, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v5, "Error mapping font file "

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    move-object/from16 v0, v17

    #@70
    iget-object v5, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    goto :goto_0

    #@7e
    .line 311
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "fontSize":J
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    #@7f
    goto :goto_1

    #@80
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    #@81
    .end local v15    # "file":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@82
    :catchall_0
    move-exception v4

    #@83
    move-object/from16 v19, v4

    #@85
    move-object v4, v3

    #@86
    move-object/from16 v3, v19

    #@88
    :goto_4
    if-eqz v15, :cond_2

    #@8a
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@8d
    :cond_2
    :goto_5
    if-eqz v4, :cond_4

    #@8f
    :try_start_6
    throw v4

    #@90
    .line 308
    :catch_3
    move-exception v14

    #@91
    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_2

    #@92
    .line 311
    .end local v14    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    #@93
    if-nez v4, :cond_3

    #@95
    move-object v4, v5

    #@96
    goto :goto_5

    #@97
    :cond_3
    if-eq v4, v5, :cond_2

    #@99
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@9c
    goto :goto_5

    #@9d
    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@9e
    .line 313
    :cond_5
    move-object/from16 v0, v17

    #@a0
    iget v10, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    #@a2
    move-object/from16 v0, v17

    #@a4
    iget-object v11, v0, Landroid/graphics/FontListParser$Font;->axes:Ljava/util/List;

    #@a6
    .line 314
    move-object/from16 v0, v17

    #@a8
    iget v12, v0, Landroid/graphics/FontListParser$Font;->weight:I

    #@aa
    move-object/from16 v0, v17

    #@ac
    iget-boolean v13, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    #@ae
    .line 313
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/nio/ByteBuffer;ILjava/util/List;IZ)Z

    #@b1
    move-result v3

    #@b2
    if-nez v3, :cond_0

    #@b4
    .line 315
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@b6
    new-instance v4, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v5, "Error creating font "

    #@be
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v4

    #@c2
    move-object/from16 v0, v17

    #@c4
    iget-object v5, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    #@c6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v4

    #@ca
    const-string/jumbo v5, "#"

    #@cd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v4

    #@d1
    move-object/from16 v0, v17

    #@d3
    iget v5, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    #@d5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v4

    #@d9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v4

    #@dd
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e0
    goto/16 :goto_0

    #@e2
    .line 318
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "font":Landroid/graphics/FontListParser$Font;
    :cond_6
    return-object v8

    #@e3
    .line 311
    .restart local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    .restart local v17    # "font":Landroid/graphics/FontListParser$Font;
    :catchall_1
    move-exception v3

    #@e4
    move-object v4, v10

    #@e5
    goto :goto_4

    #@e6
    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    #@e7
    move-object v4, v10

    #@e8
    move-object/from16 v15, v16

    #@ea
    .end local v16    # "file":Ljava/io/FileInputStream;
    .local v15, "file":Ljava/io/FileInputStream;
    goto :goto_4

    #@eb
    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    #@ec
    move-object/from16 v15, v16

    #@ee
    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    #@0
    .prologue
    .line 92
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    #@2
    .line 93
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    #@4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    #@7
    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 422
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 423
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 425
    check-cast v0, Landroid/graphics/Typeface;

    #@15
    .line 427
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    #@17
    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    #@19
    if-ne v3, v4, :cond_3

    #@1b
    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    #@1d
    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    #@1f
    cmp-long v3, v4, v6

    #@21
    if-nez v3, :cond_3

    #@23
    :goto_0
    return v1

    #@24
    :cond_3
    move v1, v2

    #@25
    goto :goto_0
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
    .line 413
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V

    #@5
    .line 414
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 416
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 411
    return-void

    #@d
    .line 415
    :catchall_0
    move-exception v0

    #@e
    .line 416
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@11
    .line 415
    throw v0
.end method

.method public getStyle()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 437
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    #@2
    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    #@4
    const/16 v1, 0x20

    #@6
    ushr-long/2addr v4, v1

    #@7
    xor-long/2addr v2, v4

    #@8
    long-to-int v1, v2

    #@9
    add-int/lit16 v0, v1, 0x20f

    #@b
    .line 438
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@d
    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    #@f
    add-int v0, v1, v2

    #@11
    .line 439
    return v0
.end method

.method public final isBold()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 103
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isItalic()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method
