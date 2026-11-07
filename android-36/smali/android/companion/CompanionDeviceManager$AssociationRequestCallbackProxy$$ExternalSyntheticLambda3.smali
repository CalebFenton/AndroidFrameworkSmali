.class public final synthetic Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$1:Ljava/lang/Object;

.field public final synthetic blacklist f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->lambda$execute$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
