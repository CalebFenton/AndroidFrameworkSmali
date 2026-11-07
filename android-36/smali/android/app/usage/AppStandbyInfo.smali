.class public final Landroid/app/usage/AppStandbyInfo;
.super Ljava/lang/Object;
.source "AppStandbyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o mPackageName:Ljava/lang/String;

.field public greylist-max-o mStandbyBucket:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/app/usage/AppStandbyInfo$1;

    invoke-direct {v0}, Landroid/app/usage/AppStandbyInfo$1;-><init>()V

    sput-object v0, Landroid/app/usage/AppStandbyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/usage/AppStandbyInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/usage/AppStandbyInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 43
    iput p2, p0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget-object v0, p0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
