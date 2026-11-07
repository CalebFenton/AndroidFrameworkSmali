.class public final Landroid/animation/ObjectAnimator;
.super Landroid/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ObjectAnimator"


# instance fields
.field private greylist-max-o mAutoCancel:Z

.field private greylist-max-o mProperty:Landroid/util/Property;

.field private greylist-max-o mPropertyName:Ljava/lang/String;

.field private blacklist mTarget:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 194
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 195
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;*>;)V"
        }
    .end annotation

    .line 217
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/Property;, "Landroid/util/Property<TT;*>;"
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 218
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 220
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 207
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private greylist-max-o hasSameTargetAndProperties(Landroid/animation/Animator;)Z
    .registers 9
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 816
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 817
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 818
    .local v0, "theirValues":[Landroid/animation/PropertyValuesHolder;
    move-object v2, p1

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_46

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    array-length v3, v0

    if-ne v2, v3, :cond_46

    .line 820
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v3, v3

    if-ge v2, v3, :cond_44

    .line 821
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    .line 822
    .local v3, "pvhMine":Landroid/animation/PropertyValuesHolder;
    aget-object v4, v0, v2

    .line 823
    .local v4, "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 824
    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    goto :goto_43

    .line 820
    .end local v3    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 825
    .restart local v3    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .restart local v4    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    :cond_43
    :goto_43
    return v1

    .line 828
    .end local v2    # "i":I
    .end local v3    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    :cond_44
    const/4 v1, 0x1

    return v1

    .line 831
    .end local v0    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :cond_46
    return v1
.end method

.method public static varargs whitelist ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 416
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 417
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 418
    return-object v0
.end method

.method public static varargs whitelist ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .line 396
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 397
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 398
    return-object v0
.end method

.method public static whitelist ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 504
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 505
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    nop

    .line 506
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v1

    .line 505
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 507
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    nop

    .line 508
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v2

    .line 507
    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 509
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs whitelist ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p2, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 484
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 485
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 486
    return-object v0
.end method

.method public static whitelist ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    .line 461
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 462
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    nop

    .line 463
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v1

    .line 462
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 464
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    nop

    .line 465
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v2

    .line 464
    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 466
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs whitelist ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .line 437
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 439
    return-object v0
.end method

.method public static whitelist ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 304
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 305
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    nop

    .line 306
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v1

    .line 305
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 307
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    nop

    .line 308
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v2

    .line 307
    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 309
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs whitelist ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 284
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 285
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 286
    return-object v0
.end method

.method public static whitelist ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    .line 262
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 263
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    nop

    .line 264
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v1

    .line 263
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 265
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    nop

    .line 266
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v2

    .line 265
    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 267
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs whitelist ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .line 238
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 240
    return-object v0
.end method

.method public static varargs whitelist ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "TT;[F>;",
            "Landroid/animation/TypeEvaluator<",
            "TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 576
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[F>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 578
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 550
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 551
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;[[F)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [[F

    .line 530
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;[[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 531
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "TT;[I>;",
            "Landroid/animation/TypeEvaluator<",
            "TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 375
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[I>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 377
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 349
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 350
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist ofMultiInt(Ljava/lang/Object;Ljava/lang/String;[[I)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [[I

    .line 329
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;[[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 330
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;TP;>;",
            "Landroid/animation/TypeConverter<",
            "TV;TP;>;",
            "Landroid/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 697
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TP;>;"
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TV;TP;>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 699
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 7
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;TV;>;",
            "Landroid/animation/TypeConverter<",
            "Landroid/graphics/PointF;",
            "TV;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 724
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;TV;>;"
    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 725
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;TV;>;",
            "Landroid/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 662
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 663
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 664
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 665
    return-object v0
.end method

.method public static whitelist ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 7
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "Landroid/graphics/PointF;",
            "*>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 633
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;*>;"
    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 634
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p3, "values"    # [Ljava/lang/Object;

    .line 606
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 608
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 609
    return-object v0
.end method

.method public static varargs whitelist ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .registers 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .line 748
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 749
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 750
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 751
    return-object v0
.end method


# virtual methods
.method greylist-max-o animateValue(F)V
    .registers 6
    .param p1, "fraction"    # F

    .line 973
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 974
    .local v0, "target":Ljava/lang/Object;
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 975
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    .line 976
    .local v1, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_17

    .line 977
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 979
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/animation/ObjectAnimator;
    .registers 2

    .line 988
    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 989
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/ValueAnimator;
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getNameForTrace()Ljava/lang/String;
    .registers 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPropertyName()Ljava/lang/String;
    .registers 5

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "propertyName":Ljava/lang/String;
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 168
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    goto :goto_56

    .line 169
    :cond_8
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_13

    .line 170
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 171
    :cond_13
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_56

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-lez v1, :cond_56

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_56

    .line 173
    if-nez v1, :cond_27

    .line 174
    const-string v0, ""

    goto :goto_3a

    .line 176
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 181
    .end local v1    # "i":I
    :cond_56
    :goto_56
    return-object v0
.end method

.method public whitelist getTarget()Ljava/lang/Object;
    .registers 2

    .line 916
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method greylist-max-o initAnimation()V
    .registers 5

    .line 878
    iget-boolean v0, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    if-nez v0, :cond_1d

    .line 881
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 882
    .local v0, "target":Ljava/lang/Object;
    if-eqz v0, :cond_1a

    .line 883
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    .line 884
    .local v1, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_1a

    .line 885
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    .line 884
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 888
    .end local v1    # "numValues":I
    .end local v2    # "i":I
    :cond_1a
    invoke-super {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 890
    .end local v0    # "target":Ljava/lang/Object;
    :cond_1d
    return-void
.end method

.method greylist-max-o isInitialized()Z
    .registers 2

    .line 983
    iget-boolean v0, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    return v0
.end method

.method public whitelist setAutoCancel(Z)V
    .registers 2
    .param p1, "cancel"    # Z

    .line 812
    iput-boolean p1, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 813
    return-void
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/Animator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/animation/ObjectAnimator;
    .registers 3
    .param p1, "duration"    # J

    .line 904
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 905
    return-object p0
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/ValueAnimator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public varargs whitelist setFloatValues([F)V
    .registers 5
    .param p1, "values"    # [F

    .line 771
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_e

    .line 780
    :cond_a
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2f

    .line 774
    :cond_e
    :goto_e
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 775
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_2f

    .line 777
    :cond_22
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 782
    :goto_2f
    return-void
.end method

.method public varargs whitelist setIntValues([I)V
    .registers 5
    .param p1, "values"    # [I

    .line 756
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_e

    .line 765
    :cond_a
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2f

    .line 759
    :cond_e
    :goto_e
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 760
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_2f

    .line 762
    :cond_22
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 767
    :goto_2f
    return-void
.end method

.method public varargs whitelist setObjectValues([Ljava/lang/Object;)V
    .registers 7
    .param p1, "values"    # [Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_e

    .line 796
    :cond_a
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_36

    .line 789
    :cond_e
    :goto_e
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    .line 790
    new-array v0, v3, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    move-object v4, v1

    check-cast v4, Landroid/animation/TypeEvaluator;

    invoke-static {v3, v1, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_36

    .line 792
    :cond_26
    new-array v0, v3, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Landroid/animation/TypeEvaluator;

    invoke-static {v3, v1, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 798
    :goto_36
    return-void
.end method

.method public whitelist setProperty(Landroid/util/Property;)V
    .registers 7
    .param p1, "property"    # Landroid/util/Property;

    .line 133
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 134
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 135
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "oldName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    .line 137
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "oldName":Ljava/lang/String;
    :cond_1c
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_26

    .line 141
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 143
    :cond_26
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    .line 145
    iput-boolean v1, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    .line 146
    return-void
.end method

.method public whitelist setPropertyName(Ljava/lang/String;)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 112
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 113
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "oldName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "oldName":Ljava/lang/String;
    :cond_1a
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 120
    iput-boolean v1, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    .line 121
    return-void
.end method

.method public whitelist setTarget(Ljava/lang/Object;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 921
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 922
    .local v0, "oldTarget":Ljava/lang/Object;
    if-eq v0, p1, :cond_14

    .line 923
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 924
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 926
    :cond_f
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 928
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    .line 930
    :cond_14
    return-void
.end method

.method public whitelist setupEndValues()V
    .registers 5

    .line 947
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    .line 949
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 950
    .local v0, "target":Ljava/lang/Object;
    if-eqz v0, :cond_19

    .line 951
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    .line 952
    .local v1, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_19

    .line 953
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    .line 952
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 956
    .end local v1    # "numValues":I
    .end local v2    # "i":I
    :cond_19
    return-void
.end method

.method public whitelist setupStartValues()V
    .registers 5

    .line 934
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    .line 936
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 937
    .local v0, "target":Ljava/lang/Object;
    if-eqz v0, :cond_19

    .line 938
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    .line 939
    .local v1, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_19

    .line 940
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    .line 939
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 943
    .end local v1    # "numValues":I
    .end local v2    # "i":I
    :cond_19
    return-void
.end method

.method greylist-max-o shouldAutoCancel(Landroid/animation/AnimationHandler$AnimationFrameCallback;)Z
    .registers 5
    .param p1, "anim"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 850
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 851
    return v0

    .line 854
    :cond_4
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_17

    .line 855
    move-object v1, p1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 856
    .local v1, "objAnim":Landroid/animation/ObjectAnimator;
    iget-boolean v2, v1, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v2, :cond_17

    invoke-direct {p0, v1}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 857
    const/4 v0, 0x1

    return v0

    .line 860
    .end local v1    # "objAnim":Landroid/animation/ObjectAnimator;
    :cond_17
    return v0
.end method

.method public whitelist start()V
    .registers 2

    .line 836
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->autoCancelBasedOn(Landroid/animation/ObjectAnimator;)V

    .line 846
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 847
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 996
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_55

    .line 998
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_55

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1002
    .end local v1    # "i":I
    :cond_55
    return-object v0
.end method
