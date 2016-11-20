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
    .line 111
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 114
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 149
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@9
    .line 113
    :cond_0
    :goto_0
    return-void

    #@a
    .line 117
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    #@16
    .line 119
    .local v0, "sri":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@18
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get5(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@1e
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_1

    #@24
    .line 120
    const-string/jumbo v1, "ChooserActivity"

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "ChooserTargetServiceConnection "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 121
    const-string/jumbo v3, " returned after being removed from active connections."

    #@3c
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 122
    const-string/jumbo v3, " Have you considered returning results faster?"

    #@43
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_0

    #@4f
    .line 125
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    #@51
    if-eqz v1, :cond_2

    #@53
    .line 126
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@55
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@58
    move-result-object v1

    #@59
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@5b
    .line 127
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    #@5d
    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V

    #@60
    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@62
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@64
    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    #@67
    .line 130
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@69
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    #@6c
    .line 131
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@6e
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get5(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@71
    move-result-object v1

    #@72
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@74
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@77
    .line 132
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@79
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get5(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@7c
    move-result-object v1

    #@7d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_0

    #@83
    .line 133
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@85
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get0(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    #@88
    move-result-object v1

    #@89
    const/4 v2, 0x2

    #@8a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@8d
    .line 134
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@8f
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    #@92
    .line 135
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@94
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->setShowServiceTargets(Z)V

    #@9b
    goto/16 :goto_0

    #@9d
    .line 143
    .end local v0    # "sri":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@9f
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    #@a2
    .line 144
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@a4
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    #@a7
    .line 145
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@a9
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get1(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {v1, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->setShowServiceTargets(Z)V

    #@b0
    goto/16 :goto_0

    #@b2
    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
