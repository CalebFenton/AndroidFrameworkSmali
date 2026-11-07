.class abstract Landroid/animation/PathKeyframes$IntKeyframesBase;
.super Landroid/animation/PathKeyframes$SimpleKeyframes;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IntKeyframesBase"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>(Landroid/animation/PathKeyframes-IA;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getType()Ljava/lang/Class;
    .registers 2

    .line 230
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public greylist-max-o getValue(F)Ljava/lang/Object;
    .registers 3
    .param p1, "fraction"    # F

    .line 235
    invoke-virtual {p0, p1}, Landroid/animation/PathKeyframes$IntKeyframesBase;->getIntValue(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
