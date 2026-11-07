.class Lcom/android/internal/policy/AttributeCache$PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageMonitor"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 101
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 102
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    .local v2, "context":Landroid/content/Context;
    .local v7, "handler":Landroid/os/Handler;
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, "packageUri":Landroid/net/Uri;
    if-eqz v0, :cond_11

    .line 110
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 113
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_11
    return-void
.end method
