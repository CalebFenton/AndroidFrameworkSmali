.class public final Landroid/view/InputDevice$ViewBehavior;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewBehavior"
.end annotation


# static fields
.field private static final blacklist DEFAULT_SHOULD_SMOOTH_SCROLL:Z = false


# instance fields
.field private final blacklist mInputDevice:Landroid/view/InputDevice;

.field private blacklist mShouldSmoothScroll:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputDevice;)V
    .registers 3
    .param p1, "inputDevice"    # Landroid/view/InputDevice;

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1561
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    .line 1565
    iput-object p1, p0, Landroid/view/InputDevice$ViewBehavior;->mInputDevice:Landroid/view/InputDevice;

    .line 1566
    return-void
.end method


# virtual methods
.method public whitelist shouldSmoothScroll(II)Z
    .registers 4
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .line 1596
    iget-object v0, p0, Landroid/view/InputDevice$ViewBehavior;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1597
    const/4 v0, 0x0

    return v0

    .line 1599
    :cond_a
    iget-boolean v0, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return v0
.end method
