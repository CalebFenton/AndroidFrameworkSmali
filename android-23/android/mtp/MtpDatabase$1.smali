.class Landroid/mtp/MtpDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/mtp/MtpDatabase;

    #@0
    .prologue
    .line 134
    iput-object p1, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 138
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 139
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    #@10
    const-string/jumbo v3, "scale"

    #@13
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v3

    #@17
    invoke-static {v2, v3}, Landroid/mtp/MtpDatabase;->-set1(Landroid/mtp/MtpDatabase;I)I

    #@1a
    .line 140
    const-string/jumbo v2, "level"

    #@1d
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@20
    move-result v1

    #@21
    .line 141
    .local v1, "newLevel":I
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    #@23
    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-get0(Landroid/mtp/MtpDatabase;)I

    #@26
    move-result v2

    #@27
    if-eq v1, v2, :cond_0

    #@29
    .line 142
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    #@2b
    invoke-static {v2, v1}, Landroid/mtp/MtpDatabase;->-set0(Landroid/mtp/MtpDatabase;I)I

    #@2e
    .line 143
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    #@30
    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-get1(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    #@33
    move-result-object v2

    #@34
    if-eqz v2, :cond_0

    #@36
    .line 145
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    #@38
    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-get1(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    #@3b
    move-result-object v2

    #@3c
    .line 146
    const/16 v3, 0x5001

    #@3e
    .line 145
    invoke-virtual {v2, v3}, Landroid/mtp/MtpServer;->sendDevicePropertyChanged(I)V

    #@41
    .line 136
    .end local v1    # "newLevel":I
    :cond_0
    return-void
.end method
