.class Landroid/view/ViewRootImpl$3;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2004
    iput-object p2, p0, Landroid/view/ViewRootImpl$3;->val$callback:Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 7
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 2013
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->val$callback:Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;->onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2014
    :catch_7
    move-exception v0

    .line 2015
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewRootImpl"

    const-string v2, "Exception while executing onFrameDraw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2017
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .registers 3
    .param p1, "frame"    # J

    .line 2007
    return-void
.end method
