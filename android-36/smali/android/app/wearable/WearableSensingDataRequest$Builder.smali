.class public final Landroid/app/wearable/WearableSensingDataRequest$Builder;
.super Ljava/lang/Object;
.source "WearableSensingDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wearable/WearableSensingDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataType:I

.field private blacklist mRequestDetails:Landroid/os/PersistableBundle;


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "dataType"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mDataType:I

    .line 171
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/wearable/WearableSensingDataRequest;
    .registers 5

    .line 181
    iget-object v0, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mRequestDetails:Landroid/os/PersistableBundle;

    if-nez v0, :cond_8

    .line 182
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mRequestDetails:Landroid/os/PersistableBundle;

    .line 184
    :cond_8
    new-instance v0, Landroid/app/wearable/WearableSensingDataRequest;

    iget v1, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mDataType:I

    iget-object v2, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mRequestDetails:Landroid/os/PersistableBundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/wearable/WearableSensingDataRequest;-><init>(ILandroid/os/PersistableBundle;Landroid/app/wearable/WearableSensingDataRequest-IA;)V

    return-object v0
.end method

.method public whitelist setRequestDetails(Landroid/os/PersistableBundle;)Landroid/app/wearable/WearableSensingDataRequest$Builder;
    .registers 2
    .param p1, "requestDetails"    # Landroid/os/PersistableBundle;

    .line 175
    iput-object p1, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mRequestDetails:Landroid/os/PersistableBundle;

    .line 176
    return-object p0
.end method
