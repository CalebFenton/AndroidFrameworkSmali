.class public Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.super Landroid/telephony/ims/ImsCallSession$Listener;
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
.field final synthetic blacklist this$0:Lcom/android/ims/ImsCall;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2493
    iput-object p1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 6
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 3498
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3499
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3500
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3502
    if-eqz v1, :cond_1a

    .line 3504
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3507
    goto :goto_1a

    .line 3505
    :catchall_12
    move-exception v0

    .line 3506
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callQualityChanged:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3509
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3500
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3045
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3047
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3048
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3050
    return-void

    .line 3055
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3056
    :try_start_3c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3057
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3058
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_5a

    .line 3060
    if-eqz v1, :cond_59

    .line 3062
    :try_start_4b
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_51

    .line 3065
    goto :goto_59

    .line 3063
    :catchall_51
    move-exception v0

    .line 3064
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionConferenceExtendFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3067
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_59
    :goto_59
    return-void

    .line 3058
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public blacklist callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 9
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3072
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendReceived :: newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3075
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3076
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendReceived :: not supported for transient conference session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3078
    return-void

    .line 3081
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2, p3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateNewCall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 3083
    .local v0, "newCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_4c

    .line 3085
    return-void

    .line 3090
    :cond_4c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3091
    :try_start_4f
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3092
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_67

    .line 3094
    if-eqz v2, :cond_66

    .line 3096
    :try_start_58
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_5e

    .line 3099
    goto :goto_66

    .line 3097
    :catchall_5e
    move-exception v1

    .line 3098
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtendReceived :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3101
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_66
    :goto_66
    return-void

    .line 3092
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_67
    move-exception v2

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v2
.end method

.method public blacklist callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 9
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3010
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtended :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3013
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3014
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtended :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3016
    return-void

    .line 3019
    :cond_4d
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2, p3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateNewCall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 3021
    .local v0, "newCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_5e

    .line 3022
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3023
    return-void

    .line 3028
    :cond_5e
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3029
    :try_start_61
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3030
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3031
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_7f

    .line 3033
    if-eqz v2, :cond_7e

    .line 3035
    :try_start_70
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_76

    .line 3038
    goto :goto_7e

    .line 3036
    :catchall_76
    move-exception v1

    .line 3037
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtended :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3040
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_7e
    :goto_7e
    return-void

    .line 3031
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_7f
    move-exception v2

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v2
.end method

