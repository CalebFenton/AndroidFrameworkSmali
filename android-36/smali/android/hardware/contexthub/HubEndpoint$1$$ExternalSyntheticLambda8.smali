.class public final synthetic Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/hardware/contexthub/HubMessage;

.field public final synthetic blacklist f$2:B


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/hardware/contexthub/HubMessage;B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;->f$0:I

    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/contexthub/HubMessage;

    iput-byte p3, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;->f$2:B

    return-void
.end method


# virtual methods
.method public final blacklist accept(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 5

    .line 0
    iget v0, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;->f$0:I

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/contexthub/HubMessage;

    iget-byte v2, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;->f$2:B

    invoke-static {v0, v1, v2, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$sendMessageDeliveryStatus$4(ILandroid/hardware/contexthub/HubMessage;BLandroid/hardware/contexthub/IContextHubEndpoint;)V

    return-void
.end method
