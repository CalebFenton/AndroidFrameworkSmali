.class Llibcore/util/ZoneInfo$OffsetInterval;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OffsetInterval"
.end annotation


# instance fields
.field private final endWallTimeSeconds:I

.field private final isDst:I

.field private final startWallTimeSeconds:I

.field private final totalOffsetSeconds:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "startWallTimeSeconds"    # I
    .param p2, "endWallTimeSeconds"    # I
    .param p3, "isDst"    # I
    .param p4, "totalOffsetSeconds"    # I

    #@0
    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1233
    iput p1, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    #@5
    .line 1234
    iput p2, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    #@7
    .line 1235
    iput p3, p0, Llibcore/util/ZoneInfo$OffsetInterval;->isDst:I

    #@9
    .line 1236
    iput p4, p0, Llibcore/util/ZoneInfo$OffsetInterval;->totalOffsetSeconds:I

    #@b
    .line 1232
    return-void
.end method

.method public static create(Llibcore/util/ZoneInfo;I)Llibcore/util/ZoneInfo$OffsetInterval;
    .locals 9
    .param p0, "timeZone"    # Llibcore/util/ZoneInfo;
    .param p1, "transitionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 1203
    if-lt p1, v7, :cond_0

    #@4
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    #@7
    move-result-object v6

    #@8
    array-length v6, v6

    #@9
    if-lt p1, v6, :cond_1

    #@b
    .line 1204
    :cond_0
    const/4 v6, 0x0

    #@c
    return-object v6

    #@d
    .line 1207
    :cond_1
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get2(Llibcore/util/ZoneInfo;)I

    #@10
    move-result v6

    #@11
    div-int/lit16 v2, v6, 0x3e8

    #@13
    .line 1208
    .local v2, "rawOffsetSeconds":I
    if-ne p1, v7, :cond_2

    #@15
    .line 1209
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    #@18
    move-result-object v6

    #@19
    aget-wide v6, v6, v8

    #@1b
    invoke-static {v6, v7, v2}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    #@1e
    move-result v0

    #@1f
    .line 1210
    .local v0, "endWallTimeSeconds":I
    new-instance v6, Llibcore/util/ZoneInfo$OffsetInterval;

    #@21
    const/high16 v7, -0x80000000

    #@23
    invoke-direct {v6, v7, v0, v8, v2}, Llibcore/util/ZoneInfo$OffsetInterval;-><init>(IIII)V

    #@26
    return-object v6

    #@27
    .line 1214
    .end local v0    # "endWallTimeSeconds":I
    :cond_2
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get4(Llibcore/util/ZoneInfo;)[B

    #@2a
    move-result-object v6

    #@2b
    aget-byte v6, v6, p1

    #@2d
    and-int/lit16 v5, v6, 0xff

    #@2f
    .line 1215
    .local v5, "type":I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    #@32
    move-result-object v6

    #@33
    aget v6, v6, v5

    #@35
    add-int v4, v6, v2

    #@37
    .line 1217
    .local v4, "totalOffsetSeconds":I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    #@3a
    move-result-object v6

    #@3b
    array-length v6, v6

    #@3c
    add-int/lit8 v6, v6, -0x1

    #@3e
    if-ne p1, v6, :cond_3

    #@40
    .line 1219
    const v0, 0x7fffffff

    #@43
    .line 1224
    .restart local v0    # "endWallTimeSeconds":I
    :goto_0
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get0(Llibcore/util/ZoneInfo;)[B

    #@46
    move-result-object v6

    #@47
    aget-byte v1, v6, v5

    #@49
    .line 1226
    .local v1, "isDst":I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    #@4c
    move-result-object v6

    #@4d
    aget-wide v6, v6, p1

    #@4f
    invoke-static {v6, v7, v4}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    #@52
    move-result v3

    #@53
    .line 1227
    .local v3, "startWallTimeSeconds":I
    new-instance v6, Llibcore/util/ZoneInfo$OffsetInterval;

    #@55
    invoke-direct {v6, v3, v0, v1, v4}, Llibcore/util/ZoneInfo$OffsetInterval;-><init>(IIII)V

    #@58
    return-object v6

    #@59
    .line 1221
    .end local v0    # "endWallTimeSeconds":I
    .end local v1    # "isDst":I
    .end local v3    # "startWallTimeSeconds":I
    :cond_3
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    #@5c
    move-result-object v6

    #@5d
    add-int/lit8 v7, p1, 0x1

    #@5f
    aget-wide v6, v6, v7

    #@61
    invoke-static {v6, v7, v4}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    #@64
    move-result v0

    #@65
    .restart local v0    # "endWallTimeSeconds":I
    goto :goto_0
.end method


# virtual methods
.method public containsWallTime(J)Z
    .locals 5
    .param p1, "wallTimeSeconds"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1240
    iget v1, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    #@3
    int-to-long v2, v1

    #@4
    cmp-long v1, p1, v2

    #@6
    if-ltz v1, :cond_0

    #@8
    iget v1, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    #@a
    int-to-long v2, v1

    #@b
    cmp-long v1, p1, v2

    #@d
    if-gez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public getEndWallTimeSeconds()J
    .locals 2

    #@0
    .prologue
    .line 1252
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public getIsDst()I
    .locals 1

    #@0
    .prologue
    .line 1244
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->isDst:I

    #@2
    return v0
.end method

.method public getStartWallTimeSeconds()J
    .locals 2

    #@0
    .prologue
    .line 1256
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public getTotalOffsetSeconds()I
    .locals 1

    #@0
    .prologue
    .line 1248
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->totalOffsetSeconds:I

    #@2
    return v0
.end method
