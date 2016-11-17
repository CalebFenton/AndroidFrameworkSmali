.class public Landroid/hardware/location/NanoAppFilter;
.super Ljava/lang/Object;
.source "NanoAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/NanoAppFilter$1;
    }
.end annotation


# static fields
.field public static final APP_ANY:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/NanoAppFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAGS_VERSION_ANY:I = -0x1

.field public static final FLAGS_VERSION_GREAT_THAN:I = 0x2

.field public static final FLAGS_VERSION_LESS_THAN:I = 0x4

.field public static final FLAGS_VERSION_STRICTLY_EQUAL:I = 0x8

.field public static final HUB_ANY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NanoAppFilter"

.field public static final VENDOR_ANY:I = -0x1


# instance fields
.field private mAppId:J

.field private mAppIdVendorMask:J

.field private mAppVersion:I

.field private mContextHubId:I

.field private mVersionRestrictionMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/hardware/location/NanoAppFilter$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/NanoAppFilter$1;-><init>()V

    #@5
    .line 132
    sput-object v0, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(JIIJ)V
    .locals 1
    .param p1, "appId"    # J
    .param p3, "appVersion"    # I
    .param p4, "versionMask"    # I
    .param p5, "vendorMask"    # J

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    iput-wide p1, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    #@5
    .line 110
    iput p3, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    #@7
    .line 111
    iput p4, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    #@9
    .line 112
    iput-wide p5, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    #@b
    .line 108
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    #@9
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    #@f
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    #@15
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    int-to-long v0, v0

    #@1a
    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    #@1c
    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppFilter;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppFilter;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private versionsMatch(III)Z
    .locals 1
    .param p1, "versionRestrictionMask"    # I
    .param p2, "expected"    # I
    .param p3, "actual"    # I

    #@0
    .prologue
    .line 117
    const/4 v0, 0x1

    #@1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    #@0
    .prologue
    .line 127
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    #@8
    move-result v0

    #@9
    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    #@b
    if-ne v0, v1, :cond_2

    #@d
    .line 128
    :cond_0
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    #@f
    const-wide/16 v2, -0x1

    #@11
    cmp-long v0, v0, v2

    #@13
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    #@18
    move-result-wide v0

    #@19
    iget-wide v2, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 129
    :cond_1
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    #@21
    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    #@23
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppVersion()I

    #@26
    move-result v2

    #@27
    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/location/NanoAppFilter;->versionsMatch(III)Z

    #@2a
    move-result v0

    #@2b
    .line 127
    :goto_0
    return v0

    #@2c
    :cond_2
    const/4 v0, 0x0

    #@2d
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 95
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 96
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 97
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 92
    return-void
.end method
