.class public Landroid/media/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field public static final EFFECT_AUTOFIX:Ljava/lang/String; = "android.media.effect.effects.AutoFixEffect"

.field public static final EFFECT_BACKDROPPER:Ljava/lang/String; = "android.media.effect.effects.BackDropperEffect"

.field public static final EFFECT_BITMAPOVERLAY:Ljava/lang/String; = "android.media.effect.effects.BitmapOverlayEffect"

.field public static final EFFECT_BLACKWHITE:Ljava/lang/String; = "android.media.effect.effects.BlackWhiteEffect"

.field public static final EFFECT_BRIGHTNESS:Ljava/lang/String; = "android.media.effect.effects.BrightnessEffect"

.field public static final EFFECT_CONTRAST:Ljava/lang/String; = "android.media.effect.effects.ContrastEffect"

.field public static final EFFECT_CROP:Ljava/lang/String; = "android.media.effect.effects.CropEffect"

.field public static final EFFECT_CROSSPROCESS:Ljava/lang/String; = "android.media.effect.effects.CrossProcessEffect"

.field public static final EFFECT_DOCUMENTARY:Ljava/lang/String; = "android.media.effect.effects.DocumentaryEffect"

.field public static final EFFECT_DUOTONE:Ljava/lang/String; = "android.media.effect.effects.DuotoneEffect"

.field public static final EFFECT_FILLLIGHT:Ljava/lang/String; = "android.media.effect.effects.FillLightEffect"

.field public static final EFFECT_FISHEYE:Ljava/lang/String; = "android.media.effect.effects.FisheyeEffect"

.field public static final EFFECT_FLIP:Ljava/lang/String; = "android.media.effect.effects.FlipEffect"

.field public static final EFFECT_GRAIN:Ljava/lang/String; = "android.media.effect.effects.GrainEffect"

.field public static final EFFECT_GRAYSCALE:Ljava/lang/String; = "android.media.effect.effects.GrayscaleEffect"

.field public static final EFFECT_IDENTITY:Ljava/lang/String; = "IdentityEffect"

.field public static final EFFECT_LOMOISH:Ljava/lang/String; = "android.media.effect.effects.LomoishEffect"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "android.media.effect.effects.NegativeEffect"

