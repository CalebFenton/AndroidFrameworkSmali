.class Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;
.super Ljava/lang/Object;
.source "AppPredictionServiceResolverComparator.java"

# interfaces
.implements Lcom/android/internal/app/ResolverComparatorModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->adaptLegacyResolverComparatorToComparatorModel(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ResolverComparatorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$comparator:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;Lcom/android/internal/app/AbstractResolverComparator;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->val$comparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getComparator$0(Lcom/android/internal/app/AbstractResolverComparator;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 4
    .param p0, "comparator"    # Lcom/android/internal/app/AbstractResolverComparator;
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getComparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->val$comparator:Lcom/android/internal/app/AbstractResolverComparator;

    new-instance v1, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AbstractResolverComparator;)V

    return-object v1
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->val$comparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 249
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->val$comparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 250
    return-void
.end method
