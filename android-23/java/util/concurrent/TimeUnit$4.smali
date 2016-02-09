.class final enum Ljava/util/concurrent/TimeUnit$4;
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
    .line 91
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
    .line 99
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 1
    .param p1, "d"    # J
    .param p3, "m"    # J

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 98
    const-wide/32 v0, 0x15180

    #@3
    div-long v0, p1, v0

    #@5
    return-wide v0
.end method

.method public toHours(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 97
    const-wide/16 v0, 0xe10

    #@2
    div-long v0, p1, v0

    #@4
    return-wide v0
.end method

.method public toMicros(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 93
    const-wide/32 v2, 0xf4240

    #@3
    const-wide v4, 0x8637bd05af6L

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$4;->x(JJJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public toMillis(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 94
    const-wide/16 v2, 0x3e8

    #@2
    const-wide v4, 0x20c49ba5e353f7L

    #@7
    move-wide v0, p1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$4;->x(JJJ)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 96
    const-wide/16 v0, 0x3c

    #@2
    div-long v0, p1, v0

    #@4
    return-wide v0
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 92
    const-wide/32 v2, 0x3b9aca00

    #@3
    const-wide v4, 0x225c17d04L

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$4;->x(JJJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 1
    .param p1, "d"    # J

    #@0
    .prologue
    .line 95
    return-wide p1
.end method
