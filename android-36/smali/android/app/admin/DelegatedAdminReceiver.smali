.class public Landroid/app/admin/DelegatedAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DelegatedAdminReceiver.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DelegatedAdminReceiver"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onChoosePrivateKeyAlias should be implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "batchToken"    # J
    .param p5, "networkLogsCount"    # I

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onNetworkLogsAvailable should be implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 158
    const-string v0, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 159
    .local v3, "uid":I
    const-string v0, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 160
    .local v4, "uri":Landroid/net/Uri;
    const-string v0, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "alias":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DelegatedAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "chosenAlias":Ljava/lang/String;
    invoke-virtual {p0, v7}, Landroid/app/admin/DelegatedAdminReceiver;->setResultData(Ljava/lang/String;)V

    .line 163
    .end local v3    # "uid":I
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "alias":Ljava/lang/String;
    .end local v7    # "chosenAlias":Ljava/lang/String;
    goto :goto_71

    :cond_2f
    const-string v1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 164
    const-string v1, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 165
    .local v3, "batchToken":J
    const-string v1, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    const/4 v5, 0x0

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 166
    .local v5, "networkLogsCount":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DelegatedAdminReceiver;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V

    .line 167
    .end local v3    # "batchToken":J
    .end local v5    # "networkLogsCount":I
    goto :goto_71

    :cond_4d
    const-string v0, "android.app.action.SECURITY_LOGS_AVAILABLE"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 168
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DelegatedAdminReceiver;->onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_71

    .line 170
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelegatedAdminReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_71
    return-void
.end method

.method public whitelist onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onSecurityLogsAvailable should be implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
