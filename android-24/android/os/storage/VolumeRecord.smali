.class public Landroid/os/storage/VolumeRecord;
.super Ljava/lang/Object;
.source "VolumeRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/VolumeRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_FS_UUID:Ljava/lang/String; = "android.os.storage.extra.FS_UUID"

.field public static final USER_FLAG_INITED:I = 0x1

.field public static final USER_FLAG_SNOOZED:I = 0x2


# instance fields
.field public createdMillis:J

.field public final fsUuid:Ljava/lang/String;

.field public lastBenchMillis:J

.field public lastTrimMillis:J

.field public nickname:Ljava/lang/String;

.field public partGuid:Ljava/lang/String;

.field public final type:I

.field public userFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/os/storage/VolumeRecord$1;

    #@2
    invoke-direct {v0}, Landroid/os/storage/VolumeRecord$1;-><init>()V

    #@5
    sput-object v0, Landroid/os/storage/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput p1, p0, Landroid/os/storage/VolumeRecord;->type:I

    #@5
    .line 52
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@d
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/os/storage/VolumeRecord;->type:I

    #@9
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@f
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@15
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@1b
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@21
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@27
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2a
    move-result-wide v0

    #@2b
    iput-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    #@2d
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    #@33
    .line 55
    return-void
.end method


# virtual methods
.method public clone()Landroid/os/storage/VolumeRecord;
    .locals 2

    #@0
    .prologue
    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "temp":Landroid/os/Parcel;
    const/4 v1, 0x0

    #@5
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/storage/VolumeRecord;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 109
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@c
    .line 110
    sget-object v1, Landroid/os/storage/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/storage/VolumeRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@17
    .line 110
    return-object v1

    #@18
    .line 111
    :catchall_0
    move-exception v1

    #@19
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 111
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, "VolumeRecord:"

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 88
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@9
    .line 89
    const-string/jumbo v0, "type"

    #@c
    const-class v1, Landroid/os/storage/VolumeInfo;

    #@e
    const-string/jumbo v2, "TYPE_"

    #@11
    iget v3, p0, Landroid/os/storage/VolumeRecord;->type:I

    #@13
    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@1a
    .line 90
    const-string/jumbo v0, "fsUuid"

    #@1d
    iget-object v1, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@1f
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@22
    .line 91
    const-string/jumbo v0, "partGuid"

    #@25
    iget-object v1, p0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@2a
    .line 92
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2d
    .line 93
    const-string/jumbo v0, "nickname"

    #@30
    iget-object v1, p0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@32
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@35
    .line 94
    const-string/jumbo v0, "userFlags"

    #@38
    .line 95
    const-class v1, Landroid/os/storage/VolumeRecord;

    #@3a
    const-string/jumbo v2, "USER_FLAG_"

    #@3d
    iget v3, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@3f
    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 94
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@46
    .line 96
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@49
    .line 97
    const-string/jumbo v0, "createdMillis"

    #@4c
    iget-wide v2, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@4e
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@55
    .line 98
    const-string/jumbo v0, "lastTrimMillis"

    #@58
    iget-wide v2, p0, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    #@5a
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@61
    .line 99
    const-string/jumbo v0, "lastBenchMillis"

    #@64
    iget-wide v2, p0, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    #@66
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@6d
    .line 100
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@70
    .line 101
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@73
    .line 86
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 118
    instance-of v0, p1, Landroid/os/storage/VolumeRecord;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 119
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@6
    check-cast p1, Landroid/os/storage/VolumeRecord;

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@a
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 121
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Landroid/os/storage/VolumeRecord;->type:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInited()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 79
    iget v1, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isSnoozed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 83
    iget v1, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 149
    iget v0, p0, Landroid/os/storage/VolumeRecord;->type:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 150
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 151
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 152
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 153
    iget v0, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 154
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 155
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 156
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 148
    return-void
.end method
