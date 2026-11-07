.class public Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
.super Landroid/window/ScreenCapture$CaptureArgs$Builder;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture$DisplayCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
        "Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDisplayToken:Landroid/os/IBinder;

.field private blacklist mHeight:I

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayToken(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mWidth:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 589
    invoke-direct {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;-><init>()V

    .line 590
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setDisplayToken(Landroid/os/IBinder;)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 591
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist build()Landroid/window/ScreenCapture$CaptureArgs;
    .registers 2

    .line 572
    invoke-virtual {p0}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Landroid/window/ScreenCapture$DisplayCaptureArgs;
    .registers 3

    .line 582
    iget-object v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    .line 586
    new-instance v0, Landroid/window/ScreenCapture$DisplayCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/ScreenCapture$DisplayCaptureArgs;-><init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;Landroid/window/ScreenCapture-IA;)V

    return-object v0

    .line 583
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take screenshot with null display token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic blacklist getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 2

    .line 572
    invoke-virtual {p0}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist getThis()Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    .registers 1

    .line 618
    return-object p0
.end method

.method public blacklist setDisplayToken(Landroid/os/IBinder;)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    .registers 2
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 597
    iput-object p1, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    .line 598
    return-object p0
.end method

.method public blacklist setSize(II)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 611
    iput p1, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mWidth:I

    .line 612
    iput p2, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mHeight:I

    .line 613
    return-object p0
.end method
