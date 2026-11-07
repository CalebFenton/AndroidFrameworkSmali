.class Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceControlInputReceiverInfo"
.end annotation


# instance fields
.field final blacklist mClientToken:Landroid/os/IBinder;

.field final blacklist mInputEventReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputEventReceiver;)V
    .registers 3
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "inputEventReceiver"    # Landroid/view/InputEventReceiver;

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;->mClientToken:Landroid/os/IBinder;

    .line 1107
    iput-object p2, p0, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 1108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputEventReceiver;Landroid/view/WindowManagerGlobal-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;-><init>(Landroid/os/IBinder;Landroid/view/InputEventReceiver;)V

    return-void
.end method
