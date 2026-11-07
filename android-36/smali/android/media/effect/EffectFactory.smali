.class public Landroid/media/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field public static final whitelist EFFECT_AUTOFIX:Ljava/lang/String; = "android.media.effect.effects.AutoFixEffect"

.field public static final whitelist EFFECT_BACKDROPPER:Ljava/lang/String; = "android.media.effect.effects.BackDropperEffect"

.field public static final whitelist EFFECT_BITMAPOVERLAY:Ljava/lang/String; = "android.media.effect.effects.BitmapOverlayEffect"

.field public static final whitelist EFFECT_BLACKWHITE:Ljava/lang/String; = "android.media.effect.effects.BlackWhiteEffect"

.field public static final whitelist EFFECT_BRIGHTNESS:Ljava/lang/String; = "android.media.effect.effects.BrightnessEffect"

.field public static final whitelist EFFECT_CONTRAST:Ljava/lang/String; = "android.media.effect.effects.ContrastEffect"

.field public static final whitelist EFFECT_CROP:Ljava/lang/String; = "android.media.effect.effects.CropEffect"

.field public static final whitelist EFFECT_CROSSPROCESS:Ljava/lang/String; = "android.media.effect.effects.CrossProcessEffect"

.field public static final whitelist EFFECT_DOCUMENTARY:Ljava/lang/String; = "android.media.effect.effects.DocumentaryEffect"

.field public static final whitelist EFFECT_DUOTONE:Ljava/lang/String; = "android.media.effect.effects.DuotoneEffect"

.field public static final whitelist EFFECT_FILLLIGHT:Ljava/lang/String; = "android.media.effect.effects.FillLightEffect"

.field public static final whitelist EFFECT_FISHEYE:Ljava/lang/String; = "android.media.effect.effects.FisheyeEffect"

.field public static final whitelist EFFECT_FLIP:Ljava/lang/String; = "android.media.effect.effects.FlipEffect"

.field public static final whitelist EFFECT_GRAIN:Ljava/lang/String; = "android.media.effect.effects.GrainEffect"

.field public static final whitelist EFFECT_GRAYSCALE:Ljava/lang/String; = "android.media.effect.effects.GrayscaleEffect"

.field public static final greylist-max-o EFFECT_IDENTITY:Ljava/lang/String; = "IdentityEffect"

.field public static final whitelist EFFECT_LOMOISH:Ljava/lang/String; = "android.media.effect.effects.LomoishEffect"

.field public static final whitelist EFFECT_NEGATIVE:Ljava/lang/String; = "android.media.effect.effects.NegativeEffect"

.field private static final greylist-max-o EFFECT_PACKAGES:[Ljava/lang/String;

.field public static final whitelist EFFECT_POSTERIZE:Ljava/lang/String; = "android.media.effect.effects.PosterizeEffect"

.field public static final whitelist EFFECT_REDEYE:Ljava/lang/String; = "android.media.effect.effects.RedEyeEffect"

.field public static final whitelist EFFECT_ROTATE:Ljava/lang/String; = "android.media.effect.effects.RotateEffect"

.field public static final whitelist EFFECT_SATURATE:Ljava/lang/String; = "android.media.effect.effects.SaturateEffect"

.field public static final whitelist EFFECT_SEPIA:Ljava/lang/String; = "android.media.effect.effects.SepiaEffect"

.field public static final whitelist EFFECT_SHARPEN:Ljava/lang/String; = "android.media.effect.effects.SharpenEffect"

.field public static final whitelist EFFECT_STRAIGHTEN:Ljava/lang/String; = "android.media.effect.effects.StraightenEffect"

.field public static final whitelist EFFECT_TEMPERATURE:Ljava/lang/String; = "android.media.effect.effects.ColorTemperatureEffect"

.field public static final whitelist EFFECT_TINT:Ljava/lang/String; = "android.media.effect.effects.TintEffect"

.field public static final whitelist EFFECT_VIGNETTE:Ljava/lang/String; = "android.media.effect.effects.VignetteEffect"


# instance fields
.field private greylist-max-o mEffectContext:Landroid/media/effect/EffectContext;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    const-string v0, "android.media.effect.effects."

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/media/effect/EffectContext;)V
    .registers 2
    .param p1, "effectContext"    # Landroid/media/effect/EffectContext;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 427
    return-void
.end method

.method private static greylist-max-o getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .param p0, "className"    # Ljava/lang/String;

    .line 467
    const/4 v0, 0x0

    .line 470
    .local v0, "effectClass":Ljava/lang/Class;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 473
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    sget-object v2, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 475
    .local v5, "packageName":Ljava/lang/String;
    :try_start_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_26} :catch_2b

    move-object v0, v6

    .line 478
    nop

    .line 480
    if-eqz v0, :cond_2d

    .line 481
    goto :goto_30

    .line 476
    :catch_2b
    move-exception v6

    .line 477
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 473
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 484
    :cond_30
    :goto_30
    return-object v0
.end method

.method private greylist-max-o instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;
    .registers 9
    .param p1, "effectClass"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    .line 489
    const-class v0, Landroid/media/effect/Effect;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "effectConstructor":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x2

    :try_start_a
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/media/effect/EffectContext;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_4a

    .line 501
    .end local v0    # "effectConstructor":Ljava/lang/reflect/Constructor;
    .local v1, "effectConstructor":Ljava/lang/reflect/Constructor;
    nop

    .line 504
    const/4 v0, 0x0

    .line 506
    .local v0, "effect":Landroid/media/effect/Effect;
    :try_start_1c
    iget-object v2, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/effect/Effect;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    .line 510
    .end local v0    # "effect":Landroid/media/effect/Effect;
    .local v2, "effect":Landroid/media/effect/Effect;
    nop

    .line 512
    return-object v2

    .line 507
    .end local v2    # "effect":Landroid/media/effect/Effect;
    .restart local v0    # "effect":Landroid/media/effect/Effect;
    :catchall_2a
    move-exception v2

    .line 508
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There was an error constructing the effect \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 498
    .end local v1    # "effectConstructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "t":Ljava/lang/Throwable;
    .local v0, "effectConstructor":Ljava/lang/reflect/Constructor;
    :catch_4a
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The effect class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not have the required constructor."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 490
    .end local v0    # "effectConstructor":Ljava/lang/reflect/Constructor;
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to allocate effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' which is not a subclass of Effect!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isEffectSupported(Ljava/lang/String;)Z
    .registers 2
    .param p0, "effectName"    # Ljava/lang/String;

    .line 463
    invoke-static {p0}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public whitelist createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;
    .registers 6
    .param p1, "effectName"    # Ljava/lang/String;

    .line 444
    invoke-static {p1}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 445
    .local v0, "effectClass":Ljava/lang/Class;
    if-eqz v0, :cond_b

    .line 449
    invoke-direct {p0, v0, p1}, Landroid/media/effect/EffectFactory;->instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    return-object v1

    .line 446
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate unknown effect \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
