.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$1;,
        Landroid/app/PendingIntent$CanceledException;,
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$OnMarshaledListener;
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

.field private static final sOnMarshaledListener:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/app/PendingIntent$OnMarshaledListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTarget:Landroid/content/IIntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 261
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    .line 260
    sput-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    #@7
    .line 1057
    new-instance v0, Landroid/app/PendingIntent$1;

    #@9
    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    #@c
    .line 1056
    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0
    .param p1, "target"    # Landroid/content/IIntentSender;

    #@0
    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1099
    iput-object p1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@5
    .line 1098
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1103
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@9
    .line 1102
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
    .line 425
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
    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 476
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@6
    array-length v1, v0

    #@7
    new-array v8, v1, [Ljava/lang/String;

    #@9
    .line 477
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
    .line 478
    aget-object v1, p2, v13

    #@11
    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@14
    .line 479
    aget-object v1, p2, v13

    #@16
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@19
    .line 480
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
    .line 477
    add-int/lit8 v13, v13, 0x1

    #@27
    goto :goto_0

    #@28
    .line 484
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2b
    move-result-object v1

    #@2c
    .line 487
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2f
    move-result v11

    #@30
    .line 485
    const/4 v2, 0x2

    #@31
    .line 486
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
    .line 484
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@3e
    move-result-object v14

    #@3f
    .line 488
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
    .line 489
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@4a
    .line 491
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
    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 502
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@6
    array-length v1, v0

    #@7
    new-array v8, v1, [Ljava/lang/String;

    #@9
    .line 503
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
    .line 504
    aget-object v1, p2, v13

    #@11
    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@14
    .line 505
    aget-object v1, p2, v13

    #@16
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@19
    .line 506
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
    .line 503
    add-int/lit8 v13, v13, 0x1

    #@27
    goto :goto_0

    #@28
    .line 510
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2b
    move-result-object v1

    #@2c
    .line 513
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    #@2f
    move-result v11

    #@30
    .line 511
    const/4 v2, 0x2

    #@31
    .line 512
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
    .line 510
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@3e
    move-result-object v14

    #@3f
    .line 514
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
    .line 515
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@4a
    .line 517
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
    .line 302
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
    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 336
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    .line 336
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 339
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@13
    .line 340
    move-object/from16 v0, p2

    #@15
    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@18
    .line 342
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1b
    move-result-object v1

    #@1c
    .line 344
    const/4 v2, 0x1

    #@1d
    new-array v7, v2, [Landroid/content/Intent;

    #@1f
    const/4 v2, 0x0

    #@20
    aput-object p2, v7, v2

    #@22
    .line 345
    if-eqz v13, :cond_1

    #@24
    const/4 v2, 0x1

    #@25
    new-array v8, v2, [Ljava/lang/String;

    #@27
    const/4 v2, 0x0

    #@28
    aput-object v13, v8, v2

    #@2a
    .line 346
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2d
    move-result v11

    #@2e
    .line 343
    const/4 v2, 0x2

    #@2f
    .line 344
    const/4 v4, 0x0

    #@30
    const/4 v5, 0x0

    #@31
    move/from16 v6, p1

    #@33
    move/from16 v9, p3

    #@35
    move-object/from16 v10, p4

    #@37
    .line 342
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@3a
    move-result-object v14

    #@3b
    .line 347
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_2

    #@3d
    new-instance v1, Landroid/app/PendingIntent;

    #@3f
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    :goto_2
    return-object v1

    #@43
    .line 337
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_0
    const/4 v13, 0x0

    #@44
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@45
    .line 345
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    #@46
    goto :goto_1

    #@47
    .line 347
    .restart local v14    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v1, 0x0

    #@48
    goto :goto_2

    #@49
    .line 348
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@4a
    .line 350
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@4b
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
    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 361
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    .line 361
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 364
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@13
    .line 365
    move-object/from16 v0, p2

    #@15
    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@18
    .line 367
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1b
    move-result-object v1

    #@1c
    .line 369
    const/4 v2, 0x1

    #@1d
    new-array v7, v2, [Landroid/content/Intent;

    #@1f
    const/4 v2, 0x0

    #@20
    aput-object p2, v7, v2

    #@22
    .line 370
    if-eqz v13, :cond_1

    #@24
    const/4 v2, 0x1

    #@25
    new-array v8, v2, [Ljava/lang/String;

    #@27
    const/4 v2, 0x0

    #@28
    aput-object v13, v8, v2

    #@2a
    .line 371
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    #@2d
    move-result v11

    #@2e
    .line 368
    const/4 v2, 0x2

    #@2f
    .line 369
    const/4 v4, 0x0

    #@30
    const/4 v5, 0x0

    #@31
    move/from16 v6, p1

    #@33
    move/from16 v9, p3

    #@35
    move-object/from16 v10, p4

    #@37
    .line 367
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@3a
    move-result-object v14

    #@3b
    .line 372
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_2

    #@3d
    new-instance v1, Landroid/app/PendingIntent;

    #@3f
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    :goto_2
    return-object v1

    #@43
    .line 362
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_0
    const/4 v13, 0x0

    #@44
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@45
    .line 370
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    #@46
    goto :goto_1

    #@47
    .line 372
    .restart local v14    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v1, 0x0

    #@48
    goto :goto_2

    #@49
    .line 373
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@4a
    .line 375
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@4b
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
    .line 546
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 545
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
    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 557
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    .line 557
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 560
    :goto_0
    :try_start_0
    move-object/from16 v0, p2

    #@12
    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@15
    .line 562
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@18
    move-result-object v1

    #@19
    .line 564
    const/4 v2, 0x1

    #@1a
    new-array v7, v2, [Landroid/content/Intent;

    #@1c
    const/4 v2, 0x0

    #@1d
    aput-object p2, v7, v2

    #@1f
    .line 565
    if-eqz v13, :cond_1

    #@21
    const/4 v2, 0x1

    #@22
    new-array v8, v2, [Ljava/lang/String;

    #@24
    const/4 v2, 0x0

    #@25
    aput-object v13, v8, v2

    #@27
    .line 566
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v11

    #@2b
    .line 563
    const/4 v2, 0x1

    #@2c
    .line 564
    const/4 v4, 0x0

    #@2d
    const/4 v5, 0x0

    #@2e
    .line 566
    const/4 v10, 0x0

    #@2f
    move/from16 v6, p1

    #@31
    move/from16 v9, p3

    #@33
    .line 562
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@36
    move-result-object v14

    #@37
    .line 567
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_2

    #@39
    new-instance v1, Landroid/app/PendingIntent;

    #@3b
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    :goto_2
    return-object v1

    #@3f
    .line 558
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_0
    const/4 v13, 0x0

    #@40
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 565
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    #@42
    goto :goto_1

    #@43
    .line 567
    .restart local v14    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v1, 0x0

    #@44
    goto :goto_2

    #@45
    .line 568
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@46
    .line 570
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@47
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
    .line 599
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 600
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@6
    .line 601
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v1

    #@a
    .line 600
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 603
    :goto_0
    :try_start_0
    move-object/from16 v0, p2

    #@12
    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@15
    .line 605
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@18
    move-result-object v1

    #@19
    .line 607
    const/4 v2, 0x1

    #@1a
    new-array v7, v2, [Landroid/content/Intent;

    #@1c
    const/4 v2, 0x0

    #@1d
    aput-object p2, v7, v2

    #@1f
    .line 608
    if-eqz v13, :cond_1

    #@21
    const/4 v2, 0x1

    #@22
    new-array v8, v2, [Ljava/lang/String;

    #@24
    const/4 v2, 0x0

    #@25
    aput-object v13, v8, v2

    #@27
    .line 609
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2a
    move-result v11

    #@2b
    .line 606
    const/4 v2, 0x4

    #@2c
    .line 607
    const/4 v4, 0x0

    #@2d
    const/4 v5, 0x0

    #@2e
    .line 609
    const/4 v10, 0x0

    #@2f
    move/from16 v6, p1

    #@31
    move/from16 v9, p3

    #@33
    .line 605
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@36
    move-result-object v14

    #@37
    .line 610
    .local v14, "target":Landroid/content/IIntentSender;
    if-eqz v14, :cond_2

    #@39
    new-instance v1, Landroid/app/PendingIntent;

    #@3b
    invoke-direct {v1, v14}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    :goto_2
    return-object v1

    #@3f
    .line 601
    .end local v14    # "target":Landroid/content/IIntentSender;
    :cond_0
    const/4 v13, 0x0

    #@40
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 608
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    #@42
    goto :goto_1

    #@43
    .line 610
    .restart local v14    # "target":Landroid/content/IIntentSender;
    :cond_2
    const/4 v1, 0x0

    #@44
    goto :goto_2

    #@45
    .line 611
    .end local v14    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v12

    #@46
    .line 613
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@47
    return-object v1
.end method

.method public static readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1094
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .line 1095
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

.method public static setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/app/PendingIntent$OnMarshaledListener;

    #@0
    .prologue
    .line 271
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@5
    .line 270
    return-void
.end method

.method public static writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "sender"    # Landroid/app/PendingIntent;
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1078
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
    .line 1077
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    #@0
    .prologue
    .line 632
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
    .line 630
    :goto_0
    return-void

    #@a
    .line 633
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
    .line 1044
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1020
    instance-of v0, p1, Landroid/app/PendingIntent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1021
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
    .line 1024
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
    .line 885
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 886
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 885
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 887
    :catch_0
    move-exception v0

    #@c
    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getCreatorUid()I
    .locals 3

    #@0
    .prologue
    .line 913
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 914
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 913
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 915
    :catch_0
    move-exception v0

    #@c
    .line 917
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
    .line 944
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v2

    #@5
    .line 945
    iget-object v4, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@7
    .line 944
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    #@a
    move-result v1

    #@b
    .line 946
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
    .line 947
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@1a
    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 987
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 988
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 987
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 989
    :catch_0
    move-exception v0

    #@c
    .line 991
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    #@0
    .prologue
    .line 623
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
    .line 1001
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1002
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 1001
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 1003
    :catch_0
    move-exception v0

    #@c
    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    #@0
    .prologue
    .line 1108
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
    .line 856
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 857
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 856
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 858
    :catch_0
    move-exception v0

    #@c
    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1029
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
    .line 973
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 974
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 973
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 975
    :catch_0
    move-exception v0

    #@c
    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public isTargetedToPackage()Z
    .locals 3

    #@0
    .prologue
    .line 959
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 960
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 959
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 961
    :catch_0
    move-exception v0

    #@c
    .line 963
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
    .line 646
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
    .line 645
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
    .line 660
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 659
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
    .line 702
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 701
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
    .line 681
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 680
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
    .line 740
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 739
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
    .line 785
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
    .line 784
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
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
    .line 833
    if-eqz p3, :cond_0

    #@2
    .line 834
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 836
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@d
    move-result-object v0

    #@e
    .line 837
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@10
    .line 838
    if-eqz p4, :cond_1

    #@12
    .line 839
    new-instance v5, Landroid/app/PendingIntent$FinishedDispatcher;

    #@14
    invoke-direct {v5, p0, p4, p5}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    #@17
    :goto_1
    move v2, p2

    #@18
    move-object v3, p3

    #@19
    move-object/from16 v6, p6

    #@1b
    move-object/from16 v7, p7

    #@1d
    .line 836
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/content/IIntentSender;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    #@20
    move-result v9

    #@21
    .line 842
    .local v9, "res":I
    if-gez v9, :cond_2

    #@23
    .line 843
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    #@25
    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    #@28
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 845
    .end local v9    # "res":I
    :catch_0
    move-exception v8

    #@2a
    .line 846
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    #@2c
    invoke-direct {v0, v8}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    #@2f
    throw v0

    #@30
    .line 835
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    #@31
    .local v4, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@32
    .line 840
    .end local v4    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    #@33
    goto :goto_1

    #@34
    .line 831
    .restart local v9    # "res":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    const/16 v2, 0x80

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 1035
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "PendingIntent{"

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 1036
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
    .line 1037
    const-string/jumbo v2, ": "

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1038
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
    .line 1039
    const/16 v1, 0x7d

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 1040
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1048
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    #@2
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@9
    .line 1049
    sget-object v1, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    #@b
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/app/PendingIntent$OnMarshaledListener;

    #@11
    .line 1050
    .local v0, "listener":Landroid/app/PendingIntent$OnMarshaledListener;
    if-eqz v0, :cond_0

    #@13
    .line 1051
    invoke-interface {v0, p0, p1, p2}, Landroid/app/PendingIntent$OnMarshaledListener;->onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    #@16
    .line 1047
    :cond_0
    return-void
.end method
