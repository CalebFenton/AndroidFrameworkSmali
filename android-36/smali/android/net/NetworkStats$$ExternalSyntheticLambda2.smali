.class public final synthetic Landroid/net/NetworkStats$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/NetworkStats$Entry;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/NetworkStats$Entry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStats$$ExternalSyntheticLambda2;->f$0:Landroid/net/NetworkStats$Entry;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/NetworkStats$$ExternalSyntheticLambda2;->f$0:Landroid/net/NetworkStats$Entry;

    check-cast p1, Landroid/net/NetworkStats$Entry;

    invoke-static {v0, p1}, Landroid/net/NetworkStats;->lambda$groupedByUid$1(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p1

    return-object p1
.end method
