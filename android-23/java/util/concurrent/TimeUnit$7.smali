.class final enum Ljava/util/concurrent/TimeUnit$7;
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
    .line 139
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
    .line 147
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

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
    .line 148
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toDays(J)J
    .locals 1
    .param p1, "d"    # J

    #@0
    .prologue
    .line 146
    return-wide p1
.end method

.method public toHours(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 145
    const-wide/16 v2, 0x18

    #@2
    const-wide v4, 0x555555555555555L

    #@7
    move-wide v0, p1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public toMicros(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 141
    const-wide v2, 0x141dd76000L

    #@5
    const-wide/32 v4, 0x65ce7f7

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

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
    .line 142
    const-wide/32 v2, 0x5265c00

    #@3
    const-wide v4, 0x18daea1d7fL

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 144
    const-wide/16 v2, 0x5a0

    #@2
    const-wide v4, 0x16c16c16c16c16L

    #@7
    move-wide v0, p1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 140
    const-wide v2, 0x4e94914f0000L

    #@5
    const-wide/32 v4, 0x1a0ff

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 143
    const-wide/32 v2, 0x15180

    #@3
    const-wide v4, 0x611722833944L

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method
