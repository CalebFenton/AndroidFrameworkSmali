.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda10;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda10;->f$0:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
