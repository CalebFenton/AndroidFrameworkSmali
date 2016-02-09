.class Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    #@0
    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 217
    iget v6, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v6, :pswitch_data_0

    #@5
    .line 216
    :cond_0
    :goto_0
    return-void

    #@6
    .line 220
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@9
    move-result-object v6

    #@a
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@d
    move-result v2

    #@e
    .line 221
    .local v2, "numPhones":I
    const/4 v5, 0x0

    #@f
    .local v5, "sub":I
    :goto_1
    if-ge v5, v2, :cond_0

    #@11
    .line 222
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@13
    .line 223
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@15
    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get0(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;

    #@18
    move-result-object v7

    #@19
    aget-object v7, v7, v5

    #@1b
    .line 222
    invoke-virtual {v6, v5, v7}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    #@1e
    .line 221
    add-int/lit8 v5, v5, 0x1

    #@20
    goto :goto_1

    #@21
    .line 228
    .end local v2    # "numPhones":I
    .end local v5    # "sub":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@23
    .line 229
    .local v0, "newDefaultPhoneId":I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25
    check-cast v6, Ljava/lang/Integer;

    #@27
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v1

    #@2b
    .line 239
    .local v1, "newDefaultSubId":I
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@2d
    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    #@30
    move-result-object v7

    #@31
    monitor-enter v7

    #@32
    .line 240
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@34
    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    #@37
    move-result-object v6

    #@38
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v4

    #@3c
    .local v4, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_2

    #@42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v3

    #@46
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    #@48
    .line 241
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@4a
    const v8, 0x7fffffff

    #@4d
    if-ne v6, v8, :cond_1

    #@4f
    .line 242
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@51
    invoke-static {v6, v3, v0}, Lcom/android/server/TelephonyRegistry;->-wrap1(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    goto :goto_2

    #@55
    .line 239
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@56
    monitor-exit v7

    #@57
    throw v6

    #@58
    .line 245
    .restart local v4    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@5a
    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap2(Lcom/android/server/TelephonyRegistry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    monitor-exit v7

    #@5e
    .line 247
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@60
    invoke-static {v6, v1}, Lcom/android/server/TelephonyRegistry;->-set1(Lcom/android/server/TelephonyRegistry;I)I

    #@63
    .line 248
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    #@65
    invoke-static {v6, v0}, Lcom/android/server/TelephonyRegistry;->-set0(Lcom/android/server/TelephonyRegistry;I)I

    #@68
    goto :goto_0

    #@69
    .line 217
    nop

    #@6a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
