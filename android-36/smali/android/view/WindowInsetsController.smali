.class public interface abstract Landroid/view/WindowInsetsController;
.super Ljava/lang/Object;
.source "WindowInsetsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;,
        Landroid/view/WindowInsetsController$Behavior;,
        Landroid/view/WindowInsetsController$Appearance;
    }
.end annotation


# static fields
.field public static final blacklist APPEARANCE_FORCE_LIGHT_NAVIGATION_BARS:I = 0x200

.field public static final whitelist APPEARANCE_LIGHT_CAPTION_BARS:I = 0x100

.field public static final whitelist APPEARANCE_LIGHT_NAVIGATION_BARS:I = 0x10

.field public static final whitelist APPEARANCE_LIGHT_STATUS_BARS:I = 0x8

.field public static final blacklist APPEARANCE_LOW_PROFILE_BARS:I = 0x4

.field public static final blacklist APPEARANCE_OPAQUE_NAVIGATION_BARS:I = 0x2

.field public static final blacklist APPEARANCE_OPAQUE_STATUS_BARS:I = 0x1

.field public static final blacklist APPEARANCE_SEMI_TRANSPARENT_NAVIGATION_BARS:I = 0x40

.field public static final blacklist APPEARANCE_SEMI_TRANSPARENT_STATUS_BARS:I = 0x20

.field public static final whitelist APPEARANCE_TRANSPARENT_CAPTION_BAR_BACKGROUND:I = 0x80

.field public static final whitelist BEHAVIOR_DEFAULT:I = 0x1

.field public static final whitelist BEHAVIOR_SHOW_BARS_BY_SWIPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BEHAVIOR_SHOW_BARS_BY_TOUCH:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE:I = 0x2


# virtual methods
.method public abstract whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
.end method

.method public abstract whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
.end method

.method public abstract blacklist getRequestedVisibleTypes()I
.end method

.method public abstract blacklist getState()Landroid/view/InsetsState;
.end method

.method public abstract whitelist getSystemBarsAppearance()I
.end method

.method public abstract whitelist getSystemBarsBehavior()I
.end method

.method public abstract whitelist hide(I)V
.end method

.method public abstract whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
.end method

.method public abstract blacklist setAnimationsDisabled(Z)V
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 297
    return-void
.end method

.method public abstract whitelist setSystemBarsAppearance(II)V
.end method

.method public abstract blacklist setSystemBarsAppearanceFromResource(II)V
.end method

.method public abstract whitelist setSystemBarsBehavior(I)V
.end method

.method public abstract blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
.end method

.method public abstract whitelist show(I)V
.end method
