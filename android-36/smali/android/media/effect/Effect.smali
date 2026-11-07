.class public abstract Landroid/media/effect/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist apply(IIII)V
.end method

.method public abstract whitelist getName()Ljava/lang/String;
.end method

.method public abstract whitelist release()V
.end method

.method public abstract whitelist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public whitelist setUpdateListener(Landroid/media/effect/EffectUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/effect/EffectUpdateListener;

    .line 97
    return-void
.end method
