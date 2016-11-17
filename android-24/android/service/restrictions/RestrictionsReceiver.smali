.class public abstract Landroid/service/restrictions/RestrictionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RestrictionsReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 76
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.content.action.REQUEST_PERMISSION"

    #@7
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 77
    const-string/jumbo v0, "android.content.extra.PACKAGE_NAME"

    #@10
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 78
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "android.content.extra.REQUEST_TYPE"

    #@17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 79
    .local v3, "requestType":Ljava/lang/String;
    const-string/jumbo v0, "android.content.extra.REQUEST_ID"

    #@1e
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 81
    .local v4, "requestId":Ljava/lang/String;
    const-string/jumbo v0, "android.content.extra.REQUEST_BUNDLE"

    #@25
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Landroid/os/PersistableBundle;

    #@2b
    .local v5, "request":Landroid/os/PersistableBundle;
    move-object v0, p0

    #@2c
    move-object v1, p1

    #@2d
    .line 82
    invoke-virtual/range {v0 .. v5}, Landroid/service/restrictions/RestrictionsReceiver;->onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@30
    .line 73
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "requestType":Ljava/lang/String;
    .end local v4    # "requestId":Ljava/lang/String;
    .end local v5    # "request":Landroid/os/PersistableBundle;
    :cond_0
    return-void
.end method

.method public abstract onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
.end method
