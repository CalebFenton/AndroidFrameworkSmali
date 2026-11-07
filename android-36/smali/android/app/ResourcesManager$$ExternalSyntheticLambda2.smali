.class public final synthetic Landroid/app/ResourcesManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;

.field public final synthetic blacklist f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;Ljava/util/HashSet;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ResourcesManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Landroid/app/ResourcesManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ResourcesManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Landroid/app/ResourcesManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashSet;

    invoke-static {v0, v1, p1}, Landroid/app/ResourcesManager;->lambda$cleanupReferences$1(Ljava/util/function/Function;Ljava/util/HashSet;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
