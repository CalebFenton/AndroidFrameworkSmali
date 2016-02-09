.class abstract Landroid/animation/PathKeyframes$FloatKeyframesBase;
.super Landroid/animation/PathKeyframes$SimpleKeyframes;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FloatKeyframesBase"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 246
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>(Landroid/animation/PathKeyframes$SimpleKeyframes;)V

    #@4
    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/PathKeyframes$FloatKeyframesBase;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/animation/PathKeyframes$FloatKeyframesBase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1

    #@0
    .prologue
    .line 250
    const-class v0, Ljava/lang/Float;

    #@2
    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 255
    invoke-virtual {p0, p1}, Landroid/animation/PathKeyframes$FloatKeyframesBase;->getFloatValue(F)F

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
