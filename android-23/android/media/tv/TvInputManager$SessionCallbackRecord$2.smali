.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionReleased()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@0
    .prologue
    .line 443
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@8
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$SessionCallback;->onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V

    #@f
    .line 445
    return-void
.end method
