.class public final Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;
.super Ljava/lang/Object;
.source "RemoveAdCounterHistogramOverrideInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdCounterKey:I

.field private final blacklist mAdEventType:I

.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmAdEventType(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdEventType:I

    .line 68
    invoke-static {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmAdCounterKey(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdCounterKey:I

    .line 69
    invoke-static {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;->-$$Nest$fgetmBuyer(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;-><init>(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdEventType:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdCounterKey:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/adservices/common/AdTechIdentifier;->fromString(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdCounterKey()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdCounterKey:I

    return v0
.end method

.method public blacklist getAdEventType()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdEventType:I

    return v0
.end method

.method public blacklist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveAdCounterHistogramOverrideInput{mAdEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdCounterKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdCounterKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBuyer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

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
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mAdCounterKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0}, Landroid/adservices/common/AdTechIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return-void
.end method
