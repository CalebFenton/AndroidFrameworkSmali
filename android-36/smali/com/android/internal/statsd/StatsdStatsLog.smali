.class public Lcom/android/internal/statsd/StatsdStatsLog;
.super Ljava/lang/Object;
.source "StatsdStatsLog.java"


# static fields
.field public static final blacklist ANNOTATION_ID_DEFAULT_STATE:B = 0x6t

.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final blacklist ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final blacklist ANOMALY_DETECTED:I = 0x2e

.field public static final blacklist APP_BREADCRUMB_REPORTED:I = 0x2f

.field public static final blacklist APP_BREADCRUMB_REPORTED__STATE__START:I = 0x3

.field public static final blacklist APP_BREADCRUMB_REPORTED__STATE__STOP:I = 0x2

.field public static final blacklist APP_BREADCRUMB_REPORTED__STATE__UNKNOWN:I = 0x0

.field public static final blacklist APP_BREADCRUMB_REPORTED__STATE__UNSPECIFIED:I = 0x1

.field public static final blacklist BINARY_PUSH_STATE_CHANGED:I = 0x66

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__CHECKPOINT_NOT_SUPPORTED:I = 0x29

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_BOOT_TRIGGERED:I = 0xd

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_BOOT_TRIGGERED_FAILURE:I = 0xe

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_FAILURE:I = 0x10

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_INITIATED:I = 0x9

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_INITIATED_FAILURE:I = 0xa

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_REQUESTED:I = 0x8

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_STAGED:I = 0xb

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_STAGED_CANCEL_FAILURE:I = 0x13

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_STAGED_CANCEL_REQUESTED:I = 0x11

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_STAGED_CANCEL_SUCCESS:I = 0x12

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_STAGED_FAILURE:I = 0xc

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALLER_ROLLBACK_SUCCESS:I = 0xf

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_CANCELLED:I = 0x7

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_FAILURE:I = 0x6

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_FAILURE_COMMIT:I = 0x19

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_FAILURE_DOWNLOAD:I = 0x17

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_FAILURE_STATE_MISMATCH:I = 0x18

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_REQUESTED:I = 0x1

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_STAGED_CANCEL_FAILURE:I = 0x16

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_STAGED_CANCEL_REQUESTED:I = 0x14

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_STAGED_CANCEL_SUCCESS:I = 0x15

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_STAGED_NOT_READY:I = 0x3

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_STAGED_READY:I = 0x4

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_STARTED:I = 0x2

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__INSTALL_SUCCESS:I = 0x5

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__LSKF_PREPARATION_FAILURE:I = 0x23

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__LSKF_PREPARATION_INITITATED:I = 0x21

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__LSKF_PREPARATION_RETRY:I = 0x28

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__LSKF_PREPARATION_SUCCESS:I = 0x22

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__NOTIFICATION_RESTART_ELIGIBLE:I = 0x1d

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__NO_REBOOT_PROMOTION_STRATEGY_ELIGIBLE:I = 0x1e

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__PENDING_REBOOT_CANCELLED:I = 0x2b

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__PENDING_REBOOT_MARKED:I = 0x2a

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__REBOOT_NOT_REQUIRED:I = 0x1b

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__REBOOT_TRIGGERED:I = 0x1a

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__REBOOT_TRIGGER_FAILURE:I = 0x1f

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__SIGNAL_NOT_READY_TO_REBOOT_RECEIVED:I = 0x2d

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__SIGNAL_READY_TO_REBOOT_RECEIVED:I = 0x2c

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__SIM_PIN_PREPARATION_FAILURE:I = 0x26

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__SIM_PIN_PREPARATION_SUCCESS:I = 0x25

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__SOFT_RESTART_ELIGIBLE:I = 0x1c

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__UNATTENDED_REBOOT_ABORT:I = 0x27

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__UNATTENDED_REBOOT_ELIGIBLE:I = 0x20

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__UNATTENDED_REBOOT_NOT_TRIGGERED:I = 0x24

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__UNKNOWN:I = 0x0

.field public static final blacklist BINARY_PUSH_STATE_CHANGED__STATE__UNTRACKED_TRAIN_CANCELLED:I = 0x2e

.field public static final blacklist BINDER_CALLS:I = 0x2726

.field public static final blacklist CPU_TIME_PER_UID_FREQ:I = 0x271a

.field public static final blacklist ISOLATED_UID_CHANGED:I = 0x2b

.field public static final blacklist ISOLATED_UID_CHANGED__EVENT__CREATED:I = 0x1

.field public static final blacklist ISOLATED_UID_CHANGED__EVENT__REMOVED:I = 0x0

.field public static final blacklist LOOPER_STATS:I = 0x2728

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED:I = 0x2f0

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EAGAIN:I = -0xb

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EBADF:I = -0x9

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EDESTADDRREQ:I = -0x59

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EDQUOT:I = -0x7a

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EFAULT:I = -0xe

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EFBIG:I = -0x1b

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EINTR:I = -0x4

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EINVAL:I = -0x16

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EIO:I = -0x5

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_ENODEV:I = -0x13

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_ENOSPC:I = -0x1c

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EPERM:I = -0x1

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_ON_WRITE_EPIPE:I = -0x20

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_QUEUE_OVERFLOW:I = 0x1

