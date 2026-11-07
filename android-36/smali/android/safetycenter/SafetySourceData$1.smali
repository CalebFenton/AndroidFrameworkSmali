.class Landroid/safetycenter/SafetySourceData$1;
.super Ljava/lang/Object;
.source "SafetySourceData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetySourceData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceData;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    sget-object v0, Landroid/safetycenter/SafetySourceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetySourceStatus;

    .line 163
    .local v0, "status":Landroid/safetycenter/SafetySourceStatus;
    sget-object v1, Landroid/safetycenter/SafetySourceIssue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 165
    .local v1, "issues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue;>;"
    new-instance v2, Landroid/safetycenter/SafetySourceData$Builder;

    invoke-direct {v2}, Landroid/safetycenter/SafetySourceData$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/safetycenter/SafetySourceData$Builder;->setStatus(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceData$Builder;

    move-result-object v2

    .line 166
    .local v2, "builder":Landroid/safetycenter/SafetySourceData$Builder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 167
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/safetycenter/SafetySourceIssue;

    invoke-virtual {v2, v4}, Landroid/safetycenter/SafetySourceData$Builder;->addIssue(Landroid/safetycenter/SafetySourceIssue;)Landroid/safetycenter/SafetySourceData$Builder;

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 169
    .end local v3    # "i":I
    :cond_30
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    .line 171
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_47

    .line 172
    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetySourceData$Builder;->setExtras(Landroid/os/Bundle;)Landroid/safetycenter/SafetySourceData$Builder;

    .line 175
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_47
    invoke-virtual {v2}, Landroid/safetycenter/SafetySourceData$Builder;->build()Landroid/safetycenter/SafetySourceData;

    move-result-object v3

    return-object v3
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

    .line 159
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetySourceData;
    .registers 3
    .param p1, "size"    # I

    .line 180
    new-array v0, p1, [Landroid/safetycenter/SafetySourceData;

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

    .line 159
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceData$1;->newArray(I)[Landroid/safetycenter/SafetySourceData;

    move-result-object p1

    return-object p1
.end method
