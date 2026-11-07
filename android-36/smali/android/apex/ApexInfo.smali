.class public Landroid/apex/ApexInfo;
.super Ljava/lang/Object;
.source "ApexInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apex/ApexInfo$Partition;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activeApexChanged:Z

.field public blacklist hasClassPathJars:Z

.field public blacklist isActive:Z

.field public blacklist isFactory:Z

.field public blacklist moduleName:Ljava/lang/String;

.field public blacklist modulePath:Ljava/lang/String;

.field public blacklist partition:B

.field public blacklist preinstalledModulePath:Ljava/lang/String;

.field public blacklist versionCode:J

.field public blacklist versionName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/apex/ApexInfo$1;

    invoke-direct {v0}, Landroid/apex/ApexInfo$1;-><init>()V

    sput-object v0, Landroid/apex/ApexInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/apex/ApexInfo;->versionCode:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/apex/ApexInfo;->isFactory:Z

    .line 18
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->isActive:Z

    .line 20
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    .line 30
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 67
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_14f

    .line 70
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 92
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 92
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 92
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 92
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/apex/ApexInfo;->versionCode:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 92
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 92
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_bc

    move v2, v5

    goto :goto_bd

    :cond_bc
    move v2, v6

    :goto_bd
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->isFactory:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d5

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cf

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 92
    :cond_cf
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_d5
    :try_start_d5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_dd

    move v2, v5

    goto :goto_de

    :cond_dd
    move v2, v6

    :goto_de
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->isActive:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e4
    .catchall {:try_start_d5 .. :try_end_e4} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f6

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f0

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 92
    :cond_f0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_f6
    :try_start_f6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fe

    move v2, v5

    goto :goto_ff

    :cond_fe
    move v2, v6

    :goto_ff
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_105
    .catchall {:try_start_f6 .. :try_end_105} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_117

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_111

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 92
    :cond_111
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_117
    :try_start_117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11e

    goto :goto_11f

    :cond_11e
    move v5, v6

    :goto_11f
    iput-boolean v5, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_125
    .catchall {:try_start_117 .. :try_end_125} :catchall_14d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_137

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_131

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 92
    :cond_131
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_137
    :try_start_137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/apex/ApexInfo;->partition:B
    :try_end_13d
    .catchall {:try_start_137 .. :try_end_13d} :catchall_14d

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_147

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    nop

    .line 96
    return-void

    .line 92
    :cond_147
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :catchall_14d
    move-exception v2

    goto :goto_157

    .line 69
    :cond_14f
    :try_start_14f
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/apex/ApexInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_157
    .catchall {:try_start_14f .. :try_end_157} :catchall_14d

    .line 91
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/apex/ApexInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_157
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_160

    .line 92
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_160
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v1, p0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-wide v1, p0, Landroid/apex/ApexInfo;->versionCode:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-object v1, p0, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-boolean v1, p0, Landroid/apex/ApexInfo;->isFactory:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-boolean v1, p0, Landroid/apex/ApexInfo;->isActive:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean v1, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-boolean v1, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-byte v1, p0, Landroid/apex/ApexInfo;->partition:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 60
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void
.end method
