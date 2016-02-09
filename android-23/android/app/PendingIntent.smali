.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$CanceledException;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final FLAG_IMMUTABLE:I = 0x4000000

.field public static final FLAG_NO_CREATE:I = 0x20000000

.field public static final FLAG_ONE_SHOT:I = 0x40000000

.field public static final FLAG_UPDATE_CURRENT:I = 0x8000000


# instance fields
.field private final mTarget:Landroid/content/IIntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1021
    new-instance v0, Landroid/app/PendingIntent$1;

    #@2
    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    #@5
    .line 1020
    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0
    .param p1, "target"    # Landroid/content/IIntentSender;

    #@0
    .prologue
    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1063
    iput-object p1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@5
    .line 1062
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1067
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@9
    .line 1066
    return-void
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 395
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 446
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@6
    array-length v1, v0

    #@7
    new-array v8, v1, [Ljava/lang/String;

    #@9
    .line 447
    .local v8, "resolvedTypes":[Ljava/lang/String;
    const/4 v13, 0x0

    #@a
    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p2

    #@c
    array-length v1, v0

    #@d
    if-ge v13, v1, :cond_0

    #@f
    .line 448
    aget-object v1, p2, v13

    #@11
    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@14
    .line 449
    aget-object v1, p2, v13

    #@16
    invoke-virtual {v1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@19
    .line 450
    aget-object v1, p2, v13

    #@1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    aput-object v1, v8, v13

    #@25
    .line 447
    add-int/lit8 v13, v13, 0x1

    #@27
    goto :goto_0

    #@28
    .line 454
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2b
    move-result-object v1

    #@2c
    .line 457
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2f
    move-result v11

    #@30
    .line 455
    const/4 v2, 0x2

    #@31
    .line 456
    const/4 v4, 0x0

    #@32
    const/4 v5, 0x0

    #@33
    move/from16 v6, p1

    #@35
    move-object/from16 v7, p2

    #@37
    move/from16 v9, p3

    #@39
    move-object/from16 v10, p4

    #@3b
    .line 454
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@3e
    move-result-object v14

    #@3f
    .line 458
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_1

    #@41
    new-instance v1, Landroid/app/PendingIntent;

    #@43
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    :goto_1
    return-object v1

    #@47
    :cond_1
    const/4 v1, 0x0

    #@48
    goto :goto_1

    #@49
    .line 459
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@4a
    .line 461
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@4b
    return-object v1
.end method

.method public static getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 472
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@6
    array-length v1, v0

    #@7
    new-array v8, v1, [Ljava/lang/String;

    #@9
    .line 473
    .local v8, "resolvedTypes":[Ljava/lang/String;
    const/4 v13, 0x0

    #@a
    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p2

    #@c
    array-length v1, v0

    #@d
    if-ge v13, v1, :cond_0

    #@f
    .line 474
    aget-object v1, p2, v13

    #@11
    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@14
    .line 475
    aget-object v1, p2, v13

    #@16
    invoke-virtual {v1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@19
    .line 476
    aget-object v1, p2, v13

    #@1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    aput-object v1, v8, v13

    #@25
    .line 473
    add-int/lit8 v13, v13, 0x1

    #@27
    goto :goto_0

    #@28
    .line 480
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2b
    move-result-object v1

    #@2c
    .line 483
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    #@2f
    move-result v11

    #@30
    .line 481
    const/4 v2, 0x2

    #@31
    .line 482
    const/4 v4, 0x0

    #@32
    const/4 v5, 0x0

    #@33
    move/from16 v6, p1

    #@35
    move-object/from16 v7, p2

    #@37
    move/from16 v9, p3

    #@39
    move-object/from16 v10, p4

    #@3b
    .line 480
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@3e
    move-result-object v14

    #@3f
    .line 484
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_1

    #@41
    new-instance v1, Landroid/app/PendingIntent;

    #@43
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    :goto_1
    return-object v1

    #@47
    :cond_1
    const/4 v1, 0x0

    #@48
    goto :goto_1

    #@49
    .line 485
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@4a
    .line 487
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@4b
    return-object v1
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 272
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 306
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    .line 306
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 309
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@13
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@16
    .line 312
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@19
    move-result-object v1

    #@1a
    .line 314
    const/4 v2, 0x1

    #@1b
    new-array v7, v2, [Landroid/content/Intent;

    #@1d
    const/4 v2, 0x0

    #@1e
    aput-object p2, v7, v2

    #@20
    .line 315
    if-eqz v13, :cond_1

    #@22
    const/4 v2, 0x1

    #@23
    new-array v8, v2, [Ljava/lang/String;

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v13, v8, v2

    #@28
    .line 316
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2b
    move-result v11

    #@2c
    .line 313
    const/4 v2, 0x2

    #@2d
    .line 314
    const/4 v4, 0x0

    #@2e
    const/4 v5, 0x0

    #@2f
    move/from16 v6, p1

    #@31
    move/from16 v9, p3

    #@33
    move-object/from16 v10, p4

    #@35
    .line 312
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@38
    move-result-object v14

    #@39
    .line 317
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_2

    #@3b
    new-instance v1, Landroid/app/PendingIntent;

    #@3d
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    :goto_2
    return-object v1

    #@41
    .line 307
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_0
    const/4 v13, 0x0

    #@42
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@43
    .line 315
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    #@44
    goto :goto_1

    #@45
    .line 317
    .restart local v14    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v1, 0x0

    #@46
    goto :goto_2

    #@47
    .line 318
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@48
    .line 320
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@49
    return-object v1
.end method

.method public static getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 331
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    .line 331
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 334
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@13
    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@16
    .line 337
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@19
    move-result-object v1

    #@1a
    .line 339
    const/4 v2, 0x1

    #@1b
    new-array v7, v2, [Landroid/content/Intent;

    #@1d
    const/4 v2, 0x0

    #@1e
    aput-object p2, v7, v2

    #@20
    .line 340
    if-eqz v13, :cond_1

    #@22
    const/4 v2, 0x1

    #@23
    new-array v8, v2, [Ljava/lang/String;

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v13, v8, v2

    #@28
    .line 341
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    #@2b
    move-result v11

    #@2c
    .line 338
    const/4 v2, 0x2

    #@2d
    .line 339
    const/4 v4, 0x0

    #@2e
    const/4 v5, 0x0

    #@2f
    move/from16 v6, p1

    #@31
    move/from16 v9, p3

    #@33
    move-object/from16 v10, p4

    #@35
    .line 337
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@38
    move-result-object v14

    #@39
    .line 342
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_2

    #@3b
    new-instance v1, Landroid/app/PendingIntent;

    #@3d
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    :goto_2
    return-object v1

    #@41
    .line 332
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_0
    const/4 v13, 0x0

    #@42
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@43
    .line 340
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    #@44
    goto :goto_1

    #@45
    .line 342
    .restart local v14    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v1, 0x0

    #@46
    goto :goto_2

    #@47
    .line 343
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@48
    .line 345
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@49
    return-object v1
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 516
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 515
    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 527
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    .line 527
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 530
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@13
    .line 532
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v1

    #@17
    .line 534
    const/4 v2, 0x1

    #@18
    new-array v7, v2, [Landroid/content/Intent;

    #@1a
    const/4 v2, 0x0

    #@1b
    aput-object p2, v7, v2

    #@1d
    .line 535
    if-eqz v13, :cond_1

    #@1f
    const/4 v2, 0x1

    #@20
    new-array v8, v2, [Ljava/lang/String;

    #@22
    const/4 v2, 0x0

    #@23
    aput-object v13, v8, v2

    #@25
    .line 536
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@28
    move-result v11

    #@29
    .line 533
    const/4 v2, 0x1

    #@2a
    .line 534
    const/4 v4, 0x0

    #@2b
    const/4 v5, 0x0

    #@2c
    .line 536
    const/4 v10, 0x0

    #@2d
    move/from16 v6, p1

    #@2f
    move/from16 v9, p3

    #@31
    .line 532
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@34
    move-result-object v14

    #@35
    .line 537
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_2

    #@37
    new-instance v1, Landroid/app/PendingIntent;

    #@39
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    :goto_2
    return-object v1

    #@3d
    .line 528
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_0
    const/4 v13, 0x0

    #@3e
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@3f
    .line 535
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    #@40
    goto :goto_1

    #@41
    .line 537
    .restart local v14    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v1, 0x0

    #@42
    goto :goto_2

    #@43
    .line 538
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@44
    .line 540
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@45
    return-object v1
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 570
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    .line 570
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 573
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@13
    .line 575
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v1

    #@17
    .line 577
    const/4 v2, 0x1

    #@18
    new-array v7, v2, [Landroid/content/Intent;

    #@1a
    const/4 v2, 0x0

    #@1b
    aput-object p2, v7, v2

    #@1d
    .line 578
    if-eqz v13, :cond_1

    #@1f
    const/4 v2, 0x1

    #@20
    new-array v8, v2, [Ljava/lang/String;

    #@22
    const/4 v2, 0x0

    #@23
    aput-object v13, v8, v2

    #@25
    .line 579
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@28
    move-result v11

    #@29
    .line 576
    const/4 v2, 0x4

    #@2a
    .line 577
    const/4 v4, 0x0

    #@2b
    const/4 v5, 0x0

    #@2c
    .line 579
    const/4 v10, 0x0

    #@2d
    move/from16 v6, p1

    #@2f
    move/from16 v9, p3

    #@31
    .line 575
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@34
    move-result-object v14

    #@35
    .line 580
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_2

    #@37
    new-instance v1, Landroid/app/PendingIntent;

    #@39
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    :goto_2
    return-object v1

    #@3d
    .line 571
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_0
    const/4 v13, 0x0

    #@3e
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@3f
    .line 578
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    #@40
    goto :goto_1

    #@41
    .line 580
    .restart local v14    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v1, 0x0

    #@42
    goto :goto_2

    #@43
    .line 581
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@44
    .line 583
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@45
    return-object v1
.end method

.method public static readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1058
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .line 1059
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Landroid/app/PendingIntent;

    #@9
    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    #@c
    :cond_0
    return-object v1
.end method

.method public static writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "sender"    # Landroid/app/PendingIntent;
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1042
    if-eqz p0, :cond_0

    #@3
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@5
    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v0

    #@9
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@c
    .line 1041
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    #@0
    .prologue
    .line 602
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 600
    :goto_0
    return-void

    #@a
    .line 603
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1013
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 989
    instance-of v0, p1, Landroid/app/PendingIntent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 990
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    check-cast p1, Landroid/app/PendingIntent;

    #@c
    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@e
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 993
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 854
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 855
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 854
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 856
    :catch_0
    move-exception v0

    #@c
    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getCreatorUid()I
    .locals 3

    #@0
    .prologue
    .line 882
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 883
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 882
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 884
    :catch_0
    move-exception v0

    #@c
    .line 886
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@d
    return v1
.end method

.method public getCreatorUserHandle()Landroid/os/UserHandle;
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 913
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v2

    #@5
    .line 914
    iget-object v4, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@7
    .line 913
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    #@a
    move-result v1

    #@b
    .line 915
    .local v1, "uid":I
    if-lez v1, :cond_0

    #@d
    new-instance v2, Landroid/os/UserHandle;

    #@f
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@12
    move-result v4

    #@13
    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    :goto_0
    return-object v2

    #@17
    :cond_0
    move-object v2, v3

    #@18
    goto :goto_0

    #@19
    .line 916
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@1a
    .line 918
    .local v0, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 956
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 957
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 956
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 958
    :catch_0
    move-exception v0

    #@c
    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    #@0
    .prologue
    .line 593
    new-instance v0, Landroid/content/IntentSender;

    #@2
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@4
    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@7
    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 970
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 971
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 970
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 972
    :catch_0
    move-exception v0

    #@c
    .line 974
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    #@0
    .prologue
    .line 1072
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@2
    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 825
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 826
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 825
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 827
    :catch_0
    move-exception v0

    #@c
    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 998
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@2
    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isActivity()Z
    .locals 3

    #@0
    .prologue
    .line 942
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 943
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 942
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 944
    :catch_0
    move-exception v0

    #@c
    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public isTargetedToPackage()Z
    .locals 3

    #@0
    .prologue
    .line 928
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 929
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 928
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 930
    :catch_0
    move-exception v0

    #@c
    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public send()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 616
    const/4 v2, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v3, v1

    #@4
    move-object v4, v1

    #@5
    move-object v5, v1

    #@6
    move-object v6, v1

    #@7
    move-object v7, v1

    #@8
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 615
    return-void
.end method

.method public send(I)V
    .locals 8
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move v2, p1

    #@3
    move-object v3, v1

    #@4
    move-object v4, v1

    #@5
    move-object v5, v1

    #@6
    move-object v6, v1

    #@7
    move-object v7, v1

    #@8
    .line 630
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 629
    return-void
.end method

.method public send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move v2, p1

    #@3
    move-object v3, v1

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    move-object v6, v1

    #@7
    move-object v7, v1

    #@8
    .line 672
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 671
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, v4

    #@6
    move-object v6, v4

    #@7
    move-object v7, v4

    #@8
    .line 651
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 650
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object v7, v6

    #@8
    .line 710
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 709
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    #@0
    .prologue
    .line 755
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 754
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    #@0
    .prologue
    .line 803
    if-eqz p3, :cond_0

    #@2
    .line 804
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 806
    :goto_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@c
    .line 807
    if-eqz p4, :cond_1

    #@e
    .line 808
    new-instance v4, Landroid/app/PendingIntent$FinishedDispatcher;

    #@10
    invoke-direct {v4, p0, p4, p5}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    #@13
    :goto_1
    move v1, p2

    #@14
    move-object v2, p3

    #@15
    move-object v5, p6

    #@16
    move-object/from16 v6, p7

    #@18
    .line 806
    invoke-interface/range {v0 .. v6}, Landroid/content/IIntentSender;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    #@1b
    move-result v8

    #@1c
    .line 811
    .local v8, "res":I
    if-gez v8, :cond_2

    #@1e
    .line 812
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    #@20
    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    #@23
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 814
    .end local v8    # "res":I
    :catch_0
    move-exception v7

    #@25
    .line 815
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    #@27
    invoke-direct {v0, v7}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    #@2a
    throw v0

    #@2b
    .line 805
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    #@2c
    .local v3, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 809
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    #@2e
    goto :goto_1

    #@2f
    .line 801
    .restart local v8    # "res":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    const/16 v2, 0x80

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 1004
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "PendingIntent{"

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 1005
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 1006
    const-string/jumbo v2, ": "

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1007
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@21
    if-eqz v2, :cond_0

    #@23
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@25
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v1

    #@29
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 1008
    const/16 v1, 0x7d

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1017
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@2
    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@9
    .line 1016
    return-void
.end method