.field private static final EFFECT_PACKAGES:[Ljava/lang/String;

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "android.media.effect.effects.PosterizeEffect"

.field public static final EFFECT_REDEYE:Ljava/lang/String; = "android.media.effect.effects.RedEyeEffect"

.field public static final EFFECT_ROTATE:Ljava/lang/String; = "android.media.effect.effects.RotateEffect"

.field public static final EFFECT_SATURATE:Ljava/lang/String; = "android.media.effect.effects.SaturateEffect"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "android.media.effect.effects.SepiaEffect"

.field public static final EFFECT_SHARPEN:Ljava/lang/String; = "android.media.effect.effects.SharpenEffect"

.field public static final EFFECT_STRAIGHTEN:Ljava/lang/String; = "android.media.effect.effects.StraightenEffect"

.field public static final EFFECT_TEMPERATURE:Ljava/lang/String; = "android.media.effect.effects.ColorTemperatureEffect"

.field public static final EFFECT_TINT:Ljava/lang/String; = "android.media.effect.effects.TintEffect"

.field public static final EFFECT_VIGNETTE:Ljava/lang/String; = "android.media.effect.effects.VignetteEffect"


# instance fields
.field private mEffectContext:Landroid/media/effect/EffectContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 32
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 33
    const-string/jumbo v1, "android.media.effect.effects."

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 34
    const-string/jumbo v1, ""

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 32
    sput-object v0, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    #@11
    .line 28
    return-void
.end method

.method constructor <init>(Landroid/media/effect/EffectContext;)V
    .locals 0
    .param p1, "effectContext"    # Landroid/media/effect/EffectContext;

    #@0
    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 426
    iput-object p1, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    #@5
    .line 425
    return-void
.end method

.method private static getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    const/4 v2, 0x0

    #@1
    .line 470
    .local v2, "effectClass":Ljava/lang/Class;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v0

    #@9
    .line 473
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    sget-object v5, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    #@b
    const/4 v4, 0x0

    #@c
    array-length v6, v5

    #@d
    .end local v2    # "effectClass":Ljava/lang/Class;
    :goto_0
    if-ge v4, v6, :cond_0

    #@f
    aget-object v3, v5, v4

    #@11
    .line 475
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v2

    #@26
    .line 480
    .local v2, "effectClass":Ljava/lang/Class;
    if-eqz v2, :cond_1

    #@28
    .line 484
    .end local v2    # "effectClass":Ljava/lang/Class;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v2

    #@29
    .line 476
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@2a
    .line 473
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_0
.end method

.method private instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;
    .locals 8
    .param p1, "effectClass"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 490
    :try_start_0
    const-class v5, Landroid/media/effect/Effect;

    #@2
    invoke-virtual {p1, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 497
    const/4 v3, 0x0

    #@6
    .line 499
    .local v3, "effectConstructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x2

    #@7
    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    #@9
    const-class v6, Landroid/media/effect/EffectContext;

    #@b
    const/4 v7, 0x0

    #@c
    aput-object v6, v5, v7

    #@e
    const-class v6, Ljava/lang/String;

    #@10
    const/4 v7, 0x1

    #@11
    aput-object v6, v5, v7

    #@13
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@16
    move-result-object v3

    #@17
    .line 506
    .local v3, "effectConstructor":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x0

    #@18
    .line 508
    .local v2, "effect":Landroid/media/effect/Effect;
    const/4 v5, 0x2

    #@19
    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    #@1b
    iget-object v6, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    #@1d
    const/4 v7, 0x0

    #@1e
    aput-object v6, v5, v7

    #@20
    const/4 v6, 0x1

    #@21
    aput-object p2, v5, v6

    #@23
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    .end local v2    # "effect":Landroid/media/effect/Effect;
    check-cast v2, Landroid/media/effect/Effect;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    .line 514
    .local v2, "effect":Landroid/media/effect/Effect;
    return-object v2

    #@2a
    .line 491
    .end local v2    # "effect":Landroid/media/effect/Effect;
    .end local v3    # "effectConstructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    #@2b
    .line 492
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v7, "Attempting to allocate effect \'"

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    .line 493
    const-string/jumbo v7, "\' which is not a subclass of Effect!"

    #@40
    .line 492
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4b
    throw v5

    #@4c
    .line 500
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .local v3, "effectConstructor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v1

    #@4d
    .line 501
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@4f
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v7, "The effect class \'"

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    const-string/jumbo v7, "\' does not have "

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    .line 502
    const-string/jumbo v7, "the required constructor."

    #@69
    .line 501
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@74
    throw v5

    #@75
    .line 509
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .local v3, "effectConstructor":Ljava/lang/reflect/Constructor;
    :catch_2
    move-exception v4

    #@76
    .line 510
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    #@78
    new-instance v6, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v7, "There was an error constructing the effect \'"

    #@80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    .line 511
    const-string/jumbo v7, "\'!"

    #@8b
    .line 510
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@96
    throw v5
.end method

.method public static isEffectSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "effectName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 463
    invoke-static {p0}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method


# virtual methods
.method public createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;
    .locals 4
    .param p1, "effectName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 444
    invoke-static {p1}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 445
    .local v0, "effectClass":Ljava/lang/Class;
    if-nez v0, :cond_0

    #@6
    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Cannot instantiate unknown effect \'"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 447
    const-string/jumbo v3, "\'!"

    #@1b
    .line 446
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 449
    :cond_0
    invoke-direct {p0, v0, p1}, Landroid/media/effect/EffectFactory;->instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method
