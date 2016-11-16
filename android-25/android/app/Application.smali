.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Application$ActivityLifecycleCallbacks;,
        Landroid/app/Application$OnProvideAssistDataListener;
    }
.end annotation


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application$OnProvideAssistDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadedApk:Landroid/app/LoadedApk;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 83
    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@4
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 48
    iput-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@b
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 50
    iput-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@12
    .line 52
    iput-object v1, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@14
    .line 82
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 269
    const/4 v0, 0x0

    #@1
    .line 270
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@3
    monitor-enter v2

    #@4
    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    if-lez v1, :cond_0

    #@c
    .line 272
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v0

    #@12
    .end local v0    # "callbacks":[Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    #@13
    .line 275
    return-object v0

    #@14
    .line 270
    .restart local v0    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private collectComponentCallbacks()[Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 259
    const/4 v0, 0x0

    #@1
    .line 260
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@3
    monitor-enter v2

    #@4
    .line 261
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    if-lez v1, :cond_0

    #@c
    .line 262
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v0

    #@12
    .end local v0    # "callbacks":[Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    #@13
    .line 265
    return-object v0

    #@14
    .line 260
    .restart local v0    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 190
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    #@6
    move-result-object v0

    #@7
    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@9
    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    #@b
    .line 188
    return-void
.end method

.method dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 196
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 197
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@11
    .line 196
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 193
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 251
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 252
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 253
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    #@11
    .line 252
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 249
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 222
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 223
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 224
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 225
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    #@11
    .line 224
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 221
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 214
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 215
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 216
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    #@11
    .line 215
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 212
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 240
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 241
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 242
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 243
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@11
    .line 242
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 239
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 204
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 205
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 206
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 207
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    #@11
    .line 206
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 203
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 232
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 233
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 234
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    #@11
    .line 233
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 230
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 280
    monitor-enter p0

    #@1
    .line 281
    :try_start_0
    iget-object v2, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v2, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 282
    return-void

    #@7
    .line 284
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    move-result-object v0

    #@d
    .local v0, "callbacks":[Ljava/lang/Object;
    monitor-exit p0

    #@e
    .line 286
    if-eqz v0, :cond_1

    #@10
    .line 287
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@12
    if-ge v1, v2, :cond_1

    #@14
    .line 288
    aget-object v2, v0, v1

    #@16
    check-cast v2, Landroid/app/Application$OnProvideAssistDataListener;

    #@18
    invoke-interface {v2, p1, p2}, Landroid/app/Application$OnProvideAssistDataListener;->onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@1b
    .line 287
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 280
    .end local v0    # "callbacks":[Ljava/lang/Object;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2

    #@21
    .line 278
    .restart local v0    # "callbacks":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 112
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 113
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 114
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/content/ComponentCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@11
    .line 113
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 110
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    #@0
    .prologue
    .line 96
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 122
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 123
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 124
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/content/ComponentCallbacks;

    #@e
    invoke-interface {v2}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    #@11
    .line 123
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 120
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    #@0
    .prologue
    .line 106
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 132
    .local v1, "callbacks":[Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@6
    .line 133
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@8
    if-ge v2, v3, :cond_1

    #@a
    .line 134
    aget-object v0, v1, v2

    #@c
    .line 135
    .local v0, "c":Ljava/lang/Object;
    instance-of v3, v0, Landroid/content/ComponentCallbacks2;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 136
    check-cast v0, Landroid/content/ComponentCallbacks2;

    #@12
    .end local v0    # "c":Ljava/lang/Object;
    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    #@15
    .line 133
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 130
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    #@0
    .prologue
    .line 155
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 154
    return-void

    #@a
    .line 155
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    #@0
    .prologue
    .line 143
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 142
    return-void

    #@a
    .line 143
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$OnProvideAssistDataListener;

    #@0
    .prologue
    .line 167
    monitor-enter p0

    #@1
    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@c
    .line 171
    :cond_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 166
    return-void

    #@13
    .line 167
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    #@0
    .prologue
    .line 161
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 160
    return-void

    #@a
    .line 161
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    #@0
    .prologue
    .line 149
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 148
    return-void

    #@a
    .line 149
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$OnProvideAssistDataListener;

    #@0
    .prologue
    .line 176
    monitor-enter p0

    #@1
    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 178
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 175
    return-void

    #@c
    .line 176
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
