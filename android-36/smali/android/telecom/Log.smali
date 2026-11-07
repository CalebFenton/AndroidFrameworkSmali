.class public Landroid/telecom/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static greylist-max-o DEBUG:Z = false

.field public static greylist-max-o ERROR:Z = false

.field private static final greylist-max-o EVENTS_TO_CACHE:I = 0xa

.field private static final greylist-max-o EVENTS_TO_CACHE_DEBUG:I = 0x14

.field private static final greylist-max-o EXTENDED_LOGGING_DURATION_MILLIS:J = 0x1b7740L

.field private static final greylist-max-o FORCE_LOGGING:Z = false

.field public static greylist-max-o INFO:Z

.field private static final blacklist NUM_DIALABLE_DIGITS_TO_LOG:I

.field public static greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o USER_BUILD:Z

.field public static greylist-max-o VERBOSE:Z

.field public static greylist-max-o WARN:Z

.field private static greylist-max-o sEventManager:Landroid/telecom/Logging/EventManager;

.field private static blacklist sIsUnitTestingEnabled:Z

.field private static greylist-max-o sIsUserExtendedLoggingEnabled:Z

.field private static blacklist sLock:Ljava/lang/Object;

.field private static volatile greylist-max-o sSessionManager:Landroid/telecom/Logging/SessionManager;

.field private static final greylist-max-o sSingletonSync:Ljava/lang/Object;

.field private static greylist-max-o sUserExtendedLoggingStopTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 54
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    sput v0, Landroid/telecom/Log;->NUM_DIALABLE_DIGITS_TO_LOG:I

    .line 58
    const-string v0, "TelecomFramework"

    sput-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    .line 60
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    .line 61
    invoke-static {v1}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    .line 62
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    .line 63
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    .line 66
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    sput-boolean v0, Landroid/telecom/Log;->USER_BUILD:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Landroid/telecom/Log;->sLock:Ljava/lang/Object;

    .line 77
    sput-boolean v2, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 82
    sput-boolean v2, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    .line 88
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static greylist-max-o addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;)V
    .registers 4
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;

    .line 264
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public static greylist-max-o addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .line 268
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public static varargs blacklist addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 273
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public static greylist-max-o addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .registers 2
    .param p0, "p"    # Landroid/telecom/Logging/EventManager$TimedEventPair;

    .line 281
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V

    .line 282
    return-void
.end method

.method private static varargs blacklist buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 534
    invoke-static {}, Landroid/telecom/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "sessionName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_e

    move-object v1, v2

    goto :goto_21

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "sessionPostfix":Ljava/lang/String;
    :goto_21
    if-eqz p2, :cond_53

    :try_start_23
    array-length v3, p2

    if-nez v3, :cond_27

    goto :goto_53

    .line 540
    :cond_27
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_2d
    .catch Ljava/util/IllegalFormatException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_54

    .line 541
    :catch_2e
    move-exception v3

    .line 542
    .local v3, "ife":Ljava/util/IllegalFormatException;
    sget-object v4, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    array-length v5, p2

    .line 543
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 542
    const-string v6, "Log: IllegalFormatException: formatString=\'%s\' numArgs=%d"

    invoke-static {v4, v3, v6, v5}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (An error occurred while formatting the message.)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "msg":Ljava/lang/String;
    goto :goto_56

    .line 539
    .end local v3    # "ife":Ljava/util/IllegalFormatException;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_53
    :goto_53
    move-object v3, p1

    .line 540
    :goto_54
    move-object v4, v3

    .line 545
    .restart local v4    # "msg":Ljava/lang/String;
    nop

    .line 548
    :goto_56
    sget-object v3, Landroid/telecom/Log;->sLock:Ljava/lang/Object;

    if-eqz v3, :cond_69

    sget-object v2, Landroid/telecom/Log;->sLock:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string/jumbo v2, "\ud83d\udd12"

    goto :goto_69

    :cond_66
    const-string/jumbo v2, "\u2757"

    .line 549
    .local v2, "isLocked":Ljava/lang/String;
    :cond_69
    :goto_69
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s: %s%s%s"

    filled-new-array {p0, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o cancelSubsession(Landroid/telecom/Logging/Session;)V
    .registers 2
    .param p0, "subsession"    # Landroid/telecom/Logging/Session;

    .line 236
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->cancelSubsession(Landroid/telecom/Logging/Session;)V

    .line 237
    return-void
.end method

.method public static greylist-max-o continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .registers 3
    .param p0, "subsession"    # Landroid/telecom/Logging/Session;
    .param p1, "shortMethodName"    # Ljava/lang/String;

    .line 240
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static greylist-max-o createSubsession()Landroid/telecom/Logging/Session;
    .registers 1

    .line 218
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 103
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_15

    .line 104
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 105
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 106
    :cond_15
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 107
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_26
    :goto_26
    return-void
.end method

.method public static varargs blacklist d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 94
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 95
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 96
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 97
    :cond_11
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 98
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static greylist-max-o dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 287
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_f

    .line 289
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_14

    .line 291
    :cond_f
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 293
    :goto_14
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static greylist-max-o dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 304
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_f

    .line 306
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_14

    .line 308
    :cond_f
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 310
    :goto_14
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static varargs blacklist e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 162
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_11

    .line 163
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_11
    return-void
.end method

.method public static varargs blacklist e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 156
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_d

    .line 157
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_d
    return-void
.end method

.method public static greylist-max-o endSession()V
    .registers 1

    .line 244
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->endSession()V

    .line 245
    return-void
.end method

.method private static blacklist getDialableCount(Ljava/lang/String;)I
    .registers 7
    .param p0, "toCount"    # Ljava/lang/String;

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "numDialable":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-char v4, v1, v3

    .line 509
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 510
    add-int/lit8 v0, v0, 0x1

    .line 508
    .end local v4    # "c":C
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 513
    :cond_16
    return v0
.end method

.method private static greylist-max-o getEventManager()Landroid/telecom/Logging/EventManager;
    .registers 3

    .line 356
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v0, :cond_20

    .line 357
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_7
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v1, :cond_1b

    .line 359
    new-instance v1, Landroid/telecom/Logging/EventManager;

    new-instance v2, Landroid/telecom/Log$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telecom/Log$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2}, Landroid/telecom/Logging/EventManager;-><init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V

    sput-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    .line 360
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    monitor-exit v0

    return-object v1

    .line 362
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1

    .line 364
    :cond_20
    :goto_20
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    return-object v0
.end method

