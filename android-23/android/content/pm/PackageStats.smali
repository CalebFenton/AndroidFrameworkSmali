.class public Landroid/content/pm/PackageStats;
.super Ljava/lang/Object;
.source "PackageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cacheSize:J

.field public codeSize:J

.field public dataSize:J

.field public externalCacheSize:J

.field public externalCodeSize:J

.field public externalDataSize:J

.field public externalMediaSize:J

.field public externalObbSize:J

.field public packageName:Ljava/lang/String;

.field public userHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/content/pm/PackageStats$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageStats$1;-><init>()V

    #@5
    .line 71
    sput-object v0, Landroid/content/pm/PackageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageStats;)V
    .locals 2
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 148
    iget-object v0, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@7
    .line 149
    iget v0, p1, Landroid/content/pm/PackageStats;->userHandle:I

    #@9
    iput v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    #@b
    .line 150
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    #@d
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->codeSize:J

    #@f
    .line 151
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    #@11
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->dataSize:J

    #@13
    .line 152
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    #@15
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    #@17
    .line 153
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    #@19
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    #@1b
    .line 154
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@1d
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@1f
    .line 155
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@21
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@23
    .line 156
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    #@25
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    #@27
    .line 157
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    #@29
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    #@2b
    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@9
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    #@f
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->codeSize:J

    #@15
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->dataSize:J

    #@1b
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    #@21
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    #@27
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2a
    move-result-wide v0

    #@2b
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@2d
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@33
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@36
    move-result-wide v0

    #@37
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    #@39
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3c
    move-result-wide v0

    #@3d
    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    #@3f
    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    iput-object p1, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@5
    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    #@b
    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 130
    iput-object p1, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@5
    .line 131
    iput p2, p0, Landroid/content/pm/PackageStats;->userHandle:I

    #@7
    .line 129
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 161
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "PackageStats{"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@d
    move-result v1

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 85
    const-string/jumbo v1, " "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 86
    iget-object v1, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 87
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->codeSize:J

    #@22
    cmp-long v1, v2, v4

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 88
    const-string/jumbo v1, " code="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 89
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->codeSize:J

    #@2e
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@31
    .line 91
    :cond_0
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->dataSize:J

    #@33
    cmp-long v1, v2, v4

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 92
    const-string/jumbo v1, " data="

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 93
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->dataSize:J

    #@3f
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@42
    .line 95
    :cond_1
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    #@44
    cmp-long v1, v2, v4

    #@46
    if-eqz v1, :cond_2

    #@48
    .line 96
    const-string/jumbo v1, " cache="

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 97
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    #@50
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@53
    .line 99
    :cond_2
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    #@55
    cmp-long v1, v2, v4

    #@57
    if-eqz v1, :cond_3

    #@59
    .line 100
    const-string/jumbo v1, " extCode="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 101
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    #@61
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@64
    .line 103
    :cond_3
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@66
    cmp-long v1, v2, v4

    #@68
    if-eqz v1, :cond_4

    #@6a
    .line 104
    const-string/jumbo v1, " extData="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 105
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@72
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@75
    .line 107
    :cond_4
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@77
    cmp-long v1, v2, v4

    #@79
    if-eqz v1, :cond_5

    #@7b
    .line 108
    const-string/jumbo v1, " extCache="

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 109
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@83
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@86
    .line 111
    :cond_5
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    #@88
    cmp-long v1, v2, v4

    #@8a
    if-eqz v1, :cond_6

    #@8c
    .line 112
    const-string/jumbo v1, " media="

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 113
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    #@94
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@97
    .line 115
    :cond_6
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    #@99
    cmp-long v1, v2, v4

    #@9b
    if-eqz v1, :cond_7

    #@9d
    .line 116
    const-string/jumbo v1, " obb="

    #@a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 117
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    #@a5
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a8
    .line 119
    :cond_7
    const-string/jumbo v1, "}"

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 166
    iget v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 167
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->codeSize:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 168
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->dataSize:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 169
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 170
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 171
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 172
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 173
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2d
    .line 174
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    #@2f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@32
    .line 164
    return-void
.end method
