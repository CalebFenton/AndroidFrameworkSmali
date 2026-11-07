.class public final synthetic Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/contexthub/HubEndpoint$1;

.field public final synthetic blacklist f$1:Landroid/hardware/contexthub/HubEndpointSession;

.field public final synthetic blacklist f$2:Landroid/hardware/contexthub/HubMessage;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/contexthub/HubEndpoint$1;

    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/contexthub/HubEndpointSession;

    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/contexthub/HubMessage;

    iput p4, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/contexthub/HubEndpoint$1;

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/contexthub/HubMessage;

    iget v3, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/contexthub/HubEndpoint$1;->$r8$lambda$Wgr7HfV80R43MKHm3AygViFSD-M(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    return-void
.end method
