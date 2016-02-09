.class final enum Ljava/util/concurrent/TimeUnit$6;
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
    .line 123
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
    .line 131
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

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
    .line 132
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 130
    const-wide/16 v0, 0x18

    #@2
    div-long v0, p1, v0

    #@4
    return-wide v0
.end method

.method public toHours(J)J
    .locals 1
    .param p1, "d"    # J

    #@0
    .prologue
    .line 129
    return-wide p1
.end method

.method public toMicros(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 125
    const-wide v2, 0xd693a400L

    #@5
    const-wide v4, 0x98b5bf2cL

    #@a
    move-wide v0, p1

    #@b
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public toMillis(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 126
    const-wide/32 v2, 0x36ee80

    #@3
    const-wide v4, 0x25485f2c3efL

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

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
    .line 128
    const-wide/16 v2, 0x3c

    #@2
    const-wide v4, 0x222222222222222L

    #@7
    move-wide v0, p1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

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
    .line 124
    const-wide v2, 0x34630b8a000L

    #@5
    const-wide/32 v4, 0x2717ff

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

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
    .line 127
    const-wide/16 v2, 0xe10

    #@2
    const-wide v4, 0x91a2b3c4d5e6fL

    #@7
    move-wide v0, p1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method
