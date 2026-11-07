.class Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails$1;
.super Ljava/lang/Object;
.source "SafetyCenterIssue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 682
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 683
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 684
    .local v0, "title":Ljava/lang/CharSequence;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 685
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 686
    .local v1, "text":Ljava/lang/CharSequence;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 687
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 688
    .local v2, "acceptButtonText":Ljava/lang/CharSequence;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 689
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 690
    .local v3, "denyButtonText":Ljava/lang/CharSequence;
    new-instance v4, Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

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

    .line 679
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;
    .registers 3
    .param p1, "size"    # I

    .line 696
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

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

    .line 679
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails$1;->newArray(I)[Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    move-result-object p1

    return-object p1
.end method
