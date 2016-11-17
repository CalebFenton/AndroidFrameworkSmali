.class public final Landroid/system/StructTimeval;
.super Ljava/lang/Object;
.source "StructTimeval.java"


# instance fields
.field public final tv_sec:J

.field public final tv_usec:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "tv_sec"    # J
    .param p3, "tv_usec"    # J

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-wide p1, p0, Landroid/system/StructTimeval;->tv_sec:J

    #@5
    .line 36
    iput-wide p3, p0, Landroid/system/StructTimeval;->tv_usec:J

    #@7
    .line 34
    return-void
.end method

.method public static fromMillis(J)Landroid/system/StructTimeval;
    .locals 8
    .param p0, "millis"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    .line 40
    div-long v0, p0, v6

    #@4
    .line 41
    .local v0, "tv_sec":J
    mul-long v4, v0, v6

    #@6
    sub-long v4, p0, v4

    #@8
    mul-long v2, v4, v6

    #@a
    .line 42
    .local v2, "tv_usec":J
    new-instance v4, Landroid/system/StructTimeval;

    #@c
    invoke-direct {v4, v0, v1, v2, v3}, Landroid/system/StructTimeval;-><init>(JJ)V

    #@f
    return-object v4
.end method


# virtual methods
.method public toMillis()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x3e8

    #@2
    .line 46
    iget-wide v0, p0, Landroid/system/StructTimeval;->tv_sec:J

    #@4
    mul-long/2addr v0, v4

    #@5
    iget-wide v2, p0, Landroid/system/StructTimeval;->tv_usec:J

    #@7
    div-long/2addr v2, v4

    #@8
    add-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 50
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
