.class public Landroid/renderscript/Font;
.super Landroid/renderscript/BaseObj;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Font$FontFamily;,
        Landroid/renderscript/Font$Style;
    }
.end annotation


# static fields
.field private static synthetic -android_renderscript_Font$StyleSwitchesValues:[I

.field private static sFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/renderscript/Font$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMonoNames:[Ljava/lang/String;

.field private static final sSansNames:[Ljava/lang/String;

.field private static final sSerifNames:[Ljava/lang/String;


# direct methods
.method private static synthetic -getandroid_renderscript_Font$StyleSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/renderscript/Font;->-android_renderscript_Font$StyleSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/Font;->-android_renderscript_Font$StyleSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/renderscript/Font$Style;->values()[Landroid/renderscript/Font$Style;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/renderscript/Font$Style;->BOLD:Landroid/renderscript/Font$Style;

    #@10
    invoke-virtual {v1}, Landroid/renderscript/Font$Style;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/Font$Style;->BOLD_ITALIC:Landroid/renderscript/Font$Style;

    #@19
    invoke-virtual {v1}, Landroid/renderscript/Font$Style;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/Font$Style;->ITALIC:Landroid/renderscript/Font$Style;

    #@22
    invoke-virtual {v1}, Landroid/renderscript/Font$Style;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/renderscript/Font$Style;->NORMAL:Landroid/renderscript/Font$Style;

    #@2b
    invoke-virtual {v1}, Landroid/renderscript/Font$Style;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/renderscript/Font;->-android_renderscript_Font$StyleSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 50
    const/4 v0, 0x5

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    .line 51
    const-string/jumbo v1, "sans-serif"

    #@b
    aput-object v1, v0, v3

    #@d
    const-string/jumbo v1, "arial"

    #@10
    aput-object v1, v0, v4

    #@12
    const-string/jumbo v1, "helvetica"

    #@15
    aput-object v1, v0, v5

    #@17
    const-string/jumbo v1, "tahoma"

    #@1a
    aput-object v1, v0, v6

    #@1c
    const-string/jumbo v1, "verdana"

    #@1f
    aput-object v1, v0, v7

    #@21
    .line 50
    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    #@23
    .line 54
    const/16 v0, 0xa

    #@25
    new-array v0, v0, [Ljava/lang/String;

    #@27
    .line 55
    const-string/jumbo v1, "serif"

    #@2a
    aput-object v1, v0, v3

    #@2c
    const-string/jumbo v1, "times"

    #@2f
    aput-object v1, v0, v4

    #@31
    const-string/jumbo v1, "times new roman"

    #@34
    aput-object v1, v0, v5

    #@36
    const-string/jumbo v1, "palatino"

    #@39
    aput-object v1, v0, v6

    #@3b
    const-string/jumbo v1, "georgia"

    #@3e
    aput-object v1, v0, v7

    #@40
    const-string/jumbo v1, "baskerville"

    #@43
    const/4 v2, 0x5

    #@44
    aput-object v1, v0, v2

    #@46
    .line 56
    const-string/jumbo v1, "goudy"

    #@49
    const/4 v2, 0x6

    #@4a
    aput-object v1, v0, v2

    #@4c
    const-string/jumbo v1, "fantasy"

    #@4f
    const/4 v2, 0x7

    #@50
    aput-object v1, v0, v2

    #@52
    const-string/jumbo v1, "cursive"

    #@55
    const/16 v2, 0x8

    #@57
    aput-object v1, v0, v2

    #@59
    const-string/jumbo v1, "ITC Stone Serif"

    #@5c
    const/16 v2, 0x9

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 54
    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    #@62
    .line 59
    new-array v0, v7, [Ljava/lang/String;

    #@64
    .line 60
    const-string/jumbo v1, "monospace"

    #@67
    aput-object v1, v0, v3

    #@69
    const-string/jumbo v1, "courier"

    #@6c
    aput-object v1, v0, v4

    #@6e
    const-string/jumbo v1, "courier new"

    #@71
    aput-object v1, v0, v5

    #@73
    const-string/jumbo v1, "monaco"

    #@76
    aput-object v1, v0, v6

    #@78
    .line 59
    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    #@7a
    .line 130
    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    #@7d
    .line 47
    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 151
    return-void
.end method

.method private static addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .locals 3
    .param p0, "family"    # Landroid/renderscript/Font$FontFamily;

    #@0
    .prologue
    .line 96
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 97
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    #@8
    iget-object v2, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    #@a
    aget-object v2, v2, v0

    #@c
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 96
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 95
    :cond_0
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "familyName"    # Ljava/lang/String;
    .param p3, "fontStyle"    # Landroid/renderscript/Font$Style;
    .param p4, "pointSize"    # F

    #@0
    .prologue
    .line 239
    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 240
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 241
    .local v1, "fontPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "/fonts/"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 242
    invoke-static {p0, p1, v1, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    #@27
    move-result-object v2

    #@28
    return-object v2
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 184
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@6
    move-result-object v1

    #@7
    .line 185
    .local v1, "mgr":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@a
    move-result-object v5

    #@b
    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    #@d
    .line 187
    .local v0, "dpi":I
    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J

    #@10
    move-result-wide v2

    #@11
    .line 188
    .local v2, "fontId":J
    const-wide/16 v6, 0x0

    #@13
    cmp-long v5, v2, v6

    #@15
    if-nez v5, :cond_0

    #@17
    .line 189
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    #@19
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "Unable to create font from asset "

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v5

    #@31
    .line 191
    :cond_0
    new-instance v4, Landroid/renderscript/Font;

    #@33
    invoke-direct {v4, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    #@36
    .line 192
    .local v4, "rsFont":Landroid/renderscript/Font;
    return-object v4
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "pointSize"    # F

    #@0
    .prologue
    .line 176
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 161
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@6
    move-result-object v4

    #@7
    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    #@9
    .line 162
    .local v0, "dpi":I
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)J

    #@c
    move-result-wide v2

    #@d
    .line 164
    .local v2, "fontId":J
    const-wide/16 v4, 0x0

    #@f
    cmp-long v4, v2, v4

    #@11
    if-nez v4, :cond_0

    #@13
    .line 165
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "Unable to create font from file "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 167
    :cond_0
    new-instance v1, Landroid/renderscript/Font;

    #@2f
    invoke-direct {v1, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    #@32
    .line 169
    .local v1, "rsFont":Landroid/renderscript/Font;
    return-object v1
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .locals 16
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "pointSize"    # F

    #@0
    .prologue
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "R."

    #@8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 201
    .local v3, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@1b
    .line 202
    const/4 v9, 0x0

    #@1c
    .line 204
    .local v9, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v9

    #@20
    .line 209
    .local v9, "is":Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@23
    move-result-object v2

    #@24
    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    #@26
    .line 211
    .local v5, "dpi":I
    const-wide/16 v10, 0x0

    #@28
    .line 212
    .local v10, "fontId":J
    instance-of v2, v9, Landroid/content/res/AssetManager$AssetInputStream;

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 213
    check-cast v9, Landroid/content/res/AssetManager$AssetInputStream;

    #@2e
    .end local v9    # "is":Ljava/io/InputStream;
    invoke-virtual {v9}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    #@31
    move-result-wide v6

    #@32
    .local v6, "asset":J
    move-object/from16 v2, p0

    #@34
    move/from16 v4, p3

    #@36
    .line 214
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J

    #@39
    move-result-wide v10

    #@3a
    .line 219
    const-wide/16 v14, 0x0

    #@3c
    cmp-long v2, v10, v14

    #@3e
    if-nez v2, :cond_1

    #@40
    .line 220
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@42
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v13, "Unable to create font from resource "

    #@4a
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    move/from16 v0, p2

    #@50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2

    #@5c
    .line 205
    .end local v5    # "dpi":I
    .end local v6    # "asset":J
    .end local v10    # "fontId":J
    .local v9, "is":Ljava/io/InputStream;
    :catch_0
    move-exception v8

    #@5d
    .line 206
    .local v8, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@5f
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v13, "Unable to open resource "

    #@67
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    move/from16 v0, p2

    #@6d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@78
    throw v2

    #@79
    .line 216
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "dpi":I
    .local v9, "is":Ljava/io/InputStream;
    .restart local v10    # "fontId":J
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@7b
    const-string/jumbo v4, "Unsupported asset stream created"

    #@7e
    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@81
    throw v2

    #@82
    .line 222
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v6    # "asset":J
    :cond_1
    new-instance v12, Landroid/renderscript/Font;

    #@84
    move-object/from16 v0, p0

    #@86
    invoke-direct {v12, v10, v11, v0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    #@89
    .line 223
    .local v12, "rsFont":Landroid/renderscript/Font;
    return-object v12
.end method

.method static getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .locals 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # Landroid/renderscript/Font$Style;

    #@0
    .prologue
    .line 134
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Font$FontFamily;

    #@8
    .line 135
    .local v0, "family":Landroid/renderscript/Font$FontFamily;
    if-eqz v0, :cond_0

    #@a
    .line 136
    invoke-static {}, Landroid/renderscript/Font;->-getandroid_renderscript_Font$StyleSwitchesValues()[I

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1}, Landroid/renderscript/Font$Style;->ordinal()I

    #@11
    move-result v2

    #@12
    aget v1, v1, v2

    #@14
    packed-switch v1, :pswitch_data_0

    #@17
    .line 148
    :cond_0
    const-string/jumbo v1, "DroidSans.ttf"

    #@1a
    return-object v1

    #@1b
    .line 138
    :pswitch_0
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    #@1d
    return-object v1

    #@1e
    .line 140
    :pswitch_1
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    #@20
    return-object v1

    #@21
    .line 142
    :pswitch_2
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    #@23
    return-object v1

    #@24
    .line 144
    :pswitch_3
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    #@26
    return-object v1

    #@27
    .line 136
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static initFontFamilyMap()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 102
    new-instance v3, Ljava/util/HashMap;

    #@3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@6
    sput-object v3, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    #@8
    .line 104
    new-instance v1, Landroid/renderscript/Font$FontFamily;

    #@a
    invoke-direct {v1, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily;)V

    #@d
    .line 105
    .local v1, "sansFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    #@f
    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    #@11
    .line 106
    const-string/jumbo v3, "Roboto-Regular.ttf"

    #@14
    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    #@16
    .line 107
    const-string/jumbo v3, "Roboto-Bold.ttf"

    #@19
    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    #@1b
    .line 108
    const-string/jumbo v3, "Roboto-Italic.ttf"

    #@1e
    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    #@20
    .line 109
    const-string/jumbo v3, "Roboto-BoldItalic.ttf"

    #@23
    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    #@25
    .line 110
    invoke-static {v1}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    #@28
    .line 112
    new-instance v2, Landroid/renderscript/Font$FontFamily;

    #@2a
    invoke-direct {v2, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily;)V

    #@2d
    .line 113
    .local v2, "serifFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    #@2f
    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    #@31
    .line 114
    const-string/jumbo v3, "NotoSerif-Regular.ttf"

    #@34
    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    #@36
    .line 115
    const-string/jumbo v3, "NotoSerif-Bold.ttf"

    #@39
    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    #@3b
    .line 116
    const-string/jumbo v3, "NotoSerif-Italic.ttf"

    #@3e
    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    #@40
    .line 117
    const-string/jumbo v3, "NotoSerif-BoldItalic.ttf"

    #@43
    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    #@45
    .line 118
    invoke-static {v2}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    #@48
    .line 120
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    #@4a
    invoke-direct {v0, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily;)V

    #@4d
    .line 121
    .local v0, "monoFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    #@4f
    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    #@51
    .line 122
    const-string/jumbo v3, "DroidSansMono.ttf"

    #@54
    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    #@56
    .line 123
    const-string/jumbo v3, "DroidSansMono.ttf"

    #@59
    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    #@5b
    .line 124
    const-string/jumbo v3, "DroidSansMono.ttf"

    #@5e
    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    #@60
    .line 125
    const-string/jumbo v3, "DroidSansMono.ttf"

    #@63
    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    #@65
    .line 126
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    #@68
    .line 101
    return-void
.end method
