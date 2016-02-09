.class Landroid/telecom/Call$8;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireCallDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Call;
    .param p2, "val$callback"    # Landroid/telecom/Call$Callback;
    .param p3, "val$call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 1209
    .local p4, "val$record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    iput-object p1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    #@2
    iput-object p2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    #@4
    iput-object p3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    #@6
    iput-object p4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 1212
    const/4 v1, 0x0

    #@1
    .line 1213
    .local v1, "isFinalRemoval":Z
    const/4 v2, 0x0

    #@2
    .line 1215
    .local v2, "toThrow":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    #@4
    iget-object v4, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    #@6
    invoke-virtual {v3, v4}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1219
    .end local v2    # "toThrow":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v4, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    #@b
    monitor-enter v4

    #@c
    .line 1220
    :try_start_1
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    #@e
    invoke-static {v3}, Landroid/telecom/Call;->-get0(Landroid/telecom/Call;)Ljava/util/List;

    #@11
    move-result-object v3

    #@12
    iget-object v5, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    #@14
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@17
    .line 1221
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    #@19
    invoke-static {v3}, Landroid/telecom/Call;->-get0(Landroid/telecom/Call;)Ljava/util/List;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 1222
    const/4 v1, 0x1

    #@24
    :cond_0
    monitor-exit v4

    #@25
    .line 1225
    if-eqz v1, :cond_1

    #@27
    .line 1226
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    #@29
    invoke-static {v3}, Landroid/telecom/Call;->-get1(Landroid/telecom/Call;)Landroid/telecom/Phone;

    #@2c
    move-result-object v3

    #@2d
    iget-object v4, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    #@2f
    invoke-virtual {v3, v4}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    #@32
    .line 1228
    :cond_1
    if-eqz v2, :cond_2

    #@34
    .line 1229
    throw v2

    #@35
    .line 1216
    .restart local v2    # "toThrow":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    #@36
    .line 1217
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v2, v0

    #@37
    .local v2, "toThrow":Ljava/lang/RuntimeException;
    goto :goto_0

    #@38
    .line 1219
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "toThrow":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    #@39
    monitor-exit v4

    #@3a
    throw v3

    #@3b
    .line 1211
    :cond_2
    return-void
.end method
