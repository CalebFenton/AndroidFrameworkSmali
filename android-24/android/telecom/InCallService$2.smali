.class Landroid/telecom/InCallService$2;
.super Landroid/telecom/Phone$Listener;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;

    #@0
    .prologue
    .line 202
    iput-object p1, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "audioState"    # Landroid/telecom/AudioState;

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    #@5
    .line 205
    return-void
.end method

.method public onBringToForeground(Landroid/telecom/Phone;Z)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "showDialpad"    # Z

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onBringToForeground(Z)V

    #@5
    .line 215
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallAdded(Landroid/telecom/Call;)V

    #@5
    .line 221
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@5
    .line 209
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallRemoved(Landroid/telecom/Call;)V

    #@5
    .line 227
    return-void
.end method

.method public onCanAddCallChanged(Landroid/telecom/Phone;Z)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "canAddCall"    # Z

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCanAddCallChanged(Z)V

    #@5
    .line 233
    return-void
.end method

.method public onSilenceRinger(Landroid/telecom/Phone;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-virtual {v0}, Landroid/telecom/InCallService;->onSilenceRinger()V

    #@5
    .line 239
    return-void
.end method
