.class Landroid/safetycenter/SafetyCenterIssue$1;
.super Ljava/lang/Object;
.source "SafetyCenterIssue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterIssue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterIssue;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 96
    .local v1, "title":Ljava/lang/CharSequence;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 97
    .local v2, "subtitle":Ljava/lang/CharSequence;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 98
    .local v3, "summary":Ljava/lang/CharSequence;
    new-instance v4, Landroid/safetycenter/SafetyCenterIssue$Builder;

    invoke-direct {v4, v0, v1, v3}, Landroid/safetycenter/SafetyCenterIssue$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v4, v2}, Landroid/safetycenter/SafetyCenterIssue$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Builder;

    move-result-object v4

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/safetycenter/SafetyCenterIssue$Builder;->setSeverityLevel(I)Landroid/safetycenter/SafetyCenterIssue$Builder;

    move-result-object v4

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/safetycenter/SafetyCenterIssue$Builder;->setDismissible(Z)Landroid/safetycenter/SafetyCenterIssue$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/safetycenter/SafetyCenterIssue$Builder;->setShouldConfirmDismissal(Z)Landroid/safetycenter/SafetyCenterIssue$Builder;

    move-result-object v4

    sget-object v5, Landroid/safetycenter/SafetyCenterIssue$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 104
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/safetycenter/SafetyCenterIssue$Builder;->setActions(Ljava/util/List;)Landroid/safetycenter/SafetyCenterIssue$Builder;

    move-result-object v4

    .line 105
    .local v4, "builder":Landroid/safetycenter/SafetyCenterIssue$Builder;
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 106
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {v4, v5}, Landroid/safetycenter/SafetyCenterIssue$Builder;->setAttributionTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Builder;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/safetycenter/SafetyCenterIssue$Builder;->setGroupId(Ljava/lang/String;)Landroid/safetycenter/SafetyCenterIssue$Builder;

    .line 110
    :cond_5f
    invoke-virtual {v4}, Landroid/safetycenter/SafetyCenterIssue$Builder;->build()Landroid/safetycenter/SafetyCenterIssue;

    move-result-object v5

    return-object v5
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

    .line 91
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterIssue$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterIssue;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterIssue;
    .registers 3
    .param p1, "size"    # I

    .line 115
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterIssue;

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

    .line 91
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterIssue$1;->newArray(I)[Landroid/safetycenter/SafetyCenterIssue;

    move-result-object p1

    return-object p1
.end method
