.class Lcom/android/internal/telephony/SubscriptionMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v10, -0x1

    #@2
    .line 147
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@4
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get5(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    #@7
    move-result-object v6

    #@8
    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@b
    move-result v1

    #@c
    .line 148
    .local v1, "newDefaultDataSubId":I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@e
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get3(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    monitor-enter v7

    #@13
    .line 149
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@15
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@18
    move-result v6

    #@19
    if-eq v6, v1, :cond_2

    #@1b
    .line 150
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@1d
    new-instance v8, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v9, "Default changed "

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v8

    #@29
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@2b
    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@2e
    move-result v9

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    const-string/jumbo v9, "->"

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    invoke-static {v6, v8}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    #@45
    .line 151
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@47
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@4a
    move-result v3

    #@4b
    .line 152
    .local v3, "oldDefaultDataSubId":I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@4d
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get0(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@50
    move-result v2

    #@51
    .line 153
    .local v2, "oldDefaultDataPhoneId":I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@53
    invoke-static {v6, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->-set1(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    #@56
    .line 156
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@58
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get5(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    #@5b
    move-result-object v6

    #@5c
    const/4 v8, -0x1

    #@5d
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@60
    move-result v0

    #@61
    .line 157
    .local v0, "newDefaultDataPhoneId":I
    if-eq v1, v10, :cond_0

    #@63
    .line 158
    const/4 v4, 0x0

    #@64
    .local v4, "phoneId":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@66
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    #@69
    move-result-object v6

    #@6a
    array-length v6, v6

    #@6b
    if-ge v4, v6, :cond_0

    #@6d
    .line 159
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@6f
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    #@72
    move-result-object v6

    #@73
    aget v6, v6, v4

    #@75
    if-ne v6, v1, :cond_3

    #@77
    .line 160
    move v0, v4

    #@78
    .line 161
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@7a
    new-instance v8, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v9, "newDefaultDataPhoneId="

    #@82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-static {v6, v8}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    #@91
    .line 166
    .end local v4    # "phoneId":I
    :cond_0
    if-eq v0, v2, :cond_2

    #@93
    .line 167
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@95
    new-instance v6, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v9, "Default phoneId changed "

    #@9d
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v6

    #@a5
    const-string/jumbo v9, "->"

    #@a8
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v6

    #@ac
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v6

    #@b0
    .line 168
    const-string/jumbo v9, ", "

    #@b3
    .line 167
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v9

    #@b7
    .line 169
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@b9
    invoke-static {v6, v2}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    #@bc
    move-result v6

    #@bd
    if-eqz v6, :cond_4

    #@bf
    move v6, v5

    #@c0
    .line 167
    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    .line 172
    const-string/jumbo v9, ","

    #@c7
    .line 167
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v6

    #@cb
    .line 172
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@cd
    invoke-static {v9, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    #@d0
    move-result v9

    #@d1
    if-eqz v9, :cond_5

    #@d3
    .line 167
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v5

    #@d7
    .line 175
    const-string/jumbo v6, " registrants"

    #@da
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v5

    #@de
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v5

    #@e2
    invoke-static {v8, v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    #@e5
    .line 176
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@e7
    invoke-static {v5, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->-set0(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    #@ea
    .line 177
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@ec
    invoke-static {v5, v2}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    #@ef
    move-result v5

    #@f0
    if-nez v5, :cond_1

    #@f2
    .line 178
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@f4
    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    #@f7
    move-result-object v5

    #@f8
    aget-object v5, v5, v2

    #@fa
    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@fd
    .line 181
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@ff
    invoke-static {v5, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    #@102
    move-result v5

    #@103
    if-nez v5, :cond_2

    #@105
    .line 182
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@107
    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    #@10a
    move-result-object v5

    #@10b
    aget-object v5, v5, v0

    #@10d
    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@110
    .end local v0    # "newDefaultDataPhoneId":I
    .end local v2    # "oldDefaultDataPhoneId":I
    .end local v3    # "oldDefaultDataSubId":I
    :cond_2
    monitor-exit v7

    #@111
    .line 146
    return-void

    #@112
    .line 158
    .restart local v0    # "newDefaultDataPhoneId":I
    .restart local v2    # "oldDefaultDataPhoneId":I
    .restart local v3    # "oldDefaultDataSubId":I
    .restart local v4    # "phoneId":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@114
    goto/16 :goto_0

    #@116
    .line 171
    .end local v4    # "phoneId":I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@118
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    #@11b
    move-result-object v6

    #@11c
    aget-object v6, v6, v2

    #@11e
    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    #@121
    move-result v6

    #@122
    goto :goto_1

    #@123
    .line 174
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@125
    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    #@128
    move-result-object v5

    #@129
    aget-object v5, v5, v0

    #@12b
    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12e
    move-result v5

    #@12f
    goto :goto_2

    #@130
    .line 148
    .end local v0    # "newDefaultDataPhoneId":I
    .end local v2    # "oldDefaultDataPhoneId":I
    .end local v3    # "oldDefaultDataSubId":I
    :catchall_0
    move-exception v5

    #@131
    monitor-exit v7

    #@132
    throw v5
.end method
