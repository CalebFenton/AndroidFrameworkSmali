.class public Landroid/service/dreams/DreamActivity;
.super Landroid/app/Activity;
.source "DreamActivity.java"


# static fields
.field static final blacklist EXTRA_CALLBACK:Ljava/lang/String; = "binder"

.field static final blacklist EXTRA_DREAM_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private blacklist mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static blacklist getCallback(Landroid/content/Intent;)Landroid/service/dreams/DreamService$DreamActivityCallbacks;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "binder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 106
    .local v0, "binder":Ljava/lang/Object;
    instance-of v1, v0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    if-eqz v1, :cond_12

    .line 107
    move-object v1, v0

    check-cast v1, Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    goto :goto_13

    .line 108
    :cond_12
    const/4 v1, 0x0

    .line 106
    :goto_13
    return-object v1
.end method

.method public static blacklist getTitle(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 90
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setCallback(Landroid/content/Intent;Landroid/service/dreams/DreamService$DreamActivityCallbacks;)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callback"    # Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    .line 97
    const-string v0, "binder"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public static blacklist setTitle(Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    return-void

    .line 83
    :cond_7
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/DreamActivity;->getTitle(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 62
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    :cond_14
    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/DreamActivity;->getCallback(Landroid/content/Intent;)Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    move-result-object v1

    iput-object v1, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    .line 67
    iget-object v1, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    if-nez v1, :cond_26

    .line 68
    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->finishAndRemoveTask()V

    .line 69
    return-void

    .line 72
    :cond_26
    iget-object v1, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    invoke-virtual {v1, p0}, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->onActivityCreated(Landroid/service/dreams/DreamActivity;)V

    .line 73
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->onActivityDestroyed()V

    .line 117
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    return-void
.end method
