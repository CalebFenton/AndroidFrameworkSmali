.class Lcom/android/server/hdmi/SystemAudioStatusAction$1;
.super Ljava/lang/Object;
.source "SystemAudioStatusAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SystemAudioStatusAction;->sendGiveAudioStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SystemAudioStatusAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SystemAudioStatusAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/SystemAudioStatusAction;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioStatusAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 1
    .param p1, "error"    # I

    #@0
    .prologue
    .line 59
    if-eqz p1, :cond_0

    #@2
    .line 60
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioStatusAction;

    #@4
    invoke-static {v0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->-wrap0(Lcom/android/server/hdmi/SystemAudioStatusAction;)V

    #@7
    .line 58
    :cond_0
    return-void
.end method
