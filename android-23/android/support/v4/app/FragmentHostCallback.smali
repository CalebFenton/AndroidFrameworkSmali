.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    #@0
    .prologue
    .line 58
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    #@3
    .line 44
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@a
    .line 60
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    #@c
    .line 61
    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@e
    .line 62
    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    #@10
    .line 63
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    #@12
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    #@0
    .prologue
    .line 51
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    #@4
    .line 50
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    #@0
    .prologue
    .line 55
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    #@6
    .line 54
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 1

    #@0
    .prologue
    .line 244
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 245
    return-void

    #@5
    .line 247
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    #@a
    .line 243
    return-void
.end method

.method doLoaderRetain()V
    .locals 1

    #@0
    .prologue
    .line 237
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 238
    return-void

    #@5
    .line 240
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    #@a
    .line 236
    return-void
.end method

.method doLoaderStart()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v3, 0x1

    #@1
    .line 201
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 202
    return-void

    #@6
    .line 204
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    #@8
    .line 206
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 207
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    #@11
    .line 215
    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    #@13
    .line 200
    return-void

    #@14
    .line 208
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 209
    const-string/jumbo v0, "(root)"

    #@1b
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@24
    .line 211
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@26
    if-eqz v0, :cond_1

    #@28
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@2a
    iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 212
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@30
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    #@33
    goto :goto_0
.end method

.method doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    #@0
    .prologue
    .line 220
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 221
    return-void

    #@5
    .line 224
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    #@7
    if-nez v0, :cond_1

    #@9
    .line 225
    return-void

    #@a
    .line 227
    :cond_1
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    #@d
    .line 229
    if-eqz p1, :cond_2

    #@f
    .line 230
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@11
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    #@14
    .line 219
    :goto_0
    return-void

    #@15
    .line 232
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@17
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    #@1a
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
    .line 313
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mLoadersStarted="

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    #@b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@e
    .line 315
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    const-string/jumbo v0, "Loader Manager "

    #@18
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    .line 317
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

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
    .line 318
    const-string/jumbo v0, ":"

    #@2b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 319
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

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
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@47
    .line 312
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 162
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 166
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .locals 1

    #@0
    .prologue
    .line 174
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 170
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    #@0
    .prologue
    .line 266
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 267
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    #@6
    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    #@9
    iput-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@b
    .line 269
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@d
    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    #@13
    .line 270
    .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    if-nez v0, :cond_2

    #@15
    .line 271
    if-eqz p3, :cond_1

    #@17
    .line 272
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    #@19
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    #@1c
    .line 273
    .restart local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@1e
    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 278
    :cond_1
    :goto_0
    return-object v0

    #@22
    .line 276
    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V

    #@25
    goto :goto_0
.end method

.method getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 178
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 179
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@7
    return-object v0

    #@8
    .line 181
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    #@a
    .line 182
    const-string/jumbo v0, "(root)"

    #@d
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    #@f
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@15
    .line 183
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@17
    return-object v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 189
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@6
    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    #@c
    .line 190
    .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    if-eqz v0, :cond_0

    #@e
    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 186
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    :cond_0
    :goto_0
    return-void

    #@13
    .line 191
    .restart local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    #@16
    .line 192
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@18
    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    goto :goto_0
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 197
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
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
    .line 75
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    .prologue
    .line 153
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

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
    .line 90
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

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
    .line 147
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    #@2
    return v0
.end method

.method public onHasView()Z
    .locals 1

    #@0
    .prologue
    .line 158
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    #@0
    .prologue
    .line 140
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 125
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 82
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 133
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 113
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    #@1
    if-eq p3, v0, :cond_0

    #@3
    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    .line 115
    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    #@8
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 117
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@11
    .line 112
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    #@0
    .prologue
    .line 105
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method reportLoaderStart()V
    .locals 5

    #@0
    .prologue
    .line 251
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v4, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    if-eqz v4, :cond_1

    #@4
    .line 252
    iget-object v4, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@6
    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    #@9
    move-result v0

    #@a
    .line 253
    .local v0, "N":I
    new-array v3, v0, [Landroid/support/v4/app/LoaderManagerImpl;

    #@c
    .line 254
    .local v3, "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v1, v0, -0x1

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@10
    .line 255
    iget-object v4, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@12
    invoke-virtual {v4, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Landroid/support/v4/app/LoaderManagerImpl;

    #@18
    aput-object v4, v3, v1

    #@1a
    .line 254
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 257
    :cond_0
    const/4 v1, 0x0

    #@1e
    :goto_1
    if-ge v1, v0, :cond_1

    #@20
    .line 258
    aget-object v2, v3, v1

    #@22
    .line 259
    .local v2, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    #@25
    .line 260
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    #@28
    .line 257
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 250
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    .end local v3    # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 309
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    .line 308
    return-void
.end method

.method retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v7, 0x0

    #@1
    .line 282
    const/4 v4, 0x0

    #@2
    .line 283
    .local v4, "retainLoaders":Z
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@4
    if-eqz v5, :cond_2

    #@6
    .line 286
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@8
    invoke-virtual {v5}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    #@b
    move-result v0

    #@c
    .line 287
    .local v0, "N":I
    new-array v3, v0, [Landroid/support/v4/app/LoaderManagerImpl;

    #@e
    .line 288
    .local v3, "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v1, v0, -0x1

    #@10
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@12
    .line 289
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@14
    invoke-virtual {v5, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    check-cast v5, Landroid/support/v4/app/LoaderManagerImpl;

    #@1a
    aput-object v5, v3, v1

    #@1c
    .line 288
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 291
    :cond_0
    const/4 v1, 0x0

    #@20
    :goto_1
    if-ge v1, v0, :cond_2

    #@22
    .line 292
    aget-object v2, v3, v1

    #@24
    .line 293
    .local v2, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    iget-boolean v5, v2, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 294
    const/4 v4, 0x1

    #@29
    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 296
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    #@2f
    .line 297
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@31
    iget-object v6, v2, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    #@33
    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    goto :goto_2

    #@37
    .line 302
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    .end local v3    # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    :cond_2
    if-eqz v4, :cond_3

    #@39
    .line 303
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@3b
    return-object v5

    #@3c
    .line 305
    :cond_3
    return-object v7
.end method
