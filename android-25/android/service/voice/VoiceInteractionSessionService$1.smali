.class Landroid/service/voice/VoiceInteractionSessionService$1;
.super Landroid/service/voice/IVoiceInteractionSessionService$Stub;
.source "VoiceInteractionSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSessionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSessionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSessionService;

    #@0
    .prologue
    .line 46
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService$1;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    #@2
    invoke-direct {p0}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "startFlags"    # I

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService$1;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService$1;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, v2, p3, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@10
    .line 47
    return-void
.end method
