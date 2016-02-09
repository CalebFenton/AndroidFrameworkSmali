.class Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
.super Landroid/app/PackageDeleteObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotification:Landroid/app/Notification;

.field private final mPackageName:Ljava/lang/String;

.field private final mTarget:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "showNotification"    # Z
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 942
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    #@3
    .line 944
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    #@5
    .line 945
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    #@7
    .line 946
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    #@9
    .line 947
    if-eqz p4, :cond_0

    #@b
    .line 948
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    #@d
    .line 949
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v1

    #@13
    const v2, 0x104056f

    #@16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 948
    invoke-static {v0, v1, p3, p5}, Lcom/android/server/pm/PackageInstallerService;->-wrap0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    #@20
    .line 943
    :goto_0
    return-void

    #@21
    .line 953
    :cond_0
    const/4 v0, 0x0

    #@22
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    #@24
    goto :goto_0
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 972
    const/4 v0, 0x1

    #@2
    if-ne v0, p2, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 974
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    #@a
    const-string/jumbo v1, "notification"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v7

    #@11
    .line 973
    check-cast v7, Landroid/app/NotificationManager;

    #@13
    .line 975
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    #@15
    invoke-virtual {v7, p1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@18
    .line 977
    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    #@1a
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@1d
    .line 978
    .local v3, "fillIn":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.PACKAGE_NAME"

    #@20
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    #@22
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 979
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    #@28
    .line 980
    invoke-static {p2}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    #@2b
    move-result v1

    #@2c
    .line 979
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2f
    .line 981
    const-string/jumbo v0, "android.content.pm.extra.STATUS_MESSAGE"

    #@32
    .line 982
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 981
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@39
    .line 983
    const-string/jumbo v0, "android.content.pm.extra.LEGACY_STATUS"

    #@3c
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3f
    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    #@41
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    #@43
    const/4 v2, 0x0

    #@44
    const/4 v4, 0x0

    #@45
    const/4 v5, 0x0

    #@46
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 971
    :goto_0
    return-void

    #@4a
    .line 986
    :catch_0
    move-exception v6

    #@4b
    .local v6, "ignored":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 959
    new-instance v3, Landroid/content/Intent;

    #@2
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@5
    .line 960
    .local v3, "fillIn":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.PACKAGE_NAME"

    #@8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    #@a
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@d
    .line 961
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    #@10
    .line 962
    const/4 v1, -0x1

    #@11
    .line 961
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 963
    const-string/jumbo v0, "android.intent.extra.INTENT"

    #@17
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    #@1c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    #@1e
    const/4 v2, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 958
    :goto_0
    return-void

    #@25
    .line 966
    :catch_0
    move-exception v6

    #@26
    .local v6, "ignored":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method
