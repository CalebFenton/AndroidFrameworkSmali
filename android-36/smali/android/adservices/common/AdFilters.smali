.class public final Landroid/adservices/common/AdFilters;
.super Ljava/lang/Object;
.source "AdFilters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdFilters$Builder;
    }
.end annotation


# static fields
.field public static final blacklist APP_INSTALL_FIELD_NAME:Ljava/lang/String; = "app_install"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdFilters;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FREQUENCY_CAP_FIELD_NAME:Ljava/lang/String; = "frequency_cap"


# instance fields
.field private final blacklist mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

.field private final blacklist mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/adservices/common/AdFilters$1;

    invoke-direct {v0}, Landroid/adservices/common/AdFilters$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdFilters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AdFilters$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/common/AdFilters$Builder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Landroid/adservices/common/AdFilters$Builder;->-$$Nest$fgetmFrequencyCapFilters(Landroid/adservices/common/AdFilters$Builder;)Landroid/adservices/common/FrequencyCapFilters;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    .line 69
    invoke-static {p1}, Landroid/adservices/common/AdFilters$Builder;->-$$Nest$fgetmAppInstallFilters(Landroid/adservices/common/AdFilters$Builder;)Landroid/adservices/common/AppInstallFilters;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdFilters$Builder;Landroid/adservices/common/AdFilters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdFilters;-><init>(Landroid/adservices/common/AdFilters$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/adservices/common/FrequencyCapFilters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 76
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/FrequencyCapFilters;

    iput-object v0, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    .line 78
    sget-object v0, Landroid/adservices/common/AppInstallFilters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda3;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 79
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AppInstallFilters;

    iput-object v0, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AdFilters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdFilters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist fromJson(Lorg/json/JSONObject;)Landroid/adservices/common/AdFilters;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 147
    new-instance v0, Landroid/adservices/common/AdFilters$Builder;

    invoke-direct {v0}, Landroid/adservices/common/AdFilters$Builder;-><init>()V

    .line 148
    .local v0, "builder":Landroid/adservices/common/AdFilters$Builder;
    const-string v1, "frequency_cap"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 149
    nop

    .line 150
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->fromJson(Lorg/json/JSONObject;)Landroid/adservices/common/FrequencyCapFilters;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/adservices/common/AdFilters$Builder;->setFrequencyCapFilters(Landroid/adservices/common/FrequencyCapFilters;)Landroid/adservices/common/AdFilters$Builder;

    .line 152
    :cond_19
    const-string v1, "app_install"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 153
    nop

    .line 154
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Landroid/adservices/common/AppInstallFilters;->fromJson(Lorg/json/JSONObject;)Landroid/adservices/common/AppInstallFilters;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/adservices/common/AdFilters$Builder;->setAppInstallFilters(Landroid/adservices/common/AppInstallFilters;)Landroid/adservices/common/AdFilters$Builder;

    .line 156
    :cond_2d
    invoke-virtual {v0}, Landroid/adservices/common/AdFilters$Builder;->build()Landroid/adservices/common/AdFilters;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$writeToParcel$0(ILandroid/os/Parcel;Landroid/adservices/common/FrequencyCapFilters;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceFilters"    # Landroid/adservices/common/FrequencyCapFilters;

    .line 166
    invoke-virtual {p2, p1, p0}, Landroid/adservices/common/FrequencyCapFilters;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$1(ILandroid/os/Parcel;Landroid/adservices/common/AppInstallFilters;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceFilters"    # Landroid/adservices/common/AppInstallFilters;

    .line 170
    invoke-virtual {p2, p1, p0}, Landroid/adservices/common/AppInstallFilters;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 182
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 183
    :cond_4
    instance-of v1, p1, Landroid/adservices/common/AdFilters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 184
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/common/AdFilters;

    .line 185
    .local v1, "adFilters":Landroid/adservices/common/AdFilters;
    iget-object v3, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    iget-object v4, v1, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    iget-object v4, v1, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    .line 186
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 185
    :goto_23
    return v0
.end method

.method public whitelist getAppInstallFilters()Landroid/adservices/common/AppInstallFilters;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    return-object v0
.end method

.method public whitelist getFrequencyCapFilters()Landroid/adservices/common/FrequencyCapFilters;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    return-object v0
.end method

.method public blacklist getSizeInBytes()I
    .registers 3

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "size":I
    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    if-eqz v1, :cond_c

    .line 113
    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    invoke-virtual {v1}, Landroid/adservices/common/FrequencyCapFilters;->getSizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_c
    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    if-eqz v1, :cond_17

    .line 116
    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    invoke-virtual {v1}, Landroid/adservices/common/AppInstallFilters;->getSizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_17
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 192
    iget-object v0, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toJson()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v0, "toReturn":Lorg/json/JSONObject;
    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    if-eqz v1, :cond_14

    .line 130
    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    invoke-virtual {v1}, Landroid/adservices/common/FrequencyCapFilters;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "frequency_cap"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_14
    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    if-eqz v1, :cond_23

    .line 133
    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    invoke-virtual {v1}, Landroid/adservices/common/AppInstallFilters;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app_install"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_23
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdFilters{mFrequencyCapFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppInstallFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Landroid/adservices/common/AdFilters;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    new-instance v1, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 167
    iget-object v0, p0, Landroid/adservices/common/AdFilters;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    new-instance v1, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/adservices/common/AdFilters$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 171
    return-void
.end method
