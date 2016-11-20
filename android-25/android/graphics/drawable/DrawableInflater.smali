.class public final Landroid/graphics/drawable/DrawableInflater;
.super Ljava/lang/Object;
.source "DrawableInflater.java"


# static fields
.field private static final CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassLoader:Ljava/lang/ClassLoader;

.field private final mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 48
    sput-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    #@7
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    iput-object p1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    #@5
    .line 90
    iput-object p2, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    #@7
    .line 88
    return-void
.end method

.method private inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    :try_start_0
    sget-object v8, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    #@2
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 184
    :try_start_1
    sget-object v7, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    #@5
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/lang/reflect/Constructor;

    #@b
    .line 185
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/graphics/drawable/Drawable;>;"
    if-nez v1, :cond_0

    #@d
    .line 187
    iget-object v7, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    #@f
    invoke-virtual {v7, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@12
    move-result-object v7

    #@13
    const-class v9, Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v7, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    .line 188
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    const/4 v7, 0x0

    #@1a
    new-array v7, v7, [Ljava/lang/Class;

    #@1c
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@1f
    move-result-object v1

    #@20
    .line 189
    sget-object v7, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    #@22
    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    :cond_0
    :try_start_2
    monitor-exit v8

    #@26
    .line 192
    const/4 v7, 0x0

    #@27
    new-array v7, v7, [Ljava/lang/Object;

    #@29
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Landroid/graphics/drawable/Drawable;

    #@2f
    return-object v7

    #@30
    .line 183
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/graphics/drawable/Drawable;>;"
    :catchall_0
    move-exception v7

    #@31
    monitor-exit v8

    #@32
    throw v7
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@33
    .line 193
    :catch_0
    move-exception v5

    #@34
    .line 194
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Landroid/view/InflateException;

    #@36
    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "Error inflating class "

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    .line 194
    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@4d
    .line 196
    .local v6, "ie":Landroid/view/InflateException;
    invoke-virtual {v6, v5}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@50
    .line 197
    throw v6

    #@51
    .line 210
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    .end local v6    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v4

    #@52
    .line 211
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Landroid/view/InflateException;

    #@54
    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v8, "Error inflating class "

    #@5c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    .line 211
    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@6b
    .line 213
    .restart local v6    # "ie":Landroid/view/InflateException;
    invoke-virtual {v6, v4}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6e
    .line 214
    throw v6

    #@6f
    .line 204
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v3

    #@70
    .line 206
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Landroid/view/InflateException;

    #@72
    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v8, "Class not found "

    #@7a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v7

    #@86
    .line 206
    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@89
    .line 208
    .restart local v6    # "ie":Landroid/view/InflateException;
    invoke-virtual {v6, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8c
    .line 209
    throw v6

    #@8d
    .line 198
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "ie":Landroid/view/InflateException;
    :catch_3
    move-exception v2

    #@8e
    .line 200
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v6, Landroid/view/InflateException;

    #@90
    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v8, "Class is not a Drawable "

    #@98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v7

    #@a4
    .line 200
    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@a7
    .line 202
    .restart local v6    # "ie":Landroid/view/InflateException;
    invoke-virtual {v6, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@aa
    .line 203
    throw v6
.end method

.method private inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    const-string/jumbo v0, "selector"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 139
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@b
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@e
    return-object v0

    #@f
    .line 137
    :cond_0
    const-string/jumbo v0, "animated-selector"

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 141
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    #@1a
    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    #@1d
    return-object v0

    #@1e
    .line 137
    :cond_1
    const-string/jumbo v0, "level-list"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 143
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    #@29
    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    #@2c
    return-object v0

    #@2d
    .line 137
    :cond_2
    const-string/jumbo v0, "layer-list"

    #@30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 145
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    #@38
    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    #@3b
    return-object v0

    #@3c
    .line 137
    :cond_3
    const-string/jumbo v0, "transition"

    #@3f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_4

    #@45
    .line 147
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    #@47
    invoke-direct {v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    #@4a
    return-object v0

    #@4b
    .line 137
    :cond_4
    const-string/jumbo v0, "ripple"

    #@4e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_5

    #@54
    .line 149
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    #@56
    invoke-direct {v0}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    #@59
    return-object v0

    #@5a
    .line 137
    :cond_5
    const-string/jumbo v0, "color"

    #@5d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_6

    #@63
    .line 151
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@65
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    #@68
    return-object v0

    #@69
    .line 137
    :cond_6
    const-string/jumbo v0, "shape"

    #@6c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_7

    #@72
    .line 153
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@74
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    #@77
    return-object v0

    #@78
    .line 137
    :cond_7
    const-string/jumbo v0, "vector"

    #@7b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_8

    #@81
    .line 155
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    #@83
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    #@86
    return-object v0

    #@87
    .line 137
    :cond_8
    const-string/jumbo v0, "animated-vector"

    #@8a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_9

    #@90
    .line 157
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@92
    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    #@95
    return-object v0

    #@96
    .line 137
    :cond_9
    const-string/jumbo v0, "scale"

    #@99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v0

    #@9d
    if-eqz v0, :cond_a

    #@9f
    .line 159
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    #@a1
    invoke-direct {v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    #@a4
    return-object v0

    #@a5
    .line 137
    :cond_a
    const-string/jumbo v0, "clip"

    #@a8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result v0

    #@ac
    if-eqz v0, :cond_b

    #@ae
    .line 161
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    #@b0
    invoke-direct {v0}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    #@b3
    return-object v0

    #@b4
    .line 137
    :cond_b
    const-string/jumbo v0, "rotate"

    #@b7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v0

    #@bb
    if-eqz v0, :cond_c

    #@bd
    .line 163
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    #@bf
    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    #@c2
    return-object v0

    #@c3
    .line 137
    :cond_c
    const-string/jumbo v0, "animated-rotate"

    #@c6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v0

    #@ca
    if-eqz v0, :cond_d

    #@cc
    .line 165
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@ce
    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    #@d1
    return-object v0

    #@d2
    .line 137
    :cond_d
    const-string/jumbo v0, "animation-list"

    #@d5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v0

    #@d9
    if-eqz v0, :cond_e

    #@db
    .line 167
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    #@dd
    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    #@e0
    return-object v0

    #@e1
    .line 137
    :cond_e
    const-string/jumbo v0, "inset"

    #@e4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e7
    move-result v0

    #@e8
    if-eqz v0, :cond_f

    #@ea
    .line 169
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    #@ec
    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    #@ef
    return-object v0

    #@f0
    .line 137
    :cond_f
    const-string/jumbo v0, "bitmap"

    #@f3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v0

    #@f7
    if-eqz v0, :cond_10

    #@f9
    .line 171
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@fb
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    #@fe
    return-object v0

    #@ff
    .line 137
    :cond_10
    const-string/jumbo v0, "nine-patch"

    #@102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@105
    move-result v0

    #@106
    if-eqz v0, :cond_11

    #@108
    .line 173
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    #@10a
    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    #@10d
    return-object v0

    #@10e
    .line 175
    :cond_11
    const/4 v0, 0x0

    #@10f
    return-object v0
.end method

.method public static loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/DrawableInflater;->loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 77
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public inflateFromXml(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 119
    const-string/jumbo v1, "drawable"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 120
    const-string/jumbo v1, "class"

    #@d
    invoke-interface {p3, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    .line 121
    if-nez p1, :cond_0

    #@13
    .line 122
    new-instance v1, Landroid/view/InflateException;

    #@15
    const-string/jumbo v2, "<drawable> tag must specify class attribute"

    #@18
    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 126
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    .line 127
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    #@22
    .line 128
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v0

    #@26
    .line 130
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    #@28
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@2b
    .line 131
    return-object v0
.end method
