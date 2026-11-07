.class Landroid/media/tv/ad/TvAdView$3;
.super Ljava/lang/Object;
.source "TvAdView.java"

# interfaces
.implements Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinishedInputEvent(Ljava/lang/Object;Z)V
    .registers 5
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .line 382
    if-eqz p2, :cond_3

    .line 383
    return-void

    .line 386
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/InputEvent;

    .line 387
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-virtual {v1, v0}, Landroid/media/tv/ad/TvAdView;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 388
    return-void

    .line 390
    :cond_f
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 391
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_1a

    .line 392
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    .line 394
    :cond_1a
    return-void
.end method
