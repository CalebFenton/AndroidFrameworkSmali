.class public Landroid/content/IntentSender;
.super Ljava/lang/Object;
.source "IntentSender.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentSender$OnFinished;,
        Landroid/content/IntentSender$FinishedDispatcher;,
        Landroid/content/IntentSender$SendIntentException;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REMOVE_HIDDEN_SEND_INTENT_METHOD:J = 0x153acb04L

.field private static final blacklist SEND_INTENT_DEFAULT_OPTIONS:Landroid/os/Bundle;


# instance fields
.field private blacklist mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

.field private final greylist mTarget:Landroid/content/IIntentSender;

.field greylist-max-o mWhitelistToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 79
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/content/IntentSender;->SEND_INTENT_DEFAULT_OPTIONS:Landroid/os/Bundle;

    .line 401
    new-instance v0, Landroid/content/IntentSender$1;

    invoke-direct {v0}, Landroid/content/IntentSender$1;-><init>()V

    sput-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/IIntentSender;)V
    .registers 2
    .param p1, "target"    # Landroid/content/IIntentSender;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 457
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "allowlistToken"    # Landroid/os/IBinder;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 462
    iput-object p2, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    .line 463
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "target"    # Landroid/os/IBinder;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 468
    return-void
.end method

.method private blacklist getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;
    .registers 3

    .line 471
    iget-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    if-nez v0, :cond_17

    .line 473
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 476
    goto :goto_17

    .line 474
    :catch_11
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 479
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/content/IntentSender;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    return-object v0
.end method

.method public static whitelist readIntentSenderOrNullFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 438
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 439
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public static whitelist writeIntentSenderOrNullToParcel(Landroid/content/IntentSender;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "sender"    # Landroid/content/IntentSender;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 423
    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_a

    .line 424
    :cond_9
    const/4 v0, 0x0

    .line 423
    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 425
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 370
    instance-of v0, p1, Landroid/content/IntentSender;

    if-eqz v0, :cond_18

    .line 371
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/content/IntentSender;

    iget-object v1, v1, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    .line 372
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 371
    invoke-interface {v0, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 374
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCreatorPackage()Ljava/lang/String;
    .registers 2

    .line 331
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCreatorUid()I
    .registers 2

    .line 344
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    return v0
.end method

.method public whitelist getCreatorUserHandle()Landroid/os/UserHandle;
    .registers 4

    .line 359
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    .line 360
    .local v0, "uid":I
    if-lez v0, :cond_14

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public greylist getTarget()Landroid/content/IIntentSender;
    .registers 2

    .line 445
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public whitelist getTargetPackage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    invoke-virtual {p0}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWhitelistToken()Landroid/os/IBinder;
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isImmutable()Z
    .registers 2

    .line 487
    invoke-direct {p0}, Landroid/content/IntentSender;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->isImmutable()Z

    move-result v0

    return v0
.end method

.method public whitelist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 183
    sget-object v5, Landroid/content/IntentSender;->SEND_INTENT_DEFAULT_OPTIONS:Landroid/os/Bundle;

    .line 184
    if-nez p5, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p5}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    :goto_e
    move-object v6, v0

    .line 183
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "code":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "onFinished":Landroid/content/IntentSender$OnFinished;
    .local v1, "context":Landroid/content/Context;
    .local v2, "code":I
    .local v3, "intent":Landroid/content/Intent;
    .local v7, "onFinished":Landroid/content/IntentSender$OnFinished;
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V

    .line 185
    return-void
.end method

.method public whitelist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 216
    sget-object v5, Landroid/content/IntentSender;->SEND_INTENT_DEFAULT_OPTIONS:Landroid/os/Bundle;

    .line 217
    if-nez p5, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p5}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    :goto_e
    move-object v6, v0

    .line 216
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v4, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "code":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "onFinished":Landroid/content/IntentSender$OnFinished;
    .end local p6    # "requiredPermission":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "code":I
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "requiredPermission":Ljava/lang/String;
    .local v7, "onFinished":Landroid/content/IntentSender$OnFinished;
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V

    .line 218
    return-void
.end method

.method public blacklist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    const-wide/32 v0, 0x153acb04

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_23

    .line 254
    nop

    .line 255
    if-nez p5, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    :cond_e
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p5}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    :goto_16
    move-object v7, v0

    .line 254
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V

    .line 256
    return-void

    .line 252
    :cond_23
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "This overload of sendIntent was removed."

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "requiredPermission"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 291
    move-object/from16 v10, p7

    if-eqz p3, :cond_c

    .line 292
    :try_start_4
    invoke-virtual {p3}, Landroid/content/Intent;->collectExtraIntentKeys()V

    goto :goto_c

    .line 308
    :catch_8
    move-exception v0

    move-object/from16 v11, p6

    goto :goto_51

    .line 294
    :cond_c
    :goto_c
    const/4 v0, 0x0

    if-eqz p3, :cond_19

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1a

    .line 296
    :cond_19
    move-object v6, v0

    :goto_1a
    nop

    .line 297
    .local v6, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 299
    .local v1, "app":Landroid/app/IApplicationThread;
    move-object v2, v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v3, v2

    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    move-object v4, v3

    iget-object v3, p0, Landroid/content/IntentSender;->mWhitelistToken:Landroid/os/IBinder;

    .line 301
    if-eqz v10, :cond_39

    .line 302
    new-instance v4, Landroid/content/IntentSender$FinishedDispatcher;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_32} :catch_8

    move-object/from16 v11, p6

    :try_start_34
    invoke-direct {v4, p0, v10, v11}, Landroid/content/IntentSender$FinishedDispatcher;-><init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Ljava/util/concurrent/Executor;)V

    move-object v7, v4

    goto :goto_3c

    .line 303
    :cond_39
    move-object/from16 v11, p6

    move-object v7, v4

    .line 299
    :goto_3c
    move v4, p2

    move-object v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 305
    .local v0, "res":I
    if-ltz v0, :cond_4a

    .line 310
    .end local v0    # "res":I
    .end local v1    # "app":Landroid/app/IApplicationThread;
    .end local v6    # "resolvedType":Ljava/lang/String;
    nop

    .line 311
    return-void

    .line 306
    .restart local v0    # "res":I
    .restart local v1    # "app":Landroid/app/IApplicationThread;
    .restart local v6    # "resolvedType":Ljava/lang/String;
    :cond_4a
    new-instance v2, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v2}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    .end local p0    # "this":Landroid/content/IntentSender;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "code":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "requiredPermission":Ljava/lang/String;
    .end local p5    # "options":Landroid/os/Bundle;
    .end local p6    # "executor":Ljava/util/concurrent/Executor;
    .end local p7    # "onFinished":Landroid/content/IntentSender$OnFinished;
    throw v2
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_50} :catch_50

    .line 308
    .end local v0    # "res":I
    .end local v1    # "app":Landroid/app/IApplicationThread;
    .end local v6    # "resolvedType":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/IntentSender;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "code":I
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "requiredPermission":Ljava/lang/String;
    .restart local p5    # "options":Landroid/os/Bundle;
    .restart local p6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p7    # "onFinished":Landroid/content/IntentSender$OnFinished;
    :catch_50
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    :goto_51
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IntentSender{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 398
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 399
    return-void
.end method
