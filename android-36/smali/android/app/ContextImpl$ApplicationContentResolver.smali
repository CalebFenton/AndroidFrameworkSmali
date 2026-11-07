.class final Landroid/app/ContextImpl$ApplicationContentResolver;
.super Landroid/content/ContentResolver;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationContentResolver"
.end annotation


# instance fields
.field private final greylist mMainThread:Landroid/app/ActivityThread;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/ActivityThread;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;

    .line 3840
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 3841
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 3842
    return-void
.end method


# virtual methods
.method protected greylist-max-o acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .line 3854
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 3855
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3856
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    move-result v2

    .line 3854
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected greylist acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .line 3847
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 3848
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3849
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    move-result v2

    .line 3847
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .line 3866
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 3867
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3868
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    move-result v2

    .line 3866
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .registers 4
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .line 3883
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 3884
    return-void
.end method

.method public greylist-max-o releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 4
    .param p1, "provider"    # Landroid/content/IContentProvider;

    .line 3861
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .registers 4
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .line 3873
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o resolveUserIdFromAuthority(Ljava/lang/String;)I
    .registers 3
    .param p1, "auth"    # Ljava/lang/String;

    .line 3888
    invoke-virtual {p0}, Landroid/app/ContextImpl$ApplicationContentResolver;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o unstableProviderDied(Landroid/content/IContentProvider;)V
    .registers 5
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .line 3878
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 3879
    return-void
.end method
