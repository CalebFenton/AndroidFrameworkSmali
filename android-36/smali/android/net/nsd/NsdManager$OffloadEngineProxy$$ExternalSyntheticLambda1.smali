.class public final synthetic Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/nsd/NsdManager$OffloadEngineProxy;

.field public final synthetic blacklist f$1:Landroid/net/nsd/OffloadServiceInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/nsd/NsdManager$OffloadEngineProxy;Landroid/net/nsd/OffloadServiceInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/nsd/NsdManager$OffloadEngineProxy;

    iput-object p2, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/nsd/OffloadServiceInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/nsd/NsdManager$OffloadEngineProxy;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$OffloadEngineProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/nsd/OffloadServiceInfo;

    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->$r8$lambda$96pkk9KY4ImuEFKGmF0SQNVRVDk(Landroid/net/nsd/NsdManager$OffloadEngineProxy;Landroid/net/nsd/OffloadServiceInfo;)V

    return-void
.end method
