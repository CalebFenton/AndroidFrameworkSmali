.class Lcom/android/server/hdmi/SystemAudioAction$1;
.super Ljava/lang/Object;
.source "SystemAudioAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SystemAudioAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SystemAudioAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/SystemAudioAction;

    #@0
    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/SystemAudioAction;->-wrap0(Lcom/android/server/hdmi/SystemAudioAction;)V

    #@5
    .line 83
    return-void
.end method
