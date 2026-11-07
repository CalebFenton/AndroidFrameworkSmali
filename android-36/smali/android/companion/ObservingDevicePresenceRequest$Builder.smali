.class public final Landroid/companion/ObservingDevicePresenceRequest$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "ObservingDevicePresenceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ObservingDevicePresenceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/ObservingDevicePresenceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAssociationId:I

.field private blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/companion/ObservingDevicePresenceRequest;
    .registers 5

    .line 203
    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->markUsed()V

    .line 204
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 205
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot observe device presence based on both ParcelUuid and association ID. Choose one or the other."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_26

    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    if-lez v0, :cond_1e

    goto :goto_26

    .line 208
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must provide either a ParcelUuid or a valid association ID to observe device presence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_26
    :goto_26
    new-instance v0, Landroid/companion/ObservingDevicePresenceRequest;

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    iget-object v2, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(ILandroid/os/ParcelUuid;Landroid/companion/ObservingDevicePresenceRequest-IA;)V

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .registers 2

    .line 139
    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .registers 2
    .param p1, "associationId"    # I

    .line 164
    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->checkNotUsed()V

    .line 165
    iput p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    .line 166
    return-object p0
.end method

.method public whitelist setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .registers 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .line 195
    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->checkNotUsed()V

    .line 196
    iput-object p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    .line 197
    return-object p0
.end method
