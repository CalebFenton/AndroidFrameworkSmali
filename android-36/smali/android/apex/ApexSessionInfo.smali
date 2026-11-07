.class public Landroid/apex/ApexSessionInfo;
.super Ljava/lang/Object;
.source "ApexSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist crashingNativeProcess:Ljava/lang/String;

.field public blacklist errorMessage:Ljava/lang/String;

.field public blacklist isActivated:Z

.field public blacklist isActivationFailed:Z

.field public blacklist isRevertFailed:Z

.field public blacklist isRevertInProgress:Z

.field public blacklist isReverted:Z

.field public blacklist isStaged:Z

.field public blacklist isSuccess:Z

.field public blacklist isUnknown:Z

.field public blacklist isVerified:Z

.field public blacklist sessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/apex/ApexSessionInfo$1;

    invoke-direct {v0}, Landroid/apex/ApexSessionInfo$1;-><init>()V

    sput-object v0, Landroid/apex/ApexSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    .line 14
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 15
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    .line 16
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    .line 17
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    .line 18
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    .line 19
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 20
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 21
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 22
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1a0

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 90
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 90
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4c

    move v2, v5

    goto :goto_4d

    :cond_4c
    move v2, v6

    :goto_4d
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_65

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5f

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 90
    :cond_5f
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    move v2, v5

    goto :goto_6e

    :cond_6d
    move v2, v6

    :goto_6e
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_86

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_80

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 90
    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_86
    :try_start_86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8e

    move v2, v5

    goto :goto_8f

    :cond_8e
    move v2, v6

    :goto_8f
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a7

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a1

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 90
    :cond_a1
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_a7
    :try_start_a7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_af

    move v2, v5

    goto :goto_b0

    :cond_af
    move v2, v6

    :goto_b0
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_a7 .. :try_end_b6} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 90
    :cond_c2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d0

    move v2, v5

    goto :goto_d1

    :cond_d0
    move v2, v6

    :goto_d1
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d7
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e9

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e3

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 90
    :cond_e3
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_e9
    :try_start_e9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f1

    move v2, v5

    goto :goto_f2

    :cond_f1
    move v2, v6

    :goto_f2
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_e9 .. :try_end_f8} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 90
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_112

    move v2, v5

    goto :goto_113

    :cond_112
    move v2, v6

    :goto_113
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_119
    .catchall {:try_start_10a .. :try_end_119} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12b

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_125

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 90
    :cond_125
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_12b
    :try_start_12b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_133

    move v2, v5

    goto :goto_134

    :cond_133
    move v2, v6

    :goto_134
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13a
    .catchall {:try_start_12b .. :try_end_13a} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14c

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_146

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 90
    :cond_146
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_14c
    :try_start_14c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_153

    goto :goto_154

    :cond_153
    move v5, v6

    :goto_154
    iput-boolean v5, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15a
    .catchall {:try_start_14c .. :try_end_15a} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_16c

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_166

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 90
    :cond_166
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_16c
    :try_start_16c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_176
    .catchall {:try_start_16c .. :try_end_176} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_188

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_182

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 90
    :cond_182
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_188
    :try_start_188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;
    :try_end_18e
    .catchall {:try_start_188 .. :try_end_18e} :catchall_19e

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_198

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    nop

    .line 94
    return-void

    .line 90
    :cond_198
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :catchall_19e
    move-exception v2

    goto :goto_1a8

    .line 63
    :cond_1a0
    :try_start_1a0
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/apex/ApexSessionInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_1a8
    .catchall {:try_start_1a0 .. :try_end_1a8} :catchall_19e

    .line 89
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/apex/ApexSessionInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_1a8
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1b1

    .line 90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_1b1
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v1, p0, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 54
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
