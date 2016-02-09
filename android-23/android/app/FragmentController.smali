.class public Landroid/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 51
    .local p1, "callbacks":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@5
    .line 51
    return-void
.end method

.method public static final createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;)",
            "Landroid/app/FragmentController;"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p0, "callbacks":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    new-instance v0, Landroid/app/FragmentController;

    #@2
    invoke-direct {v0, p0}, Landroid/app/FragmentController;-><init>(Landroid/app/FragmentHostCallback;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public attachHost(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "parent"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    .line 83
    iget-object v1, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@6
    iget-object v2, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    .line 82
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    #@b
    .line 81
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@7
    .line 151
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@7
    .line 228
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public dispatchCreate()V
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    #@7
    .line 140
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    #@7
    .line 217
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    #@7
    .line 206
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    #@7
    .line 240
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@7
    .line 313
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    #@7
    .line 184
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public dispatchResume()V
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    #@7
    .line 173
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    #@7
    .line 162
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    #@7
    .line 195
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    #@7
    .line 252
    return-void
.end method

.method public doLoaderDestroy()V
    .locals 1

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->doLoaderDestroy()V

    #@5
    .line 349
    return-void
.end method

.method public doLoaderStart()V
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->doLoaderStart()V

    #@5
    .line 331
    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->doLoaderStop(Z)V

    #@5
    .line 342
    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentHostCallback;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 381
    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@7
    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->reportLoaderStart()V

    #@5
    .line 356
    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    .local p2, "nonConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    #@7
    .line 121
    return-void
.end method

.method public restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 375
    .local p1, "loaderManagers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    #@5
    .line 374
    return-void
.end method

.method public retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
