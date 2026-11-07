.class public Landroid/hardware/contexthub/ContextHubInfo;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist chreApiMajorVersion:B

.field public blacklist chreApiMinorVersion:B

.field public blacklist chrePatchVersion:C

.field public blacklist chrePlatformId:J

.field public blacklist id:I

.field public blacklist maxSupportedMessageLengthBytes:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist peakMips:F

.field public blacklist supportedPermissions:[Ljava/lang/String;

.field public blacklist supportsReliableMessages:Z

.field public blacklist toolchain:Ljava/lang/String;

.field public blacklist vendor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/hardware/contexthub/ContextHubInfo$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    .line 16
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    .line 17
    iput v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    .line 18
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    .line 19
    iput-byte v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    .line 20
    iput-byte v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    .line 21
    iput-char v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    .line 23
    iput-boolean v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->supportsReliableMessages:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 62
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_173

    .line 65
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 91
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 91
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 91
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 91
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 91
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 91
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 91
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 91
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 91
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 91
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12d
    .catchall {:try_start_122 .. :try_end_12d} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13f

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_139

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 91
    :cond_139
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_13f
    :try_start_13f
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_149
    .catchall {:try_start_13f .. :try_end_149} :catchall_171

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15b

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_155

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 91
    :cond_155
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_15b
    :try_start_15b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->supportsReliableMessages:Z
    :try_end_161
    .catchall {:try_start_15b .. :try_end_161} :catchall_171

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16b

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    nop

    .line 95
    return-void

    .line 91
    :cond_16b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :catchall_171
    move-exception v2

    goto :goto_17b

    .line 64
    :cond_173
    :try_start_173
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/contexthub/ContextHubInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_17b
    .catchall {:try_start_173 .. :try_end_17b} :catchall_171

    .line 90
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/contexthub/ContextHubInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_17b
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_184

    .line 91
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_184
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 47
    iget v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-wide v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-byte v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    iget-byte v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    iget-char v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 53
    iget-boolean v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->supportsReliableMessages:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 55
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void
.end method
