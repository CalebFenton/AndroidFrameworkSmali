.class Landroid/safetycenter/SafetyCenterEntryGroup$1;
.super Ljava/lang/Object;
.source "SafetyCenterEntryGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterEntryGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterEntryGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterEntryGroup;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 54
    .local v1, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;

    invoke-direct {v2, v0, v1}, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;

    move-result-object v2

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->setSeverityLevel(I)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->setSeverityUnspecifiedIconType(I)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;

    move-result-object v2

    sget-object v3, Landroid/safetycenter/SafetyCenterEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->setEntries(Ljava/util/List;)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->build()Landroid/safetycenter/SafetyCenterEntryGroup;

    move-result-object v2

    .line 54
    return-object v2
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

    .line 49
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterEntryGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterEntryGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterEntryGroup;
    .registers 3
    .param p1, "size"    # I

    .line 64
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterEntryGroup;

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

    .line 49
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterEntryGroup$1;->newArray(I)[Landroid/safetycenter/SafetyCenterEntryGroup;

    move-result-object p1

    return-object p1
.end method
