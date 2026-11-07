.class public final Landroid/telephony/DataThrottlingRequest;
.super Ljava/lang/Object;
.source "DataThrottlingRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DataThrottlingRequest$Builder;,
        Landroid/telephony/DataThrottlingRequest$DataThrottlingAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataThrottlingRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_THROTTLING_ACTION_HOLD:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_THROTTLING_ACTION_NO_DATA_THROTTLING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_THROTTLING_ACTION_THROTTLE_PRIMARY_CARRIER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_THROTTLING_ACTION_THROTTLE_SECONDARY_CARRIER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mCompletionDurationMillis:J

.field private blacklist mDataThrottlingAction:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 164
    new-instance v0, Landroid/telephony/DataThrottlingRequest$1;

    invoke-direct {v0}, Landroid/telephony/DataThrottlingRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/DataThrottlingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJ)V
    .registers 4
    .param p1, "dataThrottlingAction"    # I
    .param p2, "completionDurationMillis"    # J

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    .line 119
    iput-wide p2, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    .line 120
    return-void
.end method

.method synthetic constructor blacklist <init>(IJLandroid/telephony/DataThrottlingRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/DataThrottlingRequest;-><init>(IJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    .line 125
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/DataThrottlingRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/DataThrottlingRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCompletionDurationMillis()J
    .registers 3

    .line 161
    iget-wide v0, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    return-wide v0
.end method

.method public whitelist getDataThrottlingAction()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataThrottlingRequest , DataThrottlingAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completionDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    .line 132
    iget v0, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-wide v0, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    return-void
.end method
