.class public final synthetic Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/contexthub/HubEndpoint$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/hardware/contexthub/HubEndpointInfo;

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/contexthub/HubEndpoint$1;

    iput p2, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/contexthub/HubEndpointInfo;

    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/contexthub/HubEndpoint$1;

    iget v1, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/contexthub/HubEndpoint$1;->$r8$lambda$gIE-glYnkToYq9p5Ej6kxJdMhQ4(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    return-void
.end method
