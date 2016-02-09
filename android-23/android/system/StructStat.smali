.class public final Landroid/system/StructStat;
.super Ljava/lang/Object;
.source "StructStat.java"


# instance fields
.field public final st_atime:J

.field public final st_blksize:J

.field public final st_blocks:J

.field public final st_ctime:J

.field public final st_dev:J

.field public final st_gid:I

.field public final st_ino:J

.field public final st_mode:I

.field public final st_mtime:J

.field public final st_nlink:J

.field public final st_rdev:J

.field public final st_size:J

.field public final st_uid:I


# direct methods
.method public constructor <init>(JJIJIIJJJJJJJ)V
    .locals 2
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

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    iput-wide p1, p0, Landroid/system/StructStat;->st_dev:J

    #@5
    .line 81
    iput-wide p3, p0, Landroid/system/StructStat;->st_ino:J

    #@7
    .line 82
    iput p5, p0, Landroid/system/StructStat;->st_mode:I

    #@9
    .line 83
    iput-wide p6, p0, Landroid/system/StructStat;->st_nlink:J

    #@b
    .line 84
    iput p8, p0, Landroid/system/StructStat;->st_uid:I

    #@d
    .line 85
    iput p9, p0, Landroid/system/StructStat;->st_gid:I

    #@f
    .line 86
    iput-wide p10, p0, Landroid/system/StructStat;->st_rdev:J

    #@11
    .line 87
    iput-wide p12, p0, Landroid/system/StructStat;->st_size:J

    #@13
    .line 88
    move-wide/from16 v0, p14

    #@15
    iput-wide v0, p0, Landroid/system/StructStat;->st_atime:J

    #@17
    .line 89
    move-wide/from16 v0, p16

    #@19
    iput-wide v0, p0, Landroid/system/StructStat;->st_mtime:J

    #@1b
    .line 90
    move-wide/from16 v0, p18

    #@1d
    iput-wide v0, p0, Landroid/system/StructStat;->st_ctime:J

    #@1f
    .line 91
    move-wide/from16 v0, p20

    #@21
    iput-wide v0, p0, Landroid/system/StructStat;->st_blksize:J

    #@23
    .line 92
    move-wide/from16 v0, p22

    #@25
    iput-wide v0, p0, Landroid/system/StructStat;->st_blocks:J

    #@27
    .line 79
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
