.class public final Landroid/app/usage/AppLaunchEstimateInfo;
.super Ljava/lang/Object;
.source "AppLaunchEstimateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/AppLaunchEstimateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist estimatedLaunchTime:J

.field public final blacklist packageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/app/usage/AppLaunchEstimateInfo$1;

    invoke-direct {v0}, Landroid/app/usage/AppLaunchEstimateInfo$1;-><init>()V

    sput-object v0, Landroid/app/usage/AppLaunchEstimateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/usage/AppLaunchEstimateInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/usage/AppLaunchEstimateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "estimatedLaunchTime"    # J

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    .line 45
    iput-wide p2, p0, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    iget-object v0, p0, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-wide v0, p0, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    return-void
.end method
