.class public final Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;
.super Ljava/lang/Object;
.source "SetAdCounterHistogramOverrideInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdCounterKey:I

.field private final blacklist mAdEventType:I

.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mCustomAudienceName:Ljava/lang/String;

.field private final blacklist mCustomAudienceOwner:Ljava/lang/String;

.field private final blacklist mHistogramTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmAdEventType(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdEventType:I

    .line 78
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmAdCounterKey(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdCounterKey:I

    .line 79
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmHistogramTimestamps(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mHistogramTimestamps:Ljava/util/List;

    .line 80
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmBuyer(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 81
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmCustomAudienceOwner(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceOwner:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmCustomAudienceName(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;-><init>(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdEventType:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdCounterKey:I

    .line 90
    invoke-static {p1}, Lcom/android/adservices/AdServicesParcelableUtil;->readInstantListFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mHistogramTimestamps:Ljava/util/List;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/adservices/common/AdTechIdentifier;->fromString(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceOwner:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdCounterKey()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdCounterKey:I

    return v0
.end method

.method public blacklist getAdEventType()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdEventType:I

    return v0
.end method

.method public blacklist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public blacklist getCustomAudienceName()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCustomAudienceOwner()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceOwner:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHistogramTimestamps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mHistogramTimestamps:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAdCounterHistogramOverrideInput{mAdEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdCounterKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdCounterKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistogramTimestamps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mHistogramTimestamps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBuyer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomAudienceOwner=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mCustomAudienceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 202
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mAdCounterKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mHistogramTimestamps:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->writeInstantListToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 207
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0}, Landroid/adservices/common/AdTechIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->mCustomAudienceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return-void
.end method
