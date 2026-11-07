.class public final Landroid/net/CaptivePortalData;
.super Ljava/lang/Object;
.source "CaptivePortalData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortalData$Builder;,
        Landroid/net/CaptivePortalData$CaptivePortalDataSource;
    }
.end annotation


# static fields
.field public static final whitelist CAPTIVE_PORTAL_DATA_SOURCE_OTHER:I = 0x0

.field public static final whitelist CAPTIVE_PORTAL_DATA_SOURCE_PASSPOINT:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/CaptivePortalData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mByteLimit:J

.field private final blacklist mCaptive:Z

.field private final blacklist mExpiryTimeMillis:J

.field private final blacklist mIsSessionExtendable:Z

.field private final blacklist mRefreshTimeMillis:J

.field private final blacklist mUserPortalUrl:Landroid/net/Uri;

.field private final blacklist mUserPortalUrlSource:I

.field private final blacklist mVenueFriendlyName:Ljava/lang/String;

.field private final blacklist mVenueInfoUrl:Landroid/net/Uri;

.field private final blacklist mVenueInfoUrlSource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmByteLimit(Landroid/net/CaptivePortalData;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptive(Landroid/net/CaptivePortalData;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpiryTimeMillis(Landroid/net/CaptivePortalData;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSessionExtendable(Landroid/net/CaptivePortalData;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRefreshTimeMillis(Landroid/net/CaptivePortalData;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserPortalUrl(Landroid/net/CaptivePortalData;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserPortalUrlSource(Landroid/net/CaptivePortalData;)I
    .registers 1

    iget p0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrlSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVenueFriendlyName(Landroid/net/CaptivePortalData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/CaptivePortalData;->mVenueFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVenueInfoUrl(Landroid/net/CaptivePortalData;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVenueInfoUrlSource(Landroid/net/CaptivePortalData;)I
    .registers 1

    iget p0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrlSource:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 329
    new-instance v0, Landroid/net/CaptivePortalData$1;

    invoke-direct {v0}, Landroid/net/CaptivePortalData$1;-><init>()V

    sput-object v0, Landroid/net/CaptivePortalData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZLjava/lang/CharSequence;II)V
    .registers 15
    .param p1, "refreshTimeMillis"    # J
    .param p3, "userPortalUrl"    # Landroid/net/Uri;
    .param p4, "venueInfoUrl"    # Landroid/net/Uri;
    .param p5, "isSessionExtendable"    # Z
    .param p6, "byteLimit"    # J
    .param p8, "expiryTimeMillis"    # J
    .param p10, "captive"    # Z
    .param p11, "venueFriendlyName"    # Ljava/lang/CharSequence;
    .param p12, "venueInfoUrlSource"    # I
    .param p13, "userPortalUrlSource"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    .line 70
    iput-object p3, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    .line 71
    iput-object p4, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    .line 72
    iput-boolean p5, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    .line 73
    iput-wide p6, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    .line 74
    iput-wide p8, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    .line 75
    iput-boolean p10, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    .line 76
    if-nez p11, :cond_15

    const/4 v0, 0x0

    goto :goto_19

    :cond_15
    invoke-interface {p11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Landroid/net/CaptivePortalData;->mVenueFriendlyName:Ljava/lang/String;

    .line 77
    iput p12, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrlSource:I

    .line 78
    iput p13, p0, Landroid/net/CaptivePortalData;->mUserPortalUrlSource:I

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZLjava/lang/CharSequence;IILandroid/net/CaptivePortalData-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/net/CaptivePortalData;-><init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZLjava/lang/CharSequence;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "p"    # Landroid/os/Parcel;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 82
    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Landroid/net/CaptivePortalData;-><init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZLjava/lang/CharSequence;II)V

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/CaptivePortalData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/CaptivePortalData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 350
    instance-of v0, p1, Landroid/net/CaptivePortalData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 351
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/CaptivePortalData;

    .line 352
    .local v0, "other":Landroid/net/CaptivePortalData;
    iget-wide v2, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    iget-wide v4, v0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_59

    iget-object v2, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    iget-object v3, v0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    .line 353
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    iget-object v3, v0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    .line 354
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-boolean v2, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    iget-boolean v3, v0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    if-ne v2, v3, :cond_59

    iget-wide v2, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    iget-wide v4, v0, Landroid/net/CaptivePortalData;->mByteLimit:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_59

    iget-wide v2, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    iget-wide v4, v0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_59

    iget-boolean v2, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    iget-boolean v3, v0, Landroid/net/CaptivePortalData;->mCaptive:Z

    if-ne v2, v3, :cond_59

    iget-object v2, p0, Landroid/net/CaptivePortalData;->mVenueFriendlyName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/CaptivePortalData;->mVenueFriendlyName:Ljava/lang/String;

    .line 359
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget v2, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrlSource:I

    iget v3, v0, Landroid/net/CaptivePortalData;->mVenueInfoUrlSource:I

    if-ne v2, v3, :cond_59

    iget v2, p0, Landroid/net/CaptivePortalData;->mUserPortalUrlSource:I

    iget v3, v0, Landroid/net/CaptivePortalData;->mUserPortalUrlSource:I

    if-ne v2, v3, :cond_59

    const/4 v1, 0x1

    goto :goto_5a

    :cond_59
    nop

    .line 352
    :goto_5a
    return v1
.end method

.method public whitelist getByteLimit()J
    .registers 3

    .line 286
    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    return-wide v0
.end method

.method public whitelist getExpiryTimeMillis()J
    .registers 3

    .line 294
    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    return-wide v0
.end method

.method public whitelist getRefreshTimeMillis()J
    .registers 3

    .line 252
    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    return-wide v0
.end method

.method public whitelist getUserPortalUrl()Landroid/net/Uri;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getUserPortalUrlSource()I
    .registers 2

    .line 317
    iget v0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrlSource:I

    return v0
.end method

.method public whitelist getVenueFriendlyName()Ljava/lang/CharSequence;
    .registers 2

    .line 325
    iget-object v0, p0, Landroid/net/CaptivePortalData;->mVenueFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVenueInfoUrl()Landroid/net/Uri;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getVenueInfoUrlSource()I
    .registers 2

    .line 309
    iget v0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrlSource:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 13

    .line 343
    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    iget-object v4, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    .line 344
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Landroid/net/CaptivePortalData;->mVenueFriendlyName:Ljava/lang/String;

    iget v0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrlSource:I

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrlSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 343
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isCaptive()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    return v0
.end method

.method public whitelist isSessionExtendable()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptivePortalData {refreshTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userPortalUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", venueInfoUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSessionExtendable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", byteLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiryTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", venueFriendlyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/CaptivePortalData;->mVenueFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", venueInfoUrlSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrlSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userPortalUrlSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/CaptivePortalData;->mUserPortalUrlSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

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

    .line 94
    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-object v0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    iget-object v0, p0, Landroid/net/CaptivePortalData;->mVenueFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrlSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrlSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
