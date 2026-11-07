.class public Landroid/hardware/contexthub/ContextHubMessage;
.super Ljava/lang/Object;
.source "ContextHubMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/ContextHubMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist hostEndPoint:C

.field public blacklist isReliable:Z

.field public blacklist messageBody:[B

.field public blacklist messageSequenceNumber:I

.field public blacklist messageType:I

.field public blacklist nanoappId:J

.field public blacklist permissions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/contexthub/ContextHubMessage$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 13
    const/4 v0, 0x0

    iput-char v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 14
    iput v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 17
    iput-boolean v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    .line 18
    iput v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "_mask":I
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

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_e7

    .line 55
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 71
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_e5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 71
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_e5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 71
    :cond_59
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_e5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7b

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_75

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 71
    :cond_75
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_7b
    :try_start_7b
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_e5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_97

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_91

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 71
    :cond_91
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_97
    :try_start_97
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_e5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b3

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ad

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 71
    :cond_ad
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_b3
    :try_start_b3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bd
    .catchall {:try_start_b3 .. :try_end_bd} :catchall_e5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cf

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c9

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 71
    :cond_c9
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_cf
    :try_start_cf
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_e5

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_df

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    nop

    .line 75
    return-void

    .line 71
    :cond_df
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :catchall_e5
    move-exception v2

    goto :goto_ef

    .line 54
    :cond_e7
    :try_start_e7
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/contexthub/ContextHubMessage;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_e5

    .line 70
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/contexthub/ContextHubMessage;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_ef
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_f8

    .line 71
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_f8
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
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
    iget-wide v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-char v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 41
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 42
    iget-boolean v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 43
    iget v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 45
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
