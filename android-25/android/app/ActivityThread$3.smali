.class Landroid/app/ActivityThread$3;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    .line 5991
    iput-object p1, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 5994
    iget-object v0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 5998
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@9
    invoke-static {v0}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    #@c
    move-result-object v0

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 5999
    iget-object v0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@16
    iget-object v2, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@18
    iget-object v2, v2, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@1a
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    #@1d
    move-result-object v2

    #@1e
    .line 6000
    iget-object v3, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@20
    invoke-static {v3}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@2b
    move-result-object v3

    #@2c
    .line 5999
    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->-wrap36(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/os/LocaleList;)V

    #@2f
    .line 6004
    iget-object v0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@31
    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@33
    if-eqz v0, :cond_0

    #@35
    .line 6005
    iget-object v0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@37
    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@39
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@3c
    move-result v0

    #@3d
    .line 6004
    if-eqz v0, :cond_1

    #@3f
    .line 6006
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@41
    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@43
    .line 6008
    iget-object v0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    #@45
    const/16 v2, 0x76

    #@47
    invoke-static {v0, v2, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    :cond_1
    monitor-exit v1

    #@4b
    .line 5993
    return-void

    #@4c
    .line 5994
    :catchall_0
    move-exception v0

    #@4d
    monitor-exit v1

    #@4e
    throw v0
.end method

.method public onLowMemory()V
    .locals 0

    #@0
    .prologue
    .line 6014
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    #@0
    .prologue
    .line 6017
    return-void
.end method
