.class public final synthetic Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/NoOpResolverComparator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/NoOpResolverComparator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/NoOpResolverComparator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/NoOpResolverComparator;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->$r8$lambda$eoxt2xcpejfl-MnYdiDWClu0264(Lcom/android/internal/app/NoOpResolverComparator;Landroid/content/pm/ResolveInfo;)D

    move-result-wide v0

    return-wide v0
.end method
