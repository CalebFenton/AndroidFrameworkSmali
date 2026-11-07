.class Landroid/net/NetworkPolicyManager$1;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/util/Pair<",
        "Ljava/time/ZonedDateTime;",
        "Ljava/time/ZonedDateTime;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$it:Ljava/util/Iterator;


# direct methods
.method constructor blacklist <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 710
    iput-object p1, p0, Landroid/net/NetworkPolicyManager$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 713
    iget-object v0, p0, Landroid/net/NetworkPolicyManager$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public blacklist next()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;"
        }
    .end annotation

    .line 718
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 719
    iget-object v0, p0, Landroid/net/NetworkPolicyManager$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 720
    .local v0, "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 722
    .end local v0    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    :cond_1f
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 710
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager$1;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
