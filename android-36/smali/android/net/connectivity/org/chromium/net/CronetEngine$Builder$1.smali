.class Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$1;
.super Ljava/lang/Object;
.source "CronetEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->getEnabledCronetProviders(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;)I
    .registers 5
    .param p1, "p1"    # Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    .param p2, "p2"    # Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    .line 636
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    .line 637
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 636
    const-string v1, "Fallback-Cronet-Provider"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 638
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_10
    iget-object v0, p2, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    .line 641
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 642
    const/4 v0, -0x1

    return v0

    .line 645
    :cond_1e
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    .line 646
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 631
    check-cast p1, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    check-cast p2, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$1;->compare(Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;)I

    move-result p1

    return p1
.end method
