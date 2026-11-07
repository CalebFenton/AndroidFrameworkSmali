.class public Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ForceShowNavBarSettingsObserver.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mOnChangeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 42
    iput-object p2, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist isEnabled()Z
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "nav_bar_force_visible"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v3, v1

    :cond_12
    return v3
.end method

.method public blacklist onChange(ZLjava/util/Collection;II)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 68
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p4, v0, :cond_7

    .line 69
    return-void

    .line 72
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 75
    :cond_10
    return-void
.end method

.method public blacklist register()V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "r":Landroid/content/ContentResolver;
    nop

    .line 55
    const-string v1, "nav_bar_force_visible"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 54
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 57
    return-void
.end method

.method public blacklist setOnChangeRunnable(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method public blacklist unregister()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 64
    return-void
.end method
