.class public final Landroid/animation/ObjectAnimator;
.super Landroid/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ObjectAnimator"


# instance fields
.field private mAutoCancel:Z

.field private mProperty:Landroid/util/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    #@3
    .line 84
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    #@6
    .line 198
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 221
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/Property;, "Landroid/util/Property<TT;*>;"
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    #@3
    .line 84
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    #@6
    .line 222
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    #@9
    .line 223
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    #@c
    .line 221
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    #@3
    .line 84
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    #@6
    .line 211
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    #@9
    .line 212
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    #@c
    .line 210
    return-void
.end method

.method private hasSameTargetAndProperties(Landroid/animation/Animator;)Z
    .locals 7
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 792
    instance-of v4, p1, Landroid/animation/ObjectAnimator;

    #@3
    if-eqz v4, :cond_2

    #@5
    move-object v4, p1

    #@6
    .line 793
    check-cast v4, Landroid/animation/ObjectAnimator;

    #@8
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    #@b
    move-result-object v3

    #@c
    .line 794
    .local v3, "theirValues":[Landroid/animation/PropertyValuesHolder;
    check-cast p1, Landroid/animation/ObjectAnimator;

    #@e
    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    if-ne v4, v5, :cond_2

    #@18
    .line 795
    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@1a
    array-length v4, v4

    #@1b
    array-length v5, v3

    #@1c
    if-ne v4, v5, :cond_2

    #@1e
    .line 796
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@21
    array-length v4, v4

    #@22
    if-ge v0, v4, :cond_1

    #@24
    .line 797
    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@26
    aget-object v1, v4, v0

    #@28
    .line 798
    .local v1, "pvhMine":Landroid/animation/PropertyValuesHolder;
    aget-object v2, v3, v0

    #@2a
    .line 799
    .local v2, "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    if-eqz v4, :cond_0

    #@30
    .line 800
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_0

    #@3e
    .line 796
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 801
    :cond_0
    return v6

    #@42
    .line 804
    .end local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v4, 0x1

    #@43
    return v4

    #@44
    .line 807
    .end local v0    # "i":I
    .end local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :cond_2
    return v6
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 415
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    #@3
    move-result-object v0

    #@4
    .line 416
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@b
    .line 417
    return-object v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    #@0
    .prologue
    .line 396
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@3
    move-result-object v0

    #@4
    .line 397
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@b
    .line 398
    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 501
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@3
    move-result-object v0

    #@4
    .line 503
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    #@7
    move-result-object v3

    #@8
    .line 502
    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@b
    move-result-object v1

    #@c
    .line 505
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    #@f
    move-result-object v3

    #@10
    .line 504
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@13
    move-result-object v2

    #@14
    .line 506
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    #@15
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    #@17
    const/4 v4, 0x0

    #@18
    aput-object v1, v3, v4

    #@1a
    const/4 v4, 0x1

    #@1b
    aput-object v2, v3, v4

    #@1d
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@20
    move-result-object v3

    #@21
    return-object v3
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p2, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 481
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    #@5
    .line 482
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    #@8
    .line 483
    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 459
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@3
    move-result-object v0

    #@4
    .line 461
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    #@7
    move-result-object v3

    #@8
    .line 460
    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@b
    move-result-object v1

    #@c
    .line 463
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    #@f
    move-result-object v3

    #@10
    .line 462
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@13
    move-result-object v2

    #@14
    .line 464
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    #@15
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    #@17
    const/4 v4, 0x0

    #@18
    aput-object v1, v3, v4

    #@1a
    const/4 v4, 0x1

    #@1b
    aput-object v2, v3, v4

    #@1d
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@20
    move-result-object v3

    #@21
    return-object v3
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    #@0
    .prologue
    .line 435
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 436
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    #@8
    .line 437
    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 306
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@3
    move-result-object v0

    #@4
    .line 308
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    #@7
    move-result-object v3

    #@8
    .line 307
    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@b
    move-result-object v1

    #@c
    .line 310
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    #@f
    move-result-object v3

    #@10
    .line 309
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@13
    move-result-object v2

    #@14
    .line 311
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    #@15
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    #@17
    const/4 v4, 0x0

    #@18
    aput-object v1, v3, v4

    #@1a
    const/4 v4, 0x1

    #@1b
    aput-object v2, v3, v4

    #@1d
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@20
    move-result-object v3

    #@21
    return-object v3
.end method

.method public static varargs ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 286
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    #@5
    .line 287
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    #@8
    .line 288
    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 265
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@3
    move-result-object v0

    #@4
    .line 267
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    #@7
    move-result-object v3

    #@8
    .line 266
    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@b
    move-result-object v1

    #@c
    .line 269
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    #@f
    move-result-object v3

    #@10
    .line 268
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@13
    move-result-object v2

    #@14
    .line 270
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    #@15
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    #@17
    const/4 v4, 0x0

    #@18
    aput-object v1, v3, v4

    #@1a
    const/4 v4, 0x1

    #@1b
    aput-object v2, v3, v4

    #@1d
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@20
    move-result-object v3

    #@21
    return-object v3
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    #@0
    .prologue
    .line 241
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 242
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    #@8
    .line 243
    return-object v0
.end method

.method public static varargs ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[F>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 572
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[F>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 574
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 547
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 548
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;[[F)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [[F

    #@0
    .prologue
    .line 527
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;[[F)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 528
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static varargs ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[I>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 376
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[I>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 378
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 351
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 352
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static ofMultiInt(Ljava/lang/Object;Ljava/lang/String;[[I)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [[I

    #@0
    .prologue
    .line 331
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;[[I)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 332
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TP;>;",
            "Landroid/animation/TypeConverter",
            "<TV;TP;>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 673
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TP;>;"
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TV;TP;>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 675
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TV;>;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "TV;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 700
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;TV;>;"
    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 701
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TV;>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 645
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    #@5
    .line 646
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@8
    .line 647
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@b
    .line 648
    return-object v0
.end method

.method public static ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "*>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .prologue
    .line 623
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;*>;"
    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    .line 624
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p3, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 596
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 597
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@8
    .line 598
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@b
    .line 599
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    #@0
    .prologue
    .line 724
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    #@5
    .line 725
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    #@8
    .line 726
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@b
    .line 727
    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 971
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    .line 972
    .local v2, "target":Ljava/lang/Object;
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    #@6
    if-eqz v3, :cond_0

    #@8
    if-nez v2, :cond_0

    #@a
    .line 974
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@d
    .line 975
    return-void

    #@e
    .line 978
    :cond_0
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    #@11
    .line 979
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@13
    array-length v1, v3

    #@14
    .line 980
    .local v1, "numValues":I
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@17
    .line 981
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@19
    aget-object v3, v3, v0

    #@1b
    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    #@1e
    .line 980
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 970
    :cond_1
    return-void
.end method

.method public clone()Landroid/animation/ObjectAnimator;
    .locals 1

    #@0
    .prologue
    .line 987
    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@6
    .line 988
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .locals 1

    #@0
    .prologue
    .line 986
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "animator:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 170
    const/4 v1, 0x0

    #@1
    .line 171
    .local v1, "propertyName":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 172
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    #@7
    .line 185
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    #@8
    .line 173
    .restart local v1    # "propertyName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 174
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@e
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .local v1, "propertyName":Ljava/lang/String;
    goto :goto_0

    #@13
    .line 175
    .local v1, "propertyName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@15
    if-eqz v2, :cond_0

    #@17
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@19
    array-length v2, v2

    #@1a
    if-lez v2, :cond_0

    #@1c
    .line 176
    const/4 v0, 0x0

    #@1d
    .end local v1    # "propertyName":Ljava/lang/String;
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@1f
    array-length v2, v2

    #@20
    if-ge v0, v2, :cond_0

    #@22
    .line 177
    if-nez v0, :cond_3

    #@24
    .line 178
    const-string/jumbo v1, ""

    #@27
    .line 182
    .local v1, "propertyName":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@32
    aget-object v3, v3, v0

    #@34
    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 176
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_1

    #@43
    .line 180
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, ","

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .restart local v1    # "propertyName":Ljava/lang/String;
    goto :goto_2
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 908
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    #@8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method initAnimation()V
    .locals 4

    #@0
    .prologue
    .line 870
    iget-boolean v3, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    #@2
    if-nez v3, :cond_1

    #@4
    .line 873
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    .line 874
    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@a
    .line 875
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@c
    array-length v1, v3

    #@d
    .line 876
    .local v1, "numValues":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@10
    .line 877
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@12
    aget-object v3, v3, v0

    #@14
    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    #@17
    .line 876
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 880
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    #@1d
    .line 869
    .end local v2    # "target":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setAutoCancel(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    #@0
    .prologue
    .line 788
    iput-boolean p1, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    #@2
    .line 787
    return-void
.end method

.method public setDuration(J)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 896
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@3
    .line 897
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 895
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3
    .param p1, "values"    # [F

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 747
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@8
    array-length v0, v0

    #@9
    if-nez v0, :cond_2

    #@b
    .line 750
    :cond_0
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 751
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    #@11
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@13
    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@16
    move-result-object v1

    #@17
    aput-object v1, v0, v2

    #@19
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@1c
    .line 746
    :goto_0
    return-void

    #@1d
    .line 753
    :cond_1
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    #@1f
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    #@21
    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@24
    move-result-object v1

    #@25
    aput-object v1, v0, v2

    #@27
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@2a
    goto :goto_0

    #@2b
    .line 756
    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@2e
    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 3
    .param p1, "values"    # [I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 732
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@8
    array-length v0, v0

    #@9
    if-nez v0, :cond_2

    #@b
    .line 735
    :cond_0
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 736
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    #@11
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@13
    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    #@16
    move-result-object v1

    #@17
    aput-object v1, v0, v2

    #@19
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@1c
    .line 731
    :goto_0
    return-void

    #@1d
    .line 738
    :cond_1
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    #@1f
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    #@21
    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@24
    move-result-object v1

    #@25
    aput-object v1, v0, v2

    #@27
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@2a
    goto :goto_0

    #@2b
    .line 741
    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@2e
    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 762
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@9
    array-length v1, v1

    #@a
    if-nez v1, :cond_2

    #@c
    .line 765
    :cond_0
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 766
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    #@12
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@14
    check-cast v0, Landroid/animation/TypeEvaluator;

    #@16
    invoke-static {v2, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@19
    move-result-object v0

    #@1a
    aput-object v0, v1, v3

    #@1c
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@1f
    .line 761
    :goto_0
    return-void

    #@20
    .line 768
    :cond_1
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    #@22
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    #@24
    .line 769
    check-cast v0, Landroid/animation/TypeEvaluator;

    #@26
    .line 768
    invoke-static {v2, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@29
    move-result-object v0

    #@2a
    aput-object v0, v1, v3

    #@2c
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@2f
    goto :goto_0

    #@30
    .line 772
    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@33
    goto :goto_0
.end method

.method public setProperty(Landroid/util/Property;)V
    .locals 5
    .param p1, "property"    # Landroid/util/Property;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 137
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 138
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@7
    aget-object v1, v2, v4

    #@9
    .line 139
    .local v1, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 140
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    #@10
    .line 141
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 142
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    #@17
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    #@19
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 144
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 145
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    #@26
    .line 147
    :cond_1
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    #@28
    .line 149
    iput-boolean v4, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    #@2a
    .line 134
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 115
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 116
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@7
    aget-object v1, v2, v3

    #@9
    .line 117
    .local v1, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 118
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    #@10
    .line 119
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 120
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    #@17
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 122
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    #@1c
    .line 124
    iput-boolean v3, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    #@1e
    .line 112
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 919
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 920
    .local v0, "oldTarget":Ljava/lang/Object;
    if-eq v0, p1, :cond_1

    #@7
    .line 921
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 922
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@10
    .line 924
    :cond_0
    if-nez p1, :cond_2

    #@12
    :goto_0
    iput-object v1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    #@14
    .line 926
    const/4 v1, 0x0

    #@15
    iput-boolean v1, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    #@17
    .line 918
    :cond_1
    return-void

    #@18
    .line 924
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@1a
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1d
    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 4

    #@0
    .prologue
    .line 945
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    #@3
    .line 947
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    .line 948
    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@9
    .line 949
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@b
    array-length v1, v3

    #@c
    .line 950
    .local v1, "numValues":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@f
    .line 951
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@11
    aget-object v3, v3, v0

    #@13
    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    #@16
    .line 950
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 944
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    #@0
    .prologue
    .line 932
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    #@3
    .line 934
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    .line 935
    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@9
    .line 936
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@b
    array-length v1, v3

    #@c
    .line 937
    .local v1, "numValues":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@f
    .line 938
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@11
    aget-object v3, v3, v0

    #@13
    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    #@16
    .line 937
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 931
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    #@0
    .prologue
    .line 813
    sget-object v4, Landroid/animation/ObjectAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/animation/ValueAnimator$AnimationHandler;

    #@8
    .line 814
    .local v1, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v1, :cond_5

    #@a
    .line 815
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v3

    #@10
    .line 816
    .local v3, "numAnims":I
    add-int/lit8 v2, v3, -0x1

    #@12
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@14
    .line 817
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 818
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@26
    .line 819
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    #@28
    if-eqz v4, :cond_0

    #@2a
    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_0

    #@30
    .line 820
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@33
    .line 816
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@35
    goto :goto_0

    #@36
    .line 824
    :cond_1
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v3

    #@3c
    .line 825
    add-int/lit8 v2, v3, -0x1

    #@3e
    :goto_1
    if-ltz v2, :cond_3

    #@40
    .line 826
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v4

    #@46
    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    #@48
    if-eqz v4, :cond_2

    #@4a
    .line 827
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@52
    .line 828
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    #@54
    if-eqz v4, :cond_2

    #@56
    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_2

    #@5c
    .line 829
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@5f
    .line 825
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@61
    goto :goto_1

    #@62
    .line 833
    :cond_3
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@67
    move-result v3

    #@68
    .line 834
    add-int/lit8 v2, v3, -0x1

    #@6a
    :goto_2
    if-ltz v2, :cond_5

    #@6c
    .line 835
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v4

    #@72
    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    #@74
    if-eqz v4, :cond_4

    #@76
    .line 836
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Landroid/animation/ObjectAnimator;

    #@7e
    .line 837
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    #@80
    if-eqz v4, :cond_4

    #@82
    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    #@85
    move-result v4

    #@86
    if-eqz v4, :cond_4

    #@88
    .line 838
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@8b
    .line 834
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@8d
    goto :goto_2

    #@8e
    .line 852
    .end local v2    # "i":I
    .end local v3    # "numAnims":I
    :cond_5
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    #@91
    .line 811
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "ObjectAnimator@"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->hashCode()I

    #@f
    move-result v3

    #@10
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, ", target "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 995
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 996
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 997
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@32
    array-length v2, v2

    #@33
    if-ge v0, v2, :cond_0

    #@35
    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "\n    "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    #@47
    aget-object v3, v3, v0

    #@49
    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .line 997
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 1001
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
