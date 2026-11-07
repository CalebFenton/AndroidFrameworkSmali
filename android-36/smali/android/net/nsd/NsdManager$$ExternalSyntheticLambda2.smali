.class public final synthetic Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/nsd/OffloadEngine;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/nsd/OffloadEngine;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda2;->f$0:Landroid/net/nsd/OffloadEngine;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda2;->f$0:Landroid/net/nsd/OffloadEngine;

    check-cast p1, Landroid/net/nsd/NsdManager$OffloadEngineProxy;

    invoke-static {v0, p1}, Landroid/net/nsd/NsdManager;->lambda$registerOffloadEngine$0(Landroid/net/nsd/OffloadEngine;Landroid/net/nsd/NsdManager$OffloadEngineProxy;)Z

    move-result p1

    return p1
.end method
