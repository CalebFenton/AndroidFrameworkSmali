.class final enum Ljava/util/concurrent/TimeUnit$1;
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
    .line 46
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
    .line 54
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 3
    .param p1, "d"    # J
    .param p3, "m"    # J

    #@0
    .prologue
    .line 55
    const-wide/32 v0, 0xf4240

    #@3
    mul-long/2addr v0, p3

    #@4
    sub-long v0, p1, v0

    #@6
    long-to-int v0, v0

    #@7
    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 53
    const-wide v0, 0x4e94914f0000L

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
    .line 52
    const-wide v0, 0x34630b8a000L

    #@5
    div-long v0, p1, v0

    #@7
    return-wide v0
.end method

.method public toMicros(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 48
    const-wide/16 v0, 0x3e8

    #@2
    div-long v0, p1, v0

    #@4
    return-wide v0
.end method

.method public toMillis(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 49
    const-wide/32 v0, 0xf4240

    #@3
    div-long v0, p1, v0

    #@5
    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 51
    const-wide v0, 0xdf8475800L

    #@5
    div-long v0, p1, v0

    #@7
    return-wide v0
.end method

.method public toNanos(J)J
    .locals 1
    .param p1, "d"    # J

    #@0
    .prologue
    .line 47
    return-wide p1
.end method

.method public toSeconds(J)J
    .locals 3
    .param p1, "d"    # J

    #@0
    .prologue
    .line 50
    const-wide/32 v0, 0x3b9aca00

    #@3
    div-long v0, p1, v0

    #@5
    return-wide v0
.end method
