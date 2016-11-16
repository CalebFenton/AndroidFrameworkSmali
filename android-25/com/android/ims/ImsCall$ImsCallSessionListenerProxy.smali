.class public Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/ImsCallSession$Listener;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsCall;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/ImsCallSession$Listener;-><init>()V

    #@5
    return-void
.end method

.method private doesCallSessionExistsInMerge(Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 2
    .param p1, "cs"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 2452
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2453
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@6
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-wrap0(Lcom/android/ims/ImsCall;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@e
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get5(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get7(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 2454
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@22
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-wrap1(Lcom/android/ims/ImsCall;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2a
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get4(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get7(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    .line 2453
    if-nez v1, :cond_2

    #@3c
    .line 2455
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3e
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get7(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    .line 2453
    :goto_0
    return v1

    #@4b
    :cond_2
    const/4 v1, 0x1

    #@4c
    goto :goto_0
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2637
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionConferenceExtendFailed :: reasonInfo="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@19
    .line 2639
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 2640
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "callSessionConferenceExtendFailed :: not supported for transient conference session="

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@3a
    .line 2642
    return-void

    #@3b
    .line 2647
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    monitor-enter v3

    #@3e
    .line 2648
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@40
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@43
    move-result-object v0

    #@44
    .line 2649
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@46
    const/4 v4, 0x0

    #@47
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    monitor-exit v3

    #@4b
    .line 2652
    if-eqz v0, :cond_1

    #@4d
    .line 2654
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4f
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@52
    .line 2636
    :cond_1
    :goto_0
    return-void

    #@53
    .line 2647
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@54
    monitor-exit v3

    #@55
    throw v2

    #@56
    .line 2655
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@57
    .line 2656
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    const-string/jumbo v3, "callSessionConferenceExtendFailed :: "

    #@5c
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5f
    goto :goto_0
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2664
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v5, "callSessionConferenceExtendReceived :: newSession="

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    .line 2665
    const-string/jumbo v5, ", profile="

    #@15
    .line 2664
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2667
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 2668
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "callSessionConferenceExtendReceived :: not supported for transient conference session"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2670
    return-void

    #@46
    .line 2673
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-static {v3, p2, p3}, Lcom/android/ims/ImsCall;->-wrap3(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    #@4b
    move-result-object v1

    #@4c
    .line 2675
    .local v1, "newCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    #@4e
    .line 2677
    return-void

    #@4f
    .line 2682
    :cond_1
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    monitor-enter v4

    #@52
    .line 2683
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@54
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    move-result-object v0

    #@58
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v4

    #@59
    .line 2686
    if-eqz v0, :cond_2

    #@5b
    .line 2688
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5d
    invoke-virtual {v0, v3, v1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@60
    .line 2663
    :cond_2
    :goto_0
    return-void

    #@61
    .line 2682
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v3

    #@62
    monitor-exit v4

    #@63
    throw v3

    #@64
    .line 2689
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v2

    #@65
    .line 2690
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@67
    const-string/jumbo v4, "callSessionConferenceExtendReceived :: "

    #@6a
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6d
    goto :goto_0
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2602
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v5, "callSessionConferenceExtended :: session="

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    const-string/jumbo v5, " newSession="

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    .line 2603
    const-string/jumbo v5, ", profile="

    #@20
    .line 2602
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@2f
    .line 2605
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@31
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_0

    #@37
    .line 2606
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@39
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v5, "callSessionConferenceExtended :: not supported for transient conference session="

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@50
    .line 2608
    return-void

    #@51
    .line 2611
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@53
    invoke-static {v3, p2, p3}, Lcom/android/ims/ImsCall;->-wrap3(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    #@56
    move-result-object v1

    #@57
    .line 2613
    .local v1, "newCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    #@59
    .line 2614
    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    #@5b
    invoke-direct {v3}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    #@5e
    invoke-virtual {p0, p1, v3}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@61
    .line 2615
    return-void

    #@62
    .line 2620
    :cond_1
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@64
    monitor-enter v4

    #@65
    .line 2621
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@67
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@6a
    move-result-object v0

    #@6b
    .line 2622
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@6d
    const/4 v5, 0x0

    #@6e
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    monitor-exit v4

    #@72
    .line 2625
    if-eqz v0, :cond_2

    #@74
    .line 2627
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@76
    invoke-virtual {v0, v3, v1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@79
    .line 2601
    :cond_2
    :goto_0
    return-void

    #@7a
    .line 2620
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v3

    #@7b
    monitor-exit v4

    #@7c
    throw v3

    #@7d
    .line 2628
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v2

    #@7e
    .line 2629
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@80
    const-string/jumbo v4, "callSessionConferenceExtended :: "

    #@83
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@86
    goto :goto_0
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    #@0
    .prologue
    .line 2800
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "callSessionConferenceStateUpdated :: state="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@19
    .line 2802
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    #@1e
    .line 2799
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2883
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionHandover :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, ", srcAccessTech="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 2884
    const-string/jumbo v4, ", targetAccessTech="

    #@20
    .line 2883
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 2884
    const-string/jumbo v4, ", reasonInfo="

    #@2b
    .line 2883
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@3a
    .line 2889
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3c
    monitor-enter v3

    #@3d
    .line 2890
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3f
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    move-result-object v0

    #@43
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@44
    .line 2893
    if-eqz v0, :cond_0

    #@46
    .line 2895
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    .line 2882
    :cond_0
    :goto_0
    return-void

    #@4c
    .line 2889
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2

    #@4f
    .line 2897
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@50
    .line 2898
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@52
    const-string/jumbo v3, "callSessionHandover :: "

    #@55
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@58
    goto :goto_0
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2906
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionHandoverFailed :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, ", srcAccessTech="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 2907
    const-string/jumbo v4, ", targetAccessTech="

    #@20
    .line 2906
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 2907
    const-string/jumbo v4, ", reasonInfo="

    #@2b
    .line 2906
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@3a
    .line 2912
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3c
    monitor-enter v3

    #@3d
    .line 2913
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3f
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    move-result-object v0

    #@43
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@44
    .line 2916
    if-eqz v0, :cond_0

    #@46
    .line 2918
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    .line 2905
    :cond_0
    :goto_0
    return-void

    #@4c
    .line 2912
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2

    #@4f
    .line 2920
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@50
    .line 2921
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@52
    const-string/jumbo v3, "callSessionHandoverFailed :: "

    #@55
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@58
    goto :goto_0
.end method

.method public callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2249
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionHeld :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "profile="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2252
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    monitor-enter v3

    #@27
    .line 2255
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-wrap12(Lcom/android/ims/ImsCall;Z)V

    #@2d
    .line 2257
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2f
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)V

    #@32
    .line 2259
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@34
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get8(Lcom/android/ims/ImsCall;)I

    #@37
    move-result v2

    #@38
    const/4 v4, 0x2

    #@39
    if-ne v2, v4, :cond_0

    #@3b
    .line 2261
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-wrap7(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v3

    #@41
    .line 2262
    return-void

    #@42
    .line 2265
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@44
    const/4 v4, 0x0

    #@45
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;I)I

    #@48
    .line 2266
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4a
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    move-result-object v0

    #@4e
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@4f
    .line 2269
    if-eqz v0, :cond_1

    #@51
    .line 2271
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@53
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@56
    .line 2248
    :cond_1
    :goto_0
    return-void

    #@57
    .line 2252
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@58
    monitor-exit v3

    #@59
    throw v2

    #@5a
    .line 2272
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@5b
    .line 2273
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5d
    const-string/jumbo v3, "callSessionHeld :: "

    #@60
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    goto :goto_0
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2280
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v5, "callSessionHoldFailed :: session"

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    const-string/jumbo v5, "reasonInfo="

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2282
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 2284
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "callSessionHoldFailed :: not supported for transient conference session="

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2286
    return-void

    #@46
    .line 2289
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "callSessionHoldFailed :: session="

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    .line 2290
    const-string/jumbo v5, ", reasonInfo="

    #@5b
    .line 2289
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@6a
    .line 2292
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@6c
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get3(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    #@6f
    move-result-object v4

    #@70
    monitor-enter v4

    #@71
    .line 2293
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@73
    const/4 v5, 0x0

    #@74
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    monitor-exit v4

    #@78
    .line 2296
    const/4 v0, 0x0

    #@79
    .line 2299
    .local v0, "isHoldForMerge":Z
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@7b
    monitor-enter v4

    #@7c
    .line 2300
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@7e
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get8(Lcom/android/ims/ImsCall;)I

    #@81
    move-result v3

    #@82
    const/4 v5, 0x2

    #@83
    if-ne v3, v5, :cond_1

    #@85
    .line 2301
    const/4 v0, 0x1

    #@86
    .line 2304
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@88
    const/4 v5, 0x0

    #@89
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;I)I

    #@8c
    .line 2305
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@8e
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@91
    move-result-object v1

    #@92
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v4

    #@93
    .line 2308
    if-eqz v1, :cond_2

    #@95
    .line 2310
    :try_start_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@97
    invoke-virtual {v1, v3, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@9a
    .line 2279
    :cond_2
    :goto_0
    return-void

    #@9b
    .line 2292
    .end local v0    # "isHoldForMerge":Z
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v3

    #@9c
    monitor-exit v4

    #@9d
    throw v3

    #@9e
    .line 2299
    .restart local v0    # "isHoldForMerge":Z
    :catchall_1
    move-exception v3

    #@9f
    monitor-exit v4

    #@a0
    throw v3

    #@a1
    .line 2311
    .restart local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v2

    #@a2
    .line 2312
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@a4
    const-string/jumbo v4, "callSessionHoldFailed :: "

    #@a7
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@aa
    goto :goto_0
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2319
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionHoldReceived :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "profile="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2321
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2323
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionHoldReceived :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2325
    return-void

    #@46
    .line 2330
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2331
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2332
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2335
    if-eqz v0, :cond_1

    #@57
    .line 2337
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 2318
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 2330
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 2338
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@61
    .line 2339
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@63
    const-string/jumbo v3, "callSessionHoldReceived :: "

    #@66
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    goto :goto_0
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 2697
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    const-string/jumbo v3, "callSessionInviteParticipantsRequestDelivered ::"

    #@5
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@8
    .line 2699
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@a
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 2700
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "callSessionInviteParticipantsRequestDelivered :: not supported for conference session="

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@29
    .line 2702
    return-void

    #@2a
    .line 2707
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2c
    monitor-enter v3

    #@2d
    .line 2708
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2f
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v0

    #@33
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@34
    .line 2711
    if-eqz v0, :cond_1

    #@36
    .line 2713
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@38
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 2696
    :cond_1
    :goto_0
    return-void

    #@3c
    .line 2707
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 2714
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@40
    .line 2715
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@42
    const-string/jumbo v3, "callSessionInviteParticipantsRequestDelivered :: "

    #@45
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@48
    goto :goto_0
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2723
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionInviteParticipantsRequestFailed :: reasonInfo="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@19
    .line 2725
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 2726
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "callSessionInviteParticipantsRequestFailed :: not supported for conference session="

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@3a
    .line 2728
    return-void

    #@3b
    .line 2733
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    monitor-enter v3

    #@3e
    .line 2734
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@40
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    move-result-object v0

    #@44
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@45
    .line 2737
    if-eqz v0, :cond_1

    #@47
    .line 2739
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@49
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4c
    .line 2722
    :cond_1
    :goto_0
    return-void

    #@4d
    .line 2733
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit v3

    #@4f
    throw v2

    #@50
    .line 2740
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@51
    .line 2741
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@53
    const-string/jumbo v3, "callSessionInviteParticipantsRequestFailed :: "

    #@56
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    goto :goto_0
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 4
    .param p1, "newSession"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2484
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "callSessionMergeComplete :: newSession ="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@1a
    .line 2485
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1c
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-wrap0(Lcom/android/ims/ImsCall;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    .line 2487
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@24
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-get4(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@27
    move-result-object v0

    #@28
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-wrap9(Lcom/android/ims/ImsCall;)V

    #@2b
    .line 2483
    .end local p1    # "newSession":Lcom/android/ims/internal/ImsCallSession;
    :goto_0
    return-void

    #@2c
    .line 2490
    .restart local p1    # "newSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_0
    if-eqz p1, :cond_2

    #@2e
    .line 2491
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@30
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->doesCallSessionExistsInMerge(Lcom/android/ims/internal/ImsCallSession;)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_1

    #@36
    move-object p1, v0

    #@37
    .end local p1    # "newSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_1
    invoke-static {v1, p1}, Lcom/android/ims/ImsCall;->-set3(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;

    #@3a
    .line 2495
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3c
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-wrap9(Lcom/android/ims/ImsCall;)V

    #@3f
    goto :goto_0
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "callSessionMergeFailed :: session="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "reasonInfo="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2505
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    monitor-enter v1

    #@27
    .line 2510
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@29
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-wrap0(Lcom/android/ims/ImsCall;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 2511
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@31
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-wrap10(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    :goto_0
    monitor-exit v1

    #@35
    .line 2500
    return-void

    #@36
    .line 2512
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@38
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-get4(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@3b
    move-result-object v0

    #@3c
    if-eqz v0, :cond_1

    #@3e
    .line 2513
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@40
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-get4(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@43
    move-result-object v0

    #@44
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-wrap10(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 2505
    :catchall_0
    move-exception v0

    #@49
    monitor-exit v1

    #@4a
    throw v0

    #@4b
    .line 2515
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4d
    const-string/jumbo v2, "callSessionMergeFailed :: No merge host for this conference!"

    #@50
    invoke-static {v0, v2}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_0
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2441
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "callSessionMergeStarted :: session="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " newSession="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 2442
    const-string/jumbo v2, ", profile="

    #@20
    .line 2441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@2f
    .line 2444
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/ImsCallSession;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    #@0
    .prologue
    .line 2861
    invoke-static {}, Lcom/android/ims/ImsCall;->-get0()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 2862
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "callSessionMultipartyStateChanged isMultiParty: "

    #@10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    if-eqz p2, :cond_2

    #@16
    const-string/jumbo v2, "Y"

    #@19
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v3, v2}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2868
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    monitor-enter v3

    #@27
    .line 2869
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@29
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-object v0

    #@2d
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@2e
    .line 2872
    if-eqz v0, :cond_1

    #@30
    .line 2874
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@32
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    .line 2860
    :cond_1
    :goto_1
    return-void

    #@36
    .line 2863
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_2
    const-string/jumbo v2, "N"

    #@39
    goto :goto_0

    #@3a
    .line 2868
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2

    #@3d
    .line 2875
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@3e
    .line 2876
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@40
    const-string/jumbo v3, "callSessionMultipartyStateChanged :: "

    #@43
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46
    goto :goto_1
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 2131
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionProgressing :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " profile="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2133
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2135
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionProgressing :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2137
    return-void

    #@46
    .line 2142
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2143
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2144
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get1(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCallProfile;

    #@54
    move-result-object v2

    #@55
    iget-object v2, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@57
    invoke-virtual {v2, p2}, Lcom/android/ims/ImsStreamMediaProfile;->copyFrom(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    monitor-exit v3

    #@5b
    .line 2147
    if-eqz v0, :cond_1

    #@5d
    .line 2149
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5f
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    .line 2130
    :cond_1
    :goto_0
    return-void

    #@63
    .line 2142
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@64
    monitor-exit v3

    #@65
    throw v2

    #@66
    .line 2150
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@67
    .line 2151
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@69
    const-string/jumbo v3, "callSessionProgressing :: "

    #@6c
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6f
    goto :goto_0
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 2748
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    const-string/jumbo v3, "callSessionRemoveParticipantsRequestDelivered ::"

    #@5
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@8
    .line 2750
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@a
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 2751
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "callSessionRemoveParticipantsRequestDelivered :: not supported for conference session="

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@29
    .line 2753
    return-void

    #@2a
    .line 2758
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2c
    monitor-enter v3

    #@2d
    .line 2759
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2f
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v0

    #@33
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@34
    .line 2762
    if-eqz v0, :cond_1

    #@36
    .line 2764
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@38
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 2747
    :cond_1
    :goto_0
    return-void

    #@3c
    .line 2758
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 2765
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@40
    .line 2766
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@42
    const-string/jumbo v3, "callSessionRemoveParticipantsRequestDelivered :: "

    #@45
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@48
    goto :goto_0
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2774
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionRemoveParticipantsRequestFailed :: reasonInfo="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@19
    .line 2776
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 2777
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "callSessionRemoveParticipantsRequestFailed :: not supported for conference session="

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@3a
    .line 2779
    return-void

    #@3b
    .line 2784
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    monitor-enter v3

    #@3e
    .line 2785
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@40
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    move-result-object v0

    #@44
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@45
    .line 2788
    if-eqz v0, :cond_1

    #@47
    .line 2790
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@49
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4c
    .line 2773
    :cond_1
    :goto_0
    return-void

    #@4d
    .line 2784
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit v3

    #@4f
    throw v2

    #@50
    .line 2791
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@51
    .line 2792
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@53
    const-string/jumbo v3, "callSessionRemoveParticipantsRequestFailed :: "

    #@56
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    goto :goto_0
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2384
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionResumeFailed :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "reasonInfo="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2386
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2387
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionResumeFailed :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2389
    return-void

    #@46
    .line 2392
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get3(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    monitor-enter v3

    #@4d
    .line 2393
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4f
    const/4 v4, 0x1

    #@50
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    monitor-exit v3

    #@54
    .line 2398
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@56
    monitor-enter v3

    #@57
    .line 2399
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@5c
    move-result-object v0

    #@5d
    .line 2400
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5f
    const/4 v4, 0x0

    #@60
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@63
    monitor-exit v3

    #@64
    .line 2403
    if-eqz v0, :cond_1

    #@66
    .line 2405
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@68
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@6b
    .line 2383
    :cond_1
    :goto_0
    return-void

    #@6c
    .line 2392
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2

    #@6f
    .line 2398
    :catchall_1
    move-exception v2

    #@70
    monitor-exit v3

    #@71
    throw v2

    #@72
    .line 2406
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@73
    .line 2407
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@75
    const-string/jumbo v3, "callSessionResumeFailed :: "

    #@78
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7b
    goto :goto_0
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2414
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionResumeReceived :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "profile="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2416
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2417
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionResumeReceived :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2419
    return-void

    #@46
    .line 2424
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2425
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2426
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2429
    if-eqz v0, :cond_1

    #@57
    .line 2431
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 2413
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 2424
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 2432
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@61
    .line 2433
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@63
    const-string/jumbo v3, "callSessionResumeReceived :: "

    #@66
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    goto :goto_0
.end method

.method public callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2346
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "callSessionResumed :: session="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "profile="

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@25
    .line 2348
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@27
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_0

    #@2d
    .line 2349
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "callSessionResumed :: not supported for transient conference session="

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@46
    .line 2351
    return-void

    #@47
    .line 2356
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@49
    invoke-static {v2, v5}, Lcom/android/ims/ImsCall;->-wrap12(Lcom/android/ims/ImsCall;Z)V

    #@4c
    .line 2366
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4e
    monitor-enter v3

    #@4f
    .line 2367
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@54
    move-result-object v0

    #@55
    .line 2368
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@57
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)V

    #@5a
    .line 2369
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5c
    const/4 v4, 0x0

    #@5d
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;I)I

    #@60
    .line 2370
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@62
    const/4 v4, 0x0

    #@63
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    monitor-exit v3

    #@67
    .line 2373
    if-eqz v0, :cond_1

    #@69
    .line 2375
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@6b
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@6e
    .line 2345
    :cond_1
    :goto_0
    return-void

    #@6f
    .line 2366
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@70
    monitor-exit v3

    #@71
    throw v2

    #@72
    .line 2376
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@73
    .line 2377
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@75
    const-string/jumbo v3, "callSessionResumed :: "

    #@78
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7b
    goto :goto_0
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2193
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionStartFailed :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " reasonInfo="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2195
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2197
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionStartFailed :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2199
    return-void

    #@46
    .line 2204
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2205
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2206
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set1(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)Lcom/android/ims/ImsReasonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2209
    if-eqz v0, :cond_1

    #@57
    .line 2211
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 2192
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 2204
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 2212
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@61
    .line 2213
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@63
    const-string/jumbo v3, "callSessionStarted :: "

    #@66
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    goto :goto_0
.end method

.method public callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2158
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionStarted :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " profile="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2160
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_0

    #@2c
    .line 2164
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    const/4 v3, 0x0

    #@2f
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap12(Lcom/android/ims/ImsCall;Z)V

    #@32
    .line 2170
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@34
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 2172
    return-void

    #@3b
    .line 2166
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "callSessionStarted :: on transient session="

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@54
    .line 2167
    return-void

    #@55
    .line 2177
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@57
    monitor-enter v3

    #@58
    .line 2178
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5a
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@5d
    move-result-object v0

    #@5e
    .line 2179
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@60
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    monitor-exit v3

    #@64
    .line 2182
    if-eqz v0, :cond_2

    #@66
    .line 2184
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@68
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@6b
    .line 2157
    :cond_2
    :goto_0
    return-void

    #@6c
    .line 2177
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2

    #@6f
    .line 2185
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@70
    .line 2186
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@72
    const-string/jumbo v3, "callSessionStarted :: "

    #@75
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@78
    goto :goto_0
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    #@0
    .prologue
    .line 2929
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 2930
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "callSessionSuppServiceReceived :: not supported for transient conference session="

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@21
    .line 2932
    return-void

    #@22
    .line 2935
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "callSessionSuppServiceReceived :: session="

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 2936
    const-string/jumbo v4, ", suppServiceInfo"

    #@37
    .line 2935
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@46
    .line 2940
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2941
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    move-result-object v0

    #@4f
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@50
    .line 2944
    if-eqz v0, :cond_1

    #@52
    .line 2946
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@54
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsSuppServiceNotification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    .line 2928
    :cond_1
    :goto_0
    return-void

    #@58
    .line 2940
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@59
    monitor-exit v3

    #@5a
    throw v2

    #@5b
    .line 2947
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@5c
    .line 2948
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5e
    const-string/jumbo v3, "callSessionSuppServiceReceived :: "

    #@61
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@64
    goto :goto_0
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2220
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "callSessionTerminated :: session="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " reasonInfo="

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@25
    .line 2222
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@27
    invoke-static {v1, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 2223
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "callSessionTerminated :: on transient session="

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@46
    .line 2227
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-static {v1, p2}, Lcom/android/ims/ImsCall;->-wrap10(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@4b
    .line 2228
    return-void

    #@4c
    .line 2231
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4e
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get6(Lcom/android/ims/ImsCall;)I

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_1

    #@54
    .line 2232
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@56
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v3, "callSessionTerminated :: overrideReasonInfo="

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@64
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get6(Lcom/android/ims/ImsCall;)I

    #@67
    move-result v3

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@73
    .line 2233
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    #@75
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@77
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get6(Lcom/android/ims/ImsCall;)I

    #@7a
    move-result v1

    #@7b
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    #@7e
    move-result v2

    #@7f
    .line 2234
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    .line 2233
    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    #@86
    .end local p2    # "reasonInfo":Lcom/android/ims/ImsReasonInfo;
    .local v0, "reasonInfo":Lcom/android/ims/ImsReasonInfo;
    move-object p2, v0

    #@87
    .line 2240
    .end local v0    # "reasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local p2    # "reasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@89
    invoke-static {v1, p2}, Lcom/android/ims/ImsCall;->-wrap8(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@8c
    .line 2243
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@8e
    invoke-static {v1, v4}, Lcom/android/ims/ImsCall;->-wrap12(Lcom/android/ims/ImsCall;Z)V

    #@91
    .line 2219
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 2834
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionTtyModeReceived :: mode="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@19
    .line 2838
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    monitor-enter v3

    #@1c
    .line 2839
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1e
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v0

    #@22
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@23
    .line 2842
    if-eqz v0, :cond_0

    #@25
    .line 2844
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@27
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@2a
    .line 2833
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 2838
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2

    #@2e
    .line 2845
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@2f
    .line 2846
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@31
    const-string/jumbo v3, "callSessionTtyModeReceived :: "

    #@34
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    goto :goto_0
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2548
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionUpdateFailed :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " reasonInfo="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2550
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2551
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionUpdateFailed :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2553
    return-void

    #@46
    .line 2558
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2559
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2560
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    const/4 v4, 0x0

    #@52
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    monitor-exit v3

    #@56
    .line 2563
    if-eqz v0, :cond_1

    #@58
    .line 2565
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5a
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5d
    .line 2547
    :cond_1
    :goto_0
    return-void

    #@5e
    .line 2558
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit v3

    #@60
    throw v2

    #@61
    .line 2566
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@62
    .line 2567
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@64
    const-string/jumbo v3, "callSessionUpdateFailed :: "

    #@67
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6a
    goto :goto_0
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2574
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionUpdateReceived :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " profile="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2576
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2577
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionUpdateReceived :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2579
    return-void

    #@46
    .line 2584
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2585
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2586
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set2(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    #@54
    .line 2587
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@56
    const/4 v4, 0x6

    #@57
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    monitor-exit v3

    #@5b
    .line 2590
    if-eqz v0, :cond_1

    #@5d
    .line 2592
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5f
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    .line 2573
    :cond_1
    :goto_0
    return-void

    #@63
    .line 2584
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@64
    monitor-exit v3

    #@65
    throw v2

    #@66
    .line 2593
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@67
    .line 2594
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@69
    const-string/jumbo v3, "callSessionUpdateReceived :: "

    #@6c
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6f
    goto :goto_0
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 2522
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionUpdated :: session="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " profile="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2524
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2525
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionUpdated :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2527
    return-void

    #@46
    .line 2532
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2533
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2534
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2537
    if-eqz v0, :cond_1

    #@57
    .line 2539
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 2521
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 2532
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 2540
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@61
    .line 2541
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@63
    const-string/jumbo v3, "callSessionUpdated :: "

    #@66
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    goto :goto_0
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2808
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "callSessionUssdMessageReceived :: mode="

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, ", ussdMessage="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2811
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2812
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "callSessionUssdMessageReceived :: not supported for transient conference session="

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2814
    return-void

    #@46
    .line 2819
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2820
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    move-result-object v0

    #@4f
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3

    #@50
    .line 2823
    if-eqz v0, :cond_1

    #@52
    .line 2825
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@54
    invoke-virtual {v0, v2, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    .line 2807
    :cond_1
    :goto_0
    return-void

    #@58
    .line 2819
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@59
    monitor-exit v3

    #@5a
    throw v2

    #@5b
    .line 2826
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@5c
    .line 2827
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5e
    const-string/jumbo v3, "callSessionUssdMessageReceived :: "

    #@61
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@64
    goto :goto_0
.end method
