.class Lcom/android/server/policy/EnableAccessibilityController$1;
.super Landroid/os/Handler;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/EnableAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/EnableAccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/EnableAccessibilityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/EnableAccessibilityController;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 59
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 58
    :goto_0
    return-void

    #@8
    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@a
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    const v2, 0x10404e6

    #@11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 62
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@17
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    #@1e
    goto :goto_0

    #@1f
    .line 65
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@21
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    const v2, 0x10404e8

    #@28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 66
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@2e
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    #@35
    goto :goto_0

    #@36
    .line 69
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@38
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-wrap0(Lcom/android/server/policy/EnableAccessibilityController;)V

    #@3b
    .line 70
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@3d
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get2(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    #@44
    .line 71
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@46
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    #@49
    move-result-object v1

    #@4a
    iget-object v2, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    #@4c
    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->-get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    #@4f
    move-result-object v2

    #@50
    const v3, 0x10404e7

    #@53
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    #@5a
    goto :goto_0

    #@5b
    .line 59
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
