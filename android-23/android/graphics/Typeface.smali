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
    .line 44
    const-string/jumbo v0, "Typeface"

    #@8
    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@a
    .line 63
    new-instance v0, Landroid/util/LongSparseArray;

    #@c
    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    #@f
    .line 62
    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    #@11
    .line 336
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    #@14
    move-object v0, v1

    #@15
    .line 338
    nop

    #@16
    nop

    #@17
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@1d
    move-object v0, v1

    #@1e
    .line 339
    nop

    #@1f
    nop

    #@20
    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@26
    .line 340
    const-string/jumbo v0, "sans-serif"

    #@29
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@2c
    move-result-object v0

    #@2d
    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@2f
    .line 341
    const-string/jumbo v0, "serif"

    #@32
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@38
    .line 342
    const-string/jumbo v0, "monospace"

    #@3b
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@41
    .line 344
    const/4 v0, 0x4

    #@42
    new-array v2, v0, [Landroid/graphics/Typeface;

    #@44
    .line 345
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@46
    aput-object v0, v2, v3

    #@48
    .line 346
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@4a
    aput-object v0, v2, v5

    #@4c
    move-object v0, v1

    #@4d
    .line 347
    nop

    #@4e
    nop

    #@4f
    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@52
    move-result-object v0

    #@53
    aput-object v0, v2, v6

    #@55
    .line 348
    nop

    #@56
    nop

    #@57
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@5a
    move-result-object v0

    #@5b
    aput-object v0, v2, v4

    #@5d
    .line 344
    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    #@5f
    .line 42
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    #@0
    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    #@6
    .line 254
    const-wide/16 v0, 0x0

    #@8
    cmp-long v0, p1, v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v1, "native typeface cannot be made"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 258
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    #@17
    .line 259
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    #@1d
    .line 253
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    #@0
    .prologue
    .line 134
    if-ltz p1, :cond_0

    #@2
    const/4 v4, 0x3

    #@3
    if-le p1, v4, :cond_1

    #@5
    .line 135
    :cond_0
    const/4 p1, 0x0

    #@6
    .line 137
    :cond_1
    const-wide/16 v0, 0x0

    #@8
    .line 138
    .local v0, "ni":J
    if-eqz p0, :cond_3

    #@a
    .line 140
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    #@c
    if-ne v4, p1, :cond_2

    #@e
    .line 141
    return-object p0

    #@f
    .line 144
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    #@11
    .line 148
    :cond_3
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    #@13
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/util/SparseArray;

    #@19
    .line 150
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_4

    #@1b
    .line 151
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/graphics/Typeface;

    #@21
    .line 152
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_4

    #@23
    .line 153
    return-object v3

    #@24
    .line 157
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
    .line 158
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_5

    #@2f
    .line 159
    new-instance v2, Landroid/util/SparseArray;

    #@31
    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    #@32
    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    #@35
    .line 160
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    #@37
    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@3a
    .line 162
    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    .line 164
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
    .line 116
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 117
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
    .line 119
    :cond_0
    return-object v1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 184
    new-instance v1, Landroid/graphics/FontFamily;

    #@6
    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    #@9
    .line 185
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 186
    const/4 v2, 0x1

    #@10
    new-array v0, v2, [Landroid/graphics/FontFamily;

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v1, v0, v2

    #@15
    .line 187
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 190
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "Font asset not found "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    #@0
    .prologue
    .line 227
    array-length v2, p0

    #@1
    new-array v1, v2, [J

    #@3
    .line 228
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 229
    aget-object v2, p0, v0

    #@9
    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    #@b
    aput-wide v2, v1, v0

    #@d
    .line 228
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 231
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
    .line 242
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
    .line 243
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 244
    aget-object v2, p0, v0

    #@d
    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    #@f
    aput-wide v2, v1, v0

    #@11
    .line 243
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 246
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
    .line 247
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
    .line 246
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_1

    #@27
    .line 249
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
    .line 200
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
    .line 210
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 211
    new-instance v1, Landroid/graphics/FontFamily;

    #@6
    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    #@9
    .line 212
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 213
    const/4 v2, 0x1

    #@10
    new-array v0, v2, [Landroid/graphics/FontFamily;

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v1, v0, v2

    #@15
    .line 214
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 217
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
    .line 173
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
    .line 354
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/system/etc/"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method private static init()V
    .locals 27

    #@0
    .prologue
    .line 277
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    #@3
    move-result-object v20

    #@4
    .line 278
    .local v20, "systemFontConfigLocation":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    #@6
    const-string/jumbo v24, "fonts.xml"

    #@9
    move-object/from16 v0, v20

    #@b
    move-object/from16 v1, v24

    #@d
    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 280
    .local v7, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    #@12
    move-object/from16 v0, v17

    #@14
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@17
    .line 281
    .local v17, "fontsIn":Ljava/io/FileInputStream;
    invoke-static/range {v17 .. v17}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    #@1a
    move-result-object v15

    #@1b
    .line 283
    .local v15, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v14, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 286
    .local v14, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/16 v18, 0x0

    #@22
    .local v18, "i":I
    :goto_0
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@24
    move-object/from16 v24, v0

    #@26
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    #@29
    move-result v24

    #@2a
    move/from16 v0, v18

    #@2c
    move/from16 v1, v24

    #@2e
    if-ge v0, v1, :cond_2

    #@30
    .line 287
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@32
    move-object/from16 v24, v0

    #@34
    move-object/from16 v0, v24

    #@36
    move/from16 v1, v18

    #@38
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v12

    #@3c
    check-cast v12, Landroid/graphics/FontListParser$Family;

    #@3e
    .line 288
    .local v12, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v18, :cond_0

    #@40
    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    #@42
    move-object/from16 v24, v0

    #@44
    if-nez v24, :cond_1

    #@46
    .line 289
    :cond_0
    invoke-static {v12}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    #@49
    move-result-object v24

    #@4a
    move-object/from16 v0, v24

    #@4c
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    .line 286
    :cond_1
    add-int/lit8 v18, v18, 0x1

    #@51
    goto :goto_0

    #@52
    .line 292
    .end local v12    # "f":Landroid/graphics/FontListParser$Family;
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@55
    move-result v24

    #@56
    move/from16 v0, v24

    #@58
    new-array v0, v0, [Landroid/graphics/FontFamily;

    #@5a
    move-object/from16 v24, v0

    #@5c
    move-object/from16 v0, v24

    #@5e
    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@61
    move-result-object v24

    #@62
    check-cast v24, [Landroid/graphics/FontFamily;

    #@64
    sput-object v24, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@66
    .line 293
    sget-object v24, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    #@68
    invoke-static/range {v24 .. v24}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    #@6b
    move-result-object v24

    #@6c
    invoke-static/range {v24 .. v24}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    #@6f
    .line 295
    new-instance v21, Ljava/util/HashMap;

    #@71
    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    #@74
    .line 296
    .local v21, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/16 v18, 0x0

    #@76
    :goto_1
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@78
    move-object/from16 v24, v0

    #@7a
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    #@7d
    move-result v24

    #@7e
    move/from16 v0, v18

    #@80
    move/from16 v1, v24

    #@82
    if-ge v0, v1, :cond_5

    #@84
    .line 298
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@86
    move-object/from16 v24, v0

    #@88
    move-object/from16 v0, v24

    #@8a
    move/from16 v1, v18

    #@8c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8f
    move-result-object v12

    #@90
    check-cast v12, Landroid/graphics/FontListParser$Family;

    #@92
    .line 299
    .restart local v12    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    #@94
    move-object/from16 v24, v0

    #@96
    if-eqz v24, :cond_3

    #@98
    .line 300
    if-nez v18, :cond_4

    #@9a
    .line 303
    sget-object v22, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    #@9c
    .line 309
    .local v22, "typeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    #@9e
    move-object/from16 v24, v0

    #@a0
    move-object/from16 v0, v21

    #@a2
    move-object/from16 v1, v24

    #@a4
    move-object/from16 v2, v22

    #@a6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    .line 296
    .end local v22    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    add-int/lit8 v18, v18, 0x1

    #@ab
    goto :goto_1

    #@ac
    .line 305
    :cond_4
    invoke-static {v12}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    #@af
    move-result-object v16

    #@b0
    .line 306
    .local v16, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v24, 0x1

    #@b2
    move/from16 v0, v24

    #@b4
    new-array v13, v0, [Landroid/graphics/FontFamily;

    #@b6
    const/16 v24, 0x0

    #@b8
    aput-object v16, v13, v24

    #@ba
    .line 307
    .local v13, "families":[Landroid/graphics/FontFamily;
    invoke-static {v13}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    #@bd
    move-result-object v22

    #@be
    .restart local v22    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    #@bf
    .line 312
    .end local v12    # "f":Landroid/graphics/FontListParser$Family;
    .end local v13    # "families":[Landroid/graphics/FontFamily;
    .end local v16    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v22    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    #@c1
    move-object/from16 v24, v0

    #@c3
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c6
    move-result-object v5

    #@c7
    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@ca
    move-result v24

    #@cb
    if-eqz v24, :cond_7

    #@cd
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d0
    move-result-object v4

    #@d1
    check-cast v4, Landroid/graphics/FontListParser$Alias;

    #@d3
    .line 313
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    #@d5
    move-object/from16 v24, v0

    #@d7
    move-object/from16 v0, v21

    #@d9
    move-object/from16 v1, v24

    #@db
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@de
    move-result-object v6

    #@df
    check-cast v6, Landroid/graphics/Typeface;

    #@e1
    .line 314
    .local v6, "base":Landroid/graphics/Typeface;
    move-object/from16 v19, v6

    #@e3
    .line 315
    .local v19, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    #@e5
    move/from16 v23, v0

    #@e7
    .line 316
    .local v23, "weight":I
    const/16 v24, 0x190

    #@e9
    move/from16 v0, v23

    #@eb
    move/from16 v1, v24

    #@ed
    if-eq v0, v1, :cond_6

    #@ef
    .line 317
    new-instance v19, Landroid/graphics/Typeface;

    #@f1
    .end local v19    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v6, Landroid/graphics/Typeface;->native_instance:J

    #@f3
    move-wide/from16 v24, v0

    #@f5
    move-wide/from16 v0, v24

    #@f7
    move/from16 v2, v23

    #@f9
    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    #@fc
    move-result-wide v24

    #@fd
    move-object/from16 v0, v19

    #@ff
    move-wide/from16 v1, v24

    #@101
    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    #@104
    .line 319
    .restart local v19    # "newFace":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    #@106
    move-object/from16 v24, v0

    #@108
    move-object/from16 v0, v21

    #@10a
    move-object/from16 v1, v24

    #@10c
    move-object/from16 v2, v19

    #@10e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    #@111
    goto :goto_3

    #@112
    .line 323
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "base":Landroid/graphics/Typeface;
    .end local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v17    # "fontsIn":Ljava/io/FileInputStream;
    .end local v18    # "i":I
    .end local v19    # "newFace":Landroid/graphics/Typeface;
    .end local v21    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v23    # "weight":I
    :catch_0
    move-exception v10

    #@113
    .line 324
    .local v10, "e":Ljava/lang/RuntimeException;
    sget-object v24, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@115
    const-string/jumbo v25, "Didn\'t create default family (most likely, non-Minikin build)"

    #@118
    move-object/from16 v0, v24

    #@11a
    move-object/from16 v1, v25

    #@11c
    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11f
    .line 275
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_4
    return-void

    #@120
    .line 321
    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    .restart local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v17    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v18    # "i":I
    .restart local v21    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_7
    :try_start_1
    sput-object v21, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    #@122
    goto :goto_4

    #@123
    .line 326
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v17    # "fontsIn":Ljava/io/FileInputStream;
    .end local v18    # "i":I
    .end local v21    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v8

    #@124
    .line 327
    .local v8, "e":Ljava/io/FileNotFoundException;
    sget-object v24, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@126
    new-instance v25, Ljava/lang/StringBuilder;

    #@128
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v26, "Error opening "

    #@12e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v25

    #@132
    move-object/from16 v0, v25

    #@134
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v25

    #@138
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v25

    #@13c
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13f
    goto :goto_4

    #@140
    .line 330
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v11

    #@141
    .line 331
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v24, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@143
    new-instance v25, Ljava/lang/StringBuilder;

    #@145
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v26, "XML parse exception for "

    #@14b
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v25

    #@14f
    move-object/from16 v0, v25

    #@151
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v25

    #@155
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v25

    #@159
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15c
    goto :goto_4

    #@15d
    .line 328
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v9

    #@15e
    .line 329
    .local v9, "e":Ljava/io/IOException;
    sget-object v24, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    #@160
    new-instance v25, Ljava/lang/StringBuilder;

    #@162
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v26, "Error reading "

    #@168
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v25

    #@16c
    move-object/from16 v0, v25

    #@16e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v25

    #@172
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v25

    #@176
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@179
    goto :goto_4
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    #@0
    .prologue
    .line 263
    new-instance v2, Landroid/graphics/FontFamily;

    #@2
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    #@4
    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    #@6
    invoke-direct {v2, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 264
    .local v2, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "font$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/graphics/FontListParser$Font;

    #@1b
    .line 265
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    #@1d
    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    #@1f
    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    #@21
    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    #@24
    goto :goto_0

    #@25
    .line 267
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v2
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
    .line 85
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    #@2
    .line 86
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    #@4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    #@7
    .line 84
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
    .line 368
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 369
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
    .line 371
    check-cast v0, Landroid/graphics/Typeface;

    #@15
    .line 373
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
    .line 360
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 362
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 358
    return-void

    #@9
    .line 361
    :catchall_0
    move-exception v0

    #@a
    .line 362
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 361
    throw v0
.end method

.method public getStyle()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 383
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
    .line 384
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@d
    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    #@f
    add-int v0, v1, v2

    #@11
    .line 385
    return v0
.end method

.method public final isBold()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 96
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
    .line 101
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
