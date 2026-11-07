.class public final Landroid/adservices/common/AdServicesCommonStates;
.super Ljava/lang/Object;
.source "AdServicesCommonStates.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdServicesCommonStates$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdServicesCommonStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMeasurementState:I

.field private final blacklist mPaState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/adservices/common/AdServicesCommonStates$1;

    invoke-direct {v0}, Landroid/adservices/common/AdServicesCommonStates$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdServicesCommonStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "measurementState"    # I
    .param p2, "paState"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/adservices/common/AdServicesCommonStates;->mMeasurementState:I

    .line 51
    iput p2, p0, Landroid/adservices/common/AdServicesCommonStates;->mPaState:I

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/adservices/common/AdServicesCommonStates-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/common/AdServicesCommonStates;-><init>(II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/common/AdServicesCommonStates;->mMeasurementState:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/common/AdServicesCommonStates;->mPaState:I

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AdServicesCommonStates-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesCommonStates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 100
    :cond_4
    instance-of v1, p1, Landroid/adservices/common/AdServicesCommonStates;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 101
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/common/AdServicesCommonStates;

    .line 102
    .local v1, "adservicesCommonStates":Landroid/adservices/common/AdServicesCommonStates;
    invoke-virtual {p0}, Landroid/adservices/common/AdServicesCommonStates;->getMeasurementState()I

    move-result v3

    invoke-virtual {v1}, Landroid/adservices/common/AdServicesCommonStates;->getMeasurementState()I

    move-result v4

    if-ne v3, v4, :cond_22

    .line 103
    invoke-virtual {p0}, Landroid/adservices/common/AdServicesCommonStates;->getPaState()I

    move-result v3

    invoke-virtual {v1}, Landroid/adservices/common/AdServicesCommonStates;->getPaState()I

    move-result v4

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 102
    :goto_23
    return v0
.end method

.method public blacklist getMeasurementState()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/adservices/common/AdServicesCommonStates;->mMeasurementState:I

    return v0
.end method

.method public blacklist getPaState()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/adservices/common/AdServicesCommonStates;->mPaState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 108
    invoke-virtual {p0}, Landroid/adservices/common/AdServicesCommonStates;->getMeasurementState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/adservices/common/AdServicesCommonStates;->getPaState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdservicesCommonStates{mMeasurementState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/common/AdServicesCommonStates;->mMeasurementState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/common/AdServicesCommonStates;->mPaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget v0, p0, Landroid/adservices/common/AdServicesCommonStates;->mMeasurementState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/adservices/common/AdServicesCommonStates;->mPaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
