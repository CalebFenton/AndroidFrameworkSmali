.class public Landroid/window/ScreenCapture$DisplayCaptureArgs;
.super Landroid/window/ScreenCapture$CaptureArgs;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mDisplayToken:Landroid/os/IBinder;

.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method private constructor blacklist <init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture-IA;)V

    .line 564
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmDisplayToken(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mDisplayToken:Landroid/os/IBinder;

    .line 565
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmWidth(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mWidth:I

    .line 566
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmHeight(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mHeight:I

    .line 567
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;Landroid/window/ScreenCapture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs;-><init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)V

    return-void
.end method
