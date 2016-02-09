.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceConnected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field final synthetic val$adapter:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p2, "val$adapter"    # Landroid/widget/RemoteViewsAdapter;

    #@0
    .prologue
    .line 197
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@2
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 200
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-get3(Landroid/widget/RemoteViewsAdapter;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 202
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@a
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-wrap2(Landroid/widget/RemoteViewsAdapter;)V

    #@d
    .line 246
    :goto_0
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@f
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-wrap0(Landroid/widget/RemoteViewsAdapter;)V

    #@12
    .line 247
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@14
    const/4 v4, 0x1

    #@15
    invoke-static {v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->-set0(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    #@18
    .line 248
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-static {v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->-set1(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    #@1e
    .line 199
    return-void

    #@1f
    .line 205
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@21
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-get6(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    #@28
    move-result-object v2

    #@29
    .line 207
    .local v2, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_1

    #@2f
    .line 210
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 226
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@34
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-wrap4(Landroid/widget/RemoteViewsAdapter;)V

    #@37
    .line 229
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@39
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-get2(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    #@3c
    move-result-object v3

    #@3d
    new-instance v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;

    #@3f
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@41
    invoke-direct {v4, p0, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;Landroid/widget/RemoteViewsAdapter;)V

    #@44
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@47
    goto :goto_0

    #@48
    .line 219
    :catch_0
    move-exception v1

    #@49
    .line 220
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Error notifying factory of data set changed in onServiceConnected(): "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    .line 221
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_1

    #@68
    .line 212
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    #@69
    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@6c
    new-instance v4, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v5, "Error notifying factory of data set changed in onServiceConnected(): "

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    .line 214
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 218
    return-void
.end method
