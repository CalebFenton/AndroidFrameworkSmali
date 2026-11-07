.class public Landroid/app/ActivityGroup;
.super Landroid/app/Activity;
.source "ActivityGroup.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o PARENT_NON_CONFIG_INSTANCE_KEY:Ljava/lang/String; = "android:parent_non_config_instance"

.field private static final greylist-max-o STATES_KEY:Ljava/lang/String; = "android:states"


# instance fields
.field protected greylist mLocalActivityManager:Landroid/app/LocalActivityManager;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 46
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 3
    .param p1, "singleActivityMode"    # Z

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/app/LocalActivityManager;

    invoke-direct {v0, p0, p1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 50
    return-void
.end method


# virtual methods
.method blacklist dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V
    .registers 8
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .param p5, "caller"    # Landroid/app/ComponentCaller;
    .param p6, "reason"    # Ljava/lang/String;

    .line 115
    if-eqz p1, :cond_e

    .line 116
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_e

    .line 124
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    return-void

    .line 128
    .end local v0    # "act":Landroid/app/Activity;
    :cond_e
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public whitelist getCurrentActivity()Landroid/app/Activity;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getLocalActivityManager()Landroid/app/LocalActivityManager;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    if-eqz p1, :cond_c

    .line 56
    const-string v0, "android:states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 57
    .local v0, "states":Landroid/os/Bundle;
    :goto_d
    iget-object v1, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityGroup;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 91
    return-void
.end method

.method protected whitelist onPause()V
    .registers 3

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityGroup;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 79
    return-void
.end method

.method protected whitelist onResume()V
    .registers 2

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 64
    return-void
.end method

.method public greylist-max-o onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "state":Landroid/os/Bundle;
    if-eqz v0, :cond_10

    .line 71
    const-string v1, "android:states"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    :cond_10
    return-void
.end method

.method protected whitelist onStop()V
    .registers 2

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 84
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 85
    return-void
.end method
