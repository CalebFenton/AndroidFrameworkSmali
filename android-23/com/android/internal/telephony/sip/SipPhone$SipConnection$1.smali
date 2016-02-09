.class Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;
.super Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Lcom/android/internal/telephony/sip/SipPhone;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .param p2, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;

    #@0
    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;)V

    #@6
    return-void
.end method


# virtual methods
.method protected onCallEnded(I)V
    .locals 6
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 737
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getDisconnectCause()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x3

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 738
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@b
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setDisconnectCause(I)V

    #@e
    .line 740
    :cond_0
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    #@10
    monitor-enter v3

    #@11
    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@13
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@15
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@18
    .line 742
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@1a
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get2(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipAudioCall;

    #@1d
    move-result-object v1

    #@1e
    .line 744
    .local v1, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@20
    const/4 v4, 0x0

    #@21
    invoke-static {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-set0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall;

    #@24
    .line 745
    if-nez v1, :cond_2

    #@26
    .line 746
    const-string/jumbo v0, ""

    #@29
    .line 748
    .local v0, "sessionState":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "[SipAudioCallAdapter] onCallEnded: "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 749
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@39
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get1(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 749
    const-string/jumbo v5, ": "

    #@48
    .line 748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 750
    const-string/jumbo v5, "cause: "

    #@53
    .line 748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 750
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@59
    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getDisconnectCause()I

    #@5c
    move-result v5

    #@5d
    .line 748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    .line 750
    const-string/jumbo v5, ", on phone "

    #@64
    .line 748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    .line 751
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@6a
    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    #@6d
    move-result-object v5

    #@6e
    .line 748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-static {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    #@79
    .line 752
    if-eqz v1, :cond_1

    #@7b
    .line 753
    const/4 v2, 0x0

    #@7c
    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    #@7f
    .line 754
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->close()V

    #@82
    .line 756
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@84
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@87
    move-result-object v2

    #@88
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@8a
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionEnded(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8d
    monitor-exit v3

    #@8e
    .line 736
    return-void

    #@8f
    .line 747
    .end local v0    # "sessionState":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->getState()I

    #@97
    move-result v4

    #@98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    const-string/jumbo v4, ", "

    #@9f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a6
    move-result-object v0

    #@a7
    .restart local v0    # "sessionState":Ljava/lang/String;
    goto :goto_0

    #@a8
    .line 740
    .end local v0    # "sessionState":Ljava/lang/String;
    .end local v1    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catchall_0
    move-exception v2

    #@a9
    monitor-exit v3

    #@aa
    throw v2
.end method

.method public onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Landroid/net/sip/SipAudioCall;)V

    #@3
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@5
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get3(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@b
    if-ne v0, v1, :cond_0

    #@d
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->startAudio()V

    #@10
    .line 761
    :cond_0
    return-void
.end method

.method public onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Landroid/net/sip/SipAudioCall;)V

    #@3
    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@5
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get3(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@b
    if-ne v0, v1, :cond_0

    #@d
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->startAudio()V

    #@10
    .line 768
    :cond_0
    return-void
.end method

.method public onChanged(Landroid/net/sip/SipAudioCall;)V
    .locals 6
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 776
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    monitor-enter v3

    #@3
    .line 777
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/sip/SipPhone;->-wrap0(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    .line 778
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@9
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get3(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v2

    #@d
    if-ne v2, v1, :cond_0

    #@f
    monitor-exit v3

    #@10
    return-void

    #@11
    .line 779
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_1

    #@15
    .line 780
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@17
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@19
    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@24
    .line 796
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@26
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@29
    move-result-object v2

    #@2a
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@2c
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    #@2f
    .line 797
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@31
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v5, "onChanged: "

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    .line 798
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@3f
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get1(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 798
    const-string/jumbo v5, ": "

    #@4e
    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 798
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@54
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get3(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    #@57
    move-result-object v5

    #@58
    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 799
    const-string/jumbo v5, " on phone "

    #@5f
    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 799
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@65
    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    #@68
    move-result-object v5

    #@69
    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-static {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    monitor-exit v3

    #@75
    .line 775
    return-void

    #@76
    .line 782
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@78
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@7b
    move-result-object v2

    #@7c
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@7e
    iget-object v4, v4, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@80
    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone;->-get3(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@83
    move-result-object v4

    #@84
    if-ne v2, v4, :cond_3

    #@86
    .line 783
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@88
    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@8a
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->-get3(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@91
    move-result-object v2

    #@92
    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@94
    if-ne v2, v4, :cond_2

    #@96
    .line 785
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@98
    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@9a
    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9d
    .line 792
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@9f
    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@a1
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->-get1(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@a4
    move-result-object v2

    #@a5
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@a7
    iget-object v4, v4, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@a9
    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone;->-get3(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    #@b0
    .line 794
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@b2
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b5
    goto/16 :goto_0

    #@b7
    .line 776
    .end local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v2

    #@b8
    monitor-exit v3

    #@b9
    throw v2

    #@ba
    .line 786
    .restart local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    :catch_0
    move-exception v0

    #@bb
    .line 788
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const/4 v2, 0x3

    #@bc
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@bf
    monitor-exit v3

    #@c0
    .line 789
    return-void
.end method

.method protected onError(I)V
    .locals 3
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onError: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    #@19
    .line 806
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(I)V

    #@1c
    .line 804
    return-void
.end method
