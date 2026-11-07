.class public Landroid/app/timedetector/TimeDetectorHelper;
.super Ljava/lang/Object;
.source "TimeDetectorHelper.java"


# static fields
.field private static final blacklist AUTO_SUGGESTION_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

.field public static final blacklist INSTANCE:Landroid/app/timedetector/TimeDetectorHelper;

.field private static final blacklist MANUAL_SUGGESTION_LOWER_BOUND:Ljava/time/Instant;

.field private static final blacklist MANUAL_SUGGESTION_YEAR_MAX_WITHOUT_Y2038_ISSUE:I = 0x834

.field private static final blacklist MANUAL_SUGGESTION_YEAR_MAX_WITH_Y2038_ISSUE:I = 0x7f5

.field private static final blacklist MANUAL_SUGGESTION_YEAR_MIN:I = 0x7df

.field private static final blacklist SUGGESTION_UPPER_BOUND_WIITHOUT_Y2038_ISSUE:Ljava/time/Instant;

.field private static final blacklist SUGGESTION_UPPER_BOUND_WITH_Y2038_ISSUE:Ljava/time/Instant;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 67
    nop

    .line 68
    const-wide v0, 0x1f3fffffc18L

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Landroid/app/timedetector/TimeDetectorHelper;->SUGGESTION_UPPER_BOUND_WITH_Y2038_ISSUE:Ljava/time/Instant;

    .line 78
    nop

    .line 79
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Landroid/app/timedetector/TimeDetectorHelper;->SUGGESTION_UPPER_BOUND_WIITHOUT_Y2038_ISSUE:Ljava/time/Instant;

    .line 82
    nop

    .line 83
    const-wide v0, 0x14991d9a400L

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Landroid/app/timedetector/TimeDetectorHelper;->MANUAL_SUGGESTION_LOWER_BOUND:Ljava/time/Instant;

    .line 93
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    .line 92
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Landroid/app/timedetector/TimeDetectorHelper;->AUTO_SUGGESTION_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

    .line 96
    new-instance v0, Landroid/app/timedetector/TimeDetectorHelper;

    invoke-direct {v0}, Landroid/app/timedetector/TimeDetectorHelper;-><init>()V

    sput-object v0, Landroid/app/timedetector/TimeDetectorHelper;->INSTANCE:Landroid/app/timedetector/TimeDetectorHelper;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getDeviceHasY2038Issue()Z
    .registers 2

    .line 156
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public blacklist getAutoSuggestionLowerBoundDefault()Ljava/time/Instant;
    .registers 2

    .line 140
    sget-object v0, Landroid/app/timedetector/TimeDetectorHelper;->AUTO_SUGGESTION_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getManualDateSelectionYearMax()I
    .registers 2

    .line 114
    invoke-direct {p0}, Landroid/app/timedetector/TimeDetectorHelper;->getDeviceHasY2038Issue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    const/16 v0, 0x7f5

    goto :goto_b

    .line 116
    :cond_9
    const/16 v0, 0x834

    .line 114
    :goto_b
    return v0
.end method

.method public blacklist getManualDateSelectionYearMin()I
    .registers 2

    .line 106
    const/16 v0, 0x7df

    return v0
.end method

.method public blacklist getManualSuggestionLowerBound()Ljava/time/Instant;
    .registers 2

    .line 128
    sget-object v0, Landroid/app/timedetector/TimeDetectorHelper;->MANUAL_SUGGESTION_LOWER_BOUND:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getSuggestionUpperBound()Ljava/time/Instant;
    .registers 2

    .line 146
    invoke-direct {p0}, Landroid/app/timedetector/TimeDetectorHelper;->getDeviceHasY2038Issue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    sget-object v0, Landroid/app/timedetector/TimeDetectorHelper;->SUGGESTION_UPPER_BOUND_WITH_Y2038_ISSUE:Ljava/time/Instant;

    goto :goto_b

    .line 148
    :cond_9
    sget-object v0, Landroid/app/timedetector/TimeDetectorHelper;->SUGGESTION_UPPER_BOUND_WIITHOUT_Y2038_ISSUE:Ljava/time/Instant;

    .line 146
    :goto_b
    return-object v0
.end method
