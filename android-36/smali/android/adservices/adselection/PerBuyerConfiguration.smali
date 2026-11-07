.class public final Landroid/adservices/adselection/PerBuyerConfiguration;
.super Ljava/lang/Object;
.source "PerBuyerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/PerBuyerConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/PerBuyerConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mTargetInputSizeBytes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/adservices/adselection/PerBuyerConfiguration$1;

    invoke-direct {v0}, Landroid/adservices/adselection/PerBuyerConfiguration$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/PerBuyerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;I)V
    .registers 4
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p2, "targetInputSizeBytes"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "Buyer must be set."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 52
    iput p2, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mTargetInputSizeBytes:I

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;ILandroid/adservices/adselection/PerBuyerConfiguration-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/adselection/PerBuyerConfiguration;-><init>(Landroid/adservices/common/AdTechIdentifier;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mTargetInputSizeBytes:I

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/PerBuyerConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/PerBuyerConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    instance-of v0, p1, Landroid/adservices/adselection/PerBuyerConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 103
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/PerBuyerConfiguration;

    .line 104
    .local v0, "perBuyerConfiguration":Landroid/adservices/adselection/PerBuyerConfiguration;
    iget-object v2, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, v0, Landroid/adservices/adselection/PerBuyerConfiguration;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mTargetInputSizeBytes:I

    iget v3, v0, Landroid/adservices/adselection/PerBuyerConfiguration;->mTargetInputSizeBytes:I

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 107
    .end local v0    # "perBuyerConfiguration":Landroid/adservices/adselection/PerBuyerConfiguration;
    :cond_1a
    return v1
.end method

.method public whitelist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist getTargetInputSizeBytes()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mTargetInputSizeBytes:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget v1, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mTargetInputSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-object v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    iget v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration;->mTargetInputSizeBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
