.class public final Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;
.super Ljava/lang/Object;
.source "SizeBuckets.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calcRequestBodySizeBucket(J)I
    .registers 7
    .param p0, "sizeBytes"    # J

    .line 80
    const-string v0, "Request body size is negative"

    invoke-static {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->checkSizeIsValid(JLjava/lang/String;)V

    .line 82
    long-to-double v0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    .line 84
    .local v0, "sizeKB":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_11

    .line 85
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_11
    cmpl-double v2, v0, v2

    if-lez v2, :cond_1d

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1d

    .line 88
    const/4 v2, 0x2

    return v2

    .line 90
    :cond_1d
    const/16 v2, 0xa

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 91
    const/4 v2, 0x3

    return v2

    .line 93
    :cond_29
    const/16 v2, 0xc8

    invoke-static {v0, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 94
    const/4 v2, 0x4

    return v2

    .line 96
    :cond_33
    const/16 v3, 0x1f4

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 97
    const/4 v2, 0x5

    return v2

    .line 99
    :cond_3d
    const/16 v2, 0x3e8

    invoke-static {v0, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 100
    const/4 v2, 0x6

    return v2

    .line 102
    :cond_47
    const/16 v3, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 103
    const/4 v2, 0x7

    return v2

    .line 106
    :cond_51
    const/16 v2, 0x8

    return v2
.end method

.method public static blacklist calcRequestHeadersSizeBucket(J)I
    .registers 6
    .param p0, "sizeBytes"    # J

    .line 16
    const-string v0, "Request header size is negative"

    invoke-static {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->checkSizeIsValid(JLjava/lang/String;)V

    .line 18
    long-to-double v0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    .line 20
    .local v0, "sizeKB":D
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 21
    return v3

    .line 23
    :cond_12
    const/16 v2, 0xa

    invoke-static {v0, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 24
    const/4 v2, 0x2

    return v2

    .line 26
    :cond_1c
    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 27
    const/4 v2, 0x3

    return v2

    .line 29
    :cond_26
    const/16 v2, 0x32

    invoke-static {v0, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 30
    const/4 v2, 0x4

    return v2

    .line 32
    :cond_30
    const/16 v3, 0x64

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 33
    const/4 v2, 0x5

    return v2

    .line 36
    :cond_3a
    const/4 v2, 0x6

    return v2
.end method

.method public static blacklist calcResponseBodySizeBucket(J)I
    .registers 7
    .param p0, "sizeBytes"    # J

    .line 118
    const-string v0, "Response body size is negative"

    invoke-static {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->checkSizeIsValid(JLjava/lang/String;)V

    .line 120
    long-to-double v0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    .line 122
    .local v0, "sizeKB":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_11

    .line 123
    const/4 v2, 0x1

    return v2

    .line 125
    :cond_11
    cmpl-double v2, v0, v2

    if-lez v2, :cond_1d

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1d

    .line 126
    const/4 v2, 0x2

    return v2

    .line 128
    :cond_1d
    const/16 v2, 0xa

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 129
    const/4 v2, 0x3

    return v2

    .line 131
    :cond_29
    const/16 v2, 0xc8

    invoke-static {v0, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 132
    const/4 v2, 0x4

    return v2

    .line 134
    :cond_33
    const/16 v3, 0x1f4

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 135
    const/4 v2, 0x5

    return v2

    .line 137
    :cond_3d
    const/16 v2, 0x3e8

    invoke-static {v0, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 138
    const/4 v2, 0x6

    return v2

    .line 140
    :cond_47
    const/16 v3, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 141
    const/4 v2, 0x7

    return v2

    .line 144
    :cond_51
    const/16 v2, 0x8

    return v2
.end method

.method public static blacklist calcResponseHeadersSizeBucket(J)I
    .registers 6
    .param p0, "sizeBytes"    # J

    .line 48
    const-string v0, "Response header size is negative"

    invoke-static {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->checkSizeIsValid(JLjava/lang/String;)V

    .line 50
    long-to-double v0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    .line 52
    .local v0, "sizeKB":D
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 53
    return v3

    .line 55
    :cond_12
    const/16 v2, 0xa

    invoke-static {v0, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 56
    const/4 v2, 0x2

    return v2

    .line 58
    :cond_1c
    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 59
    const/4 v2, 0x3

    return v2

    .line 61
    :cond_26
    const/16 v2, 0x32

    invoke-static {v0, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 62
    const/4 v2, 0x4

    return v2

    .line 64
    :cond_30
    const/16 v3, 0x64

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->isInClosedOpenRange(DII)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 65
    const/4 v2, 0x5

    return v2

    .line 68
    :cond_3a
    const/4 v2, 0x6

    return v2
.end method

.method private static blacklist checkSizeIsValid(JLjava/lang/String;)V
    .registers 5
    .param p0, "sizeBytes"    # J
    .param p2, "errMessage"    # Ljava/lang/String;

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    .line 153
    return-void

    .line 151
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isInClosedOpenRange(DII)Z
    .registers 6
    .param p0, "value"    # D
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .line 156
    int-to-double v0, p2

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_c

    int-to-double v0, p3

    cmpg-double v0, p0, v0

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
