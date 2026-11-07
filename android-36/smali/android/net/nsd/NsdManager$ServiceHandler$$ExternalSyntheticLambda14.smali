.class public final synthetic Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;

.field public final synthetic blacklist f$1:Landroid/net/nsd/NsdServiceInfo;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;->f$1:Landroid/net/nsd/NsdServiceInfo;

    iput p3, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;->f$1:Landroid/net/nsd/NsdServiceInfo;

    iget v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/net/nsd/NsdManager$ServiceHandler;->lambda$handleMessage$6(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V

    return-void
.end method
