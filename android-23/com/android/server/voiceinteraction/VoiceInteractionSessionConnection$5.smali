.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@0
    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 532
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@2
    .line 531
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@8
    .line 533
    .local v0, "statusBarInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 534
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showAssistDisclosure()V

    #@d
    .line 530
    :cond_0
    return-void
.end method
