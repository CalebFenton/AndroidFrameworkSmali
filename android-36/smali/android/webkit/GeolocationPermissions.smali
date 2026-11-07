.class public Landroid/webkit/GeolocationPermissions;
.super Ljava/lang/Object;
.source "GeolocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/GeolocationPermissions$Callback;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/webkit/GeolocationPermissions;
    .registers 1

    .line 72
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist allow(Ljava/lang/String;)V
    .registers 2
    .param p1, "origin"    # Ljava/lang/String;

    .line 124
    return-void
.end method

.method public whitelist clear(Ljava/lang/String;)V
    .registers 2
    .param p1, "origin"    # Ljava/lang/String;

    .line 115
    return-void
.end method

.method public whitelist clearAll()V
    .registers 1

    .line 131
    return-void
.end method

.method public whitelist getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public whitelist getOrigins(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 91
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    return-void
.end method
