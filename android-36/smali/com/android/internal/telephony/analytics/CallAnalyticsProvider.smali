.class public Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;
.super Ljava/lang/Object;
.source "CallAnalyticsProvider.java"

# interfaces
.implements Lcom/android/internal/telephony/analytics/TelephonyAnalyticsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;,
        Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;
    }
.end annotation


# static fields
.field private static final blacklist CALL_INSERTION_PROJECTION:[Ljava/lang/String;

.field private static final blacklist DECIMAL_FORMAT:Ljava/text/DecimalFormat;

.field private static final blacklist TAG:Ljava/lang/String; = "CallAnalyticsProvider"


# instance fields
.field private blacklist mDateOfDeletedRecordsCallTable:Ljava/lang/String;

.field private final blacklist mSlotIndex:I

.field private blacklist mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;


# direct methods
.method public static synthetic blacklist $r8$lambda$pnoW83REXrxwNs6pk1WG73eXlBA(JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 9

    .line 602
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    long-to-double p0, p0

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p0

    .line 603
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\tNo. of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failures at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", Percentage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    .line 613
    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 603
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    .line 70
    const-string v0, "_id"

    const-string v1, "Count"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->CALL_INSERTION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;I)V
    .registers 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    .line 145
    iput p2, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mSlotIndex:I

    .line 146
    const-string p0, "CREATE TABLE IF NOT EXISTS CallDataLogs(_id INTEGER PRIMARY KEY,LogDate DATE ,CallStatus TEXT DEFAULT \'\',CallType TEXT DEFAULT \'\',RAT TEXT DEFAULT \'\',SlotID INTEGER ,FailureReason TEXT DEFAULT \'\',ReleaseVersion TEXT DEFAULT \'\' , Count INTEGER DEFAULT 1 );"

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->createTable(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist addFailureStatsFromHashMap(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 600
    new-instance v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;

    move-object v4, p2

    move-wide v1, p3

    move-object v5, p5

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$$ExternalSyntheticLambda0;-><init>(JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private blacklist countCallsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J
    .registers 13

    .line 341
    const-string v0, "sum(Count)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getColumnSelectionAndArgs(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 343
    aget-object v4, p1, p2

    const/4 p2, 0x1

    .line 344
    array-length v0, p1

    .line 346
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 348
    const-string v2, "CallDataLogs"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getCount(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist countFailedCalls()J
    .registers 3

    .line 364
    sget-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->FAILURE:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countCallsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist countFailedNormalCalls()J
    .registers 3

    .line 372
    sget-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->NORMAL:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->FAILURE:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countCallsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist countFailedSosCalls()J
    .registers 3

    .line 380
    sget-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->SOS:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->FAILURE:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countCallsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist countNormalCalls()J
    .registers 3

    .line 368
    sget-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->NORMAL:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countCallsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist countSosCalls()J
    .registers 3

    .line 376
    sget-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->SOS:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countCallsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist countTotalCalls()J
    .registers 3

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, v0, v0}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countCallsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist dumpInformationInList(JJDJDJDLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJDJDJD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-wide/from16 v3, p11

    .line 544
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 545
    const-string p1, "Normal Call Stats"

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\tTotal Normal Calls = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p7

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\tPercentage Failure of Normal Calls = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    move-wide/from16 v0, p9

    .line 549
    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object p1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->NORMAL:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;

    iget-object v7, p1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    const-string v10, "FailureReason"

    move-object v5, p0

    move-object/from16 v6, p17

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->addFailureStatsFromHashMap(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 557
    iget-object v7, p1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    const-string v10, "RAT"

    move-object/from16 v6, p19

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->addFailureStatsFromHashMap(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)V

    const-wide/16 v7, 0x0

    cmp-long p1, v3, v7

    if-lez p1, :cond_ac

    .line 565
    const-string p1, "SOS Call Stats"

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tTotal SOS Calls = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tPercentage Failure of SOS Calls = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, p13

    .line 569
    invoke-virtual {p2, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object p1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->SOS:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;

    iget-object v2, p1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    const-string v5, "FailureReason"

    move-object v0, p0

    move-object/from16 v1, p18

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->addFailureStatsFromHashMap(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 577
    iget-object v2, p1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    const-string v5, "RAT"

    move-wide/from16 v3, p11

    move-object/from16 v1, p20

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->addFailureStatsFromHashMap(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)V

    :cond_ac
    cmp-long p0, p3, v7

    if-eqz p0, :cond_dc

    .line 585
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\tMax Call(Normal+SOS) Failures at Version : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, p15

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\tMax Call(Normal+SOS) Failures at Network Type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, p16

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    return-object v11
.end method

.method private blacklist getColumnSelectionAndArgs(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2d

    if-eqz p2, :cond_1c

    const/4 v4, 0x4

    .line 310
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "CallType = ? AND CallStatus = ? AND SlotID = ? "

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    iget p0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mSlotIndex:I

    .line 312
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v0

    return-object v4

    .line 320
    :cond_1c
    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "CallType = ? AND SlotID = ? "

    aput-object v0, p2, v3

    aput-object p1, p2, v2

    iget p0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mSlotIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    return-object p2

    :cond_2d
    if-eqz p2, :cond_40

    .line 329
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "CallStatus = ? AND SlotID = ? "

    aput-object v0, p1, v3

    aput-object p2, p1, v2

    iget p0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mSlotIndex:I

    .line 330
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    return-object p1

    .line 333
    :cond_40
    new-array p1, v1, [Ljava/lang/String;

    const-string p2, "SlotID = ? "

    aput-object p2, p1, v3

    iget p0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mSlotIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    return-object p1
.end method

.method private blacklist getContentValues(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 8

    .line 151
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "LogDate"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "CallType"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string p1, "CallStatus"

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "SlotID"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string p1, "RAT"

    invoke-virtual {p0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string p1, "FailureReason"

    invoke-virtual {p0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string p1, "ReleaseVersion"

    sget-object p2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist getFailedCallSelectionArgs(Landroid/content/ContentValues;)[Ljava/lang/String;
    .registers 9

    .line 174
    const-string p0, "LogDate"

    .line 175
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "CallStatus"

    .line 176
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "CallType"

    .line 177
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "SlotID"

    .line 178
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "RAT"

    .line 179
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "FailureReason"

    .line 180
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "ReleaseVersion"

    .line 181
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getFailureCountByColumnForCallType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 466
    const-string v0, "SUM(Count) AS count"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 467
    const-string v4, "CallType = ? AND CallStatus = ? AND SlotID = ? "

    .line 474
    sget-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->FAILURE:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->value:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 477
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x0

    .line 480
    :try_start_1c
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v2, "CallDataLogs"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    .line 481
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_52

    .line 492
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 493
    const-string p1, "count"

    invoke-interface {v10, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_52

    if-eq p0, v0, :cond_52

    .line 496
    :goto_39
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 497
    invoke-interface {v10, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-interface {v10, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 499
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_1c .. :try_end_4e} :catchall_4f

    goto :goto_39

    :catchall_4f
    move-exception v0

    move-object p0, v0

    goto :goto_58

    :cond_52
    if-eqz v10, :cond_57

    .line 505
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_57
    return-object p2

    :goto_58
    if-eqz v10, :cond_5d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_5d
    throw p0
.end method

.method private blacklist getFailureCountByRatForCallType(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 457
    const-string v0, "RAT"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getFailureCountByColumnForCallType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getFailureCountByReasonForCallType(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 461
    const-string v0, "FailureReason"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getFailureCountByColumnForCallType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getMaxFailureNetworkType()Ljava/lang/String;
    .registers 12

    .line 421
    const-string v0, "RAT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 422
    const-string v4, "CallStatus = ? AND SlotID = ? "

    .line 424
    sget-object v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->FAILURE:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->value:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 425
    const-string v6, "RAT"

    .line 426
    const-string v8, "SUM(Count) DESC "

    .line 427
    const-string v9, "1"

    const/4 v10, 0x0

    .line 432
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v2, "CallDataLogs"

    const/4 v7, 0x0

    .line 433
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3a

    .line 443
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 444
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 445
    invoke-interface {v10, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_37

    goto :goto_3c

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_42

    .line 448
    :cond_3a
    const-string p0, ""

    :goto_3c
    if-eqz v10, :cond_41

    .line 449
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_41
    return-object p0

    :goto_42
    if-eqz v10, :cond_47

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_47
    throw p0
.end method

.method private blacklist getMaxFailureVersion()Ljava/lang/String;
    .registers 12

    .line 384
    const-string v0, "ReleaseVersion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 385
    const-string v4, "CallStatus = ? AND SlotID = ? "

    .line 387
    sget-object v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->FAILURE:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->value:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 388
    const-string v6, "ReleaseVersion"

    .line 389
    const-string v8, "SUM(Count) DESC "

    .line 390
    const-string v9, "1"

    const/4 v10, 0x0

    .line 394
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v2, "CallDataLogs"

    const/4 v7, 0x0

    .line 395
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3d

    .line 405
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 407
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3d

    .line 409
    invoke-interface {v10, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_3a

    goto :goto_3f

    :catchall_3a
    move-exception v0

    move-object p0, v0

    goto :goto_45

    .line 413
    :cond_3d
    const-string p0, ""

    :goto_3f
    if-eqz v10, :cond_44

    .line 414
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_44
    return-object p0

    :goto_45
    if-eqz v10, :cond_4a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_4a
    throw p0
.end method

.method private blacklist getSuccessfulCallSelectionArgs(Landroid/content/ContentValues;)[Ljava/lang/String;
    .registers 5

    .line 164
    const-string p0, "CallType"

    .line 165
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogDate"

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->SUCCESS:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->value:Ljava/lang/String;

    const-string v2, "SlotID"

    .line 168
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v0, v1, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist updateEntryIfExistsOrInsert(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 8

    .line 239
    const-string v0, "CallDataLogs"

    if-eqz p1, :cond_56

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 240
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 241
    const-string v2, "Count"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_55

    if-eq v3, v4, :cond_55

    .line 243
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 244
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 251
    sget-object v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v1, "_id = ? "

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_55
    return-void

    .line 260
    :cond_56
    sget-object p1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->TAG:Ljava/lang/String;

    const-string v1, "Simple Insertion"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public blacklist aggregate()Ljava/util/ArrayList;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 625
    invoke-direct {v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countTotalCalls()J

    move-result-wide v2

    .line 626
    invoke-direct {v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countFailedCalls()J

    move-result-wide v4

    long-to-double v6, v4

    long-to-double v8, v2

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    .line 628
    invoke-direct {v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getMaxFailureVersion()Ljava/lang/String;

    move-result-object v16

    .line 629
    invoke-direct {v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getMaxFailureNetworkType()Ljava/lang/String;

    move-result-object v17

    .line 630
    sget-object v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->NORMAL:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;

    iget-object v10, v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    .line 631
    invoke-direct {v1, v10}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getFailureCountByReasonForCallType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v18

    .line 632
    sget-object v10, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->SOS:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;

    iget-object v11, v10, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    .line 633
    invoke-direct {v1, v11}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getFailureCountByReasonForCallType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 634
    iget-object v0, v0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    .line 635
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getFailureCountByRatForCallType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 636
    iget-object v0, v10, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallType;->value:Ljava/lang/String;

    .line 637
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getFailureCountByRatForCallType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    move-wide v10, v8

    .line 638
    invoke-direct {v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countNormalCalls()J

    move-result-wide v8

    .line 639
    invoke-direct {v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countFailedNormalCalls()J

    move-result-wide v12

    long-to-double v12, v12

    long-to-double v14, v8

    div-double/2addr v12, v14

    mul-double/2addr v12, v10

    move-wide v14, v10

    move-wide v10, v12

    .line 642
    invoke-direct {v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countSosCalls()J

    move-result-wide v12

    move-wide/from16 v22, v14

    .line 643
    invoke-direct {v1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->countFailedSosCalls()J

    move-result-wide v14

    long-to-double v14, v14

    long-to-double v0, v12

    div-double/2addr v14, v0

    mul-double v14, v14, v22

    move-object/from16 v1, p0

    .line 647
    invoke-direct/range {v1 .. v21}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->dumpInformationInList(JJDJDJDLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist deleteOldAndOverflowData()V
    .registers 6

    .line 513
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mDateOfDeletedRecordsCallTable:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 515
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 516
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v2, "_id IN  ( SELECT _id FROM CallDataLogs ORDER BY LogDate DESC LIMIT -1 OFFSET ? )"

    const-string v3, "LogDate < ? "

    const-string v4, "CallDataLogs"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->deleteOverflowAndOldData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iput-object v0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mDateOfDeletedRecordsCallTable:Ljava/lang/String;

    return-void
.end method

.method public blacklist getCount(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 18

    const/4 p1, 0x0

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v1, "CallDataLogs"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 280
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCountFromCursor(Landroid/database/Cursor;)J

    move-result-wide p2
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1e

    if-eqz p1, :cond_1d

    .line 292
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1d
    return-wide p2

    :catchall_1e
    move-exception v0

    move-object p0, v0

    if-eqz p1, :cond_25

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_25
    throw p0
.end method

.method public blacklist insertDataToDb(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getContentValues(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    const/4 p2, 0x0

    .line 199
    :try_start_5
    const-string p3, "CallStatus"

    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->SUCCESS:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;

    iget-object p4, p4, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider$CallStatus;->value:Ljava/lang/String;

    .line 200
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_34

    .line 201
    sget-object p3, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->TAG:Ljava/lang/String;

    const-string p4, "Insertion for Success Call"

    invoke-static {p3, p4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getSuccessfulCallSelectionArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v4

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v1, "CallDataLogs"

    sget-object v2, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->CALL_INSERTION_PROJECTION:[Ljava/lang/String;

    const-string v3, "CallType = ? AND LogDate = ? AND CallStatus = ? AND SlotID = ? "

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 204
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_48

    :catchall_31
    move-exception v0

    move-object p0, v0

    goto :goto_61

    .line 215
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->getFailedCallSelectionArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v4

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v1, "CallDataLogs"

    sget-object v2, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->CALL_INSERTION_PROJECTION:[Ljava/lang/String;

    const-string v3, "LogDate = ? AND CallStatus = ? AND CallType = ? AND SlotID = ? AND RAT = ? AND FailureReason = ? AND ReleaseVersion = ? "

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 217
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 227
    :goto_48
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->updateEntryIfExistsOrInsert(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->deleteOldAndOverflowData()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4e} :catch_54
    .catchall {:try_start_5 .. :try_end_4e} :catchall_31

    if-eqz p2, :cond_60

    .line 233
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 230
    :catch_54
    :try_start_54
    sget-object p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->TAG:Ljava/lang/String;

    const-string p1, "Error caught in insertDataToDb while insertion."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_31

    if-eqz p2, :cond_60

    .line 233
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_60
    return-void

    :goto_61
    if-eqz p2, :cond_66

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_66
    throw p0
.end method

.method public blacklist setDateOfDeletedRecordsCallTable(Ljava/lang/String;)V
    .registers 2

    .line 526
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->mDateOfDeletedRecordsCallTable:Ljava/lang/String;

    return-void
.end method