.field public static final blacklist STATS_SOCKET_LOSS_REPORTED__ERRORS__SOCKET_LOSS_ERROR_UNKNOWN:I = 0x0

.field public static final blacklist TRAIN_INFO:I = 0x2743

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_BOOT_TRIGGERED:I = 0xd

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_BOOT_TRIGGERED_FAILURE:I = 0xe

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_FAILURE:I = 0x10

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_INITIATED:I = 0x9

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_INITIATED_FAILURE:I = 0xa

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_REQUESTED:I = 0x8

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_STAGED:I = 0xb

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_STAGED_CANCEL_FAILURE:I = 0x13

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_STAGED_CANCEL_REQUESTED:I = 0x11

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_STAGED_CANCEL_SUCCESS:I = 0x12

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_STAGED_FAILURE:I = 0xc

.field public static final blacklist TRAIN_INFO__STATUS__INSTALLER_ROLLBACK_SUCCESS:I = 0xf

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_CANCELLED:I = 0x7

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_FAILURE:I = 0x6

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_FAILURE_COMMIT:I = 0x19

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_FAILURE_DOWNLOAD:I = 0x17

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_FAILURE_STATE_MISMATCH:I = 0x18

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_REQUESTED:I = 0x1

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_STAGED_CANCEL_FAILURE:I = 0x16

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_STAGED_CANCEL_REQUESTED:I = 0x14

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_STAGED_CANCEL_SUCCESS:I = 0x15

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_STAGED_NOT_READY:I = 0x3

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_STAGED_READY:I = 0x4

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_STARTED:I = 0x2

.field public static final blacklist TRAIN_INFO__STATUS__INSTALL_SUCCESS:I = 0x5

.field public static final blacklist TRAIN_INFO__STATUS__REBOOT_TRIGGERED:I = 0x1a

.field public static final blacklist TRAIN_INFO__STATUS__UNKNOWN:I = 0x0

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED:I = 0x93

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_REASON__REASON_APP_CRASH:I = 0x3

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_REASON__REASON_APP_NOT_RESPONDING:I = 0x4

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_REASON__REASON_BOOT_LOOPING:I = 0x7

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_REASON__REASON_EXPLICIT_HEALTH_CHECK:I = 0x2

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_REASON__REASON_NATIVE_CRASH:I = 0x1

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_REASON__REASON_NATIVE_CRASH_DURING_BOOT:I = 0x5

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_REASON__REASON_NETWORK_RELATED_CRASH:I = 0x6

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_REASON__REASON_UNKNOWN:I = 0x0

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_TYPE__ROLLBACK_BOOT_TRIGGERED:I = 0x4

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_TYPE__ROLLBACK_FAILURE:I = 0x3

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_TYPE__ROLLBACK_INITIATE:I = 0x1

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_TYPE__ROLLBACK_SUCCESS:I = 0x2

