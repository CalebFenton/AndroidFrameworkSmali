.class abstract Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;
.super Landroid/net/sip/SipAudioCall$Listener;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SipAudioCallAdapter"
.end annotation


# static fields
.field private static final SACA_DBG:Z = true

.field private static final SACA_TAG:Ljava/lang/String; = "SipAudioCallAdapter"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;

    #@0
    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #@2
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall$Listener;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    #@3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1055
    const-string/jumbo v0, "SipAudioCallAdapter"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1054
    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onCallBusy: call="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    #@17
    .line 1011
    const/4 v0, 0x4

    #@18
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    #@1b
    .line 1009
    return-void
.end method

.method protected abstract onCallEnded(I)V
.end method

.method public onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    #@0
    .prologue
    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onCallEnded: call="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    #@17
    .line 1003
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 1004
    const/4 v0, 0x2

    #@1e
    .line 1003
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    #@21
    .line 1001
    return-void

    #@22
    .line 1005
    :cond_0
    const/4 v0, 0x1

    #@23
    goto :goto_0
.end method

.method protected abstract onError(I)V
.end method

.method public onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "onError: call="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " code="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 1019
    const-string/jumbo v1, ": "

    #@22
    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    #@31
    .line 1021
    packed-switch p2, :pswitch_data_0

    #@34
    .line 1050
    :pswitch_0
    const/16 v0, 0x24

    #@36
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@39
    .line 1016
    :goto_0
    return-void

    #@3a
    .line 1023
    :pswitch_1
    const/16 v0, 0x9

    #@3c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@3f
    goto :goto_0

    #@40
    .line 1026
    :pswitch_2
    const/16 v0, 0x8

    #@42
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@45
    goto :goto_0

    #@46
    .line 1029
    :pswitch_3
    const/4 v0, 0x7

    #@47
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@4a
    goto :goto_0

    #@4b
    .line 1033
    :pswitch_4
    const/16 v0, 0xd

    #@4d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@50
    goto :goto_0

    #@51
    .line 1036
    :pswitch_5
    const/16 v0, 0xe

    #@53
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@56
    goto :goto_0

    #@57
    .line 1039
    :pswitch_6
    const/16 v0, 0xa

    #@59
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@5c
    goto :goto_0

    #@5d
    .line 1042
    :pswitch_7
    const/16 v0, 0xb

    #@5f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@62
    goto :goto_0

    #@63
    .line 1045
    :pswitch_8
    const/16 v0, 0xc

    #@65
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    #@68
    goto :goto_0

    #@69
    .line 1021
    nop

    #@6a
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method
