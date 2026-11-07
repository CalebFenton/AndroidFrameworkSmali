.class public Landroid/webkit/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebStorage$Origin;,
        Landroid/webkit/WebStorage$QuotaUpdater;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/webkit/WebStorage;
    .registers 1

    .line 183
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getWebStorage()Landroid/webkit/WebStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist deleteAllData()V
    .registers 1

    .line 175
    return-void
.end method

.method public whitelist deleteOrigin(Ljava/lang/String;)V
    .registers 2
    .param p1, "origin"    # Ljava/lang/String;

    .line 167
    return-void
.end method

.method public whitelist getOrigins(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/util/Map;>;"
    return-void
.end method

.method public whitelist getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    return-void
.end method

.method public whitelist getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    return-void
.end method

.method public whitelist setQuotaForOrigin(Ljava/lang/String;J)V
    .registers 4
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    return-void
.end method
