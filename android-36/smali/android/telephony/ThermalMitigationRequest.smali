.class public final Landroid/telephony/ThermalMitigationRequest;
.super Ljava/lang/Object;
.source "ThermalMitigationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ThermalMitigationRequest$Builder;,
        Landroid/telephony/ThermalMitigationRequest$ThermalMitigationAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ThermalMitigationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_ACTION_DATA_THROTTLING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_ACTION_RADIO_OFF:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_ACTION_VOICE_ONLY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

.field private blacklist mThermalMitigationAction:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/telephony/ThermalMitigationRequest$1;

    invoke-direct {v0}, Landroid/telephony/ThermalMitigationRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/ThermalMitigationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/telephony/DataThrottlingRequest;)V
    .registers 3
    .param p1, "thermalMitigationAction"    # I
    .param p2, "dataThrottlingRequest"    # Landroid/telephony/DataThrottlingRequest;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Landroid/telephony/ThermalMitigationRequest;->mThermalMitigationAction:I

    .line 98
    iput-object p2, p0, Landroid/telephony/ThermalMitigationRequest;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/telephony/DataThrottlingRequest;Landroid/telephony/ThermalMitigationRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telephony/ThermalMitigationRequest;-><init>(ILandroid/telephony/DataThrottlingRequest;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ThermalMitigationRequest;->mThermalMitigationAction:I

    .line 103
    const-class v0, Landroid/telephony/DataThrottlingRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/DataThrottlingRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DataThrottlingRequest;

    iput-object v0, p0, Landroid/telephony/ThermalMitigationRequest;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    .line 104
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ThermalMitigationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ThermalMitigationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataThrottlingRequest()Landroid/telephony/DataThrottlingRequest;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/telephony/ThermalMitigationRequest;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    return-object v0
.end method

.method public whitelist getThermalMitigationAction()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/telephony/ThermalMitigationRequest;->mThermalMitigationAction:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ThermalMitigationRequest , thermalMitigationAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ThermalMitigationRequest;->mThermalMitigationAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataThrottlingRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ThermalMitigationRequest;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget v0, p0, Landroid/telephony/ThermalMitigationRequest;->mThermalMitigationAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/telephony/ThermalMitigationRequest;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    return-void
.end method
