.class Lcom/android/internal/app/ChooserActivity$1;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 91
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@8
    .line 90
    :cond_0
    :goto_0
    return-void

    #@9
    .line 94
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@b
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13
    check-cast v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    #@15
    .line 96
    .local v0, "sri":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@17
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get3(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@1d
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_1

    #@23
    .line 97
    const-string/jumbo v1, "ChooserActivity"

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "ChooserTargetServiceConnection "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 98
    const-string/jumbo v3, " returned after being removed from active connections."

    #@3b
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 99
    const-string/jumbo v3, " Have you considered returning results faster?"

    #@42
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    goto :goto_0

    #@4e
    .line 102
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    #@50
    if-eqz v1, :cond_2

    #@52
    .line 103
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@54
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@57
    move-result-object v1

    #@58
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@5a
    .line 104
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    #@5c
    .line 103
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V

    #@5f
    .line 106
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@61
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@63
    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    #@66
    .line 107
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@68
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get3(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@6b
    move-result-object v1

    #@6c
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@6e
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@71
    .line 108
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@73
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get3(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@76
    move-result-object v1

    #@77
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_0

    #@7d
    .line 109
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@7f
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get0(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    #@82
    move-result-object v1

    #@83
    const/4 v2, 0x2

    #@84
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@87
    .line 110
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@89
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    #@8c
    goto/16 :goto_0

    #@8e
    .line 118
    .end local v0    # "sri":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@90
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    #@93
    .line 119
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@95
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    #@98
    goto/16 :goto_0

    #@9a
    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
