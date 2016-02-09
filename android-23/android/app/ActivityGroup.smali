.class public Landroid/app/ActivityGroup;
.super Landroid/app/Activity;
.source "ActivityGroup.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final PARENT_NON_CONFIG_INSTANCE_KEY:Ljava/lang/String; = "android:parent_non_config_instance"

.field private static final STATES_KEY:Ljava/lang/String; = "android:states"


# instance fields
.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/app/ActivityGroup;-><init>(Z)V

    #@4
    .line 42
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "singleActivityMode"    # Z

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 47
    new-instance v0, Landroid/app/LocalActivityManager;

    #@5
    invoke-direct {v0, p0, p1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    #@8
    iput-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@a
    .line 46
    return-void
.end method


# virtual methods
.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 113
    if-eqz p1, :cond_0

    #@2
    .line 114
    iget-object v1, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@4
    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    #@7
    move-result-object v0

    #@8
    .line 121
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    #@a
    .line 122
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    #@d
    .line 123
    return-void

    #@e
    .line 126
    .end local v0    # "act":Landroid/app/Activity;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V

    #@11
    .line 112
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@2
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getLocalActivityManager()Landroid/app/LocalActivityManager;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@2
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 53
    if-eqz p1, :cond_0

    #@5
    .line 54
    const-string/jumbo v1, "android:states"

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    .line 55
    :goto_0
    iget-object v1, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@e
    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    #@11
    .line 51
    return-void

    #@12
    .line 54
    :cond_0
    const/4 v0, 0x0

    #@13
    .local v0, "states":Landroid/os/Bundle;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@3
    .line 88
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@5
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->isFinishing()Z

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    #@c
    .line 86
    return-void
.end method

.method protected onPause()V
    .locals 2

    #@0
    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@3
    .line 76
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@5
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->isFinishing()Z

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    #@c
    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    .line 61
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@5
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    #@8
    .line 59
    return-void
.end method

.method public onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@2
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 67
    iget-object v1, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@5
    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    #@8
    move-result-object v0

    #@9
    .line 68
    .local v0, "state":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@b
    .line 69
    const-string/jumbo v1, "android:states"

    #@e
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@11
    .line 65
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@3
    .line 82
    iget-object v0, p0, Landroid/app/ActivityGroup;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@5
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    #@8
    .line 80
    return-void
.end method
