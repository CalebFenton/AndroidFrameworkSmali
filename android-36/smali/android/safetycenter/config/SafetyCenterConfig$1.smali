.class Landroid/safetycenter/config/SafetyCenterConfig$1;
.super Ljava/lang/Object;
.source "SafetyCenterConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/config/SafetyCenterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/config/SafetyCenterConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/config/SafetyCenterConfig;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    sget-object v0, Landroid/safetycenter/config/SafetySourcesGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    .local v0, "safetySourcesGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/config/SafetySourcesGroup;>;"
    new-instance v1, Landroid/safetycenter/config/SafetyCenterConfig$Builder;

    invoke-direct {v1}, Landroid/safetycenter/config/SafetyCenterConfig$Builder;-><init>()V

    .line 57
    .local v1, "builder":Landroid/safetycenter/config/SafetyCenterConfig$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/safetycenter/config/SafetySourcesGroup;

    invoke-virtual {v1, v3}, Landroid/safetycenter/config/SafetyCenterConfig$Builder;->addSafetySourcesGroup(Landroid/safetycenter/config/SafetySourcesGroup;)Landroid/safetycenter/config/SafetyCenterConfig$Builder;

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 60
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {v1}, Landroid/safetycenter/config/SafetyCenterConfig$Builder;->build()Landroid/safetycenter/config/SafetyCenterConfig;

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

    .line 51
    invoke-virtual {p0, p1}, Landroid/safetycenter/config/SafetyCenterConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/config/SafetyCenterConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/config/SafetyCenterConfig;
    .registers 3
    .param p1, "size"    # I

    .line 65
    new-array v0, p1, [Landroid/safetycenter/config/SafetyCenterConfig;

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

    .line 51
    invoke-virtual {p0, p1}, Landroid/safetycenter/config/SafetyCenterConfig$1;->newArray(I)[Landroid/safetycenter/config/SafetyCenterConfig;

    move-result-object p1

    return-object p1
.end method
