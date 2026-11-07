.class final Landroid/content/pm/PackageInstaller$LocalIntentSender;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalIntentSender"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSession:Landroid/content/pm/IPackageInstallerSession;

.field private final blacklist mSessionId:I

.field private final blacklist mStatusReceiver:Landroid/content/IntentSender;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetIntentSender(Landroid/content/pm/PackageInstaller$LocalIntentSender;)Landroid/content/IntentSender;
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$LocalIntentSender;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILandroid/content/pm/IPackageInstallerSession;Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionId"    # I
    .param p3, "session"    # Landroid/content/pm/IPackageInstallerSession;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1298
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1299
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    .line 1300
    iput p2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mSessionId:I

    .line 1301
    iput-object p3, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1302
    iput-object p4, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mStatusReceiver:Landroid/content/IntentSender;

    .line 1303
    return-void
.end method

.method private blacklist getIntentSender()Landroid/content/IntentSender;
    .registers 5

    .line 1306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.WAIT_INSTALL_CONSTRAINTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    .line 1307
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1306
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1308
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v2, p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1310
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1312
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    return-object v2
.end method

.method private blacklist unregisterReceiver()V
    .registers 2

    .line 1341
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1342
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1317
    const-string v0, "android.content.pm.extra.INSTALL_CONSTRAINTS_RESULT"

    const-class v1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    .line 1321
    .local v1, "result":Landroid/content/pm/PackageInstaller$InstallConstraintsResult;
    :try_start_b
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->areAllConstraintsSatisfied()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1322
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mSession:Landroid/content/pm/IPackageInstallerSession;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mStatusReceiver:Landroid/content/IntentSender;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    goto :goto_48

    .line 1325
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v5, v0

    .line 1326
    .local v5, "fillIn":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mSessionId:I

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1327
    const-string v0, "android.content.pm.extra.STATUS"

    const/16 v2, 0x8

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1328
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    const-string v2, "Install constraints not satisfied within timeout"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mStatusReceiver:Landroid/content/IntentSender;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_41} :catch_47
    .catchall {:try_start_b .. :try_end_41} :catchall_42

    goto :goto_48

    .line 1336
    .end local v5    # "fillIn":Landroid/content/Intent;
    :catchall_42
    move-exception v0

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$LocalIntentSender;->unregisterReceiver()V

    .line 1337
    throw v0

    .line 1333
    :catch_47
    move-exception v0

    .line 1336
    :goto_48
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$LocalIntentSender;->unregisterReceiver()V

    .line 1337
    nop

    .line 1338
    return-void
.end method
