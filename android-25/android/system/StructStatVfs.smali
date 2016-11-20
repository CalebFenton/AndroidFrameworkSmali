.class public final Landroid/system/StructStatVfs;
.super Ljava/lang/Object;
.source "StructStatVfs.java"


# instance fields
.field public final f_bavail:J

.field public final f_bfree:J

.field public final f_blocks:J

.field public final f_bsize:J

.field public final f_favail:J

.field public final f_ffree:J

.field public final f_files:J

.field public final f_flag:J

.field public final f_frsize:J

.field public final f_fsid:J

.field public final f_namemax:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJ)V
    .locals 3
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

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-wide p1, p0, Landroid/system/StructStatVfs;->f_bsize:J

    #@5
    .line 65
    iput-wide p3, p0, Landroid/system/StructStatVfs;->f_frsize:J

    #@7
    .line 66
    iput-wide p5, p0, Landroid/system/StructStatVfs;->f_blocks:J

    #@9
    .line 67
    iput-wide p7, p0, Landroid/system/StructStatVfs;->f_bfree:J

    #@b
    .line 68
    iput-wide p9, p0, Landroid/system/StructStatVfs;->f_bavail:J

    #@d
    .line 69
    iput-wide p11, p0, Landroid/system/StructStatVfs;->f_files:J

    #@f
    .line 70
    move-wide/from16 v0, p13

    #@11
    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_ffree:J

    #@13
    .line 71
    move-wide/from16 v0, p15

    #@15
    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_favail:J

    #@17
    .line 72
    move-wide/from16 v0, p17

    #@19
    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_fsid:J

    #@1b
    .line 73
    move-wide/from16 v0, p19

    #@1d
    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_flag:J

    #@1f
    .line 74
    move-wide/from16 v0, p21

    #@21
    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_namemax:J

    #@23
    .line 63
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
