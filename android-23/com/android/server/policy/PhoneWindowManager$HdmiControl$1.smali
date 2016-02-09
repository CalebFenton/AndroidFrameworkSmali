.class Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@0
    .prologue
    .line 1264
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "result"    # I

    #@0
    .prologue
    .line 1267
    if-eqz p1, :cond_0

    #@2
    .line 1268
    const-string/jumbo v0, "WindowManager"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "One touch play failed: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1266
    :cond_0
    return-void
.end method
