.class Landroid/safetycenter/SafetyCenterEntryOrGroup$1;
.super Ljava/lang/Object;
.source "SafetyCenterEntryOrGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterEntryOrGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterEntryOrGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterEntryOrGroup;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    sget-object v0, Landroid/safetycenter/SafetyCenterEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyCenterEntry;

    .line 49
    .local v0, "maybeEntry":Landroid/safetycenter/SafetyCenterEntry;
    sget-object v1, Landroid/safetycenter/SafetyCenterEntryGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetyCenterEntryGroup;

    .line 51
    .local v1, "maybeEntryGroup":Landroid/safetycenter/SafetyCenterEntryGroup;
    if-eqz v0, :cond_18

    .line 52
    new-instance v2, Landroid/safetycenter/SafetyCenterEntryOrGroup;

    invoke-direct {v2, v0}, Landroid/safetycenter/SafetyCenterEntryOrGroup;-><init>(Landroid/safetycenter/SafetyCenterEntry;)V

    goto :goto_1d

    .line 53
    :cond_18
    new-instance v2, Landroid/safetycenter/SafetyCenterEntryOrGroup;

    invoke-direct {v2, v1}, Landroid/safetycenter/SafetyCenterEntryOrGroup;-><init>(Landroid/safetycenter/SafetyCenterEntryGroup;)V

    .line 51
    :goto_1d
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

    .line 45
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterEntryOrGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterEntryOrGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterEntryOrGroup;
    .registers 3
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterEntryOrGroup;

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

    .line 45
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterEntryOrGroup$1;->newArray(I)[Landroid/safetycenter/SafetyCenterEntryOrGroup;

    move-result-object p1

    return-object p1
.end method
