.class public Landroid/hardware/security/keymint/HardwareAuthToken;
.super Ljava/lang/Object;
.source "HardwareAuthToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/security/keymint/HardwareAuthToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist authenticatorId:J

.field public blacklist authenticatorType:I

.field public blacklist challenge:J

.field public blacklist mac:[B

.field public blacklist timestamp:Landroid/hardware/security/secureclock/Timestamp;

.field public blacklist userId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/security/keymint/HardwareAuthToken$1;

    invoke-direct {v0}, Landroid/hardware/security/keymint/HardwareAuthToken$1;-><init>()V

    sput-object v0, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->challenge:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->userId:J

    .line 15
    iput-wide v0, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->authenticatorId:J

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->authenticatorType:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 81
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 82
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 84
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->timestamp:Landroid/hardware/security/secureclock/Timestamp;

    invoke-direct {p0, v1}, Landroid/hardware/security/keymint/HardwareAuthToken;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ce

    .line 54
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 68
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->challenge:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 68
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->userId:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 68
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->authenticatorId:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 68
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->authenticatorType:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 68
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_96
    :try_start_96
    sget-object v2, Landroid/hardware/security/secureclock/Timestamp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/secureclock/Timestamp;

    iput-object v2, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->timestamp:Landroid/hardware/security/secureclock/Timestamp;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_96 .. :try_end_a4} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 68
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->mac:[B
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_cc

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c6

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    nop

    .line 72
    return-void

    .line 68
    :cond_c6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :catchall_cc
    move-exception v2

    goto :goto_d6

    .line 53
    :cond_ce
    :try_start_ce
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_cc

    .line 67
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/security/keymint/HardwareAuthToken;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_d6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_df

    .line 68
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_df
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-wide v1, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->challenge:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-wide v1, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->userId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-wide v1, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->authenticatorId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget v1, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->authenticatorType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v1, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->timestamp:Landroid/hardware/security/secureclock/Timestamp;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v1, p0, Landroid/hardware/security/keymint/HardwareAuthToken;->mac:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 44
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void
.end method
