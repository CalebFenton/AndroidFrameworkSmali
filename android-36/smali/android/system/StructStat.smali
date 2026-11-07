.class public final Landroid/system/StructStat;
.super Ljava/lang/Object;
.source "StructStat.java"


# instance fields
.field public final whitelist test-api st_atim:Landroid/system/StructTimespec;

.field public final whitelist test-api st_atime:J

.field public final whitelist test-api st_blksize:J

.field public final whitelist test-api st_blocks:J

.field public final whitelist test-api st_ctim:Landroid/system/StructTimespec;

.field public final whitelist test-api st_ctime:J

.field public final whitelist test-api st_dev:J

.field public final whitelist test-api st_gid:I

.field public final whitelist test-api st_ino:J

.field public final whitelist test-api st_mode:I

.field public final whitelist test-api st_mtim:Landroid/system/StructTimespec;

.field public final whitelist test-api st_mtime:J

.field public final whitelist test-api st_nlink:J

.field public final whitelist test-api st_rdev:J

.field public final whitelist test-api st_size:J

.field public final whitelist test-api st_uid:I


# direct methods
.method public constructor whitelist test-api <init>(JJIJIIJJJJJJJ)V
    .registers 45
    .param p1, "st_dev"    # J
    .param p3, "st_ino"    # J
    .param p5, "st_mode"    # I
    .param p6, "st_nlink"    # J
    .param p8, "st_uid"    # I
    .param p9, "st_gid"    # I
    .param p10, "st_rdev"    # J
    .param p12, "st_size"    # J
    .param p14, "st_atime"    # J
    .param p16, "st_mtime"    # J
    .param p18, "st_ctime"    # J
    .param p20, "st_blksize"    # J
    .param p22, "st_blocks"    # J

    .line 89
    new-instance v14, Landroid/system/StructTimespec;

    const-wide/16 v0, 0x0

    move-wide/from16 v2, p14

    invoke-direct {v14, v2, v3, v0, v1}, Landroid/system/StructTimespec;-><init>(JJ)V

    new-instance v15, Landroid/system/StructTimespec;

    move-wide/from16 v4, p16

    invoke-direct {v15, v4, v5, v0, v1}, Landroid/system/StructTimespec;-><init>(JJ)V

    new-instance v6, Landroid/system/StructTimespec;

    move-wide/from16 v7, p18

    invoke-direct {v6, v7, v8, v0, v1}, Landroid/system/StructTimespec;-><init>(JJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v17, p20

    move-wide/from16 v19, p22

    move-object/from16 v16, v6

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v20}, Landroid/system/StructStat;-><init>(JJIJIIJJLandroid/system/StructTimespec;Landroid/system/StructTimespec;Landroid/system/StructTimespec;JJ)V

    .line 92
    return-void
.end method

.method public constructor whitelist test-api <init>(JJIJIIJJLandroid/system/StructTimespec;Landroid/system/StructTimespec;Landroid/system/StructTimespec;JJ)V
    .registers 35
    .param p1, "st_dev"    # J
    .param p3, "st_ino"    # J
    .param p5, "st_mode"    # I
    .param p6, "st_nlink"    # J
    .param p8, "st_uid"    # I
    .param p9, "st_gid"    # I
    .param p10, "st_rdev"    # J
    .param p12, "st_size"    # J
    .param p14, "st_atim"    # Landroid/system/StructTimespec;
    .param p15, "st_mtim"    # Landroid/system/StructTimespec;
    .param p16, "st_ctim"    # Landroid/system/StructTimespec;
    .param p17, "st_blksize"    # J
    .param p19, "st_blocks"    # J

    .line 99
    move-object/from16 v0, p14

    move-object/from16 v1, p15

    move-object/from16 v2, p16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    move-wide v3, p1

    iput-wide v3, p0, Landroid/system/StructStat;->st_dev:J

    .line 101
    move-wide/from16 v5, p3

    iput-wide v5, p0, Landroid/system/StructStat;->st_ino:J

    .line 102
    move/from16 v7, p5

    iput v7, p0, Landroid/system/StructStat;->st_mode:I

    .line 103
    move-wide/from16 v8, p6

    iput-wide v8, p0, Landroid/system/StructStat;->st_nlink:J

    .line 104
    move/from16 v10, p8

    iput v10, p0, Landroid/system/StructStat;->st_uid:I

    .line 105
    move/from16 v11, p9

    iput v11, p0, Landroid/system/StructStat;->st_gid:I

    .line 106
    move-wide/from16 v12, p10

    iput-wide v12, p0, Landroid/system/StructStat;->st_rdev:J

    .line 107
    move-wide/from16 v3, p12

    iput-wide v3, p0, Landroid/system/StructStat;->st_size:J

    .line 108
    iget-wide v3, v0, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v3, p0, Landroid/system/StructStat;->st_atime:J

    .line 109
    iget-wide v3, v1, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v3, p0, Landroid/system/StructStat;->st_mtime:J

    .line 110
    iget-wide v3, v2, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v3, p0, Landroid/system/StructStat;->st_ctime:J

    .line 111
    iput-object v0, p0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    .line 112
    iput-object v1, p0, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    .line 113
    iput-object v2, p0, Landroid/system/StructStat;->st_ctim:Landroid/system/StructTimespec;

    .line 114
    move-wide/from16 v3, p17

    iput-wide v3, p0, Landroid/system/StructStat;->st_blksize:J

    .line 115
    move-wide/from16 v0, p19

    iput-wide v0, p0, Landroid/system/StructStat;->st_blocks:J

    .line 116
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 119
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
