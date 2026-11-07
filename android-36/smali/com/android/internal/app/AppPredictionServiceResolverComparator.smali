.class Lcom/android/internal/app/AppPredictionServiceResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "AppPredictionServiceResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;,
        Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "APSResolverComparator"


# instance fields
.field private final blacklist mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mModelBuilder:Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

.field private blacklist mSortingCallback:Lcom/android/internal/app/ResolverAppPredictorCallback;

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$91_k6ae69KavQ4O9N9Q1_cbSV3I(Lcom/android/internal/app/AppPredictionServiceResolverComparator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->lambda$setupFallbackModel$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jDQrq6cQvLRGpGsqkrQ55DTVl5s(Lcom/android/internal/app/AppPredictionServiceResolverComparator;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->lambda$doCompute$0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;Lcom/android/internal/app/ChooserActivityLogger;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;
    .param p4, "appPredictor"    # Landroid/app/prediction/AppPredictor;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/UserHandle;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 79
    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mIntent:Landroid/content/Intent;

    .line 81
    iput-object p4, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 82
    iput-object p5, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    .line 83
    iput-object p3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p6}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 86
    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;

    invoke-direct {v0, p4, p5}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;-><init>(Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mModelBuilder:Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;

    .line 87
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mModelBuilder:Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->buildFromRankedList(Ljava/util/List;)Lcom/android/internal/app/ResolverComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

    .line 88
    return-void
.end method

.method private blacklist handleResult(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "sortedAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 186
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mModelBuilder:Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->buildFromRankedList(Ljava/util/List;)Lcom/android/internal/app/ResolverComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

    .line 187
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->afterCompute()V

    .line 190
    :cond_19
    return-void
.end method

.method private synthetic blacklist lambda$doCompute$0(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .param p1, "targets"    # Ljava/util/List;
    .param p2, "sortedAppTargets"    # Ljava/util/List;

    .line 153
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "APSResolverComparator"

    if-eqz v0, :cond_11

    .line 154
    const-string v0, "AppPredictionService disabled. Using resolver."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->setupFallbackModel(Ljava/util/List;)V

    goto :goto_19

    .line 157
    :cond_11
    const-string v0, "AppPredictionService response received"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0, p2}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->handleResult(Ljava/util/List;)V

    .line 165
    :goto_19
    return-void
.end method

.method private synthetic blacklist lambda$setupFallbackModel$1()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private blacklist setupFallbackModel(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 180
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mModelBuilder:Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;

    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->buildFallbackModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

    .line 181
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->compute(Ljava/util/List;)V

    .line 182
    return-void
.end method


# virtual methods
.method blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 4
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 106
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparatorModel;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist destroy()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    if-eqz v0, :cond_16

    .line 93
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->destroy()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 97
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mModelBuilder:Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;

    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->buildFallbackModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

    .line 99
    :cond_16
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mSortingCallback:Lcom/android/internal/app/ResolverAppPredictorCallback;

    if-eqz v0, :cond_1f

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mSortingCallback:Lcom/android/internal/app/ResolverAppPredictorCallback;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverAppPredictorCallback;->destroy()V

    .line 102
    :cond_1f
    return-void
.end method

.method blacklist doCompute(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    return-void

    .line 138
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "appTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 140
    .local v2, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v3, Landroid/app/prediction/AppTarget$Builder;

    new-instance v4, Landroid/app/prediction/AppTargetId;

    iget-object v5, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 142
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 143
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v5, v6}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 145
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v3

    .line 140
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    goto :goto_16

    .line 149
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mSortingCallback:Lcom/android/internal/app/ResolverAppPredictorCallback;

    if-eqz v1, :cond_55

    .line 150
    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mSortingCallback:Lcom/android/internal/app/ResolverAppPredictorCallback;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverAppPredictorCallback;->destroy()V

    .line 152
    :cond_55
    new-instance v1, Lcom/android/internal/app/ResolverAppPredictorCallback;

    new-instance v2, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/android/internal/app/ResolverAppPredictorCallback;-><init>(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mSortingCallback:Lcom/android/internal/app/ResolverAppPredictorCallback;

    .line 167
    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mSortingCallback:Lcom/android/internal/app/ResolverAppPredictorCallback;

    .line 168
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverAppPredictorCallback;->asConsumer()Ljava/util/function/Consumer;

    move-result-object v3

    .line 167
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/prediction/AppPredictor;->sortTargets(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 169
    return-void
.end method

.method blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 111
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

    invoke-interface {v0, p1}, Lcom/android/internal/app/ResolverComparatorModel;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v0

    return v0
.end method

.method blacklist handleResultMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_15

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 126
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mModelBuilder:Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->buildFromRankedList(Ljava/util/List;)Lcom/android/internal/app/ResolverComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

    goto :goto_24

    .line 127
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    if-nez v0, :cond_24

    .line 128
    const-string v0, "APSResolverComparator"

    const-string v1, "Unexpected null result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_24
    :goto_24
    return-void
.end method

.method blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 116
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverComparatorModel;

    invoke-interface {v0, p1}, Lcom/android/internal/app/ResolverComparatorModel;->notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 117
    return-void
.end method
