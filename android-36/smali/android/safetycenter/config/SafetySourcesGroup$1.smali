.class Landroid/safetycenter/config/SafetySourcesGroup$1;
.super Ljava/lang/Object;
.source "SafetySourcesGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/config/SafetySourcesGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/config/SafetySourcesGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/config/SafetySourcesGroup;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 138
    new-instance v0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;

    invoke-direct {v0}, Landroid/safetycenter/config/SafetySourcesGroup$Builder;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->setId(Ljava/lang/String;)Landroid/safetycenter/config/SafetySourcesGroup$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->setTitleResId(I)Landroid/safetycenter/config/SafetySourcesGroup$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->setSummaryResId(I)Landroid/safetycenter/config/SafetySourcesGroup$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->setStatelessIconType(I)Landroid/safetycenter/config/SafetySourcesGroup$Builder;

    move-result-object v0

    .line 144
    .local v0, "builder":Landroid/safetycenter/config/SafetySourcesGroup$Builder;
    sget-object v1, Landroid/safetycenter/config/SafetySource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 145
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 146
    .local v1, "safetySources":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/config/SafetySource;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 147
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/safetycenter/config/SafetySource;

    invoke-virtual {v0, v3}, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->addSafetySource(Landroid/safetycenter/config/SafetySource;)Landroid/safetycenter/config/SafetySourcesGroup$Builder;

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 149
    .end local v2    # "i":I
    :cond_44
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->setType(I)Landroid/safetycenter/config/SafetySourcesGroup$Builder;

    .line 152
    :cond_51
    invoke-virtual {v0}, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->build()Landroid/safetycenter/config/SafetySourcesGroup;

    move-result-object v2

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

    .line 135
    invoke-virtual {p0, p1}, Landroid/safetycenter/config/SafetySourcesGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/config/SafetySourcesGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/config/SafetySourcesGroup;
    .registers 3
    .param p1, "size"    # I

    .line 157
    new-array v0, p1, [Landroid/safetycenter/config/SafetySourcesGroup;

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

    .line 135
    invoke-virtual {p0, p1}, Landroid/safetycenter/config/SafetySourcesGroup$1;->newArray(I)[Landroid/safetycenter/config/SafetySourcesGroup;

    move-result-object p1

    return-object p1
.end method
