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
    .line 753
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
    .line 756
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x3

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 757
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@b
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/sip/SipConnectionBase;->setDisconnectCause(I)V

    #@e
    .line 759
    :cond_0
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    #@10
    monitor-enter v3

    #@11
    .line 760
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@13
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@15
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@18
    .line 761
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@1a
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get2(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipAudioCall;

    #@1d
    move-result-object v1

    #@1e
    .line 763
    .local v1, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@20
    const/4 v4, 0x0

    #@21
    invoke-static {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-set0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall;

    #@24
    .line 764
    if-nez v1, :cond_2

    #@26
    .line 765
    const-string/jumbo v0, ""

    #@29
    .line 767
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
    .line 768
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
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone;->hidePii(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 768
    const-string/jumbo v5, ": "

    #@4c
    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    .line 769
    const-string/jumbo v5, "cause: "

    #@57
    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    .line 769
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@5d
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    #@60
    move-result v5

    #@61
    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    .line 769
    const-string/jumbo v5, ", on phone "

    #@68
    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    .line 770
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@6e
    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    #@71
    move-result-object v5

    #@72
    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    invoke-static {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    #@7d
    .line 771
    if-eqz v1, :cond_1

    #@7f
    .line 772
    const/4 v2, 0x0

    #@80
    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    #@83
    .line 773
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->close()V

    #@86
    .line 775
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@88
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@8b
    move-result-object v2

    #@8c
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@8e
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionEnded(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    monitor-exit v3

    #@92
    .line 755
    return-void

    #@93
    .line 766
    .end local v0    # "sessionState":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->getState()I

    #@9b
    move-result v4

    #@9c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    const-string/jumbo v4, ", "

    #@a3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@aa
    move-result-object v0

    #@ab
    .restart local v0    # "sessionState":Ljava/lang/String;
    goto/16 :goto_0

    #@ad
    .line 759
    .end local v0    # "sessionState":Ljava/lang/String;
    .end local v1    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catchall_0
    move-exception v2

    #@ae
    monitor-exit v3

    #@af
    throw v2
.end method

.method public onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Landroid/net/sip/SipAudioCall;)V

    #@3
    .line 783
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
    .line 780
    :cond_0
    return-void
.end method

.method public onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Landroid/net/sip/SipAudioCall;)V

    #@3
    .line 790
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
    .line 787
    :cond_0
    return-void
.end method

.method public onChanged(Landroid/net/sip/SipAudioCall;)V
    .locals 6
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 795
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    monitor-enter v3

    #@3
    .line 796
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/sip/SipPhone;->-wrap0(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    .line 797
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
    .line 798
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_1

    #@15
    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@17
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@19
    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@24
    .line 815
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
    .line 816
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
    .line 817
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
    .line 816
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 817
    const-string/jumbo v5, ": "

    #@4e
    .line 816
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 817
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@54
    invoke-static {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->-get3(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    #@57
    move-result-object v5

    #@58
    .line 816
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 818
    const-string/jumbo v5, " on phone "

    #@5f
    .line 816
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 818
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@65
    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    #@68
    move-result-object v5

    #@69
    .line 816
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
    .line 794
    return-void

    #@76
    .line 801
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
    .line 802
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@88
    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@8a
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->-get3(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@91
    move-result-object v2

    #@92
    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@94
    if-ne v2, v4, :cond_2

    #@96
    .line 804
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
    .line 811
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
    .line 813
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    #@b2
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b5
    goto/16 :goto_0

    #@b7
    .line 795
    .end local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v2

    #@b8
    monitor-exit v3

    #@b9
    throw v2

    #@ba
    .line 805
    .restart local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    :catch_0
    move-exception v0

    #@bb
    .line 807
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
    .line 808
    return-void
.end method

.method protected onError(I)V
    .locals 3
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 824
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
    .line 825
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(I)V

    #@1c
    .line 823
    return-void
.end method
