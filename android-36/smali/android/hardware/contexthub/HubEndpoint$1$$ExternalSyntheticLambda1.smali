.class public final synthetic Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist accept(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$rejectSession$7(ILandroid/hardware/contexthub/IContextHubEndpoint;)V

    return-void
.end method
