.class public final Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
.super Ljava/lang/Object;
.source "TelephonyTimeZoneAlgorithmStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlgorithmStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus$1;

    invoke-direct {v0}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus$1;-><init>()V

    sput-object v0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "algorithmStatus"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->requireValidDetectionAlgorithmStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    .line 40
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
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 83
    return v0

    .line 85
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 88
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    .line 89
    .local v2, "that":Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    iget v3, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    iget v4, v2, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 86
    .end local v2    # "that":Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public blacklist getAlgorithmStatus()I
    .registers 2

    .line 46
    iget v0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyTimeZoneAlgorithmStatus{mAlgorithmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    .line 52
    invoke-static {v1}, Landroid/app/time/DetectorStatusTypes;->detectionAlgorithmStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->mAlgorithmStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
