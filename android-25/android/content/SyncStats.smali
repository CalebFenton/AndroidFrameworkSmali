.class public Landroid/content/SyncStats;
.super Ljava/lang/Object;
.source "SyncStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numAuthExceptions:J

.field public numConflictDetectedExceptions:J

.field public numDeletes:J

.field public numEntries:J

.field public numInserts:J

.field public numIoExceptions:J

.field public numParseExceptions:J

.field public numSkippedEntries:J

.field public numUpdates:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 169
    new-instance v0, Landroid/content/SyncStats$1;

    #@2
    invoke-direct {v0}, Landroid/content/SyncStats$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/SyncStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 97
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@7
    .line 98
    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    #@9
    .line 99
    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    #@b
    .line 100
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@d
    .line 101
    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    #@f
    .line 102
    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    #@11
    .line 103
    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    #@13
    .line 104
    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    #@15
    .line 105
    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    #@17
    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@9
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    #@f
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    #@15
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@1b
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    #@21
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    #@27
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2a
    move-result-wide v0

    #@2b
    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    #@2d
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    #@33
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@36
    move-result-wide v0

    #@37
    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    #@39
    .line 108
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 142
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@4
    .line 143
    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    #@6
    .line 144
    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    #@8
    .line 145
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@a
    .line 146
    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    #@c
    .line 147
    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    #@e
    .line 148
    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    #@10
    .line 149
    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    #@12
    .line 150
    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    #@14
    .line 141
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 154
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
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " stats ["

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 124
    iget-wide v2, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@f
    cmp-long v1, v2, v4

    #@11
    if-lez v1, :cond_0

    #@13
    const-string/jumbo v1, " numAuthExceptions: "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget-wide v2, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@1c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1f
    .line 125
    :cond_0
    iget-wide v2, p0, Landroid/content/SyncStats;->numIoExceptions:J

    #@21
    cmp-long v1, v2, v4

    #@23
    if-lez v1, :cond_1

    #@25
    const-string/jumbo v1, " numIoExceptions: "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-wide v2, p0, Landroid/content/SyncStats;->numIoExceptions:J

    #@2e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@31
    .line 126
    :cond_1
    iget-wide v2, p0, Landroid/content/SyncStats;->numParseExceptions:J

    #@33
    cmp-long v1, v2, v4

    #@35
    if-lez v1, :cond_2

    #@37
    const-string/jumbo v1, " numParseExceptions: "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget-wide v2, p0, Landroid/content/SyncStats;->numParseExceptions:J

    #@40
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@43
    .line 127
    :cond_2
    iget-wide v2, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@45
    cmp-long v1, v2, v4

    #@47
    if-lez v1, :cond_3

    #@49
    .line 128
    const-string/jumbo v1, " numConflictDetectedExceptions: "

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    iget-wide v2, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@52
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    .line 129
    :cond_3
    iget-wide v2, p0, Landroid/content/SyncStats;->numInserts:J

    #@57
    cmp-long v1, v2, v4

    #@59
    if-lez v1, :cond_4

    #@5b
    const-string/jumbo v1, " numInserts: "

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget-wide v2, p0, Landroid/content/SyncStats;->numInserts:J

    #@64
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@67
    .line 130
    :cond_4
    iget-wide v2, p0, Landroid/content/SyncStats;->numUpdates:J

    #@69
    cmp-long v1, v2, v4

    #@6b
    if-lez v1, :cond_5

    #@6d
    const-string/jumbo v1, " numUpdates: "

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    iget-wide v2, p0, Landroid/content/SyncStats;->numUpdates:J

    #@76
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@79
    .line 131
    :cond_5
    iget-wide v2, p0, Landroid/content/SyncStats;->numDeletes:J

    #@7b
    cmp-long v1, v2, v4

    #@7d
    if-lez v1, :cond_6

    #@7f
    const-string/jumbo v1, " numDeletes: "

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    iget-wide v2, p0, Landroid/content/SyncStats;->numDeletes:J

    #@88
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8b
    .line 132
    :cond_6
    iget-wide v2, p0, Landroid/content/SyncStats;->numEntries:J

    #@8d
    cmp-long v1, v2, v4

    #@8f
    if-lez v1, :cond_7

    #@91
    const-string/jumbo v1, " numEntries: "

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    iget-wide v2, p0, Landroid/content/SyncStats;->numEntries:J

    #@9a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9d
    .line 133
    :cond_7
    iget-wide v2, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    #@9f
    cmp-long v1, v2, v4

    #@a1
    if-lez v1, :cond_8

    #@a3
    const-string/jumbo v1, " numSkippedEntries: "

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    iget-wide v2, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    #@ac
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@af
    .line 134
    :cond_8
    const-string/jumbo v1, "]"

    #@b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v1

    #@b9
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 158
    iget-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 159
    iget-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 160
    iget-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 161
    iget-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 162
    iget-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 163
    iget-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 164
    iget-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 165
    iget-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 166
    iget-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2d
    .line 157
    return-void
.end method