.method public static greylist-max-o getExternalSession()Landroid/telecom/Logging/Session$Info;
    .registers 1

    .line 222
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .registers 2
    .param p0, "ownerInfo"    # Ljava/lang/String;

    .line 232
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPackageAbbreviation(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 560
    if-nez p0, :cond_5

    .line 561
    const-string v0, ""

    return-object v0

    .line 563
    :cond_5
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Log;->getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 574
    const-string v0, ""

    if-nez p0, :cond_5

    .line 575
    return-object v0

    .line 577
    :cond_5
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telecom/Log$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telecom/Log$$ExternalSyntheticLambda0;-><init>()V

    .line 578
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 579
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 577
    return-object v0
.end method

.method private static greylist-max-o getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 529
    if-nez p0, :cond_5

    const-string v0, "<null>"

    goto :goto_d

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static greylist-max-o getSessionId()Ljava/lang/String;
    .registers 2

    .line 254
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-eqz v1, :cond_11

    .line 256
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Logging/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 258
    :cond_11
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 260
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static greylist-max-o getSessionManager()Landroid/telecom/Logging/SessionManager;
    .registers 2

    .line 371
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v0, :cond_1b

    .line 372
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_7
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v1, :cond_16

    .line 374
    new-instance v1, Landroid/telecom/Logging/SessionManager;

    invoke-direct {v1}, Landroid/telecom/Logging/SessionManager;-><init>()V

    sput-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    .line 375
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    monitor-exit v0

    return-object v1

    .line 377
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 379
    :cond_1b
    :goto_1b
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    return-object v0
.end method

.method public static varargs blacklist i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 119
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_11

    .line 120
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_11
    return-void
.end method

.method public static varargs greylist-max-r i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 113
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_d

    .line 114
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_d
    return-void
.end method

.method public static greylist-max-o isLoggable(I)Z
    .registers 2
    .param p0, "level"    # I

    .line 437
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUnitTestingEnabled()Z
    .registers 1

    .line 350
    sget-boolean v0, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    return v0
.end method

.method static synthetic blacklist lambda$getPackageAbbreviation$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_f

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method private static greylist-max-o maybeDisableLogging()V
    .registers 4

    .line 426
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 427
    return-void

    .line 430
    :cond_5
    sget-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 431
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    .line 432
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 434
    :cond_16
    return-void
.end method

.method private static blacklist obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 489
    invoke-static {p1}, Landroid/telecom/Log;->getDialableCount(Ljava/lang/String;)I

    move-result v0

    sget v1, Landroid/telecom/Log;->NUM_DIALABLE_DIGITS_TO_LOG:I

    sub-int/2addr v0, v1

    .line 491
    .local v0, "numDigitsToObfuscate":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 492
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 493
    .local v2, "c":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    .line 494
    .local v3, "isDialable":Z
    if-eqz v3, :cond_1a

    .line 495
    add-int/lit8 v0, v0, -0x1

    .line 497
    :cond_1a
    if-eqz v3, :cond_21

    if-ltz v0, :cond_21

    const-string v4, "*"

    goto :goto_25

    :cond_21
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    :goto_25
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    .end local v2    # "c":C
    .end local v3    # "isDialable":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 499
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method

.method public static greylist-max-o pii(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "pii"    # Ljava/lang/Object;

    .line 522
    if-eqz p0, :cond_a

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_7

    goto :goto_a

    .line 525
    :cond_7
    const-string v0, "***"

    return-object v0

    .line 523
    :cond_a
    :goto_a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o piiHandle(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p0, "pii"    # Ljava/lang/Object;

    .line 447
    if-eqz p0, :cond_76

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_8

    goto/16 :goto_76

    .line 451
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v0, "sb":Ljava/lang/StringBuilder;
    instance-of v1, p0, Landroid/net/Uri;

    if-eqz v1, :cond_65

    .line 453
    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    .line 454
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "scheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_27
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "textToObfuscate":Ljava/lang/String;
    const-string/jumbo v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 462
    invoke-static {v0, v3}, Landroid/telecom/Log;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_70

    .line 463
    :cond_38
    const-string/jumbo v4, "sip"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 464
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5c

    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 466
    .local v5, "c":C
    const/16 v6, 0x40

    if-eq v5, v6, :cond_56

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_56

    .line 467
    const/16 v5, 0x2a

    .line 469
    :cond_56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .end local v4    # "i":I
    :cond_5c
    goto :goto_70

    .line 472
    :cond_5d
    invoke-static {p0}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 474
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "textToObfuscate":Ljava/lang/String;
    :cond_65
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_70

    .line 475
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 476
    .local v1, "number":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/telecom/Log;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_71

    .line 474
    .end local v1    # "number":Ljava/lang/String;
    :cond_70
    :goto_70
    nop

    .line 479
    :goto_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 448
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_76
    :goto_76
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .registers 2
    .param p0, "e"    # Landroid/telecom/Logging/EventManager$EventListener;

    .line 277
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V

    .line 278
    return-void
.end method

.method public static greylist-max-o registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .registers 2
    .param p0, "l"    # Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 248
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V

    .line 249
    return-void
.end method

.method public static greylist-max-o setIsExtendedLoggingEnabled(Z)V
    .registers 5
    .param p0, "isExtendedLoggingEnabled"    # Z

    .line 321
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-ne v0, p0, :cond_5

    .line 322
    return-void

    .line 325
    :cond_5
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v0, :cond_15

    .line 326
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz p0, :cond_10

    .line 327
    const/16 v1, 0x14

    goto :goto_12

    :cond_10
    const/16 v1, 0xa

    .line 326
    :goto_12
    invoke-virtual {v0, v1}, Landroid/telecom/Logging/EventManager;->changeEventCacheSize(I)V

    .line 330
    :cond_15
    sput-boolean p0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 331
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_26

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    goto :goto_2a

    .line 335
    :cond_26
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    .line 337
    :goto_2a
    return-void
.end method

.method public static blacklist setLock(Ljava/lang/Object;)V
    .registers 2
    .param p0, "lock"    # Ljava/lang/Object;

    .line 416
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_6

    .line 417
    sput-object p0, Landroid/telecom/Log;->sLock:Ljava/lang/Object;

    .line 419
    :cond_6
    return-void
.end method

.method public static greylist-max-o setSessionContext(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 197
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->setContext(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method public static blacklist setSessionManager(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/telecom/Logging/SessionManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cleanSessionRunnable"    # Ljava/lang/Runnable;

    .line 387
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v0, :cond_20

    .line 388
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_7
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v1, :cond_1b

    .line 390
    new-instance v1, Landroid/telecom/Logging/SessionManager;

    invoke-direct {v1, p1}, Landroid/telecom/Logging/SessionManager;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    .line 391
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/SessionManager;->setContext(Landroid/content/Context;)V

    .line 392
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    monitor-exit v0

    return-object v1

    .line 394
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1

    .line 396
    :cond_20
    :goto_20
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    return-object v0
.end method

.method public static greylist-max-o setTag(Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 400
    sput-object p0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    .line 401
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    .line 402
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    .line 403
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    .line 404
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    .line 405
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    .line 406
    return-void
.end method

.method public static blacklist setUnitTestingEnabled(Z)V
    .registers 1
    .param p0, "isEnabled"    # Z

    .line 346
    sput-boolean p0, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    .line 347
    return-void
.end method

.method public static greylist-max-o startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .registers 4
    .param p0, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p1, "shortMethodName"    # Ljava/lang/String;

    .line 205
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static greylist-max-o startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p1, "shortMethodName"    # Ljava/lang/String;
    .param p2, "callerIdentification"    # Ljava/lang/String;

    .line 214
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static greylist-max-o startSession(Ljava/lang/String;)V
    .registers 3
    .param p0, "shortMethodName"    # Ljava/lang/String;

    .line 201
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static greylist-max-o startSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "shortMethodName"    # Ljava/lang/String;
    .param p1, "callerIdentification"    # Ljava/lang/String;

    .line 209
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static varargs blacklist v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 134
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_15

    .line 135
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 136
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 137
    :cond_15
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_26

    .line 138
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_26
    :goto_26
    return-void
.end method

.method public static varargs blacklist v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 125
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 126
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 127
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 128
    :cond_11
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1e

    .line 129
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static varargs blacklist w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 150
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_11

    .line 151
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_11
    return-void
.end method

.method public static varargs greylist-max-r w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 144
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_d

    .line 145
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_d
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 183
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 173
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 178
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 169
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    return-void
.end method
