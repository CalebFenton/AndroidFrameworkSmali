.class Landroid/media/tv/TvView$2;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvView;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 142
    if-eqz p2, :cond_0

    #@2
    .line 143
    return-void

    #@3
    :cond_0
    move-object v0, p1

    #@4
    .line 146
    check-cast v0, Landroid/view/InputEvent;

    #@6
    .line 147
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v2, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    #@8
    invoke-virtual {v2, v0}, Landroid/media/tv/TvView;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 148
    return-void

    #@f
    .line 150
    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    #@11
    invoke-virtual {v2}, Landroid/media/tv/TvView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@14
    move-result-object v1

    #@15
    .line 151
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    #@17
    .line 152
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    #@1a
    .line 138
    :cond_2
    return-void
.end method
