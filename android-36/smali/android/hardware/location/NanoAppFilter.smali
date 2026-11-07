.class public Landroid/hardware/location/NanoAppFilter;
.super Ljava/lang/Object;
.source "NanoAppFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist APP_ANY:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAGS_VERSION_ANY:I = -0x1

.field public static final whitelist FLAGS_VERSION_GREAT_THAN:I = 0x2

.field public static final whitelist FLAGS_VERSION_LESS_THAN:I = 0x4

.field public static final whitelist FLAGS_VERSION_STRICTLY_EQUAL:I = 0x8

.field public static final whitelist HUB_ANY:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NanoAppFilter"

.field public static final whitelist VENDOR_ANY:I = -0x1


# instance fields
.field private greylist-max-o mAppId:J

.field private greylist-max-o mAppIdVendorMask:J

.field private greylist-max-o mAppVersion:I

.field private greylist-max-o mContextHubId:I

.field private greylist-max-o mVersionRestrictionMask:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Landroid/hardware/location/NanoAppFilter$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppFilter$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JIIJ)V
    .registers 8
    .param p1, "appId"    # J
    .param p3, "appVersion"    # I
    .param p4, "versionMask"    # I
    .param p5, "vendorMask"    # J

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 112
    iput-wide p1, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 113
    iput p3, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 114
    iput p4, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 115
    iput-wide p5, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    .line 116
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o versionsMatch(III)Z
    .registers 5
    .param p1, "versionRestrictionMask"    # I
    .param p2, "expected"    # I
    .param p3, "actual"    # I

    .line 120
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z
    .registers 6
    .param p1, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 130
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v0

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    if-ne v0, v1, :cond_2f

    :cond_d
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    .line 131
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    :cond_1f
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 132
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppVersion()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/location/NanoAppFilter;->versionsMatch(III)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 130
    :goto_30
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nanoAppId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nanoAppVersion: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendorMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    return-void
.end method
