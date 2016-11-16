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


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 61
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p1, v0, v1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    #@6
    .line 60
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    #@0
    .prologue
    .line 64
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    #@3
    .line 45
    new-instance v0, Landroid/app/FragmentManagerImpl;

    #@5
    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@a
    .line 66
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    #@c
    .line 67
    iput-object p2, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@e
    .line 68
    iput-object p3, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    #@10
    .line 69
    iput p4, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    #@12
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    #@0
    .prologue
    .line 57
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    #@4
    .line 56
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 1

    #@0
    .prologue
    .line 271
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 272
    return-void

    #@5
    .line 274
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@7
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    #@a
    .line 270
    return-void
.end method

.method doLoaderRetain()V
    .locals 1

    #@0
    .prologue
    .line 264
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 265
    return-void

    #@5
    .line 267
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@7
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    #@a
    .line 263
    return-void
.end method

.method doLoaderStart()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v3, 0x1

    #@1
    .line 231
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 232
    return-void

    #@6
    .line 234
    :cond_0
    iput-boolean v3, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    #@8
    .line 236
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 237
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@e
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    #@11
    .line 241
    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    #@13
    .line 230
    return-void

    #@14
    .line 238
    :cond_2
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 239
    const-string/jumbo v0, "(root)"

    #@1b
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@24
    goto :goto_0
.end method

.method doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    #@0
    .prologue
    .line 245
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iput-boolean p1, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    #@2
    .line 247
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 248
    return-void

    #@7
    .line 251
    :cond_0
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    #@9
    if-nez v0, :cond_1

    #@b
    .line 252
    return-void

    #@c
    .line 254
    :cond_1
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    #@f
    .line 256
    if-eqz p1, :cond_2

    #@11
    .line 257
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@13
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    #@16
    .line 244
    :goto_0
    return-void

    #@17
    .line 259
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@19
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    #@1c
    goto :goto_0
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 352
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mLoadersStarted="

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 353
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    #@b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@e
    .line 354
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    const-string/jumbo v0, "Loader Manager "

    #@18
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    .line 356
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1d
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    .line 357
    const-string/jumbo v0, ":"

    #@2b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 358
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    const-string/jumbo v2, "  "

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@47
    .line 351
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 195
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 199
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;
    .locals 1

    #@0
    .prologue
    .line 207
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 203
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    #@0
    .prologue
    .line 293
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 294
    new-instance v1, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@9
    iput-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@b
    .line 296
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/app/LoaderManagerImpl;

    #@13
    .line 297
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-nez v0, :cond_2

    #@15
    .line 298
    if-eqz p3, :cond_1

    #@17
    .line 299
    new-instance v0, Landroid/app/LoaderManagerImpl;

    #@19
    .end local v0    # "lm":Landroid/app/LoaderManagerImpl;
    invoke-direct {v0, p1, p0, p2}, Landroid/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V

    #@1c
    .line 300
    .restart local v0    # "lm":Landroid/app/LoaderManagerImpl;
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 305
    :cond_1
    :goto_0
    return-object v0

    #@22
    .line 303
    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    #@25
    goto :goto_0
.end method

.method getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 211
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 212
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@7
    return-object v0

    #@8
    .line 214
    :cond_0
    iput-boolean v2, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    #@a
    .line 215
    const-string/jumbo v0, "(root)"

    #@d
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    #@f
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@15
    .line 216
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@17
    return-object v0
.end method

.method getRetainLoaders()Z
    .locals 1

    #@0
    .prologue
    .line 191
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    #@2
    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 222
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/LoaderManagerImpl;

    #@c
    .line 223
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-eqz v0, :cond_0

    #@e
    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 219
    .end local v0    # "lm":Landroid/app/LoaderManagerImpl;
    :cond_0
    :goto_0
    return-void

    #@13
    .line 224
    .restart local v0    # "lm":Landroid/app/LoaderManagerImpl;
    :cond_1
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    #@16
    .line 225
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 176
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 81
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 182
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    #@0
    .prologue
    .line 96
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "layout_inflater"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/view/LayoutInflater;

    #@b
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    #@0
    .prologue
    .line 168
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    #@2
    return v0
.end method

