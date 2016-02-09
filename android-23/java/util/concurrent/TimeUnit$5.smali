.class final enum Ljava/util/concurrent/TimeUnit$5;
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
    .line 107
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
    .line 115
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

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
    .line 116
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 114
    const-wide/16 v0, 0x5a0

    #@2
    div-long v0, p1, v0

    #@4
    return-wide v0
.end method

.method public toHours(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 113
    const-wide/16 v0, 0x3c

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
    .line 109
    const-wide/32 v2, 0x3938700

    #@3
    const-wide v4, 0x23ca98ce50L

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$5;->x(JJJ)J

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
    .line 110
    const-wide/32 v2, 0xea60

    #@3
    const-wide v4, 0x8bcf64e5ec10L

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$5;->x(JJJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 1
    .param p1, "d"    # J

    #@0
    .prologue
    .line 112
    return-wide p1
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    #@0
    .prologue
    .line 108
    const-wide v2, 0xdf8475800L

    #@5
    const-wide/32 v4, 0x9299ff3

    #@8
    move-wide v0, p1

    #@9
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$5;->x(JJJ)J

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
    .line 111
    const-wide/16 v2, 0x3c

    #@2
    const-wide v4, 0x222222222222222L

    #@7
    move-wide v0, p1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$5;->x(JJJ)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method
