.class public final Landroid/system/StructStatVfs;
.super Ljava/lang/Object;
.source "StructStatVfs.java"


# instance fields
.field public final whitelist test-api f_bavail:J

.field public final whitelist test-api f_bfree:J

.field public final whitelist test-api f_blocks:J

.field public final whitelist test-api f_bsize:J

.field public final whitelist test-api f_favail:J

.field public final whitelist test-api f_ffree:J

.field public final whitelist test-api f_files:J

.field public final whitelist test-api f_flag:J

.field public final whitelist test-api f_frsize:J

.field public final whitelist test-api f_fsid:J

.field public final whitelist test-api f_namemax:J


# direct methods
.method public constructor whitelist test-api <init>(JJJJJJJJJJJ)V
    .registers 37
    .param p1, "f_bsize"    # J
    .param p3, "f_frsize"    # J
    .param p5, "f_blocks"    # J
    .param p7, "f_bfree"    # J
    .param p9, "f_bavail"    # J
    .param p11, "f_files"    # J
    .param p13, "f_ffree"    # J
    .param p15, "f_favail"    # J
    .param p17, "f_fsid"    # J
    .param p19, "f_flag"    # J
    .param p21, "f_namemax"    # J

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    move-wide v0, p1

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_bsize:J

    .line 65
    move-wide/from16 v2, p3

    iput-wide v2, p0, Landroid/system/StructStatVfs;->f_frsize:J

    .line 66
    move-wide/from16 v4, p5

    iput-wide v4, p0, Landroid/system/StructStatVfs;->f_blocks:J

    .line 67
    move-wide/from16 v6, p7

    iput-wide v6, p0, Landroid/system/StructStatVfs;->f_bfree:J

    .line 68
    move-wide/from16 v8, p9

    iput-wide v8, p0, Landroid/system/StructStatVfs;->f_bavail:J

    .line 69
    move-wide/from16 v10, p11

    iput-wide v10, p0, Landroid/system/StructStatVfs;->f_files:J

    .line 70
    move-wide/from16 v12, p13

    iput-wide v12, p0, Landroid/system/StructStatVfs;->f_ffree:J

    .line 71
    move-wide/from16 v0, p15

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_favail:J

    .line 72
    move-wide/from16 v0, p17

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_fsid:J

    .line 73
    move-wide/from16 v0, p19

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_flag:J

    .line 74
    move-wide/from16 v0, p21

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_namemax:J

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 78
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
