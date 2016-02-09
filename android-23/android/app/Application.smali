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
    .line 81
    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@4
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 46
    iput-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@b
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 48
    iput-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@12
    .line 50
    iput-object v1, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@14
    .line 80
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    .line 268
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@3
    monitor-enter v2

    #@4
    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    if-lez v1, :cond_0

    #@c
    .line 270
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
    .line 273
    return-object v0

    #@14
    .line 268
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
    .line 257
    const/4 v0, 0x0

    #@1
    .line 258
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@3
    monitor-enter v2

    #@4
    .line 259
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    if-lez v1, :cond_0

    #@c
    .line 260
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
    .line 263
    return-object v0

    #@14
    .line 258
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
    .line 187
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 188
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    #@6
    move-result-object v0

    #@7
    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@9
    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    #@b
    .line 186
    return-void
.end method

.method dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 193
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 194
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 195
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@11
    .line 194
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 191
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 249
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 250
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 251
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    #@11
    .line 250
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 247
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 220
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 221
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 222
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 223
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    #@11
    .line 222
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 219
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 211
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 212
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 213
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 214
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    #@11
    .line 213
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 210
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
    .line 238
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 239
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 240
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 241
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@11
    .line 240
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 237
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 202
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 203
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 204
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 205
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    #@11
    .line 204
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 201
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 229
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 230
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 231
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 232
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    #@11
    .line 231
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 228
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
    .line 278
    monitor-enter p0

    #@1
    .line 279
    :try_start_0
    iget-object v2, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v2, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 280
    return-void

    #@7
    .line 282
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
    .line 284
    if-eqz v0, :cond_1

    #@10
    .line 285
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@12
    if-ge v1, v2, :cond_1

    #@14
    .line 286
    aget-object v2, v0, v1

    #@16
    check-cast v2, Landroid/app/Application$OnProvideAssistDataListener;

    #@18
    invoke-interface {v2, p1, p2}, Landroid/app/Application$OnProvideAssistDataListener;->onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@1b
    .line 285
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 278
    .end local v0    # "callbacks":[Ljava/lang/Object;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2

    #@21
    .line 276
    .restart local v0    # "callbacks":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 110
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 111
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 112
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/content/ComponentCallbacks;

    #@e
    invoke-interface {v2, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@11
    .line 111
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 108
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    #@0
    .prologue
    .line 94
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 120
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@6
    .line 121
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 122
    aget-object v2, v0, v1

    #@c
    check-cast v2, Landroid/content/ComponentCallbacks;

    #@e
    invoke-interface {v2}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    #@11
    .line 121
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 118
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    #@0
    .prologue
    .line 104
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 130
    .local v1, "callbacks":[Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@6
    .line 131
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@8
    if-ge v2, v3, :cond_1

    #@a
    .line 132
    aget-object v0, v1, v2

    #@c
    .line 133
    .local v0, "c":Ljava/lang/Object;
    instance-of v3, v0, Landroid/content/ComponentCallbacks2;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 134
    check-cast v0, Landroid/content/ComponentCallbacks2;

    #@12
    .end local v0    # "c":Ljava/lang/Object;
    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    #@15
    .line 131
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 128
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 152
    return-void

    #@a
    .line 153
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
    .line 141
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 140
    return-void

    #@a
    .line 141
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
    .line 165
    monitor-enter p0

    #@1
    .line 166
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@c
    .line 169
    :cond_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 164
    return-void

    #@13
    .line 165
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
    .line 159
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 158
    return-void

    #@a
    .line 159
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
    .line 147
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 148
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 146
    return-void

    #@a
    .line 147
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
    .line 174
    monitor-enter p0

    #@1
    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 176
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 173
    return-void

    #@c
    .line 174
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
