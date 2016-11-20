.class public Lcom/android/server/updates/IntentFirewallInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "IntentFirewallInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 25
    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "ifw.xml"

    #@b
    const-string/jumbo v2, "metadata/"

    #@e
    .line 26
    const-string/jumbo v3, "gservices.version"

    #@11
    .line 25
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 23
    return-void
.end method
