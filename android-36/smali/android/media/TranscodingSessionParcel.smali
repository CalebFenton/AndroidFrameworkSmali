.class public Landroid/media/TranscodingSessionParcel;
.super Ljava/lang/Object;
.source "TranscodingSessionParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/TranscodingSessionParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist awaitNumberOfSessions:I

.field public blacklist request:Landroid/media/TranscodingRequestParcel;

.field public blacklist sessionId:I

.field public blacklist videoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/media/TranscodingSessionParcel$1;

    invoke-direct {v0}, Landroid/media/TranscodingSessionParcel$1;-><init>()V

    sput-object v0, Landroid/media/TranscodingSessionParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroid/media/TranscodingSessionParcel;->sessionId:I

    .line 34
    iput v0, p0, Landroid/media/TranscodingSessionParcel;->awaitNumberOfSessions:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 90
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 91
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_e
    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/media/TranscodingSessionParcel;->request:Landroid/media/TranscodingRequestParcel;

    invoke-direct {p0, v0}, Landroid/media/TranscodingSessionParcel;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 85
    iget-object v1, p0, Landroid/media/TranscodingSessionParcel;->videoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;

    invoke-direct {p0, v1}, Landroid/media/TranscodingSessionParcel;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    .line 65
    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_84

    .line 66
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_82

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 76
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TranscodingSessionParcel;->sessionId:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_82

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 76
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_3c
    :try_start_3c
    sget-object v2, Landroid/media/TranscodingRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TranscodingRequestParcel;

    iput-object v2, p0, Landroid/media/TranscodingSessionParcel;->request:Landroid/media/TranscodingRequestParcel;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_82

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_57

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_51

    goto :goto_1a

    .line 76
    :cond_51
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_57
    :try_start_57
    sget-object v2, Landroid/media/TranscodingVideoTrackFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TranscodingVideoTrackFormat;

    iput-object v2, p0, Landroid/media/TranscodingSessionParcel;->videoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_82

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_72

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6c

    goto :goto_1a

    .line 76
    :cond_6c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_72
    :try_start_72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TranscodingSessionParcel;->awaitNumberOfSessions:I
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_82

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    goto :goto_1a

    .line 76
    :cond_7c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_82
    move-exception p0

    goto :goto_8c

    .line 65
    :cond_84
    :try_start_84
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_82

    :goto_8c
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_95

    .line 76
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    add-int/2addr v0, v1

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    throw p0
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v1, p0, Landroid/media/TranscodingSessionParcel;->sessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v1, p0, Landroid/media/TranscodingSessionParcel;->request:Landroid/media/TranscodingRequestParcel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 53
    iget-object v1, p0, Landroid/media/TranscodingSessionParcel;->videoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 54
    iget p0, p0, Landroid/media/TranscodingSessionParcel;->awaitNumberOfSessions:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
