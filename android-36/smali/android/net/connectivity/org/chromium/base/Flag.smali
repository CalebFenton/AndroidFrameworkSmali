.class public abstract Landroid/net/connectivity/org/chromium/base/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sFlagsCreatedForTesting:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/base/Flag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final blacklist mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

.field protected final blacklist mFeatureName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    nop

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/Flag;->sFlagsCreatedForTesting:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;)V
    .registers 5
    .param p1, "featureMap"    # Landroid/net/connectivity/org/chromium/base/FeatureMap;
    .param p2, "featureName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/Flag;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    .line 34
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/Flag;->mFeatureName:Ljava/lang/String;

    .line 36
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz v0, :cond_16

    .line 37
    sget-object v0, Landroid/net/connectivity/org/chromium/base/Flag;->sFlagsCreatedForTesting:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/Flag;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/Flag;

    .line 38
    .local v0, "previous":Landroid/net/connectivity/org/chromium/base/Flag;
    nop

    .line 40
    .end local v0    # "previous":Landroid/net/connectivity/org/chromium/base/Flag;
    :cond_16
    return-void
.end method

.method static synthetic blacklist lambda$useTemporaryFlagsCreatedForTesting$0(Ljava/util/HashMap;)V
    .registers 1
    .param p0, "oldValues"    # Ljava/util/HashMap;

    .line 82
    sput-object p0, Landroid/net/connectivity/org/chromium/base/Flag;->sFlagsCreatedForTesting:Ljava/util/HashMap;

    return-void
.end method

.method public static blacklist resetAllInMemoryCachedValuesForTesting()V
    .registers 2

    .line 70
    sget-object v0, Landroid/net/connectivity/org/chromium/base/Flag;->sFlagsCreatedForTesting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Flag;

    .line 71
    .local v1, "flag":Landroid/net/connectivity/org/chromium/base/Flag;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/Flag;->clearInMemoryCachedValueForTesting()V

    .line 72
    .end local v1    # "flag":Landroid/net/connectivity/org/chromium/base/Flag;
    goto :goto_a

    .line 73
    :cond_1a
    return-void
.end method

.method public static blacklist useTemporaryFlagsCreatedForTesting()V
    .registers 2

    .line 80
    sget-object v0, Landroid/net/connectivity/org/chromium/base/Flag;->sFlagsCreatedForTesting:Ljava/util/HashMap;

    .line 81
    .local v0, "oldValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/Flag;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/chromium/base/Flag;->sFlagsCreatedForTesting:Ljava/util/HashMap;

    .line 82
    new-instance v1, Landroid/net/connectivity/org/chromium/base/Flag$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/Flag$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashMap;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected abstract blacklist clearInMemoryCachedValueForTesting()V
.end method

.method public blacklist getFeatureMapForTesting()Landroid/net/connectivity/org/chromium/base/FeatureMap;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Flag;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    return-object v0
.end method

.method public blacklist getFeatureName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Flag;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract blacklist isEnabled()Z
.end method