.field public static final blacklist WATCHDOG_ROLLBACK_OCCURRED__ROLLBACK_TYPE__UNKNOWN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildStatsEvent(IIIJ)Landroid/util/StatsEvent;
    .registers 7
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # J

    .line 317
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 318
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 319
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 320
    const/16 v1, 0x271a

    if-ne v1, p0, :cond_12

    .line 321
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 323
    :cond_12
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 324
    invoke-virtual {v0, p3, p4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist buildStatsEvent(IILjava/lang/String;Ljava/lang/String;JJJJJJJJJZI)Landroid/util/StatsEvent;
    .registers 40
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # J
    .param p6, "arg5"    # J
    .param p8, "arg6"    # J
    .param p10, "arg7"    # J
    .param p12, "arg8"    # J
    .param p14, "arg9"    # J
    .param p16, "arg10"    # J
    .param p18, "arg11"    # J
    .param p20, "arg12"    # J
    .param p22, "arg13"    # Z
    .param p23, "arg14"    # I

    .line 330
    move/from16 v0, p0

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 331
    .local v1, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 332
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 333
    const/4 v3, 0x1

    const/16 v4, 0x2726

    if-ne v4, v0, :cond_16

    .line 334
    invoke-virtual {v1, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 336
    :cond_16
    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 337
    move-object/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 338
    move-wide/from16 v7, p4

    invoke-virtual {v1, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 339
    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 340
    move-wide/from16 v11, p8

    invoke-virtual {v1, v11, v12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 341
    move-wide/from16 v13, p10

    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 342
    move-wide/from16 v3, p12

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 343
    move-wide/from16 v2, p14

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 344
    move-wide/from16 v2, p16

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 345
    move-wide/from16 v2, p18

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 346
    move-wide/from16 v2, p20

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 347
    move/from16 v4, p22

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 348
    move/from16 v15, p23

    invoke-virtual {v1, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 349
    const/16 v2, 0x2726

    if-ne v2, v0, :cond_5f

    .line 350
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 353
    :cond_5f
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJZJJJJJ)Landroid/util/StatsEvent;
    .registers 43
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "arg4"    # Ljava/lang/String;
    .param p5, "arg5"    # J
    .param p7, "arg6"    # J
    .param p9, "arg7"    # J
    .param p11, "arg8"    # J
    .param p13, "arg9"    # J
    .param p15, "arg10"    # Z
    .param p16, "arg11"    # J
    .param p18, "arg12"    # J
    .param p20, "arg13"    # J
    .param p22, "arg14"    # J
    .param p24, "arg15"    # J

    .line 357
    move/from16 v0, p0

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 358
    .local v1, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 359
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 360
    const/16 v3, 0x2728

    if-ne v3, v0, :cond_16

    .line 361
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 363
    :cond_16
    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 364
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 365
    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 366
    move-wide/from16 v6, p5

    invoke-virtual {v1, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 367
    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 368
    move-wide/from16 v10, p9

    invoke-virtual {v1, v10, v11}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 369
    move-wide/from16 v12, p11

    invoke-virtual {v1, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 370
    move-wide/from16 v14, p13

    invoke-virtual {v1, v14, v15}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 371
    move/from16 v0, p15

    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 372
    move-wide/from16 v2, p16

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 373
    move-wide/from16 v2, p18

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 374
    move-wide/from16 v2, p20

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 375
    move-wide/from16 v2, p22

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 376
    move-wide/from16 v2, p24

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 378
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v16

    return-object v16
.end method

.method public static blacklist buildStatsEvent(IJ[BLjava/lang/String;I)Landroid/util/StatsEvent;
    .registers 8
    .param p0, "code"    # I
    .param p1, "arg1"    # J
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # I

    .line 382
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 383
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 384
    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 385
    if-nez p3, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_11

    :cond_10
    move-object v1, p3

    :goto_11
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 386
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 387
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist write(IIII)V
    .registers 8
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I

    .line 231
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 232
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 233
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 234
    const/4 v1, 0x1

    const/16 v2, 0x2b

    if-ne v2, p0, :cond_12

    .line 235
    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 237
    :cond_12
    const/16 v3, 0x2f

    if-ne v3, p0, :cond_19

    .line 238
    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 240
    :cond_19
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 241
    if-ne v2, p0, :cond_21

    .line 242
    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 244
    :cond_21
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 247
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 248
    return-void
.end method

.method public static blacklist write(IIJJ)V
    .registers 8
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J

    .line 251
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 252
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 253
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 254
    const/16 v1, 0x2e

    if-ne v1, p0, :cond_12

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 257
    :cond_12
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 258
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 262
    return-void
.end method

.method public static blacklist write(IIJJI[I[I[I)V
    .registers 13
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # I
    .param p7, "arg5"    # [I
    .param p8, "arg6"    # [I
    .param p9, "arg7"    # [I

    .line 267
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 268
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 269
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 270
    const/16 v1, 0x2f0

    if-ne v1, p0, :cond_12

    .line 271
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 273
    :cond_12
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 274
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 275
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 276
    const/4 v1, 0x0

    if-nez p7, :cond_21

    new-array v2, v1, [I

    goto :goto_22

    :cond_21
    move-object v2, p7

    :goto_22
    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    .line 277
    if-nez p8, :cond_2a

    new-array v2, v1, [I

    goto :goto_2b

    :cond_2a
    move-object v2, p8

    :goto_2b
    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    .line 278
    if-nez p9, :cond_33

    new-array v1, v1, [I

    goto :goto_34

    :cond_33
    move-object v1, p9

    :goto_34
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeIntArray([I)Landroid/util/StatsEvent$Builder;

    .line 280
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 282
    return-void
.end method

.method public static blacklist write(IILjava/lang/String;IILjava/lang/String;[B)V
    .registers 9
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I
    .param p5, "arg5"    # Ljava/lang/String;
    .param p6, "arg6"    # [B

    .line 285
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 286
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 287
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 288
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 289
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 290
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 291
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 292
    if-nez p6, :cond_1c

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_1d

    :cond_1c
    move-object v1, p6

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 294
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 295
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 296
    return-void
.end method

.method public static blacklist write(ILjava/lang/String;JZZZI[BIIZ)V
    .registers 14
    .param p0, "code"    # I
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # J
    .param p4, "arg3"    # Z
    .param p5, "arg4"    # Z
    .param p6, "arg5"    # Z
    .param p7, "arg6"    # I
    .param p8, "arg7"    # [B
    .param p9, "arg8"    # I
    .param p10, "arg9"    # I
    .param p11, "arg10"    # Z

    .line 299
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 300
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 301
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 302
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 303
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 304
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 305
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 306
    invoke-virtual {v0, p7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 307
    if-nez p8, :cond_1f

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_20

    :cond_1f
    move-object v1, p8

    :goto_20
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 308
    invoke-virtual {v0, p9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 309
    invoke-virtual {v0, p10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 310
    invoke-virtual {v0, p11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 312
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 314
    return-void
.end method
