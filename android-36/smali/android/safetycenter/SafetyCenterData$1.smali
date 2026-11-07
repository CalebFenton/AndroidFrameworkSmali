.class Landroid/safetycenter/SafetyCenterData$1;
.super Ljava/lang/Object;
.source "SafetyCenterData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterData;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    sget-object v0, Landroid/safetycenter/SafetyCenterStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyCenterStatus;

    .line 71
    .local v0, "status":Landroid/safetycenter/SafetyCenterStatus;
    sget-object v1, Landroid/safetycenter/SafetyCenterIssue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 73
    .local v1, "issues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue;>;"
    sget-object v2, Landroid/safetycenter/SafetyCenterEntryOrGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 75
    .local v2, "entryOrGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterEntryOrGroup;>;"
    sget-object v3, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 76
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 78
    .local v3, "staticEntryGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterStaticEntryGroup;>;"
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 79
    sget-object v4, Landroid/safetycenter/SafetyCenterIssue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 81
    .local v4, "dismissedIssues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v5

    .line 82
    .local v5, "extras":Landroid/os/Bundle;
    new-instance v6, Landroid/safetycenter/SafetyCenterData$Builder;

    invoke-direct {v6, v0}, Landroid/safetycenter/SafetyCenterData$Builder;-><init>(Landroid/safetycenter/SafetyCenterStatus;)V

    .line 83
    .local v6, "builder":Landroid/safetycenter/SafetyCenterData$Builder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4a

    .line 84
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/safetycenter/SafetyCenterIssue;

    invoke-virtual {v6, v8}, Landroid/safetycenter/SafetyCenterData$Builder;->addIssue(Landroid/safetycenter/SafetyCenterIssue;)Landroid/safetycenter/SafetyCenterData$Builder;

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 86
    .end local v7    # "i":I
    :cond_4a
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5d

    .line 87
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/safetycenter/SafetyCenterEntryOrGroup;

    invoke-virtual {v6, v8}, Landroid/safetycenter/SafetyCenterData$Builder;->addEntryOrGroup(Landroid/safetycenter/SafetyCenterEntryOrGroup;)Landroid/safetycenter/SafetyCenterData$Builder;

    .line 86
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 89
    .end local v7    # "i":I
    :cond_5d
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_70

    .line 90
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/safetycenter/SafetyCenterStaticEntryGroup;

    invoke-virtual {v6, v8}, Landroid/safetycenter/SafetyCenterData$Builder;->addStaticEntryGroup(Landroid/safetycenter/SafetyCenterStaticEntryGroup;)Landroid/safetycenter/SafetyCenterData$Builder;

    .line 89
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    .line 92
    .end local v7    # "i":I
    :cond_70
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_71
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_83

    .line 93
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/safetycenter/SafetyCenterIssue;

    invoke-virtual {v6, v8}, Landroid/safetycenter/SafetyCenterData$Builder;->addDismissedIssue(Landroid/safetycenter/SafetyCenterIssue;)Landroid/safetycenter/SafetyCenterData$Builder;

    .line 92
    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    .line 95
    .end local v7    # "i":I
    :cond_83
    if-eqz v5, :cond_88

    .line 96
    invoke-virtual {v6, v5}, Landroid/safetycenter/SafetyCenterData$Builder;->setExtras(Landroid/os/Bundle;)Landroid/safetycenter/SafetyCenterData$Builder;

    .line 98
    :cond_88
    invoke-virtual {v6}, Landroid/safetycenter/SafetyCenterData$Builder;->build()Landroid/safetycenter/SafetyCenterData;

    move-result-object v7

    return-object v7

    .line 100
    .end local v4    # "dismissedIssues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue;>;"
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "builder":Landroid/safetycenter/SafetyCenterData$Builder;
    :cond_8d
    new-instance v4, Landroid/safetycenter/SafetyCenterData;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/safetycenter/SafetyCenterData;-><init>(Landroid/safetycenter/SafetyCenterStatus;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

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

    .line 67
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterData;
    .registers 3
    .param p1, "size"    # I

    .line 107
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterData;

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

    .line 67
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterData$1;->newArray(I)[Landroid/safetycenter/SafetyCenterData;

    move-result-object p1

    return-object p1
.end method