.method public blacklist callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 3210
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3211
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3212
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .registers 6
    .param p1, "digit"    # C

    .line 3481
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3482
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3483
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3485
    if-eqz v1, :cond_1a

    .line 3487
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3490
    goto :goto_1a

    .line 3488
    :catchall_12
    move-exception v0

    .line 3489
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionDtmfReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3492
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3483
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3292
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandover :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3298
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3299
    :try_start_39
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3300
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_59

    .line 3302
    if-eqz v1, :cond_58

    .line 3304
    :try_start_42
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 3305
    invoke-static {p2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    .line 3306
    invoke-static {p3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 3304
    invoke-virtual {v1, v0, v2, v3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    .line 3310
    goto :goto_58

    .line 3308
    :catchall_50
    move-exception v0

    .line 3309
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandover :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3312
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_58
    :goto_58
    return-void

    .line 3300
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public blacklist callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3317
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandoverFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3323
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3324
    :try_start_39
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3325
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_59

    .line 3327
    if-eqz v1, :cond_58

    .line 3329
    :try_start_42
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 3330
    invoke-static {p2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    .line 3331
    invoke-static {p3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 3329
    invoke-virtual {v1, v0, v2, v3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    .line 3335
    goto :goto_58

    .line 3333
    :catchall_50
    move-exception v0

    .line 3334
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandoverFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3337
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_58
    :goto_58
    return-void

    .line 3325
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public blacklist callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2656
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHeld :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2659
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2662
    :try_start_25
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2664
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2666
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_40

    .line 2668
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mmergeInternal(Lcom/android/ims/ImsCall;)V

    .line 2669
    monitor-exit v0

    return-void

    .line 2672
    :cond_40
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 2673
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2674
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2675
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_25 .. :try_end_52} :catchall_63

    .line 2677
    if-eqz v1, :cond_62

    .line 2679
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 2682
    goto :goto_62

    .line 2680
    :catchall_5a
    move-exception v0

    .line 2681
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHeld :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2684
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 2675
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2688
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2690
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2692
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2694
    return-void

    .line 2697
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2700
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2701
    :try_start_6c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 2702
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_a1

    .line 2704
    const/4 v0, 0x0

    .line 2707
    .local v0, "isHoldForMerge":Z
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2708
    :try_start_77
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_81

    .line 2709
    const/4 v0, 0x1

    .line 2712
    :cond_81
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2713
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 2714
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_77 .. :try_end_8d} :catchall_9e

    .line 2716
    if-eqz v2, :cond_9d

    .line 2718
    :try_start_8f
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_95

    .line 2721
    goto :goto_9d

    .line 2719
    :catchall_95
    move-exception v1

    .line 2720
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionHoldFailed :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2723
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_9d
    :goto_9d
    return-void

    .line 2714
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_9e
    move-exception v2

    :try_start_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v2

    .line 2702
    .end local v0    # "isHoldForMerge":Z
    :catchall_a1
    move-exception v1

    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method public blacklist callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2733
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2735
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2737
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2739
    return-void

    .line 2744
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2745
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2746
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2747
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_63

    .line 2749
    if-eqz v1, :cond_62

    .line 2751
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 2754
    goto :goto_62

    .line 2752
    :catchall_5a
    move-exception v0

    .line 2753
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHoldReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2756
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 2747
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2496
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2497
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2499
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2501
    return-void

    .line 2506
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2507
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2508
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2509
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_63

    .line 2511
    if-eqz v1, :cond_62

    .line 2513
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallInitiating(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 2516
    goto :goto_62

    .line 2514
    :catchall_5a
    move-exception v0

    .line 2515
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInitiating :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2518
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 2509
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3105
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionInviteParticipantsRequestDelivered ::"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3107
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3108
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3110
    return-void

    .line 3115
    :cond_28
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3116
    :try_start_2b
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3117
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_49

    .line 3119
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmIsConferenceHost(Lcom/android/ims/ImsCall;Z)V

    .line 3121
    if-eqz v1, :cond_48

    .line 3123
    :try_start_3a
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_40

    .line 3126
    goto :goto_48

    .line 3124
    :catchall_40
    move-exception v0

    .line 3125
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestDelivered :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3128
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_48
    :goto_48
    return-void

    .line 3117
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public blacklist callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3133
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3135
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3136
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3138
    return-void

    .line 3143
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3144
    :try_start_3c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3145
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_54

    .line 3147
    if-eqz v1, :cond_53

    .line 3149
    :try_start_45
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    .line 3152
    goto :goto_53

    .line 3150
    :catchall_4b
    move-exception v0

    .line 3151
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3154
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_53
    :goto_53
    return-void

    .line 3145
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public blacklist callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .registers 5
    .param p1, "newSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 2893
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: newSession ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2894
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$misMergeHost(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2896
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeComplete(Lcom/android/ims/ImsCall;)V

    goto :goto_36

    .line 2899
    :cond_2a
    if-eqz p1, :cond_31

    .line 2900
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)V

    .line 2903
    :cond_31
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeComplete(Lcom/android/ims/ImsCall;)V

    .line 2905
    :goto_36
    return-void
.end method

.method public blacklist callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2909
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2913
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2918
    :try_start_25
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$misMergeHost(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2919
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4c

    .line 2920
    :cond_33
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 2921
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4c

    .line 2923
    :cond_45
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeFailed :: No merge host for this conference!"

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2925
    :goto_4c
    monitor-exit v0

    .line 2926
    return-void

    .line 2925
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public blacklist callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2861
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2864
    return-void
.end method

.method public blacklist callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    .line 3270
    invoke-static {}, Lcom/android/ims/ImsCall;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3271
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMultipartyStateChanged isMultiParty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_18

    const-string v2, "Y"

    goto :goto_1a

    .line 3272
    :cond_18
    const-string v2, "N"

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3271
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3277
    :cond_25
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3278
    :try_start_28
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3279
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_40

    .line 3281
    if-eqz v1, :cond_3f

    .line 3283
    :try_start_31
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_37

    .line 3286
    goto :goto_3f

    .line 3284
    :catchall_37
    move-exception v0

    .line 3285
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionMultipartyStateChanged :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3288
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3f
    :goto_3f
    return-void

    .line 3279
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public blacklist callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2522
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2524
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2526
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2528
    return-void

    .line 2533
    :cond_43
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 2534
    .local v0, "updatedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2535
    :try_start_4a
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 2538
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v0}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2541
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v3, :cond_73

    .line 2542
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto :goto_7a

    .line 2544
    :cond_73
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "Call was closed already, skip updating CallProfile"

    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2546
    :goto_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_4a .. :try_end_7b} :catchall_8c

    .line 2548
    if-eqz v2, :cond_8b

    .line 2550
    :try_start_7d
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_83

    .line 2553
    goto :goto_8b

    .line 2551
    :catchall_83
    move-exception v1

    .line 2552
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionProgressing :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2555
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_8b
    :goto_8b
    return-void

    .line 2546
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_8c
    move-exception v2

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v2
.end method

.method public blacklist callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3158
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionRemoveParticipantsRequestDelivered ::"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3160
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3161
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3163
    return-void

    .line 3168
    :cond_28
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3169
    :try_start_2b
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3170
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_43

    .line 3172
    if-eqz v1, :cond_42

    .line 3174
    :try_start_34
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    .line 3177
    goto :goto_42

    .line 3175
    :catchall_3a
    move-exception v0

    .line 3176
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestDelivered :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3179
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_42
    :goto_42
    return-void

    .line 3170
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public blacklist callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3184
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3186
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3187
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3189
    return-void

    .line 3194
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3195
    :try_start_3c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3196
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_54

    .line 3198
    if-eqz v1, :cond_53

    .line 3200
    :try_start_45
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    .line 3203
    goto :goto_53

    .line 3201
    :catchall_4b
    move-exception v0

    .line 3202
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3205
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_53
    :goto_53
    return-void

    .line 3196
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public blacklist callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2804
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2806
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2807
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2809
    return-void

    .line 2812
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2813
    :try_start_4a
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 2814
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_75

    .line 2818
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2819
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2820
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2821
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_72

    .line 2823
    if-eqz v0, :cond_71

    .line 2825
    :try_start_63
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_69

    .line 2828
    goto :goto_71

    .line 2826
    :catchall_69
    move-exception v1

    .line 2827
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeFailed :: "

    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2830
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_71
    :goto_71
    return-void

    .line 2821
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0

    .line 2814
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public blacklist callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2834
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2836
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2837
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2839
    return-void

    .line 2844
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2845
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2846
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2847
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_63

    .line 2849
    if-eqz v1, :cond_62

    .line 2851
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 2854
    goto :goto_62

    .line 2852
    :catchall_5a
    move-exception v0

    .line 2853
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2856
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 2847
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2766
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2768
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2769
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2771
    return-void

    .line 2776
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2786
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2787
    :try_start_4c
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 2788
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2789
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2790
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 2791
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_73

    .line 2793
    if-eqz v2, :cond_72

    .line 2795
    :try_start_64
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6a

    .line 2798
    goto :goto_72

    .line 2796
    :catchall_6a
    move-exception v0

    .line 2797
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumed :: "

    invoke-static {v1, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2800
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_72
    :goto_72
    return-void

    .line 2791
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_73
    move-exception v1

    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v1
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 3516
    .local p1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3517
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3518
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3520
    if-eqz v1, :cond_1a

    .line 3522
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3525
    goto :goto_1a

    .line 3523
    :catchall_12
    move-exception v0

    .line 3524
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRtpHeaderExtensionsReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3527
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3518
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 6
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 3430
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3431
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3432
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3434
    if-eqz v1, :cond_1a

    .line 3436
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3439
    goto :goto_1a

    .line 3437
    :catchall_12
    move-exception v0

    .line 3438
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttAudioIndicatorChanged:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3441
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3432
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 6
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 3413
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3414
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3415
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3417
    if-eqz v1, :cond_1a

    .line 3419
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3422
    goto :goto_1a

    .line 3420
    :catchall_12
    move-exception v0

    .line 3421
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttMessageReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3424
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3415
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3370
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionRttModifyRequestReceived"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3372
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3373
    :try_start_a
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3374
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_32

    .line 3376
    iget-object v0, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    if-nez v0, :cond_21

    .line 3377
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionRttModifyRequestReceived:: ignoring request, requested profile is not RTT."

    invoke-static {v0, v2}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3379
    return-void

    .line 3382
    :cond_21
    if-eqz v1, :cond_31

    .line 3384
    :try_start_23
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    .line 3387
    goto :goto_31

    .line 3385
    :catchall_29
    move-exception v0

    .line 3386
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyRequestReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3389
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_31
    :goto_31
    return-void

    .line 3374
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public blacklist callSessionRttModifyResponseReceived(I)V
    .registers 6
    .param p1, "status"    # I

    .line 3395
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyResponseReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3396
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3397
    :try_start_1b
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3398
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_33

    .line 3400
    if-eqz v1, :cond_32

    .line 3402
    :try_start_24
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    .line 3405
    goto :goto_32

    .line 3403
    :catchall_2a
    move-exception v0

    .line 3404
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyResponseReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3407
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_32
    :goto_32
    return-void

    .line 3398
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist callSessionSendAnbrQuery(III)V
    .registers 8
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 3533
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionSendAnbrQuery in ImsCall"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3534
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3535
    :try_start_a
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3536
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_22

    .line 3538
    if-eqz v1, :cond_21

    .line 3540
    :try_start_13
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallSessionSendAnbrQuery(Lcom/android/ims/ImsCall;III)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    .line 3544
    goto :goto_21

    .line 3542
    :catchall_19
    move-exception v0

    .line 3543
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionSendAnbrQuery:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3546
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_21
    :goto_21
    return-void

    .line 3536
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2594
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStartFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2596
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2598
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStartFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2600
    return-void

    .line 2603
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmIsConferenceHost(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2606
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmIsConferenceHost(Lcom/android/ims/ImsCall;Z)V

    .line 2611
    :cond_51
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2612
    :try_start_54
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2613
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmLastReasonInfo(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2614
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_71

    .line 2616
    if-eqz v1, :cond_70

    .line 2618
    :try_start_62
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_68

    .line 2621
    goto :goto_70

    .line 2619
    :catchall_68
    move-exception v0

    .line 2620
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2623
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_70
    :goto_70
    return-void

    .line 2614
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public blacklist callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2559
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2561
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 2565
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2571
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2573
    return-void

    .line 2578
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2579
    :try_start_3c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2580
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2581
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_59

    .line 2583
    if-eqz v1, :cond_58

    .line 2585
    :try_start_4a
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_50

    .line 2588
    goto :goto_58

    .line 2586
    :catchall_50
    move-exception v0

    .line 2587
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2590
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_58
    :goto_58
    return-void

    .line 2581
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1

    .line 2567
    :cond_5c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStarted :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2568
    return-void
.end method

.method public blacklist callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 3342
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3343
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3345
    return-void

    .line 3348
    :cond_21
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", suppServiceInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3353
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3354
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3355
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_5e

    .line 3357
    if-eqz v1, :cond_5d

    .line 3359
    :try_start_4f
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_55

    .line 3362
    goto :goto_5d

    .line 3360
    :catchall_55
    move-exception v0

    .line 3361
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionSuppServiceReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3364
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5d
    :goto_5d
    return-void

    .line 3355
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public blacklist callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2627
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2629
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2630
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2634
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2635
    return-void

    .line 2638
    :cond_48
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v0

    if-eqz v0, :cond_82

    .line 2639
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: overrideReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2640
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 2641
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object p2, v0

    .line 2647
    :cond_82
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2650
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2652
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3464
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3465
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3466
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3468
    if-eqz v1, :cond_1a

    .line 3470
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3473
    goto :goto_1a

    .line 3471
    :catchall_12
    move-exception v0

    .line 3472
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTransferFailed:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3475
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3466
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3447
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3448
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3449
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3451
    if-eqz v1, :cond_1a

    .line 3453
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3456
    goto :goto_1a

    .line 3454
    :catchall_12
    move-exception v0

    .line 3455
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTransferred:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3458
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3449
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I

    .line 3243
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTtyModeReceived :: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3247
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3248
    :try_start_1b
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3249
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_33

    .line 3251
    if-eqz v1, :cond_32

    .line 3253
    :try_start_24
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    .line 3256
    goto :goto_32

    .line 3254
    :catchall_2a
    move-exception v0

    .line 3255
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTtyModeReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3258
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_32
    :goto_32
    return-void

    .line 3249
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2956
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2958
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2959
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2961
    return-void

    .line 2966
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2967
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2968
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2969
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_64

    .line 2971
    if-eqz v1, :cond_63

    .line 2973
    :try_start_55
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5b

    .line 2976
    goto :goto_63

    .line 2974
    :catchall_5b
    move-exception v0

    .line 2975
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2978
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_63
    :goto_63
    return-void

    .line 2969
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public blacklist callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2982
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2984
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2985
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2987
    return-void

    .line 2992
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2993
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2994
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmProposedCallProfile(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2995
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2996
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_69

    .line 2998
    if-eqz v1, :cond_68

    .line 3000
    :try_start_5a
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_60

    .line 3003
    goto :goto_68

    .line 3001
    :catchall_60
    move-exception v0

    .line 3002
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3005
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_68
    :goto_68
    return-void

    .line 2996
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public blacklist callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2930
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2932
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2933
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2935
    return-void

    .line 2940
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2941
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2942
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2943
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_63

    .line 2945
    if-eqz v1, :cond_62

    .line 2947
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 2950
    goto :goto_62

    .line 2948
    :catchall_5a
    move-exception v0

    .line 2949
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdated :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2952
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 2943
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 3217
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ussdMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3220
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3221
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3223
    return-void

    .line 3228
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3229
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3230
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_5e

    .line 3232
    if-eqz v1, :cond_5d

    .line 3234
    :try_start_4f
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_55

    .line 3237
    goto :goto_5d

    .line 3235
    :catchall_55
    move-exception v0

    .line 3236
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUssdMessageReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3239
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5d
    :goto_5d
    return-void

    .line 3230
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method
