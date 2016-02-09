.class Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
.super Landroid/app/PackageInstallObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstallObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionId:I

.field private final mShowNotification:Z

.field private final mTarget:Landroid/content/IntentSender;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "sessionId"    # I
    .param p4, "showNotification"    # Z
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 998
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    #@3
    .line 1000
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    #@5
    .line 1001
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    #@7
    .line 1002
    iput p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    #@9
    .line 1003
    iput-boolean p4, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    #@b
    .line 1004
    iput p5, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    #@d
    .line 999
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1023
    const/4 v0, 0x1

    #@2
    if-ne v0, p2, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1024
    if-eqz p4, :cond_2

    #@a
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    #@d
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@10
    move-result v10

    #@11
    .line 1025
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    #@13
    .line 1026
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v2

    #@19
    .line 1027
    if-eqz v10, :cond_3

    #@1b
    const v0, 0x104056e

    #@1e
    .line 1026
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 1030
    iget v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    #@24
    .line 1025
    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageInstallerService;->-wrap0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    #@27
    move-result-object v8

    #@28
    .line 1031
    .local v8, "notification":Landroid/app/Notification;
    if-eqz v8, :cond_0

    #@2a
    .line 1033
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    #@2c
    const-string/jumbo v1, "notification"

    #@2f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v9

    #@33
    .line 1032
    check-cast v9, Landroid/app/NotificationManager;

    #@35
    .line 1034
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v9, p1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@38
    .line 1037
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    #@3a
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@3d
    .line 1038
    .local v3, "fillIn":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.PACKAGE_NAME"

    #@40
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@43
    .line 1039
    const-string/jumbo v0, "android.content.pm.extra.SESSION_ID"

    #@46
    iget v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    #@48
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4b
    .line 1040
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    #@4e
    .line 1041
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    #@51
    move-result v1

    #@52
    .line 1040
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@55
    .line 1042
    const-string/jumbo v0, "android.content.pm.extra.STATUS_MESSAGE"

    #@58
    .line 1043
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    .line 1042
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5f
    .line 1044
    const-string/jumbo v0, "android.content.pm.extra.LEGACY_STATUS"

    #@62
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@65
    .line 1045
    if-eqz p4, :cond_1

    #@67
    .line 1047
    const-string/jumbo v0, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    #@6a
    .line 1046
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    .line 1048
    .local v6, "existing":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@71
    move-result v0

    #@72
    if-nez v0, :cond_1

    #@74
    .line 1049
    const-string/jumbo v0, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    #@77
    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7a
    .line 1053
    .end local v6    # "existing":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    #@7c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    #@7e
    const/4 v2, 0x0

    #@7f
    const/4 v4, 0x0

    #@80
    const/4 v5, 0x0

    #@81
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 1022
    :goto_2
    return-void

    #@85
    .line 1024
    .end local v3    # "fillIn":Landroid/content/Intent;
    :cond_2
    const/4 v10, 0x0

    #@86
    .local v10, "update":Z
    goto :goto_0

    #@87
    .line 1028
    .end local v10    # "update":Z
    :cond_3
    const v0, 0x104056d

    #@8a
    goto :goto_1

    #@8b
    .line 1054
    .restart local v3    # "fillIn":Landroid/content/Intent;
    :catch_0
    move-exception v7

    #@8c
    .local v7, "ignored":Landroid/content/IntentSender$SendIntentException;
    goto :goto_2
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1009
    new-instance v3, Landroid/content/Intent;

    #@2
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@5
    .line 1010
    .local v3, "fillIn":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.SESSION_ID"

    #@8
    iget v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    #@a
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@d
    .line 1011
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    #@10
    .line 1012
    const/4 v1, -0x1

    #@11
    .line 1011
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 1013
    const-string/jumbo v0, "android.intent.extra.INTENT"

    #@17
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    #@1c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

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
    .line 1008
    :goto_0
    return-void

    #@25
    .line 1016
    :catch_0
    move-exception v6

    #@26
    .local v6, "ignored":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method
