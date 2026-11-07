.class public Landroid/view/PendingInsetsController;
.super Ljava/lang/Object;
.source "PendingInsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PendingInsetsController$ShowRequest;,
        Landroid/view/PendingInsetsController$HideRequest;,
        Landroid/view/PendingInsetsController$PendingRequest;
    }
.end annotation


# static fields
.field private static final blacklist KEEP_BEHAVIOR:I = -0x1


# instance fields
.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearance:I

.field private blacklist mAppearanceFromResource:I

.field private blacklist mAppearanceFromResourceMask:I

.field private blacklist mAppearanceMask:I

.field private blacklist mBehavior:I

.field private blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDummyState:Landroid/view/InsetsState;

.field private blacklist mImeCaptionBarInsetsHeight:I

.field private blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private blacklist mReplayedInsetsController:Landroid/view/InsetsController;

.field private blacklist mRequestedVisibleTypes:I

.field private final blacklist mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/PendingInsetsController$PendingRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 44
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mDummyState:Landroid/view/InsetsState;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    .line 50
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 150
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 151
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    goto :goto_13

    .line 153
    :cond_a
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 156
    :goto_13
    return-void
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 15
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 241
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_f

    .line 242
    iget-object v1, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "types":I
    .end local p2    # "durationMillis":J
    .end local p4    # "interpolator":Landroid/view/animation/Interpolator;
    .end local p5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p6    # "listener":Landroid/view/WindowInsetsAnimationControlListener;
    .local v2, "types":I
    .local v3, "durationMillis":J
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    .local v6, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v7, "listener":Landroid/view/WindowInsetsAnimationControlListener;
    invoke-virtual/range {v1 .. v7}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    goto :goto_18

    .line 245
    .end local v2    # "types":I
    .end local v3    # "durationMillis":J
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v6    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v7    # "listener":Landroid/view/WindowInsetsAnimationControlListener;
    .restart local p1    # "types":I
    .restart local p2    # "durationMillis":J
    .restart local p4    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local p5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p6    # "listener":Landroid/view/WindowInsetsAnimationControlListener;
    :cond_f
    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "types":I
    .end local p2    # "durationMillis":J
    .end local p4    # "interpolator":Landroid/view/animation/Interpolator;
    .end local p5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p6    # "listener":Landroid/view/WindowInsetsAnimationControlListener;
    .restart local v2    # "types":I
    .restart local v3    # "durationMillis":J
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v6    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local v7    # "listener":Landroid/view/WindowInsetsAnimationControlListener;
    const/4 p1, 0x0

    invoke-interface {v7, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 247
    :goto_18
    return-void
.end method

.method public blacklist detach()V
    .registers 2

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    .line 224
    return-void
.end method

.method public blacklist getRequestedVisibleTypes()I
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_b

    .line 142
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    return v0

    .line 144
    :cond_b
    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    return v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mDummyState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .registers 4

    .line 94
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_b

    .line 95
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getSystemBarsAppearance()I

    move-result v0

    return v0

    .line 97
    :cond_b
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    iget v1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    not-int v2, v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_b

    .line 117
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getSystemBarsBehavior()I

    move-result v0

    return v0

    .line 119
    :cond_b
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_12
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    return v0
.end method

.method public whitelist hide(I)V
    .registers 4
    .param p1, "types"    # I

    .line 64
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->hide(I)V

    goto :goto_1a

    .line 67
    :cond_a
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/PendingInsetsController$HideRequest;

    invoke-direct {v1, p1}, Landroid/view/PendingInsetsController$HideRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    .line 70
    :goto_1a
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 161
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    goto :goto_f

    .line 164
    :cond_a
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    :goto_f
    return-void
.end method

.method public blacklist replayAndAttach(Landroid/view/InsetsController;)V
    .registers 6
    .param p1, "controller"    # Landroid/view/InsetsController;

    .line 174
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 175
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setSystemBarsBehavior(I)V

    .line 177
    :cond_a
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    if-eqz v0, :cond_15

    .line 178
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    invoke-virtual {p1, v0, v2}, Landroid/view/InsetsController;->setSystemBarsAppearance(II)V

    .line 180
    :cond_15
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    if-eqz v0, :cond_20

    .line 181
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    invoke-virtual {p1, v0, v2}, Landroid/view/InsetsController;->setSystemBarsAppearanceFromResource(II)V

    .line 184
    :cond_20
    iget v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    if-eqz v0, :cond_29

    .line 185
    iget v0, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setImeCaptionBarInsetsHeight(I)V

    .line 187
    :cond_29
    iget-boolean v0, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_31

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setAnimationsDisabled(Z)V

    .line 190
    :cond_31
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v0, :cond_48

    .line 192
    iget-object v3, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PendingInsetsController$PendingRequest;

    invoke-interface {v3, p1}, Landroid/view/PendingInsetsController$PendingRequest;->replay(Landroid/view/InsetsController;)V

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 194
    .end local v2    # "i":I
    :cond_48
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 195
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4f
    if-ge v2, v0, :cond_5f

    .line 196
    iget-object v3, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 196
    invoke-virtual {p1, v3}, Landroid/view/InsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 199
    .end local v2    # "i":I
    :cond_5f
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v2, :cond_68

    .line 200
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-virtual {p1, v2}, Landroid/view/InsetsController;->setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V

    .line 204
    :cond_68
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 206
    iput v1, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 207
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    .line 208
    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    .line 209
    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    .line 210
    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    .line 211
    iput-boolean v1, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 213
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    .line 215
    iput-object p1, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    .line 216
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 127
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 128
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setAnimationsDisabled(Z)V

    goto :goto_c

    .line 130
    :cond_a
    iput-boolean p1, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    .line 132
    :goto_c
    return-void
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 102
    iput p1, p0, Landroid/view/PendingInsetsController;->mImeCaptionBarInsetsHeight:I

    .line 103
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .registers 5
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 74
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 75
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsController;->setSystemBarsAppearance(II)V

    goto :goto_18

    .line 77
    :cond_a
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    .line 78
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    .line 80
    :goto_18
    return-void
.end method

.method public blacklist setSystemBarsAppearanceFromResource(II)V
    .registers 5
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 84
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 85
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsController;->setSystemBarsAppearanceFromResource(II)V

    goto :goto_18

    .line 87
    :cond_a
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResource:I

    .line 88
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearanceFromResourceMask:I

    .line 90
    :goto_18
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 107
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 108
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setSystemBarsBehavior(I)V

    goto :goto_c

    .line 110
    :cond_a
    iput p1, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 112
    :goto_c
    return-void
.end method

.method public blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 229
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 230
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V

    goto :goto_c

    .line 232
    :cond_a
    iput-object p1, p0, Landroid/view/PendingInsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 234
    :goto_c
    return-void
.end method

.method public whitelist show(I)V
    .registers 4
    .param p1, "types"    # I

    .line 54
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_a

    .line 55
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->show(I)V

    goto :goto_19

    .line 57
    :cond_a
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/PendingInsetsController$ShowRequest;

    invoke-direct {v1, p1}, Landroid/view/PendingInsetsController$ShowRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/PendingInsetsController;->mRequestedVisibleTypes:I

    .line 60
    :goto_19
    return-void
.end method
