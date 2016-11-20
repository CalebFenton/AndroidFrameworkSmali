.class Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/ImsCallSession$Listener;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsCall;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 2055
    iput-object p1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/ImsCallSession$Listener;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    #@3
    return-void
.end method

.method private doesCallSessionExistsInMerge(Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 2
    .param p1, "cs"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 2373
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2374
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
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get6(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

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
    .line 2375
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
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get6(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

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
    .line 2374
    if-nez v1, :cond_2

    #@3c
    .line 2376
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3e
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-get6(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

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
    .line 2374
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
    .line 2558
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
    .line 2560
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 2561
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
    .line 2563
    return-void

    #@3b
    .line 2568
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    monitor-enter v3

    #@3e
    .line 2569
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@40
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@43
    move-result-object v0

    #@44
    .line 2570
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@46
    const/4 v4, 0x0

    #@47
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set5(Lcom/android/ims/ImsCall;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    monitor-exit v3

    #@4b
    .line 2573
    if-eqz v0, :cond_1

    #@4d
    .line 2575
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4f
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@52
    .line 2557
    :cond_1
    :goto_0
    return-void

    #@53
    .line 2568
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@54
    monitor-exit v3

    #@55
    throw v2

    #@56
    .line 2576
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@57
    .line 2577
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
    .line 2585
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
    .line 2586
    const-string/jumbo v5, ", profile="

    #@15
    .line 2585
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
    .line 2588
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 2589
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
    .line 2591
    return-void

    #@46
    .line 2594
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-static {v3, p2, p3}, Lcom/android/ims/ImsCall;->-wrap3(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    #@4b
    move-result-object v1

    #@4c
    .line 2596
    .local v1, "newCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    #@4e
    .line 2598
    return-void

    #@4f
    .line 2603
    :cond_1
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    monitor-enter v4

    #@52
    .line 2604
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
    .line 2607
    if-eqz v0, :cond_2

    #@5b
    .line 2609
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5d
    invoke-virtual {v0, v3, v1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@60
    .line 2584
    :cond_2
    :goto_0
    return-void

    #@61
    .line 2603
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v3

    #@62
    monitor-exit v4

    #@63
    throw v3

    #@64
    .line 2610
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v2

    #@65
    .line 2611
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
    .line 2523
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
    .line 2524
    const-string/jumbo v5, ", profile="

    #@20
    .line 2523
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
    .line 2526
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@31
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_0

    #@37
    .line 2527
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
    .line 2529
    return-void

    #@51
    .line 2532
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@53
    invoke-static {v3, p2, p3}, Lcom/android/ims/ImsCall;->-wrap3(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    #@56
    move-result-object v1

    #@57
    .line 2534
    .local v1, "newCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    #@59
    .line 2535
    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    #@5b
    invoke-direct {v3}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    #@5e
    invoke-virtual {p0, p1, v3}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@61
    .line 2536
    return-void

    #@62
    .line 2541
    :cond_1
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@64
    monitor-enter v4

    #@65
    .line 2542
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@67
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@6a
    move-result-object v0

    #@6b
    .line 2543
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@6d
    const/4 v5, 0x0

    #@6e
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->-set5(Lcom/android/ims/ImsCall;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    monitor-exit v4

    #@72
    .line 2546
    if-eqz v0, :cond_2

    #@74
    .line 2548
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@76
    invoke-virtual {v0, v3, v1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@79
    .line 2522
    :cond_2
    :goto_0
    return-void

    #@7a
    .line 2541
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v3

    #@7b
    monitor-exit v4

    #@7c
    throw v3

    #@7d
    .line 2549
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v2

    #@7e
    .line 2550
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
    .line 2721
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
    .line 2723
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    #@1e
    .line 2720
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
    .line 2804
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
    .line 2805
    const-string/jumbo v4, ", targetAccessTech="

    #@20
    .line 2804
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 2805
    const-string/jumbo v4, ", reasonInfo="

    #@2b
    .line 2804
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
    .line 2810
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3c
    monitor-enter v3

    #@3d
    .line 2811
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
    .line 2814
    if-eqz v0, :cond_0

    #@46
    .line 2816
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    .line 2803
    :cond_0
    :goto_0
    return-void

    #@4c
    .line 2810
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2

    #@4f
    .line 2818
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@50
    .line 2819
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
    .line 2827
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
    .line 2828
    const-string/jumbo v4, ", targetAccessTech="

    #@20
    .line 2827
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 2828
    const-string/jumbo v4, ", reasonInfo="

    #@2b
    .line 2827
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
    .line 2833
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3c
    monitor-enter v3

    #@3d
    .line 2834
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
    .line 2837
    if-eqz v0, :cond_0

    #@46
    .line 2839
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    .line 2826
    :cond_0
    :goto_0
    return-void

    #@4c
    .line 2833
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2

    #@4f
    .line 2841
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@50
    .line 2842
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
    .line 2170
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
    .line 2173
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    monitor-enter v3

    #@27
    .line 2176
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Z)V

    #@2d
    .line 2178
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2f
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    #@32
    .line 2180
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@34
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get7(Lcom/android/ims/ImsCall;)I

    #@37
    move-result v2

    #@38
    const/4 v4, 0x2

    #@39
    if-ne v2, v4, :cond_0

    #@3b
    .line 2182
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-wrap7(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v3

    #@41
    .line 2183
    return-void

    #@42
    .line 2186
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@44
    const/4 v4, 0x0

    #@45
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set5(Lcom/android/ims/ImsCall;I)I

    #@48
    .line 2187
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
    .line 2190
    if-eqz v0, :cond_1

    #@51
    .line 2192
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@53
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@56
    .line 2169
    :cond_1
    :goto_0
    return-void

    #@57
    .line 2173
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@58
    monitor-exit v3

    #@59
    throw v2

    #@5a
    .line 2193
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@5b
    .line 2194
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
    .line 2201
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
    .line 2203
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 2205
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
    .line 2207
    return-void

    #@46
    .line 2210
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
    .line 2211
    const-string/jumbo v5, ", reasonInfo="

    #@5b
    .line 2210
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
    .line 2213
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@6c
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get3(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    #@6f
    move-result-object v4

    #@70
    monitor-enter v4

    #@71
    .line 2214
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@73
    const/4 v5, 0x0

    #@74
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->-set1(Lcom/android/ims/ImsCall;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    monitor-exit v4

    #@78
    .line 2217
    const/4 v0, 0x0

    #@79
    .line 2220
    .local v0, "isHoldForMerge":Z
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@7b
    monitor-enter v4

    #@7c
    .line 2221
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@7e
    invoke-static {v3}, Lcom/android/ims/ImsCall;->-get7(Lcom/android/ims/ImsCall;)I

    #@81
    move-result v3

    #@82
    const/4 v5, 0x2

    #@83
    if-ne v3, v5, :cond_1

    #@85
    .line 2222
    const/4 v0, 0x1

    #@86
    .line 2225
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@88
    const/4 v5, 0x0

    #@89
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->-set5(Lcom/android/ims/ImsCall;I)I

    #@8c
    .line 2226
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
    .line 2229
    if-eqz v1, :cond_2

    #@95
    .line 2231
    :try_start_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@97
    invoke-virtual {v1, v3, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@9a
    .line 2200
    :cond_2
    :goto_0
    return-void

    #@9b
    .line 2213
    .end local v0    # "isHoldForMerge":Z
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v3

    #@9c
    monitor-exit v4

    #@9d
    throw v3

    #@9e
    .line 2220
    .restart local v0    # "isHoldForMerge":Z
    :catchall_1
    move-exception v3

    #@9f
    monitor-exit v4

    #@a0
    throw v3

    #@a1
    .line 2232
    .restart local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v2

    #@a2
    .line 2233
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
    .line 2240
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
    .line 2242
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2244
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
    .line 2246
    return-void

    #@46
    .line 2251
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2252
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2253
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2256
    if-eqz v0, :cond_1

    #@57
    .line 2258
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 2239
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 2251
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 2259
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@61
    .line 2260
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
    .line 2618
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    const-string/jumbo v3, "callSessionInviteParticipantsRequestDelivered ::"

    #@5
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@8
    .line 2620
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@a
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 2621
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
    .line 2623
    return-void

    #@2a
    .line 2628
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2c
    monitor-enter v3

    #@2d
    .line 2629
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
    .line 2632
    if-eqz v0, :cond_1

    #@36
    .line 2634
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@38
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 2617
    :cond_1
    :goto_0
    return-void

    #@3c
    .line 2628
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 2635
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@40
    .line 2636
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
    .line 2644
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
    .line 2646
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 2647
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
    .line 2649
    return-void

    #@3b
    .line 2654
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    monitor-enter v3

    #@3e
    .line 2655
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
    .line 2658
    if-eqz v0, :cond_1

    #@47
    .line 2660
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@49
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4c
    .line 2643
    :cond_1
    :goto_0
    return-void

    #@4d
    .line 2654
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit v3

    #@4f
    throw v2

    #@50
    .line 2661
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@51
    .line 2662
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
    .line 2405
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
    .line 2406
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1c
    invoke-static {v1}, Lcom/android/ims/ImsCall;->-wrap0(Lcom/android/ims/ImsCall;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    .line 2408
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@24
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-get4(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@27
    move-result-object v0

    #@28
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-wrap9(Lcom/android/ims/ImsCall;)V

    #@2b
    .line 2404
    .end local p1    # "newSession":Lcom/android/ims/internal/ImsCallSession;
    :goto_0
    return-void

    #@2c
    .line 2411
    .restart local p1    # "newSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_0
    if-eqz p1, :cond_2

    #@2e
    .line 2412
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
    invoke-static {v1, p1}, Lcom/android/ims/ImsCall;->-set4(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;

    #@3a
    .line 2416
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
    .line 2422
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
    .line 2426
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    monitor-enter v1

    #@27
    .line 2431
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@29
    invoke-static {v0}, Lcom/android/ims/ImsCall;->-wrap0(Lcom/android/ims/ImsCall;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 2432
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@31
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-wrap10(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    :goto_0
    monitor-exit v1

    #@35
    .line 2421
    return-void

    #@36
    .line 2433
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
    .line 2434
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
    .line 2426
    :catchall_0
    move-exception v0

    #@49
    monitor-exit v1

    #@4a
    throw v0

    #@4b
    .line 2436
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
    .line 2362
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
    .line 2363
    const-string/jumbo v2, ", profile="

    #@20
    .line 2362
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
    .line 2365
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/ImsCallSession;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    #@0
    .prologue
    .line 2782
    invoke-static {}, Lcom/android/ims/ImsCall;->-get0()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 2783
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
    .line 2789
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    monitor-enter v3

    #@27
    .line 2790
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
    .line 2793
    if-eqz v0, :cond_1

    #@30
    .line 2795
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@32
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    .line 2781
    :cond_1
    :goto_1
    return-void

    #@36
    .line 2784
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_2
    const-string/jumbo v2, "N"

    #@39
    goto :goto_0

    #@3a
    .line 2789
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2

    #@3d
    .line 2796
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@3e
    .line 2797
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
    .line 2058
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
    .line 2060
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2062
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
    .line 2064
    return-void

    #@46
    .line 2069
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2070
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2071
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
    .line 2074
    if-eqz v0, :cond_1

    #@5d
    .line 2076
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5f
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    .line 2057
    :cond_1
    :goto_0
    return-void

    #@63
    .line 2069
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@64
    monitor-exit v3

    #@65
    throw v2

    #@66
    .line 2077
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@67
    .line 2078
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
    .line 2669
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    const-string/jumbo v3, "callSessionRemoveParticipantsRequestDelivered ::"

    #@5
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@8
    .line 2671
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@a
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 2672
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
    .line 2674
    return-void

    #@2a
    .line 2679
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2c
    monitor-enter v3

    #@2d
    .line 2680
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
    .line 2683
    if-eqz v0, :cond_1

    #@36
    .line 2685
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@38
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 2668
    :cond_1
    :goto_0
    return-void

    #@3c
    .line 2679
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 2686
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@40
    .line 2687
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
    .line 2695
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
    .line 2697
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 2698
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
    .line 2700
    return-void

    #@3b
    .line 2705
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@3d
    monitor-enter v3

    #@3e
    .line 2706
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
    .line 2709
    if-eqz v0, :cond_1

    #@47
    .line 2711
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@49
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4c
    .line 2694
    :cond_1
    :goto_0
    return-void

    #@4d
    .line 2705
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit v3

    #@4f
    throw v2

    #@50
    .line 2712
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@51
    .line 2713
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
    .line 2305
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
    .line 2307
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2308
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
    .line 2310
    return-void

    #@46
    .line 2313
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get3(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    monitor-enter v3

    #@4d
    .line 2314
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4f
    const/4 v4, 0x1

    #@50
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set1(Lcom/android/ims/ImsCall;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    monitor-exit v3

    #@54
    .line 2319
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@56
    monitor-enter v3

    #@57
    .line 2320
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@5c
    move-result-object v0

    #@5d
    .line 2321
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5f
    const/4 v4, 0x0

    #@60
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set5(Lcom/android/ims/ImsCall;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@63
    monitor-exit v3

    #@64
    .line 2324
    if-eqz v0, :cond_1

    #@66
    .line 2326
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@68
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@6b
    .line 2304
    :cond_1
    :goto_0
    return-void

    #@6c
    .line 2313
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2

    #@6f
    .line 2319
    :catchall_1
    move-exception v2

    #@70
    monitor-exit v3

    #@71
    throw v2

    #@72
    .line 2327
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@73
    .line 2328
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
    .line 2335
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
    .line 2337
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2338
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
    .line 2340
    return-void

    #@46
    .line 2345
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2346
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2347
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2350
    if-eqz v0, :cond_1

    #@57
    .line 2352
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 2334
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 2345
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 2353
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@61
    .line 2354
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
    .line 2267
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
    .line 2269
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@27
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_0

    #@2d
    .line 2270
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
    .line 2272
    return-void

    #@47
    .line 2277
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@49
    invoke-static {v2, v5}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Z)V

    #@4c
    .line 2287
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4e
    monitor-enter v3

    #@4f
    .line 2288
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@54
    move-result-object v0

    #@55
    .line 2289
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@57
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    #@5a
    .line 2290
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5c
    const/4 v4, 0x0

    #@5d
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set5(Lcom/android/ims/ImsCall;I)I

    #@60
    .line 2291
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@62
    const/4 v4, 0x0

    #@63
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set1(Lcom/android/ims/ImsCall;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    monitor-exit v3

    #@67
    .line 2294
    if-eqz v0, :cond_1

    #@69
    .line 2296
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@6b
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@6e
    .line 2266
    :cond_1
    :goto_0
    return-void

    #@6f
    .line 2287
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@70
    monitor-exit v3

    #@71
    throw v2

    #@72
    .line 2297
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@73
    .line 2298
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
    .line 2120
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
    .line 2122
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2124
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
    .line 2126
    return-void

    #@46
    .line 2131
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2132
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2133
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set2(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)Lcom/android/ims/ImsReasonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2136
    if-eqz v0, :cond_1

    #@57
    .line 2138
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 2119
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 2131
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 2139
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@61
    .line 2140
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
    .line 2085
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
    .line 2087
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_0

    #@2c
    .line 2091
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    const/4 v3, 0x0

    #@2f
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Z)V

    #@32
    .line 2097
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@34
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 2099
    return-void

    #@3b
    .line 2093
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
    .line 2094
    return-void

    #@55
    .line 2104
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@57
    monitor-enter v3

    #@58
    .line 2105
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5a
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@5d
    move-result-object v0

    #@5e
    .line 2106
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@60
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    monitor-exit v3

    #@64
    .line 2109
    if-eqz v0, :cond_2

    #@66
    .line 2111
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@68
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@6b
    .line 2084
    :cond_2
    :goto_0
    return-void

    #@6c
    .line 2104
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2

    #@6f
    .line 2112
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@70
    .line 2113
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
    .line 2850
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 2851
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
    .line 2853
    return-void

    #@22
    .line 2856
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
    .line 2857
    const-string/jumbo v4, ", suppServiceInfo"

    #@37
    .line 2856
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
    .line 2861
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2862
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
    .line 2865
    if-eqz v0, :cond_1

    #@52
    .line 2867
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@54
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsSuppServiceNotification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    .line 2849
    :cond_1
    :goto_0
    return-void

    #@58
    .line 2861
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@59
    monitor-exit v3

    #@5a
    throw v2

    #@5b
    .line 2868
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@5c
    .line 2869
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
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "callSessionTerminated :: session="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " reasonInfo="

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
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@24
    .line 2149
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 2150
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "callSessionTerminated :: on transient session="

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    #@45
    .line 2154
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@47
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-wrap10(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@4a
    .line 2155
    return-void

    #@4b
    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4d
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-wrap8(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    #@50
    .line 2164
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@52
    const/4 v1, 0x0

    #@53
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-wrap11(Lcom/android/ims/ImsCall;Z)V

    #@56
    .line 2146
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 2755
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
    .line 2759
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@1b
    monitor-enter v3

    #@1c
    .line 2760
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
    .line 2763
    if-eqz v0, :cond_0

    #@25
    .line 2765
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@27
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@2a
    .line 2754
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 2759
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2

    #@2e
    .line 2766
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@2f
    .line 2767
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
    .line 2469
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
    .line 2471
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2472
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
    .line 2474
    return-void

    #@46
    .line 2479
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2480
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2481
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    const/4 v4, 0x0

    #@52
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set5(Lcom/android/ims/ImsCall;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    monitor-exit v3

    #@56
    .line 2484
    if-eqz v0, :cond_1

    #@58
    .line 2486
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5a
    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5d
    .line 2468
    :cond_1
    :goto_0
    return-void

    #@5e
    .line 2479
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit v3

    #@60
    throw v2

    #@61
    .line 2487
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@62
    .line 2488
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
    .line 2495
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
    .line 2497
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2498
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
    .line 2500
    return-void

    #@46
    .line 2505
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2506
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2507
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set3(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    #@54
    .line 2508
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@56
    const/4 v4, 0x6

    #@57
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->-set5(Lcom/android/ims/ImsCall;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    monitor-exit v3

    #@5b
    .line 2511
    if-eqz v0, :cond_1

    #@5d
    .line 2513
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5f
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    .line 2494
    :cond_1
    :goto_0
    return-void

    #@63
    .line 2505
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@64
    monitor-exit v3

    #@65
    throw v2

    #@66
    .line 2514
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@67
    .line 2515
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
    .line 2443
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
    .line 2445
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2446
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
    .line 2448
    return-void

    #@46
    .line 2453
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2454
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@4b
    invoke-static {v2}, Lcom/android/ims/ImsCall;->-get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    #@4e
    move-result-object v0

    #@4f
    .line 2455
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@51
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-set0(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2458
    if-eqz v0, :cond_1

    #@57
    .line 2460
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@59
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 2442
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 2453
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2

    #@60
    .line 2461
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@61
    .line 2462
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
    .line 2729
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
    .line 2732
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@26
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->-wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 2733
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
    .line 2735
    return-void

    #@46
    .line 2740
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@48
    monitor-enter v3

    #@49
    .line 2741
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
    .line 2744
    if-eqz v0, :cond_1

    #@52
    .line 2746
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@54
    invoke-virtual {v0, v2, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    .line 2728
    :cond_1
    :goto_0
    return-void

    #@58
    .line 2740
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@59
    monitor-exit v3

    #@5a
    throw v2

    #@5b
    .line 2747
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@5c
    .line 2748
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    #@5e
    const-string/jumbo v3, "callSessionUssdMessageReceived :: "

    #@61
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@64
    goto :goto_0
.end method
