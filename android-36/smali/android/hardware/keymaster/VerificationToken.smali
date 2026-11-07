.class public Landroid/hardware/keymaster/VerificationToken;
.super Ljava/lang/Object;
.source "VerificationToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/keymaster/VerificationToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist challenge:J

.field public blacklist mac:[B

.field public blacklist securityLevel:I

.field public blacklist timestamp:Landroid/hardware/keymaster/Timestamp;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Landroid/hardware/keymaster/VerificationToken$1;

    invoke-direct {v0}, Landroid/hardware/keymaster/VerificationToken$1;-><init>()V

    sput-object v0, Landroid/hardware/keymaster/VerificationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/keymaster/VerificationToken;->challenge:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/keymaster/VerificationToken;->securityLevel:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 73
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 76
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/keymaster/VerificationToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    invoke-direct {p0, v1}, Landroid/hardware/keymaster/VerificationToken;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_96

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_94

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 60
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/keymaster/VerificationToken;->challenge:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_94

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 60
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/keymaster/Timestamp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/keymaster/Timestamp;

    iput-object v2, p0, Landroid/hardware/keymaster/VerificationToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_94

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 60
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/keymaster/VerificationToken;->securityLevel:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_94

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 60
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/keymaster/VerificationToken;->mac:[B
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_94

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8e

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    nop

    .line 64
    return-void

    .line 60
    :cond_8e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :catchall_94
    move-exception v2

    goto :goto_9e

    .line 49
    :cond_96
    :try_start_96
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/keymaster/VerificationToken;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_94

    .line 59
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/keymaster/VerificationToken;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_9e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a7

    .line 60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_a7
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-wide v1, p0, Landroid/hardware/keymaster/VerificationToken;->challenge:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget-object v1, p0, Landroid/hardware/keymaster/VerificationToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget v1, p0, Landroid/hardware/keymaster/VerificationToken;->securityLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v1, p0, Landroid/hardware/keymaster/VerificationToken;->mac:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 40
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void
.end method
