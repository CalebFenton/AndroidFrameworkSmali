.class public final Landroid/adservices/adselection/PersistAdSelectionResultInput;
.super Ljava/lang/Object;
.source "PersistAdSelectionResultInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/PersistAdSelectionResultInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdSelectionId:J

.field private final blacklist mAdSelectionResult:[B

.field private final blacklist mCallerPackageName:Ljava/lang/String;

.field private final blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/adservices/adselection/PersistAdSelectionResultInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/PersistAdSelectionResultInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/adservices/common/AdTechIdentifier;[BLjava/lang/String;)V
    .registers 6
    .param p1, "adSelectionId"    # J
    .param p3, "seller"    # Landroid/adservices/common/AdTechIdentifier;
    .param p4, "adSelectionResult"    # [B
    .param p5, "callerPackageName"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-wide p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionId:J

    .line 65
    iput-object p3, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 66
    iput-object p4, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    .line 67
    iput-object p5, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mCallerPackageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/adservices/common/AdTechIdentifier;[BLjava/lang/String;Landroid/adservices/adselection/PersistAdSelectionResultInput-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/adservices/adselection/PersistAdSelectionResultInput;-><init>(JLandroid/adservices/common/AdTechIdentifier;[BLjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionId:J

    .line 74
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 76
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/adservices/adselection/GetAdSelectionDataInput$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 75
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mCallerPackageName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/PersistAdSelectionResultInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/PersistAdSelectionResultInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(ILandroid/os/Parcel;Landroid/adservices/common/AdTechIdentifier;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceSignals"    # Landroid/adservices/common/AdTechIdentifier;

    .line 112
    invoke-virtual {p2, p1, p0}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

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
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    instance-of v0, p1, Landroid/adservices/adselection/PersistAdSelectionResultInput;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/PersistAdSelectionResultInput;

    .line 85
    .local v0, "obj":Landroid/adservices/adselection/PersistAdSelectionResultInput;
    iget-wide v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionId:J

    iget-wide v4, v0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, v0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 86
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    iget-object v3, v0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    .line 87
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mCallerPackageName:Ljava/lang/String;

    .line 88
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    nop

    .line 85
    :goto_31
    return v1

    .line 90
    .end local v0    # "obj":Landroid/adservices/adselection/PersistAdSelectionResultInput;
    :cond_32
    return v1
.end method

.method public blacklist getAdSelectionId()J
    .registers 3

    .line 121
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionId:J

    return-wide v0
.end method

.method public blacklist getAdSelectionResult()[B
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_9

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_9
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    iget-object v1, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 95
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionId:J

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mCallerPackageName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 95
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
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    new-instance v1, Landroid/adservices/adselection/PersistAdSelectionResultInput$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/adservices/adselection/PersistAdSelectionResultInput$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 113
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mAdSelectionResult:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 114
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method
