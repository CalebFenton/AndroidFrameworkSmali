.class public final Landroid/adservices/adselection/GetAdSelectionDataInput;
.super Ljava/lang/Object;
.source "GetAdSelectionDataInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/GetAdSelectionDataInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallerPackageName:Ljava/lang/String;

.field private final blacklist mCoordinatorOriginUri:Landroid/net/Uri;

.field private final blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/adservices/adselection/GetAdSelectionDataInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/GetAdSelectionDataInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/GetAdSelectionDataInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/adservices/adselection/SellerConfiguration;)V
    .registers 5
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "coordinatorOriginUri"    # Landroid/net/Uri;
    .param p4, "sellerConfiguration"    # Landroid/adservices/adselection/SellerConfiguration;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 62
    iput-object p2, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCallerPackageName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCoordinatorOriginUri:Landroid/net/Uri;

    .line 64
    iput-object p4, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/adservices/adselection/SellerConfiguration;Landroid/adservices/adselection/GetAdSelectionDataInput-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/adselection/GetAdSelectionDataInput;-><init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/adservices/adselection/SellerConfiguration;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 71
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCallerPackageName:Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcelable$Creator;)V

    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCoordinatorOriginUri:Landroid/net/Uri;

    .line 76
    sget-object v0, Landroid/adservices/adselection/SellerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 77
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/SellerConfiguration;

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/GetAdSelectionDataInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/GetAdSelectionDataInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(ILandroid/os/Parcel;Landroid/adservices/common/AdTechIdentifier;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceSignals"    # Landroid/adservices/common/AdTechIdentifier;

    .line 111
    invoke-virtual {p2, p1, p0}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$1(ILandroid/os/Parcel;Landroid/net/Uri;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceOrigin"    # Landroid/net/Uri;

    .line 116
    invoke-virtual {p2, p1, p0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$2(ILandroid/os/Parcel;Landroid/adservices/adselection/SellerConfiguration;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceOrigin"    # Landroid/adservices/adselection/SellerConfiguration;

    .line 120
    invoke-virtual {p2, p1, p0}, Landroid/adservices/adselection/SellerConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    instance-of v0, p1, Landroid/adservices/adselection/GetAdSelectionDataInput;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/GetAdSelectionDataInput;

    .line 85
    .local v0, "obj":Landroid/adservices/adselection/GetAdSelectionDataInput;
    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, v0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCallerPackageName:Ljava/lang/String;

    .line 86
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCoordinatorOriginUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCoordinatorOriginUri:Landroid/net/Uri;

    .line 87
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    iget-object v3, v0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    .line 88
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    nop

    .line 85
    :goto_33
    return v1

    .line 90
    .end local v0    # "obj":Landroid/adservices/adselection/GetAdSelectionDataInput;
    :cond_34
    return v1
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCoordinatorOriginUri()Landroid/net/Uri;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCoordinatorOriginUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public blacklist getSellerConfiguration()Landroid/adservices/adselection/SellerConfiguration;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 95
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v1, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCoordinatorOriginUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 112
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mCoordinatorOriginUri:Landroid/net/Uri;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 117
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 121
    return-void
.end method
