.class public final synthetic Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;

.field public final synthetic blacklist f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager$ServiceHandler;->lambda$handleMessage$15(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
