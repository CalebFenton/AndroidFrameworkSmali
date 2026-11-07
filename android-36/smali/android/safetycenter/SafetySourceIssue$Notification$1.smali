.class Landroid/safetycenter/SafetySourceIssue$Notification$1;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue$Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetySourceIssue$Notification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceIssue$Notification;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1047
    new-instance v0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1048
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1049
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/safetycenter/SafetySourceIssue$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1050
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->addActions(Ljava/util/List;)Landroid/safetycenter/SafetySourceIssue$Notification$Builder;

    move-result-object v0

    .line 1051
    invoke-virtual {v0}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Notification;

    move-result-object v0

    .line 1047
    return-object v0
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

    .line 1044
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceIssue$Notification$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceIssue$Notification;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetySourceIssue$Notification;
    .registers 3
    .param p1, "size"    # I

    .line 1056
    new-array v0, p1, [Landroid/safetycenter/SafetySourceIssue$Notification;

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

    .line 1044
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceIssue$Notification$1;->newArray(I)[Landroid/safetycenter/SafetySourceIssue$Notification;

    move-result-object p1

    return-object p1
.end method
