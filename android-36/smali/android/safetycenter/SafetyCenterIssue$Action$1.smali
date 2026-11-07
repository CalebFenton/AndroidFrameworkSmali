.class Landroid/safetycenter/SafetyCenterIssue$Action$1;
.super Ljava/lang/Object;
.source "SafetyCenterIssue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterIssue$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterIssue$Action;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterIssue$Action;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 502
    .local v1, "label":Ljava/lang/CharSequence;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 503
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;

    invoke-direct {v3, v0, v1, v2}, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->setWillResolve(Z)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;

    move-result-object v3

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->setIsInFlight(Z)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;

    move-result-object v3

    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 508
    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 507
    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->setSuccessMessage(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;

    move-result-object v3

    .line 510
    .local v3, "builder":Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 511
    sget-object v4, Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 512
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    .line 513
    .local v4, "confirmationDialogDetails":Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;
    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->setConfirmationDialogDetails(Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;

    .line 515
    .end local v4    # "confirmationDialogDetails":Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;
    :cond_46
    invoke-virtual {v3}, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->build()Landroid/safetycenter/SafetyCenterIssue$Action;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 497
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterIssue$Action$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterIssue$Action;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterIssue$Action;
    .registers 3
    .param p1, "size"    # I

    .line 520
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterIssue$Action;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 497
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterIssue$Action$1;->newArray(I)[Landroid/safetycenter/SafetyCenterIssue$Action;

    move-result-object p1

    return-object p1
.end method
