.class Landroid/safetycenter/SafetySourceIssue$Action$1;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetySourceIssue$Action;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceIssue$Action;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 637
    .local v1, "label":Ljava/lang/CharSequence;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 638
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    invoke-direct {v3, v0, v1, v2}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->setWillResolve(Z)Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    move-result-object v3

    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 642
    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 641
    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->setSuccessMessage(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    move-result-object v3

    .line 644
    .local v3, "builder":Landroid/safetycenter/SafetySourceIssue$Action$Builder;
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 645
    sget-object v4, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 646
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    .line 647
    .local v4, "confirmationDialogDetails":Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;
    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->setConfirmationDialogDetails(Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;)Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    .line 649
    .end local v4    # "confirmationDialogDetails":Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;
    :cond_3e
    invoke-virtual {v3}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Action;

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

    .line 632
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceIssue$Action$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceIssue$Action;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetySourceIssue$Action;
    .registers 3
    .param p1, "size"    # I

    .line 654
    new-array v0, p1, [Landroid/safetycenter/SafetySourceIssue$Action;

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

    .line 632
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceIssue$Action$1;->newArray(I)[Landroid/safetycenter/SafetySourceIssue$Action;

    move-result-object p1

    return-object p1
.end method
