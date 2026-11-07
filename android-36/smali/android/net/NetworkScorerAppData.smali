.class public final Landroid/net/NetworkScorerAppData;
.super Ljava/lang/Object;
.source "NetworkScorerAppData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

.field private final greylist-max-o mNetworkAvailableNotificationChannelId:Ljava/lang/String;

.field private final greylist-max-o mRecommendationService:Landroid/content/ComponentName;

.field private final greylist-max-o mRecommendationServiceLabel:Ljava/lang/String;

.field public final greylist-max-o packageUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Landroid/net/NetworkScorerAppData$1;

    invoke-direct {v0}, Landroid/net/NetworkScorerAppData$1;-><init>()V

    sput-object v0, Landroid/net/NetworkScorerAppData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageUid"    # I
    .param p2, "recommendationServiceComp"    # Landroid/content/ComponentName;
    .param p3, "recommendationServiceLabel"    # Ljava/lang/String;
    .param p4, "enableUseOpenWifiActivity"    # Landroid/content/ComponentName;
    .param p5, "networkAvailableNotificationChannelId"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 36
    iput-object p2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 37
    iput-object p3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 39
    iput-object p5, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 44
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 115
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 116
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/NetworkScorerAppData;

    .line 117
    .local v2, "that":Landroid/net/NetworkScorerAppData;
    iget v3, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    iget v4, v2, Landroid/net/NetworkScorerAppData;->packageUid:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 118
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 120
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 121
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 117
    :goto_45
    return v0

    .line 115
    .end local v2    # "that":Landroid/net/NetworkScorerAppData;
    :cond_46
    :goto_46
    return v1
.end method

.method public greylist-max-o getEnableUseOpenWifiActivity()Landroid/content/ComponentName;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getNetworkAvailableNotificationChannelId()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRecommendationServiceComponent()Landroid/content/ComponentName;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getRecommendationServiceLabel()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRecommendationServicePackageName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 127
    iget v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkScorerAppData{packageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecommendationService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecommendationServiceLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnableUseOpenWifiActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetworkAvailableNotificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 54
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 56
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
