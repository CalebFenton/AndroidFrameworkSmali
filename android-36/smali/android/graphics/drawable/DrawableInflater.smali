.class public final Landroid/graphics/drawable/DrawableInflater;
.super Ljava/lang/Object;
.source "DrawableInflater.java"


# static fields
.field private static final greylist-max-o CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-r mClassLoader:Ljava/lang/ClassLoader;

.field private final greylist-max-o mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    .line 91
    iput-object p2, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 92
    return-void
.end method

.method private greylist-max-o inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .line 196
    :try_start_0
    sget-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_8a
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_6d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_33

    .line 197
    :try_start_3
    sget-object v1, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 198
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/graphics/drawable/Drawable;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 199
    iget-object v3, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 200
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 201
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v1, v4

    .line 202
    sget-object v4, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_30

    .line 205
    :try_start_27
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_2f} :catch_8a
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_2f} :catch_6d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_2f} :catch_50
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_33

    return-object v0

    .line 204
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/graphics/drawable/Drawable;>;"
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local p0    # "this":Landroid/graphics/drawable/DrawableInflater;
    .end local p1    # "className":Ljava/lang/String;
    :try_start_32
    throw v1
    :try_end_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_33} :catch_8a
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_33} :catch_6d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_33} :catch_50
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    .line 223
    .restart local p0    # "this":Landroid/graphics/drawable/DrawableInflater;
    .restart local p1    # "className":Ljava/lang/String;
    :catch_33
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 227
    throw v1

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_50
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 222
    throw v1

    .line 211
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_6d
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class is not a Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 216
    throw v1

    .line 206
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_8a
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v1
.end method

.method private greylist-max-o inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_170

    :cond_7
    goto/16 :goto_f2

    :sswitch_9
    const-string v0, "animated-vector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_f3

    :sswitch_15
    const-string v0, "animated-rotate"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_f3

    :sswitch_21
    const-string v0, "animated-image"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    goto/16 :goto_f3

    :sswitch_2d
    const-string/jumbo v0, "selector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_f3

    :sswitch_39
    const-string/jumbo v0, "level-list"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_f3

    :sswitch_45
    const-string/jumbo v0, "shape"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto/16 :goto_f3

    :sswitch_52
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_f3

    :sswitch_5f
    const-string/jumbo v0, "inset"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_f3

    :sswitch_6c
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_f3

    :sswitch_77
    const-string v0, "clip"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_f3

    :sswitch_83
    const-string/jumbo v0, "layer-list"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_f3

    :sswitch_8e
    const-string v0, "animated-selector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_f3

    :sswitch_98
    const-string/jumbo v0, "vector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_f3

    :sswitch_a4
    const-string/jumbo v0, "rotate"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_f3

    :sswitch_b0
    const-string/jumbo v0, "ripple"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_f3

    :sswitch_bb
    const-string v0, "bitmap"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto :goto_f3

    :sswitch_c6
    const-string v0, "animation-list"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_f3

    :sswitch_d1
    const-string/jumbo v0, "nine-patch"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    goto :goto_f3

    :sswitch_dd
    const-string/jumbo v0, "transition"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_f3

    :sswitch_e8
    const-string v0, "adaptive-icon"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_f3

    :goto_f2
    const/4 v0, -0x1

    :goto_f3
    packed-switch v0, :pswitch_data_1c2

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 187
    :pswitch_f8
    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>()V

    return-object v0

    .line 185
    :pswitch_fe
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    return-object v0

    .line 183
    :pswitch_104
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-object v0

    .line 181
    :pswitch_10a
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    return-object v0

    .line 179
    :pswitch_110
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    return-object v0

    .line 177
    :pswitch_116
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    return-object v0

    .line 175
    :pswitch_11c
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    return-object v0

    .line 173
    :pswitch_122
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    return-object v0

    .line 171
    :pswitch_128
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    return-object v0

    .line 169
    :pswitch_12e
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    return-object v0

    .line 167
    :pswitch_134
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    return-object v0

    .line 165
    :pswitch_13a
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0

    .line 163
    :pswitch_140
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-object v0

    .line 161
    :pswitch_146
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>()V

    return-object v0

    .line 159
    :pswitch_14c
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    return-object v0

    .line 157
    :pswitch_152
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    return-object v0

    .line 155
    :pswitch_158
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    return-object v0

    .line 153
    :pswitch_15e
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    return-object v0

    .line 151
    :pswitch_164
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    return-object v0

    .line 149
    :pswitch_16a
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-object v0

    :sswitch_data_170
    .sparse-switch
        -0x78aade90 -> :sswitch_e8
        -0x66c492ab -> :sswitch_dd
        -0x63a70093 -> :sswitch_d1
        -0x5905b6b9 -> :sswitch_c6
        -0x52c70ed1 -> :sswitch_bb
        -0x377b49d0 -> :sswitch_b0
        -0x372522a5 -> :sswitch_a4
        -0x30e61ebd -> :sswitch_98
        -0x1e6b8b37 -> :sswitch_8e
        -0x59d5866 -> :sswitch_83
        0x2ea350 -> :sswitch_77
        0x5a72f63 -> :sswitch_6c
        0x5fb611d -> :sswitch_5f
        0x683094a -> :sswitch_52
        0x6854fa1 -> :sswitch_45
        0x993c947 -> :sswitch_39
        0x4705f3df -> :sswitch_2d
        0x55f3e0b1 -> :sswitch_21
        0x780890c5 -> :sswitch_15
        0x7e4794ad -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_16a
        :pswitch_164
        :pswitch_15e
        :pswitch_158
        :pswitch_152
        :pswitch_14c
        :pswitch_146
        :pswitch_140
        :pswitch_13a
        :pswitch_134
        :pswitch_12e
        :pswitch_128
        :pswitch_122
        :pswitch_11c
        :pswitch_116
        :pswitch_110
        :pswitch_10a
        :pswitch_104
        :pswitch_fe
        :pswitch_f8
    .end packed-switch
.end method

.method public static greylist-max-o loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/DrawableInflater;->loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I

    .line 78
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o inflateFromXml(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 11
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

    .line 115
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "theme":Landroid/content/res/Resources$Theme;
    .local v1, "name":Ljava/lang/String;
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "attrs":Landroid/util/AttributeSet;
    .local v5, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "density"    # I
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const-string v0, "drawable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 130
    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p3, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    if-eqz p1, :cond_12

    goto :goto_1a

    .line 132
    :cond_12
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "<drawable> tag must specify class attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1a
    :goto_1a
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_24

    .line 138
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    :cond_24
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setSrcDensityOverride(I)V

    .line 141
    iget-object v1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2, p3, p5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 142
    return-object v0
.end method
