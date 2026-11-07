.class final Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;
.super Landroid/hardware/input/StickyModifierState;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalStickyModifierState"
.end annotation


# instance fields
.field private final blacklist mLockedModifierState:I

.field private final blacklist mModifierState:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "modifierState"    # I
    .param p2, "lockedModifierState"    # I

    .line 980
    invoke-direct {p0}, Landroid/hardware/input/StickyModifierState;-><init>()V

    .line 981
    iput p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    .line 982
    iput p2, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    .line 983
    return-void
.end method


# virtual methods
.method public blacklist isAltGrModifierLocked()Z
    .registers 2

    .line 1032
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isAltGrModifierOn()Z
    .registers 2

    .line 1027
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isAltModifierLocked()Z
    .registers 2

    .line 1022
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isAltModifierOn()Z
    .registers 2

    .line 1017
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isCtrlModifierLocked()Z
    .registers 2

    .line 1002
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isCtrlModifierOn()Z
    .registers 2

    .line 997
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isMetaModifierLocked()Z
    .registers 3

    .line 1012
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isMetaModifierOn()Z
    .registers 3

    .line 1007
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isShiftModifierLocked()Z
    .registers 3

    .line 992
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isShiftModifierOn()Z
    .registers 3

    .line 987
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
