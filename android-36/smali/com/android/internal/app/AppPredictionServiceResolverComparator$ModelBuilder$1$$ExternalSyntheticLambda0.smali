.class public final synthetic Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AbstractResolverComparator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AbstractResolverComparator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AbstractResolverComparator;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p1, p2}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->lambda$getComparator$0(Lcom/android/internal/app/AbstractResolverComparator;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method
