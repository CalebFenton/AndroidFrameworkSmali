.class interface abstract Landroid/animation/Keyframes;
.super Ljava/lang/Object;
.source "Keyframes.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Keyframes$IntKeyframes;,
        Landroid/animation/Keyframes$FloatKeyframes;
    }
.end annotation


# virtual methods
.method public abstract clone()Landroid/animation/Keyframes;
.end method

.method public abstract getKeyframes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/Class;
.end method

.method public abstract getValue(F)Ljava/lang/Object;
.end method

.method public abstract invalidateCache()V
.end method

.method public abstract setEvaluator(Landroid/animation/TypeEvaluator;)V
.end method
