.class public final Landroid/adservices/adselection/UpdateAdCounterHistogramInput;
.super Ljava/lang/Object;
.source "UpdateAdCounterHistogramInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/UpdateAdCounterHistogramInput;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UNSET_CALLER_PACKAGE_NAME_MESSAGE:Ljava/lang/String; = "Caller package name must not be null"


# instance fields
.field private final blacklist mAdEventType:I

.field private final blacklist mAdSelectionId:J

.field private final blacklist mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->-$$Nest$fgetmAdSelectionId(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdSelectionId:J

    .line 74
    invoke-static {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->-$$Nest$fgetmAdEventType(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdEventType:I

    .line 75
    invoke-static {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->-$$Nest$fgetmCallerAdTech(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    .line 76
    invoke-static {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->-$$Nest$fgetmCallerPackageName(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerPackageName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;Landroid/adservices/adselection/UpdateAdCounterHistogramInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;-><init>(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdSelectionId:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdEventType:I

    .line 84
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerPackageName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/UpdateAdCounterHistogramInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 159
    :cond_4
    instance-of v1, p1, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 160
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;

    .line 161
    .local v1, "that":Landroid/adservices/adselection/UpdateAdCounterHistogramInput;
    iget-wide v3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdSelectionId:J

    iget-wide v5, v1, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdSelectionId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    iget v3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdEventType:I

    iget v4, v1, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdEventType:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, v1, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    .line 163
    invoke-virtual {v3, v4}, Landroid/adservices/common/AdTechIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerPackageName:Ljava/lang/String;

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    .line 161
    :goto_31
    return v0
.end method

.method public blacklist getAdEventType()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdEventType:I

    return v0
.end method

.method public blacklist getAdSelectionId()J
    .registers 3

    .line 98
    iget-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdSelectionId:J

    return-wide v0
.end method

.method public blacklist getCallerAdTech()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 170
    iget-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerPackageName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateAdCounterHistogramInput{mAdSelectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdSelectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallerAdTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallerPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

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

    .line 140
    iget-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdSelectionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mAdEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 143
    iget-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return-void
.end method
