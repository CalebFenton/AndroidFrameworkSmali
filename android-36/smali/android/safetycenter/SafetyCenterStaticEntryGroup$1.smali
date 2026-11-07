.class Landroid/safetycenter/SafetyCenterStaticEntryGroup$1;
.super Ljava/lang/Object;
.source "SafetyCenterStaticEntryGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterStaticEntryGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterStaticEntryGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterStaticEntryGroup;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 50
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 51
    .local v0, "title":Ljava/lang/CharSequence;
    sget-object v1, Landroid/safetycenter/SafetyCenterStaticEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    .local v1, "staticEntries":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterStaticEntry;>;"
    new-instance v2, Landroid/safetycenter/SafetyCenterStaticEntryGroup;

    invoke-direct {v2, v0, v1}, Landroid/safetycenter/SafetyCenterStaticEntryGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

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

    .line 47
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterStaticEntryGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterStaticEntryGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterStaticEntryGroup;
    .registers 3
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterStaticEntryGroup;

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

    .line 47
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterStaticEntryGroup$1;->newArray(I)[Landroid/safetycenter/SafetyCenterStaticEntryGroup;

    move-result-object p1

    return-object p1
.end method
