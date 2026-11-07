.class public final Landroid/os/OomKillRecord;
.super Ljava/lang/Object;
.source "OomKillRecord.java"


# instance fields
.field private blacklist mAnonRssInKb:J

.field private blacklist mFileRssInKb:J

.field private blacklist mOomScoreAdj:S

.field private blacklist mPgTablesInKb:J

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mShmemRssInKb:J

.field private blacklist mTimeStampInMillis:J

.field private blacklist mTotalVmInKb:J

.field private blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(JIILjava/lang/String;SJJJJJ)V
    .registers 31
    .param p1, "timeStampInMillis"    # J
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "oomScoreAdj"    # S
    .param p7, "totalVmInKb"    # J
    .param p9, "anonRssInKb"    # J
    .param p11, "fileRssInKb"    # J
    .param p13, "shmemRssInKb"    # J
    .param p15, "pgTablesInKb"    # J

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    move-wide v0, p1

    iput-wide v0, p0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    .line 51
    move/from16 v2, p3

    iput v2, p0, Landroid/os/OomKillRecord;->mPid:I

    .line 52
    move/from16 v3, p4

    iput v3, p0, Landroid/os/OomKillRecord;->mUid:I

    .line 53
    move-object/from16 v4, p5

    iput-object v4, p0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    .line 54
    move/from16 v5, p6

    iput-short v5, p0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    .line 55
    move-wide/from16 v6, p7

    iput-wide v6, p0, Landroid/os/OomKillRecord;->mTotalVmInKb:J

    .line 56
    move-wide/from16 v8, p9

    iput-wide v8, p0, Landroid/os/OomKillRecord;->mAnonRssInKb:J

    .line 57
    move-wide/from16 v10, p11

    iput-wide v10, p0, Landroid/os/OomKillRecord;->mFileRssInKb:J

    .line 58
    move-wide/from16 v12, p13

    iput-wide v12, p0, Landroid/os/OomKillRecord;->mShmemRssInKb:J

    .line 59
    move-wide/from16 v0, p15

    iput-wide v0, p0, Landroid/os/OomKillRecord;->mPgTablesInKb:J

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist getOomScoreAdj()S
    .registers 2

    .line 92
    iget-short v0, p0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    return v0
.end method

.method public blacklist getPid()I
    .registers 2

    .line 80
    iget v0, p0, Landroid/os/OomKillRecord;->mPid:I

    return v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimestampMilli()J
    .registers 3

    .line 76
    iget-wide v0, p0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/os/OomKillRecord;->mUid:I

    return v0
.end method

.method public blacklist logKillOccurred()V
    .registers 21

    .line 68
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/OomKillRecord;->mUid:I

    iget v3, v0, Landroid/os/OomKillRecord;->mPid:I

    iget-short v4, v0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    iget-wide v5, v0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    iget-object v7, v0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    iget-wide v8, v0, Landroid/os/OomKillRecord;->mTotalVmInKb:J

    iget-wide v10, v0, Landroid/os/OomKillRecord;->mAnonRssInKb:J

    iget-wide v12, v0, Landroid/os/OomKillRecord;->mFileRssInKb:J

    iget-wide v14, v0, Landroid/os/OomKillRecord;->mShmemRssInKb:J

    move/from16 v16, v2

    iget-wide v1, v0, Landroid/os/OomKillRecord;->mPgTablesInKb:J

    move-wide/from16 v18, v1

    move/from16 v2, v16

    move-wide/from16 v16, v18

    const/16 v1, 0x2f2

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJLjava/lang/String;JJJJJ)V

    .line 73
    return-void
.end method
