.class Lcom/android/server/firewall/IntentFirewall$RuleObserver;
.super Landroid/os/FileObserver;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuleObserver"
.end annotation


# static fields
.field private static final MONITORED_EVENTS:I = 0x3c8


# instance fields
.field final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "monitoredDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    #@2
    .line 560
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x3c8

    #@8
    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@b
    .line 559
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 565
    const-string/jumbo v0, ".xml"

    #@4
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 569
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    #@c
    iget-object v0, v0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    #@e
    invoke-virtual {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->removeMessages(I)V

    #@11
    .line 570
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    #@13
    iget-object v0, v0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    #@15
    const-wide/16 v2, 0xfa

    #@17
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->sendEmptyMessageDelayed(IJ)Z

    #@1a
    .line 564
    :cond_0
    return-void
.end method
