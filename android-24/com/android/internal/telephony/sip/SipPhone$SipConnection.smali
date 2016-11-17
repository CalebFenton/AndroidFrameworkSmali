.class Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
.super Lcom/android/internal/telephony/sip/SipConnectionBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;
    }
.end annotation


# static fields
.field private static final SCN_DBG:Z = true

.field private static final SCN_TAG:Ljava/lang/String; = "SipConnection"


# instance fields
.field private mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

.field private mIncoming:Z

.field private mOriginalNumber:Ljava/lang/String;

.field private mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mPeer:Landroid/net/sip/SipProfile;

.field private mSipAudioCall:Landroid/net/sip/SipAudioCall;

.field private mState:Lcom/android/internal/telephony/Call$State;

.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipAudioCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p2, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .param p3, "callee"    # Landroid/net/sip/SipProfile;

    #@0
    .prologue
    .line 838
    invoke-static {p1, p3}, Lcom/android/internal/telephony/sip/SipPhone;->-wrap1(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    #@7
    .line 837
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p2, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .param p3, "callee"    # Landroid/net/sip/SipProfile;
    .param p4, "originalNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    .line 831
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/sip/SipConnectionBase;-><init>(Ljava/lang/String;)V

    #@5
    .line 748
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@9
    .line 750
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    #@c
    .line 753
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;

    #@e
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@10
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;-><init>(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Lcom/android/internal/telephony/sip/SipPhone;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    #@15
    .line 832
    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@17
    .line 833
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    #@19
    .line 834
    iput-object p4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    #@1b
    .line 830
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1007
    const-string/jumbo v0, "SipConnection"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1006
    return-void
.end method


# virtual methods
.method acceptCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@2
    const/16 v2, 0x8

    #@4
    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->answerCall(I)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 860
    return-void

    #@8
    .line 863
    :catch_0
    move-exception v0

    #@9
    .line 864
    .local v0, "e":Landroid/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "acceptCall(): "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1
.end method

.method changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@0
    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@2
    .line 868
    return-void
.end method

.method dial()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 878
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@5
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@7
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->-get4(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@d
    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->-get2(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    #@13
    const/4 v3, 0x0

    #@14
    .line 880
    const/16 v4, 0xf

    #@16
    .line 879
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@1c
    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@1e
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    #@20
    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    #@23
    .line 877
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 874
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@8
    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1

    #@0
    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@2
    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    #@2
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 844
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method getMute()Z
    .locals 1

    #@0
    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@8
    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->isMuted()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    #@0
    .prologue
    .line 850
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    return-object v0
.end method

.method public hangup()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    const/4 v3, 0x3

    #@3
    .line 952
    const-class v5, Lcom/android/internal/telephony/sip/SipPhone;

    #@5
    monitor-enter v5

    #@6
    .line 953
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v6, "hangup: conn="

    #@e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    #@14
    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 954
    const-string/jumbo v6, ": "

    #@1f
    .line 953
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 954
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@25
    .line 953
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 954
    const-string/jumbo v6, ": on phone "

    #@2c
    .line 953
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 955
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    .line 953
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    #@43
    .line 956
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@45
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@48
    move-result v2

    #@49
    if-nez v2, :cond_0

    #@4b
    monitor-exit v5

    #@4c
    return-void

    #@4d
    .line 958
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@4f
    .line 959
    .local v1, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    if-eqz v1, :cond_1

    #@51
    .line 960
    const/4 v2, 0x0

    #@52
    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    #@55
    .line 961
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->endCall()V
    :try_end_1
    .catch Landroid/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    .line 966
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    #@5a
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@5c
    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@5e
    if-eq v6, v7, :cond_2

    #@60
    .line 967
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@62
    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@64
    if-ne v6, v7, :cond_3

    #@66
    :cond_2
    move v3, v4

    #@67
    .line 966
    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6a
    monitor-exit v5

    #@6b
    .line 951
    return-void

    #@6c
    .line 963
    .end local v1    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catch_0
    move-exception v0

    #@6d
    .line 964
    .local v0, "e":Landroid/net/sip/SipException;
    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@6f
    new-instance v6, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v7, "hangup(): "

    #@77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    invoke-direct {v2, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@86
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@87
    .line 965
    .end local v0    # "e":Landroid/net/sip/SipException;
    :catchall_0
    move-exception v2

    #@88
    .line 966
    :try_start_4
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    #@8a
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@8c
    sget-object v8, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@8e
    if-eq v7, v8, :cond_4

    #@90
    .line 967
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@92
    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@94
    if-ne v7, v8, :cond_5

    #@96
    :cond_4
    move v3, v4

    #@97
    .line 966
    :cond_5
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    #@9a
    .line 965
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@9b
    .line 952
    :catchall_1
    move-exception v2

    #@9c
    monitor-exit v5

    #@9d
    throw v2
.end method

.method hold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 885
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@5
    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@7
    const/16 v2, 0xf

    #@9
    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->holdCall(I)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 884
    return-void

    #@d
    .line 888
    :catch_0
    move-exception v0

    #@e
    .line 889
    .local v0, "e":Landroid/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "hold(): "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1
.end method

.method initIncomingCall(Landroid/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "sipAudioCall"    # Landroid/net/sip/SipAudioCall;
    .param p2, "newState"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 854
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@3
    .line 855
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@5
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    #@7
    invoke-virtual {p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    #@a
    .line 857
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    #@d
    .line 853
    return-void
.end method

.method public isIncoming()Z
    .locals 1

    #@0
    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    #@2
    return v0
.end method

.method public separate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 976
    const-class v4, Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    monitor-enter v4

    #@3
    .line 977
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    #@6
    move-result-object v3

    #@7
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@9
    if-ne v3, v5, :cond_0

    #@b
    .line 978
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@d
    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@13
    .line 980
    .local v1, "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@16
    move-result-object v3

    #@17
    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@19
    if-eq v3, v5, :cond_1

    #@1b
    .line 981
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@1d
    .line 982
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "cannot put conn back to a call in non-idle state: "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 983
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@2c
    move-result-object v6

    #@2d
    .line 982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 981
    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 976
    .end local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3

    #@3c
    .line 979
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@3e
    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@44
    .restart local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    goto :goto_0

    #@45
    .line 985
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "separate: conn="

    #@4d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 986
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    #@53
    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    .line 985
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    .line 986
    const-string/jumbo v5, " from "

    #@5e
    .line 985
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    .line 986
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@64
    .line 985
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    .line 986
    const-string/jumbo v5, " back to "

    #@6b
    .line 985
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    #@7a
    .line 990
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    #@7d
    move-result-object v2

    #@7e
    .line 991
    .local v2, "originalPhone":Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->-wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)Landroid/net/rtp/AudioGroup;

    #@81
    move-result-object v0

    #@82
    .line 992
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    invoke-static {v1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->-wrap1(Lcom/android/internal/telephony/sip/SipPhone$SipCall;Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    #@85
    .line 993
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@87
    invoke-virtual {v3, v0}, Landroid/net/sip/SipAudioCall;->setAudioGroup(Landroid/net/rtp/AudioGroup;)V

    #@8a
    .line 997
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    #@8d
    .line 1000
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@8f
    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@92
    move-result-object v1

    #@93
    .end local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    #@95
    .line 1001
    .restart local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@97
    invoke-virtual {v3}, Landroid/net/sip/SipAudioCall;->startAudio()V

    #@9a
    .line 1002
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    monitor-exit v4

    #@9e
    .line 975
    return-void
.end method

.method setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@6
    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->isMuted()Z

    #@9
    move-result v0

    #@a
    if-eq p1, v0, :cond_0

    #@c
    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "setState: prev muted="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    if-eqz p1, :cond_1

    #@1a
    const/4 v0, 0x0

    #@1b
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " new muted="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    #@31
    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@33
    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->toggleMute()V

    #@36
    .line 903
    :cond_0
    return-void

    #@37
    .line 905
    :cond_1
    const/4 v0, 0x1

    #@38
    goto :goto_0
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    return-void

    #@5
    .line 918
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipConnectionBase;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@8
    .line 919
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    #@a
    .line 916
    return-void
.end method

.method unhold(Landroid/net/rtp/AudioGroup;)V
    .locals 4
    .param p1, "audioGroup"    # Landroid/net/rtp/AudioGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@2
    invoke-virtual {v1, p1}, Landroid/net/sip/SipAudioCall;->setAudioGroup(Landroid/net/rtp/AudioGroup;)V

    #@5
    .line 895
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@a
    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    #@c
    const/16 v2, 0xf

    #@e
    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->continueCall(I)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 893
    return-void

    #@12
    .line 898
    :catch_0
    move-exception v0

    #@13
    .line 899
    .local v0, "e":Landroid/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "unhold(): "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
.end method
