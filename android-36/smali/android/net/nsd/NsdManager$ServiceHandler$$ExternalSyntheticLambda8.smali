.class public final synthetic Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-static {v0}, Landroid/net/nsd/NsdManager$ServiceHandler;->lambda$handleMessage$17(Ljava/lang/Object;)V

    return-void
.end method
