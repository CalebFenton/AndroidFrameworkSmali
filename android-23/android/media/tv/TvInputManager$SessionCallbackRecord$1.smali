.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$session:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .param p2, "val$session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    .line 434
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;->val$session:Landroid/media/tv/TvInputManager$Session;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;->val$session:Landroid/media/tv/TvInputManager$Session;

    #@8
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$SessionCallback;->onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V

    #@b
    .line 436
    return-void
.end method
