.class public abstract Landroid/service/restrictions/RestrictionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionsReceiver.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "RestrictionsReceiver"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.content.action.REQUEST_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 76
    const-string v1, "android.content.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "packageName":Ljava/lang/String;
    const-string v1, "android.content.extra.REQUEST_TYPE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "requestType":Ljava/lang/String;
    const-string v1, "android.content.extra.REQUEST_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "requestId":Ljava/lang/String;
    const-class v1, Landroid/os/PersistableBundle;

    .line 80
    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/PersistableBundle;

    .line 81
    .local v7, "request":Landroid/os/PersistableBundle;
    move-object v2, p0

    move-object v3, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v3, "context":Landroid/content/Context;
    invoke-virtual/range {v2 .. v7}, Landroid/service/restrictions/RestrictionsReceiver;->onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_30

    .line 75
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "requestType":Ljava/lang/String;
    .end local v6    # "requestId":Ljava/lang/String;
    .end local v7    # "request":Landroid/os/PersistableBundle;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2f
    move-object v3, p1

    .line 83
    .end local p1    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    :goto_30
    return-void
.end method

.method public abstract whitelist onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
.end method
