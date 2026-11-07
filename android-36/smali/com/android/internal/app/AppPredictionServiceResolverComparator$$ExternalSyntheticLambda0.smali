.class public final synthetic Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    iput-object p2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->$r8$lambda$jDQrq6cQvLRGpGsqkrQ55DTVl5s(Lcom/android/internal/app/AppPredictionServiceResolverComparator;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
