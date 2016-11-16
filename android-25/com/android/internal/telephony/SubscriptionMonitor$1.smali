.class Lcom/android/internal/telephony/SubscriptionMonitor$1;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
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
    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 8

    #@0
    .prologue
    .line 111
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@2
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get3(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 112
    const/4 v0, -0x1

    #@8
    .line 113
    .local v0, "newDefaultDataPhoneId":I
    const/4 v3, 0x0

    #@9
    .local v3, "phoneId":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@b
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    #@e
    move-result-object v4

    #@f
    array-length v4, v4

    #@10
    if-ge v3, v4, :cond_4

    #@12
    .line 114
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@14
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get5(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    #@1b
    move-result v1

    #@1c
    .line 115
    .local v1, "newSubId":I
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@1e
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    #@21
    move-result-object v4

    #@22
    aget v2, v4, v3

    #@24
    .line 116
    .local v2, "oldSubId":I
    if-eq v2, v1, :cond_3

    #@26
    .line 117
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "Phone["

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    const-string/jumbo v7, "] subId changed "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    const-string/jumbo v7, "->"

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    .line 118
    const-string/jumbo v7, ", "

    #@51
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    .line 119
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@57
    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get6(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    #@5a
    move-result-object v7

    #@5b
    aget-object v7, v7, v3

    #@5d
    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    #@60
    move-result v7

    #@61
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    .line 119
    const-string/jumbo v7, " registrants"

    #@68
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    invoke-static {v4, v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    #@73
    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@75
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    #@78
    move-result-object v4

    #@79
    aput v1, v4, v3

    #@7b
    .line 121
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@7d
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get6(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    #@80
    move-result-object v4

    #@81
    aget-object v4, v4, v3

    #@83
    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@86
    .line 124
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@88
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@8b
    move-result v4

    #@8c
    const/4 v6, -0x1

    #@8d
    if-ne v4, v6, :cond_1

    #@8f
    .line 113
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@91
    goto/16 :goto_0

    #@93
    .line 127
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@95
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@98
    move-result v4

    #@99
    if-eq v1, v4, :cond_2

    #@9b
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@9d
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@a0
    move-result v4

    #@a1
    if-ne v2, v4, :cond_3

    #@a3
    .line 128
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@a5
    new-instance v6, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v7, "mDefaultDataSubId = "

    #@ad
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v6

    #@b1
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@b3
    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@b6
    move-result v7

    #@b7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v6

    #@bb
    const-string/jumbo v7, ", "

    #@be
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v6

    #@c2
    .line 129
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@c4
    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    #@c7
    move-result-object v7

    #@c8
    aget-object v7, v7, v3

    #@ca
    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    #@cd
    move-result v7

    #@ce
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v6

    #@d2
    .line 130
    const-string/jumbo v7, " registrants"

    #@d5
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v6

    #@d9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v6

    #@dd
    invoke-static {v4, v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    #@e0
    .line 131
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@e2
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    #@e5
    move-result-object v4

    #@e6
    aget-object v4, v4, v3

    #@e8
    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@eb
    .line 134
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@ed
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    #@f0
    move-result v4

    #@f1
    if-ne v1, v4, :cond_0

    #@f3
    .line 135
    move v0, v3

    #@f4
    goto :goto_1

    #@f5
    .line 138
    .end local v1    # "newSubId":I
    .end local v2    # "oldSubId":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@f7
    invoke-static {v4, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->-set0(Lcom/android/internal/telephony/SubscriptionMonitor;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@fa
    monitor-exit v5

    #@fb
    .line 110
    return-void

    #@fc
    .line 111
    :catchall_0
    move-exception v4

    #@fd
    monitor-exit v5

    #@fe
    throw v4
.end method
