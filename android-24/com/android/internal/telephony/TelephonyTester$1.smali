.class Lcom/android/internal/telephony/TelephonyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TelephonyTester;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TelephonyTester;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/TelephonyTester;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 84
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "sIntentReceiver.onReceive: action="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-wrap2(Ljava/lang/String;)V

    #@1b
    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    #@1d
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 86
    const-string/jumbo v1, "simulate detaching"

    #@2e
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-wrap2(Ljava/lang/String;)V

    #@31
    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    #@33
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3a
    move-result-object v1

    #@3b
    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@3d
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@40
    .line 82
    :goto_0
    return-void

    #@41
    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    #@43
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 89
    const-string/jumbo v1, "simulate attaching"

    #@54
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-wrap2(Ljava/lang/String;)V

    #@57
    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    #@59
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@60
    move-result-object v1

    #@61
    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@63
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@66
    goto :goto_0

    #@67
    .line 91
    :cond_1
    const-string/jumbo v1, "com.android.internal.telephony.TestConferenceEventPackage"

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v1

    #@6e
    if-eqz v1, :cond_2

    #@70
    .line 92
    const-string/jumbo v1, "inject simulated conference event package"

    #@73
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-wrap2(Ljava/lang/String;)V

    #@76
    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    #@78
    const-string/jumbo v2, "filename"

    #@7b
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap0(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V

    #@82
    goto :goto_0

    #@83
    .line 94
    :cond_2
    const-string/jumbo v1, "com.android.internal.telephony.TestDialogEventPackage"

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_3

    #@8c
    .line 95
    const-string/jumbo v1, "handle test dialog event package intent"

    #@8f
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-wrap2(Ljava/lang/String;)V

    #@92
    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    #@94
    invoke-static {v1, p2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap1(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V

    #@97
    goto :goto_0

    #@98
    .line 98
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v2, "onReceive: unknown action="

    #@a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v1

    #@ac
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->-wrap2(Ljava/lang/String;)V

    #@af
    goto :goto_0
.end method
