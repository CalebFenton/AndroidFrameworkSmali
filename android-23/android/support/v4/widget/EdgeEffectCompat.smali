.class public Landroid/support/v4/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;,
        Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;,
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;,
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# instance fields
.field private mEdgeEffect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 38
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;

    #@8
    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@d
    .line 31
    :goto_0
    return-void

    #@e
    .line 39
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v1, 0xe

    #@12
    if-lt v0, v1, :cond_1

    #@14
    .line 40
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;

    #@16
    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;-><init>()V

    #@19
    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@1b
    goto :goto_0

    #@1c
    .line 42
    :cond_1
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;

    #@1e
    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;-><init>()V

    #@21
    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@23
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 150
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@5
    invoke-interface {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@b
    .line 149
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 254
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public finish()V
    .locals 2

    #@0
    .prologue
    .line 179
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->finish(Ljava/lang/Object;)V

    #@7
    .line 178
    return-void
.end method

.method public isFinished()Z
    .locals 2

    #@0
    .prologue
    .line 171
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->isFinished(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public onAbsorb(I)Z
    .locals 2
    .param p1, "velocity"    # I

    #@0
    .prologue
    .line 240
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->onAbsorb(Ljava/lang/Object;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public onPull(F)Z
    .locals 2
    .param p1, "deltaDistance"    # F

    #@0
    .prologue
    .line 195
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->onPull(Ljava/lang/Object;F)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public onPull(FF)Z
    .locals 2
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    #@0
    .prologue
    .line 213
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->onPull(Ljava/lang/Object;FF)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public onRelease()Z
    .locals 2

    #@0
    .prologue
    .line 225
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->onRelease(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 160
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->setSize(Ljava/lang/Object;II)V

    #@7
    .line 159
    return-void
.end method
