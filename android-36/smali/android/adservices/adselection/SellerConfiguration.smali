.class public final Landroid/adservices/adselection/SellerConfiguration;
.super Ljava/lang/Object;
.source "SellerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/SellerConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/SellerConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMaximumPayloadSizeBytes:I

.field private final blacklist mPerBuyerConfigurations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/adservices/adselection/PerBuyerConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/adservices/adselection/SellerConfiguration$1;

    invoke-direct {v0}, Landroid/adservices/adselection/SellerConfiguration$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/SellerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Set;)V
    .registers 3
    .param p1, "maximumPayloadSizeBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/adservices/adselection/PerBuyerConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p2, "perBuyerConfigurations":Ljava/util/Set;, "Ljava/util/Set<Landroid/adservices/adselection/PerBuyerConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Landroid/adservices/adselection/SellerConfiguration;->mMaximumPayloadSizeBytes:I

    .line 81
    iput-object p2, p0, Landroid/adservices/adselection/SellerConfiguration;->mPerBuyerConfigurations:Ljava/util/Set;

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Set;Landroid/adservices/adselection/SellerConfiguration-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/adselection/SellerConfiguration;-><init>(ILjava/util/Set;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/SellerConfiguration;->mMaximumPayloadSizeBytes:I

    .line 50
    new-instance v0, Landroid/adservices/adselection/SellerConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/adservices/adselection/SellerConfiguration$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    .line 51
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    .local v0, "perBuyerConfigurationList":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/adselection/PerBuyerConfiguration;>;"
    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_21

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/adservices/adselection/SellerConfiguration;->mPerBuyerConfigurations:Ljava/util/Set;

    goto :goto_28

    .line 57
    :cond_21
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/adservices/adselection/SellerConfiguration;->mPerBuyerConfigurations:Ljava/util/Set;

    .line 59
    :goto_28
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/SellerConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/SellerConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcel;Landroid/os/Parcel;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "sourceParcel"    # Landroid/os/Parcel;

    .line 53
    sget-object v0, Landroid/adservices/adselection/PerBuyerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$writeToParcel$1(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceSet"    # Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    instance-of v0, p1, Landroid/adservices/adselection/SellerConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 103
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/SellerConfiguration;

    .line 104
    .local v0, "sellerConfiguration":Landroid/adservices/adselection/SellerConfiguration;
    iget v2, p0, Landroid/adservices/adselection/SellerConfiguration;->mMaximumPayloadSizeBytes:I

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/adservices/adselection/SellerConfiguration;->mMaximumPayloadSizeBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/adservices/adselection/SellerConfiguration;->mPerBuyerConfigurations:Ljava/util/Set;

    iget-object v3, v0, Landroid/adservices/adselection/SellerConfiguration;->mPerBuyerConfigurations:Ljava/util/Set;

    .line 106
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 104
    :goto_27
    return v1

    .line 109
    .end local v0    # "sellerConfiguration":Landroid/adservices/adselection/SellerConfiguration;
    :cond_28
    return v1
.end method

.method public whitelist getMaximumPayloadSizeBytes()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/adservices/adselection/SellerConfiguration;->mMaximumPayloadSizeBytes:I

    return v0
.end method

.method public whitelist getPerBuyerConfigurations()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/adservices/adselection/PerBuyerConfiguration;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/adservices/adselection/SellerConfiguration;->mPerBuyerConfigurations:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 114
    iget v0, p0, Landroid/adservices/adselection/SellerConfiguration;->mMaximumPayloadSizeBytes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SellerConfiguration;->mPerBuyerConfigurations:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget v0, p0, Landroid/adservices/adselection/SellerConfiguration;->mMaximumPayloadSizeBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Landroid/adservices/adselection/SellerConfiguration;->mPerBuyerConfigurations:Ljava/util/Set;

    new-instance v1, Landroid/adservices/adselection/SellerConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/adservices/adselection/SellerConfiguration$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 98
    return-void
.end method
