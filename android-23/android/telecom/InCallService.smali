.class public abstract Landroid/telecom/InCallService;
.super Landroid/app/Service;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$InCallServiceBinder;,
        Landroid/telecom/InCallService$VideoCall;,
        Landroid/telecom/InCallService$1;,
        Landroid/telecom/InCallService$2;
    }
.end annotation


# static fields
.field private static final MSG_ADD_CALL:I = 0x2

.field private static final MSG_BRING_TO_FOREGROUND:I = 0x6

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x5

.field private static final MSG_ON_CAN_ADD_CALL_CHANGED:I = 0x7

.field private static final MSG_SET_IN_CALL_ADAPTER:I = 0x1

.field private static final MSG_SET_POST_DIAL_WAIT:I = 0x4

.field private static final MSG_UPDATE_CALL:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.InCallService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;


# direct methods
.method static synthetic -get0(Landroid/telecom/InCallService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 78
    new-instance v0, Landroid/telecom/InCallService$1;

    #@5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$1;-><init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V

    #@c
    iput-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    #@e
    .line 170
    new-instance v0, Landroid/telecom/InCallService$2;

    #@10
    invoke-direct {v0, p0}, Landroid/telecom/InCallService$2;-><init>(Landroid/telecom/InCallService;)V

    #@13
    iput-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    #@15
    .line 209
    return-void
.end method


# virtual methods
.method public final canAddCall()Z
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@8
    invoke-virtual {v0}, Landroid/telecom/Phone;->canAddCall()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 278
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@8
    invoke-virtual {v0}, Landroid/telecom/Phone;->getAudioState()Landroid/telecom/AudioState;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 288
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@8
    invoke-virtual {v0}, Landroid/telecom/Phone;->getCallAudioState()Landroid/telecom/CallAudioState;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@b
    invoke-virtual {v0}, Landroid/telecom/Phone;->getCalls()Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public getPhone()Landroid/telecom/Phone;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@2
    return-object v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "audioState"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 353
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 214
    new-instance v0, Landroid/telecom/InCallService$InCallServiceBinder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$InCallServiceBinder;)V

    #@6
    return-object v0
.end method

.method public onBringToForeground(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    #@0
    .prologue
    .line 371
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 383
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 361
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 394
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 0
    .param p1, "canAddCall"    # Z

    #@0
    .prologue
    .line 404
    return-void
.end method

.method public onPhoneCreated(Landroid/telecom/Phone;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 327
    return-void
.end method

.method public onPhoneDestroyed(Landroid/telecom/Phone;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 342
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 219
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 220
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@7
    .line 221
    .local v0, "oldPhone":Landroid/telecom/Phone;
    iput-object v2, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@9
    .line 223
    invoke-virtual {v0}, Landroid/telecom/Phone;->destroy()V

    #@c
    .line 227
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    #@e
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    #@11
    .line 229
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->onPhoneDestroyed(Landroid/telecom/Phone;)V

    #@14
    .line 232
    .end local v0    # "oldPhone":Landroid/telecom/Phone;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public final setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 311
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@6
    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    #@9
    .line 309
    :cond_0
    return-void
.end method

.method public final setMuted(Z)V
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 299
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    #@6
    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    #@9
    .line 297
    :cond_0
    return-void
.end method
