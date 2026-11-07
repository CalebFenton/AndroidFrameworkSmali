.class public abstract Landroid/net/connectivity/org/chromium/base/FeatureParam;
.super Ljava/lang/Object;
.source "FeatureParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sParamsForTesting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/connectivity/org/chromium/base/FeatureParam<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final blacklist mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final blacklist mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

.field protected final blacklist mFeatureName:Ljava/lang/String;

.field protected blacklist mInMemoryCachedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final blacklist mParamName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    nop

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->sParamsForTesting:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "featureMap"    # Landroid/net/connectivity/org/chromium/base/FeatureMap;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/FeatureMap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/FeatureParam;, "Landroid/net/connectivity/org/chromium/base/FeatureParam<TT;>;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    nop

    .line 44
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    .line 45
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mFeatureName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mParamName:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mDefaultValue:Ljava/lang/Object;

    .line 49
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz v0, :cond_22

    .line 50
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->sParamsForTesting:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mFeatureName:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mParamName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/FeatureParam;

    .line 52
    .local v0, "previous":Landroid/net/connectivity/org/chromium/base/FeatureParam;, "Landroid/net/connectivity/org/chromium/base/FeatureParam<*>;"
    nop

    .line 56
    .end local v0    # "previous":Landroid/net/connectivity/org/chromium/base/FeatureParam;, "Landroid/net/connectivity/org/chromium/base/FeatureParam<*>;"
    :cond_22
    return-void
.end method

.method static synthetic blacklist lambda$useTemporaryParamsCreatedForTesting$0(Ljava/util/Map;)V
    .registers 1
    .param p0, "oldValues"    # Ljava/util/Map;

    .line 87
    sput-object p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->sParamsForTesting:Ljava/util/Map;

    return-void
.end method

.method public static blacklist resetAllInMemoryCachedValuesForTesting()V
    .registers 3

    .line 74
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->sParamsForTesting:Ljava/util/Map;

    if-nez v0, :cond_5

    return-void

    .line 75
    :cond_5
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->sParamsForTesting:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/FeatureParam;

    .line 76
    .local v1, "param":Landroid/net/connectivity/org/chromium/base/FeatureParam;, "Landroid/net/connectivity/org/chromium/base/FeatureParam<*>;"
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mInMemoryCachedValue:Ljava/lang/Object;

    .line 77
    .end local v1    # "param":Landroid/net/connectivity/org/chromium/base/FeatureParam;, "Landroid/net/connectivity/org/chromium/base/FeatureParam<*>;"
    goto :goto_f

    .line 78
    :cond_1f
    return-void
.end method

.method public static blacklist useTemporaryParamsCreatedForTesting()V
    .registers 2

    .line 85
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->sParamsForTesting:Ljava/util/Map;

    .line 86
    .local v0, "oldValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Landroid/net/connectivity/org/chromium/base/FeatureParam<*>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/chromium/base/FeatureParam;->sParamsForTesting:Ljava/util/Map;

    .line 87
    new-instance v1, Landroid/net/connectivity/org/chromium/base/FeatureParam$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/FeatureParam$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method


# virtual methods
.method public blacklist getFeatureName()Ljava/lang/String;
    .registers 2

    .line 60
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/FeatureParam;, "Landroid/net/connectivity/org/chromium/base/FeatureParam<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 65
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/FeatureParam;, "Landroid/net/connectivity/org/chromium/base/FeatureParam<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/FeatureParam;->mParamName:Ljava/lang/String;

    return-object v0
.end method
