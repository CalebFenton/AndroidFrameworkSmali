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
.field final synthetic blacklist this$0:Landroid/telecom/Call;

.field final synthetic blacklist val$call:Landroid/telecom/Call;

.field final synthetic blacklist val$callback:Landroid/telecom/Call$Callback;

.field final synthetic blacklist val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .registers 5
    .param p1, "this$0"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 2808
    iput-object p1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 2811
    const/4 v0, 0x0

    .line 2812
    .local v0, "isFinalRemoval":Z
    const/4 v1, 0x0

    .line 2814
    .local v1, "toThrow":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v2, v3}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_9} :catch_a

    .line 2817
    goto :goto_c

    .line 2815
    :catch_a
    move-exception v2

    .line 2816
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v1, v2

    .line 2818
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_c
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    monitor-enter v2

    .line 2819
    :try_start_f
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v3}, Landroid/telecom/Call;->-$$Nest$fgetmCallbackRecords(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2820
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v3}, Landroid/telecom/Call;->-$$Nest$fgetmCallbackRecords(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2821
    const/4 v0, 0x1

    .line 2823
    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_39

    .line 2824
    if-eqz v0, :cond_35

    .line 2825
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v2}, Landroid/telecom/Call;->-$$Nest$fgetmPhone(Landroid/telecom/Call;)Landroid/telecom/Phone;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v2, v3}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 2827
    :cond_35
    if-nez v1, :cond_38

    .line 2830
    return-void

    .line 2828
    :cond_38
    throw v1

    .line 2823
    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v3
.end method
