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
.field private final mMainThread:Landroid/app/ActivityThread;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1992
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    #@3
    .line 1993
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/ActivityThread;

    #@9
    iput-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    #@b
    .line 1994
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/os/UserHandle;

    #@11
    iput-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    #@13
    .line 1991
    return-void
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2006
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    #@2
    .line 2007
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 2008
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x1

    #@b
    .line 2006
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1999
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    #@2
    .line 2000
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 2001
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x1

    #@b
    .line 1999
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2018
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    #@2
    .line 2019
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 2020
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x0

    #@b
    .line 2018
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 2035
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    #@2
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    #@9
    .line 2034
    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 2
    .param p1, "provider"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 2013
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .locals 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 2025
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected resolveUserIdFromAuthority(Ljava/lang/String;)I
    .locals 1
    .param p1, "auth"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2040
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    #@2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v0

    #@6
    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .locals 3
    .param p1, "icp"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 2030
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    #@2
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    #@a
    .line 2029
    return-void
.end method
