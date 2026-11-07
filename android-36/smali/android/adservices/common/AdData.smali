.class public final Landroid/adservices/common/AdData;
.super Ljava/lang/Object;
.source "AdData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdData;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_NUM_AD_COUNTER_KEYS:I = 0xa

.field public static final blacklist NUM_AD_COUNTER_KEYS_EXCEEDED_FORMAT:Ljava/lang/String; = "AdData should have no more than %d ad counter keys"


# instance fields
.field private final blacklist mAdCounterKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAdFilters:Landroid/adservices/common/AdFilters;

.field private final blacklist mAdRenderId:Ljava/lang/String;

.field private final blacklist mMetadata:Ljava/lang/String;

.field private final blacklist mRenderUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/adservices/common/AdData$1;

    invoke-direct {v0}, Landroid/adservices/common/AdData$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AdData$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/common/AdData$Builder;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Landroid/adservices/common/AdData$Builder;->-$$Nest$fgetmRenderUri(Landroid/adservices/common/AdData$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdData;->mRenderUri:Landroid/net/Uri;

    .line 66
    invoke-static {p1}, Landroid/adservices/common/AdData$Builder;->-$$Nest$fgetmMetadata(Landroid/adservices/common/AdData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdData;->mMetadata:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/adservices/common/AdData$Builder;->-$$Nest$fgetmAdCounterKeys(Landroid/adservices/common/AdData$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdData;->mAdCounterKeys:Ljava/util/Set;

    .line 68
    invoke-static {p1}, Landroid/adservices/common/AdData$Builder;->-$$Nest$fgetmAdFilters(Landroid/adservices/common/AdData$Builder;)Landroid/adservices/common/AdFilters;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdData;->mAdFilters:Landroid/adservices/common/AdFilters;

    .line 69
    invoke-static {p1}, Landroid/adservices/common/AdData$Builder;->-$$Nest$fgetmAdRenderId(Landroid/adservices/common/AdData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdData;->mAdRenderId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdData$Builder;Landroid/adservices/common/AdData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdData;-><init>(Landroid/adservices/common/AdData$Builder;)V

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
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/common/AdData;->mRenderUri:Landroid/net/Uri;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdData;->mMetadata:Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/adservices/common/AdData$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/common/AdData$$ExternalSyntheticLambda0;-><init>()V

    .line 78
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/adservices/common/AdData;->mAdCounterKeys:Ljava/util/Set;

    .line 80
    sget-object v0, Landroid/adservices/common/AdFilters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/common/AdData$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/adservices/common/AdData$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 81
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdFilters;

    iput-object v0, p0, Landroid/adservices/common/AdData;->mAdFilters:Landroid/adservices/common/AdFilters;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdData;->mAdRenderId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AdData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(ILandroid/os/Parcel;Landroid/adservices/common/AdFilters;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceFilters"    # Landroid/adservices/common/AdFilters;

    .line 97
    invoke-virtual {p2, p1, p0}, Landroid/adservices/common/AdFilters;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 174
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 175
    :cond_4
    instance-of v1, p1, Landroid/adservices/common/AdData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 176
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/common/AdData;

    .line 177
    .local v1, "adData":Landroid/adservices/common/AdData;
    iget-object v3, p0, Landroid/adservices/common/AdData;->mRenderUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/common/AdData;->mRenderUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/common/AdData;->mMetadata:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/common/AdData;->mMetadata:Ljava/lang/String;

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/common/AdData;->mAdCounterKeys:Ljava/util/Set;

    iget-object v4, v1, Landroid/adservices/common/AdData;->mAdCounterKeys:Ljava/util/Set;

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/common/AdData;->mAdFilters:Landroid/adservices/common/AdFilters;

    iget-object v4, v1, Landroid/adservices/common/AdData;->mAdFilters:Landroid/adservices/common/AdFilters;

    .line 180
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/common/AdData;->mAdRenderId:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/common/AdData;->mAdRenderId:Ljava/lang/String;

    .line 181
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    .line 177
    :goto_41
    return v0
.end method

.method public whitelist getAdCounterKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/adservices/common/AdData;->mAdCounterKeys:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getAdFilters()Landroid/adservices/common/AdFilters;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/adservices/common/AdData;->mAdFilters:Landroid/adservices/common/AdFilters;

    return-object v0
.end method

.method public whitelist getAdRenderId()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/adservices/common/AdData;->mAdRenderId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMetadata()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/adservices/common/AdData;->mMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRenderUri()Landroid/net/Uri;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/adservices/common/AdData;->mRenderUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 187
    iget-object v0, p0, Landroid/adservices/common/AdData;->mRenderUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/adservices/common/AdData;->mMetadata:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/common/AdData;->mAdCounterKeys:Ljava/util/Set;

    iget-object v3, p0, Landroid/adservices/common/AdData;->mAdFilters:Landroid/adservices/common/AdFilters;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdData{mRenderUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/AdData;->mRenderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMetadata=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/AdData;->mMetadata:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAdCounterKeys="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/adservices/common/AdData;->mAdCounterKeys:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAdFilters="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/adservices/common/AdData;->mAdFilters:Landroid/adservices/common/AdFilters;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAdRenderId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/adservices/common/AdData;->mAdRenderId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Landroid/adservices/common/AdData;->mRenderUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    iget-object v0, p0, Landroid/adservices/common/AdData;->mMetadata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroid/adservices/common/AdData;->mAdCounterKeys:Ljava/util/Set;

    new-instance v1, Landroid/adservices/common/AdData$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/adservices/common/AdData$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 94
    iget-object v0, p0, Landroid/adservices/common/AdData;->mAdFilters:Landroid/adservices/common/AdFilters;

    new-instance v1, Landroid/adservices/common/AdData$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/adservices/common/AdData$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 98
    iget-object v0, p0, Landroid/adservices/common/AdData;->mAdRenderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method
