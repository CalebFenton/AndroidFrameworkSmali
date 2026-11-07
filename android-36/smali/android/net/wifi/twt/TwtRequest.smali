.class public final Landroid/net/wifi/twt/TwtRequest;
.super Ljava/lang/Object;
.source "TwtRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/twt/TwtRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/twt/TwtRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLinkId:I

.field private final blacklist mMaxWakeDurationMicros:I

.field private final blacklist mMaxWakeIntervalMicros:J

.field private final blacklist mMinWakeDurationMicros:I

.field private final blacklist mMinWakeIntervalMicros:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/net/wifi/twt/TwtRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/twt/TwtRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/twt/TwtRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/twt/TwtRequest$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/net/wifi/twt/TwtRequest$Builder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/net/wifi/twt/TwtRequest$Builder;->-$$Nest$fgetmMinWakeDurationMicros(Landroid/net/wifi/twt/TwtRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMinWakeDurationMicros:I

    .line 49
    invoke-static {p1}, Landroid/net/wifi/twt/TwtRequest$Builder;->-$$Nest$fgetmMaxWakeDurationMicros(Landroid/net/wifi/twt/TwtRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMaxWakeDurationMicros:I

    .line 50
    invoke-static {p1}, Landroid/net/wifi/twt/TwtRequest$Builder;->-$$Nest$fgetmMinWakeIntervalMicros(Landroid/net/wifi/twt/TwtRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMinWakeIntervalMicros:J

    .line 51
    invoke-static {p1}, Landroid/net/wifi/twt/TwtRequest$Builder;->-$$Nest$fgetmMaxWakeIntervalMicros(Landroid/net/wifi/twt/TwtRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMaxWakeIntervalMicros:J

    .line 52
    invoke-static {p1}, Landroid/net/wifi/twt/TwtRequest$Builder;->-$$Nest$fgetmLinkId(Landroid/net/wifi/twt/TwtRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/twt/TwtRequest;->mLinkId:I

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/twt/TwtRequest$Builder;Landroid/net/wifi/twt/TwtRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/twt/TwtRequest;-><init>(Landroid/net/wifi/twt/TwtRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLinkId()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/net/wifi/twt/TwtRequest;->mLinkId:I

    return v0
.end method

.method public whitelist getMaxWakeDurationMicros()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMaxWakeDurationMicros:I

    return v0
.end method

.method public whitelist getMaxWakeIntervalMicros()J
    .registers 3

    .line 92
    iget-wide v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMaxWakeIntervalMicros:J

    return-wide v0
.end method

.method public whitelist getMinWakeDurationMicros()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMinWakeDurationMicros:I

    return v0
.end method

.method public whitelist getMinWakeIntervalMicros()J
    .registers 3

    .line 82
    iget-wide v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMinWakeIntervalMicros:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMinWakeDurationMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMaxWakeDurationMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-wide v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMinWakeIntervalMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-wide v0, p0, Landroid/net/wifi/twt/TwtRequest;->mMinWakeIntervalMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget v0, p0, Landroid/net/wifi/twt/TwtRequest;->mLinkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
