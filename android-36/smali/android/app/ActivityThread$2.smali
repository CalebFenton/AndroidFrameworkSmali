.class Landroid/app/ActivityThread$2;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;

.field final synthetic blacklist val$decorView:Landroid/view/View;

.field final synthetic blacklist val$token:Landroid/os/IBinder;

.field final synthetic blacklist val$transaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic blacklist val$view:Landroid/window/SplashScreenView;


# direct methods
.method public static synthetic blacklist $r8$lambda$_hjLLLQQnGPktE8iroJppCIqD1k(Landroid/app/ActivityThread$2;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$2;->lambda$onFrameDraw$0(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$agWTP8bYGarmZEjQVtdGUFqv2EQ(Landroid/app/ActivityThread$2;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread$2;->lambda$onFrameDraw$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 6
    .param p1, "this$0"    # Landroid/app/ActivityThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4831
    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$2;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Landroid/app/ActivityThread$2;->val$decorView:Landroid/view/View;

    iput-object p4, p0, Landroid/app/ActivityThread$2;->val$token:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/app/ActivityThread$2;->val$view:Landroid/window/SplashScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$0(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4842
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$mreportSplashscreenViewShown(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;Z)V
    .registers 9
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "decorView"    # Landroid/view/View;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "view"    # Landroid/window/SplashScreenView;
    .param p5, "didProduceBuffer"    # Z

    .line 4838
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "transferSplashscreenView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4839
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4841
    new-instance v0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p4}, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityThread$2;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4843
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 10
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 4837
    iget-object v2, p0, Landroid/app/ActivityThread$2;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Landroid/app/ActivityThread$2;->val$decorView:Landroid/view/View;

    iget-object v4, p0, Landroid/app/ActivityThread$2;->val$token:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/ActivityThread$2;->val$view:Landroid/window/SplashScreenView;

    new-instance v0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityThread$2;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .registers 3
    .param p1, "frame"    # J

    .line 4833
    return-void
.end method
