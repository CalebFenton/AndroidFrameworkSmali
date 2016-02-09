.class Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiControlBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@3
    return-void
.end method

.method private getMenuLanguage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    .line 176
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@e
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get0(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@1a
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get1(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 180
    :cond_0
    const-string/jumbo v1, "chi"

    #@27
    return-object v1

    #@28
    .line 182
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap9(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 151
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@14
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 152
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap19(Lcom/android/server/hdmi/HdmiControlService;I)V

    #@20
    .line 147
    :cond_0
    :goto_0
    return-void

    #@21
    .line 149
    :cond_1
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 156
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2c
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 157
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@34
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap20(Lcom/android/server/hdmi/HdmiControlService;)V

    #@37
    goto :goto_0

    #@38
    .line 149
    :cond_2
    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_3

    #@41
    .line 161
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->getMenuLanguage()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 162
    .local v0, "language":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@47
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get8(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_0

    #@51
    .line 163
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@53
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap17(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V

    #@56
    goto :goto_0

    #@57
    .line 149
    .end local v0    # "language":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_0

    #@60
    .line 167
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@62
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_0

    #@68
    .line 168
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@6a
    const/4 v2, 0x1

    #@6b
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->-wrap19(Lcom/android/server/hdmi/HdmiControlService;I)V

    #@6e
    goto :goto_0
.end method
