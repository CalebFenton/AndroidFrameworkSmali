.class public Lcom/android/internal/widget/remotecompose/core/TimeVariables;
.super Ljava/lang/Object;
.source "TimeVariables.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 75
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 76
    .local v0, "zone":Ljava/time/ZoneId;
    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 78
    .local v1, "dateTime":Ljava/time/LocalDateTime;
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/time/ZoneId;Ljava/time/LocalDateTime;)V

    .line 79
    return-void
.end method

.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/time/ZoneId;Ljava/time/LocalDateTime;)V
    .registers 20
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "zoneId"    # Ljava/time/ZoneId;
    .param p3, "dateTime"    # Ljava/time/LocalDateTime;

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    move-result v2

    .line 42
    .local v2, "month":I
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 43
    .local v3, "hour":I
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 44
    .local v4, "minute":I
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 45
    .local v5, "seconds":I
    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v6, v4

    .line 46
    .local v6, "currentMinute":I
    mul-int/lit8 v7, v4, 0x3c

    add-int/2addr v7, v5

    .line 47
    .local v7, "currentSeconds":I
    int-to-float v8, v7

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getNano()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3089705f    # 1.0E-9f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 48
    .local v8, "sec":F
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/DayOfWeek;->getValue()I

    move-result v9

    .line 50
    .local v9, "day_week":I
    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v11

    .line 51
    .local v11, "offsetDateTime":Ljava/time/OffsetDateTime;
    invoke-virtual {v11}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v12

    .line 52
    .local v12, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {v1, v12}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v13

    .line 54
    .local v13, "epochSec":J
    invoke-virtual {v12}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v15

    int-to-float v15, v15

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 57
    const/16 v1, 0x20

    long-to-int v15, v13

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    .line 58
    const/4 v1, 0x2

    int-to-float v15, v7

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 59
    const/4 v1, 0x3

    int-to-float v15, v6

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 60
    const/4 v1, 0x4

    int-to-float v15, v3

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 61
    const/16 v1, 0x9

    int-to-float v15, v2

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 62
    const/16 v1, 0xc

    int-to-float v15, v2

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 63
    const/16 v1, 0xb

    int-to-float v15, v9

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 64
    nop

    .line 66
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getDocumentApiLevel()I

    move-result v1

    int-to-float v1, v1

    const/4 v15, 0x0

    add-float/2addr v1, v15

    .line 64
    const/16 v15, 0x1c

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 67
    return-void
.end method
