.class final enum Ljava/util/concurrent/TimeUnit$2;
.super Ljava/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/TimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    #@4
    return-void
.end method


# virtual methods
.method public convert(JLjava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "d"    # J
    .param p3, "u"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 69
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 5
    .param p1, "d"    # J
    .param p3, "m"    # J

    #@0
    .prologue
    .line 70
    const-wide/16 v0, 0x3e8

    #@2
    mul-long/2addr v0, p1

    #@3
    const-wide/32 v2, 0xf4240

    #@6
    mul-long/2addr v2, p3

    #@7
    sub-long/2addr v0, v2

    #@8
    long-to-int v0, v0

    #@9
    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 68
    const-wide v0, 0x141dd76000L

    #@5
    div-long v0, p1, v0

    #@7
    return-wide v0
.end method

.method public toHours(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 67
    const-wide v0, 0xd693a400L

    #@5
    div-long v0, p1, v0

    #@7
    return-wide v0
.end method

.method public toMicros(J)J
    .locals 1
    .param p1, "d"    # J

    #@0
    .prologue
    .line 63
    return-wide p1
.end method

.method public toMillis(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 64
    const-wide/16 v0, 0x3e8

    #@2
    div-long v0, p1, v0

    #@4
    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 66
    const-wide/32 v0, 0x3938700

    #@3
    div-long v0, p1, v0

    #@5
    return-wide v0
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 62
    const-wide/16 v2, 0x3e8

    #@2
    const-wide v4, 0x20c49ba5e353f7L

    #@7
    move-wide v0, p1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$2;->x(JJJ)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 65
    const-wide/32 v0, 0xf4240

    #@3
    div-long v0, p1, v0

    #@5
    return-wide v0
.end method
