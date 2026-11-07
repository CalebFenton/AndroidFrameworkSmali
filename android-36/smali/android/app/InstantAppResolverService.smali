.class public abstract Landroid/app/InstantAppResolverService;
.super Landroid/app/Service;
.source "InstantAppResolverService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;,
        Landroid/app/InstantAppResolverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG_INSTANT:Z

.field public static final greylist-max-o EXTRA_RESOLVE_INFO:Ljava/lang/String; = "android.app.extra.RESOLVE_INFO"

.field public static final greylist-max-o EXTRA_SEQUENCE:Ljava/lang/String; = "android.app.extra.SEQUENCE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_INSTANT()Z
    .registers 1

    sget-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_INSTANT:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .line 263
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 264
    new-instance v0, Landroid/app/InstantAppResolverService$ServiceHandler;

    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/InstantAppResolverService$ServiceHandler;-><init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    .line 265
    return-void
.end method

.method greylist-max-o getLooper()Landroid/os/Looper;
    .registers 2

    .line 258
    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 269
    new-instance v0, Landroid/app/InstantAppResolverService$1;

    invoke-direct {v0, p0}, Landroid/app/InstantAppResolverService$1;-><init>(Landroid/app/InstantAppResolverService;)V

    return-object v0
.end method

.method public whitelist onGetInstantAppIntentFilter(Landroid/content/Intent;[ILandroid/os/UserHandle;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .registers 6
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "hostDigestPrefix"    # [I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-virtual {p0, p1, p2, p4, p5}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 215
    return-void
.end method

.method public whitelist onGetInstantAppIntentFilter(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .registers 7
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "hostDigestPrefix"    # [I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    const-string v0, "PackageManager"

    const-string v1, "New onGetInstantAppIntentFilter is not overridden"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 152
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    goto :goto_18

    .line 154
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    .line 156
    :goto_18
    return-void
.end method

.method public whitelist onGetInstantAppIntentFilter(Landroid/content/pm/InstantAppRequestInfo;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .registers 9
    .param p1, "request"    # Landroid/content/pm/InstantAppRequestInfo;
    .param p2, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    .line 250
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getHostDigestPrefix()[I

    move-result-object v2

    .line 251
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 250
    move-object v0, p0

    move-object v5, p2

    .end local p2    # "callback":Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .local v5, "callback":Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    invoke-virtual/range {v0 .. v5}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter(Landroid/content/Intent;[ILandroid/os/UserHandle;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 252
    return-void
.end method

.method public whitelist onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .registers 6
    .param p1, "digestPrefix"    # [I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must define onGetInstantAppIntentFilter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onGetInstantAppResolveInfo(Landroid/content/Intent;[ILandroid/os/UserHandle;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .registers 6
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "hostDigestPrefix"    # [I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    invoke-virtual {p0, p1, p2, p4, p5}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 188
    return-void
.end method

.method public whitelist onGetInstantAppResolveInfo(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .registers 6
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "hostDigestPrefix"    # [I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 120
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    goto :goto_11

    .line 122
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    .line 124
    :goto_11
    return-void
.end method

.method public whitelist onGetInstantAppResolveInfo(Landroid/content/pm/InstantAppRequestInfo;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .registers 9
    .param p1, "request"    # Landroid/content/pm/InstantAppRequestInfo;
    .param p2, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    .line 233
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getHostDigestPrefix()[I

    move-result-object v2

    .line 234
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 233
    move-object v0, p0

    move-object v5, p2

    .end local p2    # "callback":Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .local v5, "callback":Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    invoke-virtual/range {v0 .. v5}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo(Landroid/content/Intent;[ILandroid/os/UserHandle;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 235
    return-void
.end method

.method public whitelist onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .registers 6
    .param p1, "digestPrefix"    # [I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must define onGetInstantAppResolveInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
