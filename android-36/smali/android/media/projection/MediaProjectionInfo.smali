.class public final Landroid/media/projection/MediaProjectionInfo;
.super Ljava/lang/Object;
.source "MediaProjectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/projection/MediaProjectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/media/projection/MediaProjectionInfo$1;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionInfo$1;-><init>()V

    sput-object v0, Landroid/media/projection/MediaProjectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    .line 41
    invoke-static {p1}, Landroid/app/ActivityOptions$LaunchCookie;->readFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ActivityOptions$LaunchCookie;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/os/UserHandle;
    .param p3, "launchCookie"    # Landroid/app/ActivityOptions$LaunchCookie;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    .line 35
    iput-object p3, p0, Landroid/media/projection/MediaProjectionInfo;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p1, Landroid/media/projection/MediaProjectionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Landroid/media/projection/MediaProjectionInfo;

    .line 59
    .local v0, "other":Landroid/media/projection/MediaProjectionInfo;
    iget-object v2, v0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    .line 60
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Landroid/media/projection/MediaProjectionInfo;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    iget-object v3, p0, Landroid/media/projection/MediaProjectionInfo;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    .line 61
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 59
    :goto_29
    return v1

    .line 63
    .end local v0    # "other":Landroid/media/projection/MediaProjectionInfo;
    :cond_2a
    return v1
.end method

.method public blacklist getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    return-object v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 68
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaProjectionInfo{mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLaunchCookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/projection/MediaProjectionInfo;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 88
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    invoke-static {v0, p1}, Landroid/app/ActivityOptions$LaunchCookie;->writeToParcel(Landroid/app/ActivityOptions$LaunchCookie;Landroid/os/Parcel;)V

    .line 89
    return-void
.end method
