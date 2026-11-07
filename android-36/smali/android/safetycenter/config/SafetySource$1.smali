.class Landroid/safetycenter/config/SafetySource$1;
.super Ljava/lang/Object;
.source "SafetySource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/config/SafetySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/config/SafetySource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/config/SafetySource;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, "type":I
    new-instance v1, Landroid/safetycenter/config/SafetySource$Builder;

    invoke-direct {v1, v0}, Landroid/safetycenter/config/SafetySource$Builder;-><init>(I)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setId(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setPackageName(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setTitleResId(I)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setTitleForWorkResId(I)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setSummaryResId(I)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setIntentAction(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setProfile(I)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setInitialDisplayState(I)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setMaxSeverityLevel(I)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setSearchTermsResId(I)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setLoggingAllowed(Z)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setRefreshOnPageOpenAllowed(Z)Landroid/safetycenter/config/SafetySource$Builder;

    move-result-object v1

    .line 180
    .local v1, "builder":Landroid/safetycenter/config/SafetySource$Builder;
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setNotificationsAllowed(Z)Landroid/safetycenter/config/SafetySource$Builder;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setDeduplicationGroup(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 184
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_82
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_94

    .line 185
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/safetycenter/config/SafetySource$Builder;->addPackageCertificateHash(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 188
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :cond_94
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-static {}, Landroid/permission/jarjar/com/android/permission/flags/Flags;->privateProfileTitleApi()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/config/SafetySource$Builder;->setTitleForPrivateProfileResId(I)Landroid/safetycenter/config/SafetySource$Builder;

    .line 191
    :cond_a7
    invoke-virtual {v1}, Landroid/safetycenter/config/SafetySource$Builder;->build()Landroid/safetycenter/config/SafetySource;

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

    .line 162
    invoke-virtual {p0, p1}, Landroid/safetycenter/config/SafetySource$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/config/SafetySource;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/config/SafetySource;
    .registers 3
    .param p1, "size"    # I

    .line 196
    new-array v0, p1, [Landroid/safetycenter/config/SafetySource;

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

    .line 162
    invoke-virtual {p0, p1}, Landroid/safetycenter/config/SafetySource$1;->newArray(I)[Landroid/safetycenter/config/SafetySource;

    move-result-object p1

    return-object p1
.end method
