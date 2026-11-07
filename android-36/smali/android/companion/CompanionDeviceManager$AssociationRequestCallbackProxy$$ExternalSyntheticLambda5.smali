.class public final synthetic Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/CompanionDeviceManager$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;->f$0:Landroid/companion/CompanionDeviceManager$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;->f$0:Landroid/companion/CompanionDeviceManager$Callback;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Landroid/companion/CompanionDeviceManager$Callback;->onFailure(ILjava/lang/CharSequence;)V

    return-void
.end method
