.class public Landroid/hardware/location/MemoryRegion;
.super Ljava/lang/Object;
.source "MemoryRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/MemoryRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mIsExecutable:Z

.field private greylist-max-o mIsReadable:Z

.field private greylist-max-o mIsWritable:Z

.field private greylist-max-o mSizeBytes:I

.field private greylist-max-o mSizeBytesFree:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 165
    new-instance v0, Landroid/hardware/location/MemoryRegion$1;

    invoke-direct {v0}, Landroid/hardware/location/MemoryRegion$1;-><init>()V

    sput-object v0, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    iput-boolean v1, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    .line 163
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 117
    return v0

    .line 120
    :cond_4
    const/4 v1, 0x0

    .line 121
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/MemoryRegion;

    if-eqz v2, :cond_37

    .line 122
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/MemoryRegion;

    .line 123
    .local v2, "other":Landroid/hardware/location/MemoryRegion;
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->getCapacityBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    if-ne v3, v4, :cond_35

    .line 124
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->getFreeCapacityBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    if-ne v3, v4, :cond_35

    .line 125
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isReadable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    if-ne v3, v4, :cond_35

    .line 126
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isWritable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    if-ne v3, v4, :cond_35

    .line 127
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isExecutable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    if-ne v3, v4, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    move v1, v0

    .line 130
    .end local v2    # "other":Landroid/hardware/location/MemoryRegion;
    :cond_37
    return v1
.end method

.method public whitelist getCapacityBytes()I
    .registers 2

    .line 46
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    return v0
.end method

.method public whitelist getFreeCapacityBytes()I
    .registers 2

    .line 55
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 135
    invoke-static {}, Landroid/chre/flags/Flags;->fixApiCheck()Z

    move-result v0

    if-nez v0, :cond_b

    .line 136
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 139
    :cond_b
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    .line 140
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isExecutable()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    return v0
.end method

.method public whitelist isReadable()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    return v0
.end method

.method public whitelist isWritable()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 89
    const-string v0, ""

    .line 91
    .local v0, "mask":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isReadable()Z

    move-result v1

    const-string v2, "-"

    if-eqz v1, :cond_1e

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 94
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_2f
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 100
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_5a
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isExecutable()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    .line 106
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
