.class public abstract Landroid/app/FragmentHostCallback;
.super Landroid/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/FragmentContainer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist-max-o mAllLoaderManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCheckedForLoaderManager:Z

.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-o mFragmentManager:Landroid/app/FragmentManagerImpl;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mLoaderManager:Landroid/app/LoaderManagerImpl;

.field private greylist mLoadersStarted:Z

.field private greylist-max-o mRetainLoaders:Z

.field final greylist-max-o mWindowAnimations:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 69
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 70
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .line 73
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    .line 51
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 74
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 77
    iput p4, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .line 64
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 65
    :goto_9
    invoke-static {p1, p2}, Landroid/app/FragmentHostCallback;->chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    .line 64
    invoke-direct {p0, v0, p1, v1, p3}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 66
    return-void
.end method

.method private static greylist-max-o chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 85
    if-nez p1, :cond_c

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 86
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 87
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    return-object v1

    .line 89
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_c
    return-object p1
.end method


# virtual methods
.method greylist-max-o doLoaderDestroy()V
    .registers 2

    .line 306
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 307
    return-void

    .line 309
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 310
    return-void
.end method

.method greylist-max-o doLoaderRetain()V
    .registers 2

    .line 299
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 300
    return-void

    .line 302
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 303
    return-void
.end method

.method greylist-max-o doLoaderStart()V
    .registers 5

    .line 266
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_5

    .line 267
    return-void

    .line 269
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 271
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v1, :cond_12

    .line 272
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl;->doStart()V

    goto :goto_21

    .line 273
    :cond_12
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_21

    .line 274
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v2, 0x0

    const-string v3, "(root)"

    invoke-virtual {p0, v3, v1, v2}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 276
    :cond_21
    :goto_21
    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 277
    return-void
.end method

.method greylist-max-o doLoaderStop(Z)V
    .registers 3
    .param p1, "retain"    # Z

    .line 280
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iput-boolean p1, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 282
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    .line 283
    return-void

    .line 286
    :cond_7
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_c

    .line 287
    return-void

    .line 289
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 291
    if-eqz p1, :cond_17

    .line 292
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    goto :goto_1c

    .line 294
    :cond_17
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    .line 296
    :goto_1c
    return-void
.end method

.method greylist-max-o dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 385
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 387
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_44

    .line 388
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 393
    :cond_44
    return-void
.end method

.method greylist-max-o getActivity()Landroid/app/Activity;
    .registers 2

    .line 230
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 234
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method greylist-max-o getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;
    .registers 2

    .line 242
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method greylist-max-o getHandler()Landroid/os/Handler;
    .registers 2

    .line 238
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method greylist-max-o getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;
    .registers 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .line 328
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 329
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 331
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 332
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-nez v0, :cond_23

    if-eqz p3, :cond_23

    .line 333
    new-instance v1, Landroid/app/LoaderManagerImpl;

    invoke-direct {v1, p1, p0, p2}, Landroid/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V

    move-object v0, v1

    .line 334
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 335
    :cond_23
    if-eqz p2, :cond_2e

    if-eqz v0, :cond_2e

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_2e

    .line 336
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 338
    :cond_2e
    :goto_2e
    return-object v0
.end method

.method greylist-max-o getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;
    .registers 4

    .line 246
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_7

    .line 247
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0

    .line 249
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 250
    const-string v1, "(root)"

    iget-boolean v2, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 251
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0
.end method

.method greylist-max-o getRetainLoaders()Z
    .registers 2

    .line 226
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method greylist-max-o inactivateFragment(Ljava/lang/String;)V
    .registers 4
    .param p1, "who"    # Ljava/lang/String;

    .line 256
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1a

    .line 257
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 258
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1a

    .line 259
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 260
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v0    # "lm":Landroid/app/LoaderManagerImpl;
    :cond_1a
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 212
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public whitelist onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 103
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public whitelist onFindViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 217
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public whitelist onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .line 117
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist onGetWindowAnimations()I
    .registers 2

    .line 203
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public whitelist onHasView()Z
    .registers 2

    .line 222
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onHasWindowAnimations()Z
    .registers 2

    .line 196
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onInvalidateOptionsMenu()V
    .registers 1

    .line 140
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public whitelist onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 190
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public whitelist onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 109
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .line 162
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 166
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 167
    return-void

    .line 163
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 148
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 152
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void

    .line 149
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 176
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_10

    .line 180
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 182
    return-void

    .line 177
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onUseFragmentManagerInflaterFactory()Z
    .registers 2

    .line 124
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o reportLoaderStart()V
    .registers 5

    .line 313
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2b

    .line 314
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 315
    .local v0, "N":I
    new-array v1, v0, [Landroid/app/LoaderManagerImpl;

    .line 316
    .local v1, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_1d

    .line 317
    iget-object v3, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoaderManagerImpl;

    aput-object v3, v1, v2

    .line 316
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 319
    .end local v2    # "i":I
    :cond_1d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1e
    if-ge v2, v0, :cond_2b

    .line 320
    aget-object v3, v1, v2

    .line 321
    .local v3, "lm":Landroid/app/LoaderManagerImpl;
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->finishRetain()V

    .line 322
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 319
    .end local v3    # "lm":Landroid/app/LoaderManagerImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 325
    .end local v0    # "N":I
    .end local v1    # "loaders":[Landroid/app/LoaderManagerImpl;
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method greylist-max-o restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .line 376
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-eqz p1, :cond_15

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "N":I
    :goto_7
    if-ge v0, v1, :cond_15

    .line 378
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 381
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_15
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 382
    return-void
.end method

.method greylist-max-o retainLoaderNonConfig()Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .line 342
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    .line 343
    .local v0, "retainLoaders":Z
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4a

    .line 346
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 347
    .local v1, "N":I
    new-array v2, v1, [Landroid/app/LoaderManagerImpl;

    .line 348
    .local v2, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_1e

    .line 349
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl;

    aput-object v4, v2, v3

    .line 348
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 351
    .end local v3    # "i":I
    :cond_1e
    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v3

    .line 352
    .local v3, "doRetainLoaders":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v1, :cond_4a

    .line 353
    aget-object v5, v2, v4

    .line 354
    .local v5, "lm":Landroid/app/LoaderManagerImpl;
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_37

    if-eqz v3, :cond_37

    .line 355
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_34

    .line 356
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 358
    :cond_34
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 360
    :cond_37
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3d

    .line 361
    const/4 v0, 0x1

    goto :goto_47

    .line 363
    :cond_3d
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 364
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v5    # "lm":Landroid/app/LoaderManagerImpl;
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 369
    .end local v1    # "N":I
    .end local v2    # "loaders":[Landroid/app/LoaderManagerImpl;
    .end local v3    # "doRetainLoaders":Z
    .end local v4    # "i":I
    :cond_4a
    if-eqz v0, :cond_4f

    .line 370
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-object v1

    .line 372
    :cond_4f
    const/4 v1, 0x0

    return-object v1
.end method
