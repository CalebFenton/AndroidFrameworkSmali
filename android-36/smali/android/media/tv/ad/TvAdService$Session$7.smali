.class Landroid/media/tv/ad/TvAdService$Session$7;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdService$Session;->layoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService$Session;

.field final synthetic blacklist val$bottom:I

.field final synthetic blacklist val$left:I

.field final synthetic blacklist val$right:I

.field final synthetic blacklist val$top:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdService$Session;IIII)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdService$Session;
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

    .line 486
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session$7;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    iput p2, p0, Landroid/media/tv/ad/TvAdService$Session$7;->val$left:I

    iput p3, p0, Landroid/media/tv/ad/TvAdService$Session$7;->val$top:I

    iput p4, p0, Landroid/media/tv/ad/TvAdService$Session$7;->val$right:I

    iput p5, p0, Landroid/media/tv/ad/TvAdService$Session$7;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 495
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$7;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 496
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$7;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/ad/TvAdService$Session$7;->val$left:I

    iget v2, p0, Landroid/media/tv/ad/TvAdService$Session$7;->val$top:I

    iget v3, p0, Landroid/media/tv/ad/TvAdService$Session$7;->val$right:I

    iget v4, p0, Landroid/media/tv/ad/TvAdService$Session$7;->val$bottom:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdSessionCallback;->onLayoutSurface(IIII)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 500
    :cond_19
    goto :goto_22

    .line 498
    :catch_1a
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvAdService"

    const-string v2, "error in layoutSurface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method