.method public onHasView()Z
    .locals 1

    #@0
    .prologue
    .line 187
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    #@0
    .prologue
    .line 161
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onInvalidateOptionsMenu()V
    .locals 0

    #@0
    .prologue
    .line 118
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 154
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 88
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 127
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    #@1
    if-eq p3, v0, :cond_0

    #@3
    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    .line 129
    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    #@8
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 131
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@11
    .line 126
    return-void
.end method

.method public onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7
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

    #@0
    .prologue
    .line 141
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    #@1
    if-eq p3, v0, :cond_0

    #@3
    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    .line 143
    const-string/jumbo v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    #@8
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 145
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@e
    move-object v1, p2

    #@f
    move-object v2, p4

    #@10
    move v3, p5

    #@11
    move v4, p6

    #@12
    move v5, p7

    #@13
    move-object v6, p8

    #@14
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    #@17
    .line 140
    return-void
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .locals 1

    #@0
    .prologue
    .line 103
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method reportLoaderStart()V
    .locals 5

    #@0
    .prologue
    .line 278
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@2
    if-eqz v4, :cond_1

    #@4
    .line 279
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v0

    #@a
    .line 280
    .local v0, "N":I
    new-array v3, v0, [Landroid/app/LoaderManagerImpl;

    #@c
    .line 281
    .local v3, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v1, v0, -0x1

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@10
    .line 282
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Landroid/app/LoaderManagerImpl;

    #@18
    aput-object v4, v3, v1

    #@1a
    .line 281
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 284
    :cond_0
    const/4 v1, 0x0

    #@1e
    :goto_1
    if-ge v1, v0, :cond_1

    #@20
    .line 285
    aget-object v2, v3, v1

    #@22
    .line 286
    .local v2, "lm":Landroid/app/LoaderManagerImpl;
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->finishRetain()V

    #@25
    .line 287
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    #@28
    .line 284
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 277
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/app/LoaderManagerImpl;
    .end local v3    # "loaders":[Landroid/app/LoaderManagerImpl;
    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 3
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
    .line 343
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-eqz p1, :cond_0

    #@2
    .line 344
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v0

    #@7
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 345
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroid/app/LoaderManagerImpl;

    #@f
    invoke-virtual {v2, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    #@12
    .line 344
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 348
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@17
    .line 342
    return-void
.end method

.method retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 9
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
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v8, 0x0

    #@1
    .line 309
    const/4 v5, 0x0

    #@2
    .line 310
    .local v5, "retainLoaders":Z
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@4
    if-eqz v6, :cond_4

    #@6
    .line 313
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v0

    #@c
    .line 314
    .local v0, "N":I
    new-array v4, v0, [Landroid/app/LoaderManagerImpl;

    #@e
    .line 315
    .local v4, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v2, v0, -0x1

    #@10
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@12
    .line 316
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Landroid/app/LoaderManagerImpl;

    #@1a
    aput-object v6, v4, v2

    #@1c
    .line 315
    add-int/lit8 v2, v2, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    #@22
    move-result v1

    #@23
    .line 319
    .local v1, "doRetainLoaders":Z
    const/4 v2, 0x0

    #@24
    :goto_1
    if-ge v2, v0, :cond_4

    #@26
    .line 320
    aget-object v3, v4, v2

    #@28
    .line 321
    .local v3, "lm":Landroid/app/LoaderManagerImpl;
    iget-boolean v6, v3, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    #@2a
    if-nez v6, :cond_2

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 322
    iget-boolean v6, v3, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@30
    if-nez v6, :cond_1

    #@32
    .line 323
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doStart()V

    #@35
    .line 325
    :cond_1
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doRetain()V

    #@38
    .line 327
    :cond_2
    iget-boolean v6, v3, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    #@3a
    if-eqz v6, :cond_3

    #@3c
    .line 328
    const/4 v5, 0x1

    #@3d
    .line 319
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 330
    :cond_3
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    #@43
    .line 331
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@45
    iget-object v7, v3, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    #@47
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    goto :goto_2

    #@4b
    .line 336
    .end local v0    # "N":I
    .end local v1    # "doRetainLoaders":Z
    .end local v2    # "i":I
    .end local v3    # "lm":Landroid/app/LoaderManagerImpl;
    .end local v4    # "loaders":[Landroid/app/LoaderManagerImpl;
    :cond_4
    if-eqz v5, :cond_5

    #@4d
    .line 337
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    #@4f
    return-object v6

    #@50
    .line 339
    :cond_5
    return-object v8
.end method
