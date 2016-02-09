.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$eventArgs:Landroid/os/Bundle;

.field final synthetic val$eventType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .param p2, "val$eventType"    # Ljava/lang/String;
    .param p3, "val$eventArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 534
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;->val$eventType:Ljava/lang/String;

    #@4
    iput-object p3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;->val$eventArgs:Landroid/os/Bundle;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@8
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;->val$eventType:Ljava/lang/String;

    #@e
    iget-object v3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;->val$eventArgs:Landroid/os/Bundle;

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/TvInputManager$SessionCallback;->onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    #@13
    .line 536
    return-void
.end method
