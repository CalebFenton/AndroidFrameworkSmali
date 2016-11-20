.class public Landroid/hardware/location/MemoryRegion;
.super Ljava/lang/Object;
.source "MemoryRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/MemoryRegion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/MemoryRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsExecutable:Z

.field private mIsReadable:Z

.field private mIsWritable:Z

.field private mSizeBytes:I

.field private mSizeBytesFree:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/hardware/location/MemoryRegion$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/MemoryRegion$1;-><init>()V

    #@5
    .line 130
    sput-object v0, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    #@b
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    #@11
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    move v0, v1

    #@18
    :goto_0
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    #@1a
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    move v0, v1

    #@21
    :goto_1
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    #@23
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    :goto_2
    iput-boolean v1, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    #@2b
    .line 122
    return-void

    #@2c
    :cond_0
    move v0, v2

    #@2d
    .line 125
    goto :goto_0

    #@2e
    :cond_1
    move v0, v2

    #@2f
    .line 126
    goto :goto_1

    #@30
    :cond_2
    move v1, v2

    #@31
    .line 127
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCapacityBytes()I
    .locals 1

    #@0
    .prologue
    .line 41
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    #@2
    return v0
.end method

.method public getFreeCapacityBytes()I
    .locals 1

    #@0
    .prologue
    .line 50
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    #@2
    return v0
.end method

.method public isExecutable()Z
    .locals 1

    #@0
    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    #@2
    return v0
.end method

.method public isReadable()Z
    .locals 1

    #@0
    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    #@2
    return v0
.end method

.method public isWritable()Z
    .locals 1

    #@0
    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 83
    const-string/jumbo v0, ""

    #@3
    .line 85
    .local v0, "mask":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isReadable()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, "r"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 91
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isWritable()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, "w"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 97
    :goto_1
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isExecutable()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    const-string/jumbo v3, "x"

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    .line 103
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "[ "

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    iget v3, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    const-string/jumbo v3, "/ "

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    iget v3, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    const-string/jumbo v3, " ] : "

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    .line 105
    .local v1, "retVal":Ljava/lang/String;
    return-object v1

    #@80
    .line 88
    .end local v1    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    const-string/jumbo v3, "-"

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    goto :goto_0

    #@95
    .line 94
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    const-string/jumbo v3, "-"

    #@a1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v0

    #@a9
    goto :goto_1

    #@aa
    .line 100
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    const-string/jumbo v3, "-"

    #@b6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v0

    #@be
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 115
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 116
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 117
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 118
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    move v0, v1

    #@19
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 119
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 114
    return-void

    #@24
    :cond_0
    move v0, v2

    #@25
    .line 117
    goto :goto_0

    #@26
    :cond_1
    move v0, v2

    #@27
    .line 118
    goto :goto_1

    #@28
    :cond_2
    move v1, v2

    #@29
    .line 119
    goto :goto_2
.end method
