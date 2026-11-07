.class Landroid/view/WindowlessWindowManager$State;
.super Ljava/lang/Object;
.source "WindowlessWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowlessWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field blacklist mAttachedFrame:Landroid/graphics/Rect;

.field blacklist mClient:Landroid/view/IWindow;

.field blacklist mDisplayId:I

.field blacklist mFrame:Landroid/graphics/Rect;

.field blacklist mInputChannelToken:Landroid/os/IBinder;

.field blacklist mInputRegion:Landroid/graphics/Region;

.field blacklist mInputTransferToken:Landroid/window/InputTransferToken;

.field final blacklist mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

.field blacklist mLeash:Landroid/view/SurfaceControl;

.field final blacklist mParams:Landroid/view/WindowManager$LayoutParams;

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/view/IWindow;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 8
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "displayId"    # I
    .param p5, "client"    # Landroid/view/IWindow;
    .param p6, "leash"    # Landroid/view/SurfaceControl;
    .param p7, "frame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Landroid/view/WindowlessWindowManager$State;->mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

    .line 67
    iput-object p2, p0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 68
    iget-object p1, p0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 69
    iput p4, p0, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    .line 70
    iput-object p5, p0, Landroid/view/WindowlessWindowManager$State;->mClient:Landroid/view/IWindow;

    .line 71
    iput-object p6, p0, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    .line 72
    iput-object p7, p0, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    .line 73
    return-void
.end method
