.class public Landroid/net/connectivity/org/chromium/base/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist ANDROID_APP_REFERRER_SCHEME:Ljava/lang/String; = "android-app"

.field private static final blacklist COMPONENT_NAME_LOCK:Ljava/lang/Object;

.field private static final blacklist TAG:Ljava/lang/String; = "IntentUtils"

.field public static final blacklist TRUSTED_APPLICATION_CODE_EXTRA:Ljava/lang/String; = "trusted_application_code_extra"

.field private static blacklist sFakeComponentName:Landroid/content/ComponentName;

.field private static blacklist sForceTrustedIntentForTesting:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    nop

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/IntentUtils;->COMPONENT_NAME_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addTrustedIntentExtras(Landroid/content/Intent;)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 526
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->intentTargetsSelf(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 527
    .local v0, "toSelf":Z
    nop

    .line 529
    if-nez v0, :cond_c

    return-void

    .line 533
    :cond_c
    const-string v1, "trusted_application_code_extra"

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->getAuthenticationToken()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 534
    return-void
.end method

.method private static blacklist getAuthenticationToken()Landroid/app/PendingIntent;
    .registers 4

    .line 508
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 509
    .local v0, "fakeIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 510
    .local v1, "appContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->getFakeComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 511
    nop

    .line 512
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->getPendingIntentMutabilityFlag(Z)I

    move-result v3

    .line 511
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getFakeComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 498
    sget-object v0, Landroid/net/connectivity/org/chromium/base/IntentUtils;->COMPONENT_NAME_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_3
    sget-object v1, Landroid/net/connectivity/org/chromium/base/IntentUtils;->sFakeComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_10

    .line 500
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "FakeClass"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Landroid/net/connectivity/org/chromium/base/IntentUtils;->sFakeComponentName:Landroid/content/ComponentName;

    .line 502
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 504
    sget-object v0, Landroid/net/connectivity/org/chromium/base/IntentUtils;->sFakeComponentName:Landroid/content/ComponentName;

    return-object v0

    .line 502
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static blacklist getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 236
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 237
    :catchall_5
    move-exception v0

    .line 239
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParcelableArrayListExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getParceledIntentSize(Landroid/content/Intent;)I
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    return v1
.end method

.method public static blacklist getPendingIntentMutabilityFlag(Z)I
    .registers 3
    .param p0, "mutable"    # Z

    .line 455
    if-nez p0, :cond_5

    .line 456
    const/high16 v0, 0x4000000

    return v0

    .line 457
    :cond_5
    if-eqz p0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_10

    .line 458
    const/high16 v0, 0x2000000

    return v0

    .line 460
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist intentTargetsSelf(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 471
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 472
    .local v0, "hasPackage":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    .line 473
    .local v3, "matchesPackage":Z
    :goto_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_26

    move v4, v1

    goto :goto_27

    :cond_26
    move v4, v2

    .line 474
    .local v4, "hasComponent":Z
    :goto_27
    if-eqz v4, :cond_3d

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move v5, v1

    goto :goto_3e

    :cond_3d
    move v5, v2

    .line 481
    .local v5, "matchesComponent":Z
    :goto_3e
    if-eqz v5, :cond_45

    .line 482
    if-eqz v0, :cond_44

    .line 485
    nop

    .line 486
    return v3

    .line 488
    :cond_44
    return v1

    .line 490
    :cond_45
    if-eqz v3, :cond_4d

    .line 491
    nop

    .line 492
    if-nez v4, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    return v1

    .line 494
    :cond_4d
    return v2
.end method

.method public static blacklist isIntentForNewTaskOrNewDocument(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 376
    const/high16 v0, 0x10080000

    .line 377
    .local v0, "testFlags":I
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static blacklist isMainIntentFromLauncher(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 441
    if-eqz p0, :cond_21

    .line 442
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 443
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 444
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 441
    :goto_22
    return v0
.end method

.method public static blacklist isTrustedIntentFromSelf(Landroid/content/Intent;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 541
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 543
    :cond_4
    sget-boolean v1, Landroid/net/connectivity/org/chromium/base/IntentUtils;->sForceTrustedIntentForTesting:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    return v0

    .line 548
    :cond_a
    nop

    .line 549
    const-string v1, "trusted_application_code_extra"

    invoke-static {p0, v1}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 550
    .local v1, "token":Landroid/app/PendingIntent;
    if-nez v1, :cond_16

    return v0

    .line 554
    :cond_16
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->getAuthenticationToken()Landroid/app/PendingIntent;

    move-result-object v0

    .line 555
    .local v0, "pending":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method static synthetic blacklist lambda$setForceIsTrustedIntentForTesting$0()V
    .registers 1

    .line 560
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/IntentUtils;->sForceTrustedIntentForTesting:Z

    return-void
.end method

.method private static blacklist logInvalidIntent(Landroid/content/Intent;Ljava/lang/Exception;)Landroid/content/Intent;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 410
    const-string v0, "IntentUtils"

    const-string v1, "Invalid incoming intent."

    invoke-static {v0, v1, p1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V
    .registers 4
    .param p0, "e"    # Ljava/lang/RuntimeException;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 402
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_25

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not resolve Activity for intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntentUtils"

    invoke-static {v1, v0, p0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    return-void

    .line 405
    :cond_25
    throw p0
.end method

.method public static blacklist safeGetBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;

    .line 311
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 313
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object v0

    .line 314
    :catchall_9
    move-exception v1

    .line 316
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBinder failed on bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IntentUtils"

    invoke-static {v3, v2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-object v0
.end method

.method public static blacklist safeGetBinderExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .line 328
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 329
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 330
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->safeGetBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist safeGetBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 79
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 80
    :catchall_5
    move-exception v0

    .line 82
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBoolean failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return p2
.end method

.method public static blacklist safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 68
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 69
    :catchall_5
    move-exception v0

    .line 71
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBooleanExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return p2
.end method

.method public static blacklist safeGetBundle(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;

    .line 200
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 201
    :catchall_5
    move-exception v0

    .line 203
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBundle failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .line 189
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 190
    :catchall_5
    move-exception v0

    .line 192
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBundleExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetByteArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[B
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .line 280
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 281
    :catchall_5
    move-exception v0

    .line 283
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getByteArrayExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetFloatArray(Landroid/os/Bundle;Ljava/lang/String;)[F
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 135
    :catchall_5
    move-exception v0

    .line 137
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFloatArray failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 101
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 102
    :catchall_5
    move-exception v0

    .line 104
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInt failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return p2
.end method

.method public static blacklist safeGetIntArray(Landroid/os/Bundle;Ljava/lang/String;)[I
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 124
    :catchall_5
    move-exception v0

    .line 126
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntArray failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetIntArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[I
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 113
    :catchall_5
    move-exception v0

    .line 115
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntArrayExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 90
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 91
    :catchall_5
    move-exception v0

    .line 93
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return p2
.end method

.method public static blacklist safeGetLong(Landroid/os/Bundle;Ljava/lang/String;J)J
    .registers 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 156
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-wide v0

    .line 157
    :catchall_5
    move-exception v0

    .line 159
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLong failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-wide p2
.end method

.method public static blacklist safeGetLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J
    .registers 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 145
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-wide v0

    .line 146
    :catchall_5
    move-exception v0

    .line 148
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLongExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-wide p2
.end method

.method public static blacklist safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 212
    :catchall_5
    move-exception v0

    .line 214
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParcelable failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetParcelableArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .line 259
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 260
    :catchall_5
    move-exception v0

    .line 261
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParcelableArrayExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 248
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 249
    :catchall_5
    move-exception v0

    .line 251
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParcelableArrayList failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 223
    :catchall_5
    move-exception v0

    .line 225
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParcelableExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetSerializableExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;
    .registers 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 292
    const-string v0, "IntentUtils"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_7} :catch_20
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    return-object v0

    .line 296
    :catchall_8
    move-exception v2

    .line 298
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSerializableExtra failed on intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-object v1

    .line 293
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_20
    move-exception v2

    .line 294
    .local v2, "ex":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalide class for Serializable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    return-object v1
.end method

.method public static blacklist safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;

    .line 178
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 179
    :catchall_5
    move-exception v0

    .line 181
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString failed on bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 270
    :catchall_5
    move-exception v0

    .line 272
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStringArrayListExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .line 167
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 168
    :catchall_5
    move-exception v0

    .line 170
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStringExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 48
    :catchall_5
    move-exception v0

    .line 50
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist safePutBinderExtra(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 341
    if-nez p0, :cond_3

    return-void

    .line 342
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_8
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    .line 348
    goto :goto_25

    .line 345
    :catchall_c
    move-exception v1

    .line 347
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putBinder failed on bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IntentUtils"

    invoke-static {v3, v2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_25
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 350
    return-void
.end method

.method public static blacklist safeRemoveExtra(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 62
    goto :goto_1d

    .line 59
    :catchall_4
    move-exception v0

    .line 61
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeExtra failed on intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1d
    return-void
.end method

.method public static blacklist safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 354
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static blacklist safeStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 367
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    .line 368
    const/4 v0, 0x1

    return v0

    .line 369
    :catch_5
    move-exception v0

    .line 370
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .param p0, "incomingIntent"    # Landroid/content/Intent;

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_7

    return-object p0

    .line 423
    :cond_7
    if-nez p0, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 425
    :cond_b
    :try_start_b
    const-string v0, "TriggerUnparcel"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_11
    .catch Landroid/os/BadParcelableException; {:try_start_b .. :try_end_11} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_11} :catch_12

    .line 426
    return-object p0

    .line 429
    :catch_12
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v1, :cond_20

    .line 431
    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->logInvalidIntent(Landroid/content/Intent;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 433
    :cond_20
    throw v0

    .line 427
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_21
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/BadParcelableException;
    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/IntentUtils;->logInvalidIntent(Landroid/content/Intent;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist setForceIsTrustedIntentForTesting(Z)V
    .registers 2
    .param p0, "isTrusted"    # Z

    .line 559
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/IntentUtils;->sForceTrustedIntentForTesting:Z

    .line 560
    new-instance v0, Landroid/net/connectivity/org/chromium/base/IntentUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/IntentUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method
