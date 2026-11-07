.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$CanceledException;,
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$CancelListener;,
        Landroid/app/PendingIntent$CancelListerInfo;,
        Landroid/app/PendingIntent$OnMarshaledListener;,
        Landroid/app/PendingIntent$Flags;
    }
.end annotation


# static fields
.field public static final blacklist BLOCK_MUTABLE_IMPLICIT_PENDING_INTENT:J = 0xe1bd1a4L

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_ALLOW_UNSAFE_IMPLICIT_INTENT:I = 0x1000000

.field public static final whitelist FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final whitelist FLAG_IMMUTABLE:I = 0x4000000

.field public static final whitelist FLAG_MUTABLE:I = 0x2000000

.field public static final blacklist FLAG_MUTABLE_UNAUDITED:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_NO_CREATE:I = 0x20000000

.field public static final whitelist FLAG_ONE_SHOT:I = 0x40000000

.field public static final whitelist FLAG_UPDATE_CURRENT:I = 0x8000000

.field static final blacklist PENDING_INTENT_EXPLICIT_MUTABILITY_REQUIRED:J = 0x9958763L

.field public static final blacklist PENDING_INTENT_OPTIONS_CHECK:J = 0x131cf49aL

.field private static final blacklist TAG:Ljava/lang/String; = "PendingIntent"

.field private static final greylist-max-o sOnMarshaledListener:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent$OnMarshaledListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

.field private blacklist mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

.field private final greylist-max-o mTarget:Landroid/content/IIntentSender;

.field private greylist-max-o mWhitelistToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$r7K6LfnhQPYIpj9V-bXhSOGH9Eo(Landroid/app/PendingIntent;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/PendingIntent;->lambda$notifyCancelListeners$0(Landroid/util/Pair;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCancelListeners(Landroid/app/PendingIntent;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/PendingIntent;->notifyCancelListeners()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 403
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda2;-><init>()V

    .line 404
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    .line 1494
    new-instance v0, Landroid/app/PendingIntent$1;

    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/IIntentSender;)V
    .registers 3
    .param p1, "target"    # Landroid/content/IIntentSender;

    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1549
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IIntentSender;

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1550
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/IBinder;Ljava/lang/Object;)V
    .registers 4
    .param p1, "target"    # Landroid/os/IBinder;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IIntentSender;

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1554
    if-eqz p2, :cond_16

    .line 1555
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    .line 1557
    :cond_16
    return-void
.end method

.method static blacklist addOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/app/PendingIntent$OnMarshaledListener;

    .line 428
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method private static greylist-max-o buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "serviceKind"    # I

    .line 838
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 839
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    .line 840
    .local v15, "resolvedType":Ljava/lang/String;
    const/4 v0, 0x0

    move/from16 v12, p3

    invoke-static {v12, v2, v1, v0}, Landroid/app/PendingIntent;->checkPendingIntent(ILandroid/content/Intent;Landroid/content/Context;Z)V

    .line 842
    :try_start_16
    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 844
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 845
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    new-array v10, v4, [Landroid/content/Intent;

    aput-object v2, v10, v0

    .line 847
    const/4 v0, 0x0

    if-eqz v15, :cond_2f

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_30

    :cond_2f
    move-object v11, v0

    .line 848
    :goto_30
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v14

    .line 844
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move/from16 v9, p1

    move/from16 v4, p4

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v3

    .line 849
    .local v3, "target":Landroid/content/IIntentSender;
    if-eqz v3, :cond_46

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v3}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_46} :catch_47

    :cond_46
    return-object v0

    .line 850
    .end local v3    # "target":Landroid/content/IIntentSender;
    :catch_47
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private static blacklist checkPendingIntent(ILandroid/content/Intent;Landroid/content/Context;Z)V
    .registers 10
    .param p0, "flags"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isActivityResultType"    # Z

    .line 441
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 442
    .local v0, "isFlagImmutableSet":Z
    :goto_a
    const/high16 v3, 0x2000000

    and-int/2addr v3, p0

    if-eqz v3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    .line 443
    .local v1, "isFlagMutableSet":Z
    :goto_11
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_22

    if-nez v1, :cond_1a

    goto :goto_22

    .line 446
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot set both FLAG_IMMUTABLE and FLAG_MUTABLE for PendingIntent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    :cond_22
    :goto_22
    const-wide/32 v3, 0x9958763

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_55

    if-nez v0, :cond_55

    if-eqz v1, :cond_30

    goto :goto_55

    .line 452
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Targeting S+ (version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and above) requires that one of FLAG_IMMUTABLE or FLAG_MUTABLE be specified when creating a PendingIntent.\nStrongly consider using FLAG_IMMUTABLE, only use FLAG_MUTABLE if some functionality depends on the PendingIntent being mutable, e.g. if it needs to be used with inline replies or bubbles."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    .end local v3    # "msg":Ljava/lang/String;
    :cond_55
    :goto_55
    invoke-static {p0, p1, p3}, Landroid/app/PendingIntent;->isNewMutableDisallowedImplicitPendingIntent(ILandroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 467
    const-wide/32 v3, 0xe1bd1a4

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_a3

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New mutable implicit PendingIntent: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 469
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", featureId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 470
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". This will be blocked once the app targets U+ for security reasons."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v4, Landroid/app/StackTrace;

    invoke-direct {v4, v3}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    const-string v5, "PendingIntent"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v3    # "msg":Ljava/lang/String;
    :cond_a3
    return-void
.end method

.method public static whitelist getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 638
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 690
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 691
    .local v0, "user":Landroid/os/UserHandle;
    nop

    .line 692
    if-eqz v0, :cond_9

    move-object v7, v0

    goto :goto_12

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object v7, v1

    .line 691
    :goto_12
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "requestCode":I
    .end local p2    # "intents":[Landroid/content/Intent;
    .end local p3    # "flags":I
    .end local p4    # "options":Landroid/os/Bundle;
    .local v2, "context":Landroid/content/Context;
    .local v3, "requestCode":I
    .local v4, "intents":[Landroid/content/Intent;
    .local v5, "flags":I
    .local v6, "options":Landroid/os/Bundle;
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "packageName":Ljava/lang/String;
    array-length v0, p2

    new-array v8, v0, [Ljava/lang/String;

    .line 704
    .local v8, "resolvedTypes":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v1, p2

    if-ge v0, v1, :cond_2a

    .line 705
    aget-object v1, p2, v0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 706
    aget-object v1, p2, v0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 707
    aget-object v1, p2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 708
    aget-object v1, p2, v0

    const/4 v3, 0x0

    invoke-static {p3, v1, p0, v3}, Landroid/app/PendingIntent;->checkPendingIntent(ILandroid/content/Intent;Landroid/content/Context;Z)V

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 712
    .end local v0    # "i":I
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 714
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 715
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 712
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move-object v7, p2

    move v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 716
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_4a

    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_49} :catch_4c

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    return-object v1

    .line 717
    .end local v0    # "target":Landroid/content/IIntentSender;
    :catch_4c
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 524
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 560
    .local v0, "user":Landroid/os/UserHandle;
    nop

    .line 561
    if-eqz v0, :cond_9

    move-object v7, v0

    goto :goto_12

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object v7, v1

    .line 560
    :goto_12
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "requestCode":I
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "flags":I
    .end local p4    # "options":Landroid/os/Bundle;
    .local v2, "context":Landroid/content/Context;
    .local v3, "requestCode":I
    .local v4, "intent":Landroid/content/Intent;
    .local v5, "flags":I
    .local v6, "options":Landroid/os/Bundle;
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 572
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    .line 574
    .local v15, "resolvedType":Ljava/lang/String;
    const/4 v0, 0x0

    move/from16 v12, p3

    invoke-static {v12, v2, v1, v0}, Landroid/app/PendingIntent;->checkPendingIntent(ILandroid/content/Intent;Landroid/content/Context;Z)V

    .line 576
    :try_start_16
    invoke-virtual {v2, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 577
    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 579
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 581
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    new-array v10, v4, [Landroid/content/Intent;

    aput-object v2, v10, v0

    .line 582
    const/4 v0, 0x0

    if-eqz v15, :cond_32

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_33

    :cond_32
    move-object v11, v0

    .line 583
    :goto_33
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 579
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p1

    move-object/from16 v13, p4

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v3

    .line 584
    .local v3, "target":Landroid/content/IIntentSender;
    if-eqz v3, :cond_49

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v3}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_49} :catch_4a

    :cond_49
    return-object v0

    .line 585
    .end local v3    # "target":Landroid/content/IIntentSender;
    :catch_4a
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 748
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .line 759
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 760
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    .line 761
    .local v15, "resolvedType":Ljava/lang/String;
    const/4 v0, 0x0

    move/from16 v12, p3

    invoke-static {v12, v2, v1, v0}, Landroid/app/PendingIntent;->checkPendingIntent(ILandroid/content/Intent;Landroid/content/Context;Z)V

    .line 763
    :try_start_16
    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 765
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 767
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    new-array v10, v4, [Landroid/content/Intent;

    aput-object v2, v10, v0

    .line 768
    const/4 v0, 0x0

    if-eqz v15, :cond_2f

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_30

    :cond_2f
    move-object v11, v0

    .line 769
    :goto_30
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 765
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move/from16 v9, p1

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v3

    .line 770
    .local v3, "target":Landroid/content/IIntentSender;
    if-eqz v3, :cond_45

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v3}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_45} :catch_46

    :cond_45
    return-object v0

    .line 771
    .end local v3    # "target":Landroid/content/IIntentSender;
    :catch_46
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private blacklist getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;
    .registers 3

    .line 1586
    iget-object v0, p0, Landroid/app/PendingIntent;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    if-nez v0, :cond_17

    .line 1588
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PendingIntent;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 1591
    goto :goto_17

    .line 1589
    :catch_11
    move-exception v0

    .line 1590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1594
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/app/PendingIntent;->mCachedInfo:Landroid/app/ActivityManager$PendingIntentInfo;

    return-object v0
.end method

.method public static whitelist getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 832
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 802
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isNewMutableDisallowedImplicitPendingIntent(ILandroid/content/Intent;Z)Z
    .registers 9
    .param p0, "flags"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isActivityResultType"    # Z

    .line 480
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 484
    return v0

    .line 486
    :cond_4
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v0

    .line 487
    .local v1, "isFlagNoCreateSet":Z
    :goto_d
    const/high16 v3, 0x2000000

    and-int/2addr v3, p0

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v0

    .line 488
    .local v3, "isFlagMutableSet":Z
    :goto_15
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_23

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    move v4, v2

    goto :goto_24

    :cond_23
    move v4, v0

    .line 489
    .local v4, "isImplicit":Z
    :goto_24
    const/high16 v5, 0x1000000

    and-int/2addr v5, p0

    if-eqz v5, :cond_2b

    move v5, v2

    goto :goto_2c

    :cond_2b
    move v5, v0

    .line 491
    .local v5, "isFlagAllowUnsafeImplicitIntentSet":Z
    :goto_2c
    if-nez v1, :cond_35

    if-eqz v3, :cond_35

    if-eqz v4, :cond_35

    if-nez v5, :cond_35

    move v0, v2

    :cond_35
    return v0
.end method

.method private synthetic blacklist lambda$notifyCancelListeners$0(Landroid/util/Pair;)V
    .registers 3
    .param p1, "pair"    # Landroid/util/Pair;

    .line 1245
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent$CancelListener;

    invoke-interface {v0, p0}, Landroid/app/PendingIntent$CancelListener;->onCanceled(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private greylist-max-o notifyCancelListeners()V
    .registers 7

    .line 1235
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    monitor-enter v0

    .line 1237
    :try_start_3
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    .line 1238
    .local v1, "cli":Landroid/app/PendingIntent$CancelListerInfo;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fputmCanceled(Landroid/app/PendingIntent$CancelListerInfo;Z)V

    .line 1239
    new-instance v2, Landroid/util/ArraySet;

    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1240
    .local v2, "cancelListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;>;>;"
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1241
    .end local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_37

    .line 1242
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1243
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    if-ge v1, v0, :cond_36

    .line 1244
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1245
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>(Landroid/app/PendingIntent;Landroid/util/Pair;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1243
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1247
    .end local v1    # "i":I
    :cond_36
    return-void

    .line 1241
    .end local v0    # "size":I
    .end local v2    # "cancelListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;>;>;"
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public static whitelist readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1539
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1540
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    new-instance v1, Landroid/app/PendingIntent;

    const-class v2, Landroid/app/PendingIntent;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;Ljava/lang/Object;)V

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method static blacklist removeOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/app/PendingIntent$OnMarshaledListener;

    .line 436
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

.method public static greylist-max-r setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/app/PendingIntent$OnMarshaledListener;

    .line 416
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 417
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent$OnMarshaledListener;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    if-eqz p0, :cond_10

    .line 419
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_10
    return-void
.end method

.method public static whitelist writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .registers 7
    .param p0, "sender"    # Landroid/app/PendingIntent;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1517
    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1518
    if-eqz p0, :cond_2b

    .line 1519
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1520
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent$OnMarshaledListener;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1521
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v1, :cond_2b

    .line 1522
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent$OnMarshaledListener;

    const/4 v4, 0x0

    invoke-interface {v3, p0, p1, v4}, Landroid/app/PendingIntent$OnMarshaledListener;->onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    .line 1521
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1525
    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent$OnMarshaledListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method


# virtual methods
.method public blacklist addCancelListener(Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;)Z
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cancelListener"    # Landroid/app/PendingIntent$CancelListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1204
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    monitor-enter v0

    .line 1205
    :try_start_3
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCanceled(Landroid/app/PendingIntent$CancelListerInfo;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1206
    monitor-exit v0

    return v2

    .line 1208
    :cond_12
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    if-nez v1, :cond_1e

    .line 1209
    new-instance v1, Landroid/app/PendingIntent$CancelListerInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/app/PendingIntent$CancelListerInfo;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent-IA;)V

    iput-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    .line 1211
    :cond_1e
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    .line 1213
    .local v1, "cli":Landroid/app/PendingIntent$CancelListerInfo;
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    .line 1214
    .local v3, "wasEmpty":Z
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_57

    .line 1215
    const/4 v4, 0x1

    if-eqz v3, :cond_4e

    .line 1218
    :try_start_36
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v5, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2, v5, v1}, Landroid/app/IActivityManager;->registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z

    move-result v2
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_40} :catch_48
    .catchall {:try_start_36 .. :try_end_40} :catchall_57

    .line 1222
    .local v2, "success":Z
    nop

    .line 1223
    if-nez v2, :cond_46

    .line 1224
    :try_start_43
    invoke-static {v1, v4}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fputmCanceled(Landroid/app/PendingIntent$CancelListerInfo;Z)V

    .line 1226
    :cond_46
    monitor-exit v0

    return v2

    .line 1220
    .end local v2    # "success":Z
    :catch_48
    move-exception v2

    .line 1221
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/app/PendingIntent;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "cancelListener":Landroid/app/PendingIntent$CancelListener;
    throw v4

    .line 1228
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/PendingIntent;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "cancelListener":Landroid/app/PendingIntent$CancelListener;
    :cond_4e
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCanceled(Landroid/app/PendingIntent$CancelListerInfo;)Z

    move-result v5

    if-nez v5, :cond_55

    move v2, v4

    :cond_55
    monitor-exit v0

    return v2

    .line 1230
    .end local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    .end local v3    # "wasEmpty":Z
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public whitelist cancel()V
    .registers 3

    .line 872
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 875
    nop

    .line 876
    return-void

    .line 873
    :catch_b
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1482
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1476
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1477
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1478
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1479
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 1451
    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_18

    .line 1452
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v1, v1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1453
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1452
    invoke-interface {v0, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1455
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCreatorPackage()Ljava/lang/String;
    .registers 2

    .line 1155
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCreatorUid()I
    .registers 2

    .line 1177
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    return v0
.end method

.method public whitelist getCreatorUserHandle()Landroid/os/UserHandle;
    .registers 3

    .line 1308
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getCreatorUid()I

    move-result v0

    .line 1309
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1
.end method

.method public greylist getIntent()Landroid/content/Intent;
    .registers 3

    .line 1368
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1369
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1368
    return-object v0

    .line 1370
    :catch_b
    move-exception v0

    .line 1371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIntentSender()Landroid/content/IntentSender;
    .registers 4

    .line 863
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    iget-object v2, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public greylist getTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1382
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1383
    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1382
    return-object v0

    .line 1384
    :catch_b
    move-exception v0

    .line 1385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getTarget()Landroid/content/IIntentSender;
    .registers 2

    .line 1561
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public whitelist getTargetPackage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1133
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWhitelistToken()Landroid/os/IBinder;
    .registers 2

    .line 1566
    iget-object v0, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1460
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist intentFilterEquals(Landroid/app/PendingIntent;)Z
    .registers 4
    .param p1, "other"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1429
    if-nez p1, :cond_4

    .line 1430
    const/4 v0, 0x0

    return v0

    .line 1433
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0

    .line 1434
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    .line 1433
    return v0

    .line 1435
    :catch_17
    move-exception v0

    .line 1436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isActivity()Z
    .registers 3

    .line 1337
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getIntentSenderType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isBroadcast()Z
    .registers 3

    .line 1358
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getIntentSenderType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public whitelist isForegroundService()Z
    .registers 3

    .line 1344
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getIntentSenderType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isImmutable()Z
    .registers 2

    .line 1329
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->isImmutable()Z

    move-result v0

    return v0
.end method

.method public whitelist isService()Z
    .registers 3

    .line 1351
    invoke-direct {p0}, Landroid/app/PendingIntent;->getCachedInfo()Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$PendingIntentInfo;->getIntentSenderType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o isTargetedToPackage()Z
    .registers 3

    .line 1318
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1319
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1318
    return v0

    .line 1320
    :catch_b
    move-exception v0

    .line 1321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist queryIntentComponents(I)Ljava/util/List;
    .registers 4
    .param p1, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1405
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 1406
    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1407
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_11

    .line 1408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1410
    :cond_11
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 1411
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_16
    move-exception v0

    .line 1412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V
    .registers 3
    .param p1, "cancelListener"    # Landroid/app/PendingIntent$CancelListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1186
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/app/PendingIntent;->addCancelListener(Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1188
    invoke-interface {p1, p0}, Landroid/app/PendingIntent$CancelListener;->onCanceled(Landroid/app/PendingIntent;)V

    .line 1190
    :cond_e
    return-void
.end method

.method public blacklist removeCancelListener(Landroid/app/PendingIntent$CancelListener;)V
    .registers 6
    .param p1, "cancelListener"    # Landroid/app/PendingIntent$CancelListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1266
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    monitor-enter v0

    .line 1267
    :try_start_3
    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListerInfo:Landroid/app/PendingIntent$CancelListerInfo;

    .line 1268
    .local v1, "cli":Landroid/app/PendingIntent$CancelListerInfo;
    if-eqz v1, :cond_52

    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_52

    .line 1271
    :cond_12
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1c
    if-ltz v2, :cond_36

    .line 1272
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p1, :cond_33

    .line 1273
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1271
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 1276
    .end local v2    # "i":I
    :cond_36
    invoke-static {v1}, Landroid/app/PendingIntent$CancelListerInfo;->-$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_54

    if-eqz v2, :cond_50

    .line 1278
    :try_start_40
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4a
    .catchall {:try_start_40 .. :try_end_49} :catchall_54

    .line 1282
    goto :goto_50

    .line 1280
    :catch_4a
    move-exception v2

    .line 1281
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4b
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/PendingIntent;
    .end local p1    # "cancelListener":Landroid/app/PendingIntent$CancelListener;
    throw v3

    .line 1284
    .end local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/PendingIntent;
    .restart local p1    # "cancelListener":Landroid/app/PendingIntent$CancelListener;
    :cond_50
    :goto_50
    monitor-exit v0

    .line 1285
    return-void

    .line 1269
    .restart local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    :cond_52
    :goto_52
    monitor-exit v0

    return-void

    .line 1284
    .end local v1    # "cli":Landroid/app/PendingIntent$CancelListerInfo;
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    throw v1
.end method

.method public whitelist send()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 888
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 889
    return-void
.end method

.method public whitelist send(I)V
    .registers 10
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 903
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .end local p1    # "code":I
    .local v2, "code":I
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 904
    return-void
.end method

.method public whitelist send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .registers 12
    .param p1, "code"    # I
    .param p2, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 964
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "code":I
    .end local p2    # "onFinished":Landroid/app/PendingIntent$OnFinished;
    .end local p3    # "handler":Landroid/os/Handler;
    .local v2, "code":I
    .local v4, "onFinished":Landroid/app/PendingIntent$OnFinished;
    .local v5, "handler":Landroid/os/Handler;
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 965
    return-void
.end method

.method public whitelist send(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 925
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "code":I
    .end local p3    # "intent":Landroid/content/Intent;
    .local v1, "context":Landroid/content/Context;
    .local v2, "code":I
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 926
    return-void
.end method

.method public whitelist send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .registers 14
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

    .line 999
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "code":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "onFinished":Landroid/app/PendingIntent$OnFinished;
    .end local p5    # "handler":Landroid/os/Handler;
    .local v1, "context":Landroid/content/Context;
    .local v2, "code":I
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "onFinished":Landroid/app/PendingIntent$OnFinished;
    .local v5, "handler":Landroid/os/Handler;
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1000
    return-void
.end method

.method public whitelist send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 15
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

    .line 1041
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "code":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "onFinished":Landroid/app/PendingIntent$OnFinished;
    .end local p5    # "handler":Landroid/os/Handler;
    .end local p6    # "requiredPermission":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "code":I
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "onFinished":Landroid/app/PendingIntent$OnFinished;
    .local v5, "handler":Landroid/os/Handler;
    .local v6, "requiredPermission":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1042
    return-void
.end method

.method public whitelist send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
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

    .line 1082
    invoke-virtual/range {p0 .. p7}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 1086
    return-void

    .line 1084
    :cond_7
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    throw v0
.end method

.method public whitelist send(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 942
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v7, p1

    .end local p1    # "options":Landroid/os/Bundle;
    .local v7, "options":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 943
    return-void
.end method

.method public greylist-max-o sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 20
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

    .line 1097
    move-object/from16 v10, p4

    move-object/from16 v1, p7

    if-eqz p3, :cond_f

    .line 1098
    :try_start_6
    invoke-virtual {p3}, Landroid/content/Intent;->collectExtraIntentKeys()V

    goto :goto_f

    .line 1122
    :catch_a
    move-exception v0

    move-object/from16 v11, p5

    goto/16 :goto_71

    .line 1100
    :cond_f
    :goto_f
    const/4 v0, 0x0

    if-eqz p3, :cond_1c

    .line 1101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1d

    .line 1102
    :cond_1c
    move-object v6, v0

    :goto_1d
    nop

    .line 1104
    .local v6, "resolvedType":Ljava/lang/String;
    if-eqz p1, :cond_40

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1108
    if-eqz v1, :cond_2e

    new-instance v2, Landroid/app/ActivityOptions;

    invoke-direct {v2, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_32

    .line 1109
    :cond_2e
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :goto_32
    nop

    .line 1110
    .local v2, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    .line 1111
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_3e} :catch_a

    move-object v9, v3

    .end local p7    # "options":Landroid/os/Bundle;
    .local v3, "options":Landroid/os/Bundle;
    goto :goto_41

    .line 1114
    .end local v2    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v3    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :cond_40
    move-object v9, v1

    .end local p7    # "options":Landroid/os/Bundle;
    .local v9, "options":Landroid/os/Bundle;
    :goto_41
    :try_start_41
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 1115
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 1116
    .local v1, "app":Landroid/app/IApplicationThread;
    move-object v2, v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v3, v2

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    move-object v4, v3

    iget-object v3, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    .line 1118
    if-eqz v10, :cond_5f

    .line 1119
    new-instance v4, Landroid/app/PendingIntent$FinishedDispatcher;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_58} :catch_6d

    move-object/from16 v11, p5

    :try_start_5a
    invoke-direct {v4, p0, v10, v11}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    move-object v7, v4

    goto :goto_62

    .line 1120
    :cond_5f
    move-object/from16 v11, p5

    move-object v7, v4

    .line 1116
    :goto_62
    move v4, p2

    move-object v5, p3

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6a} :catch_6b

    return v0

    .line 1122
    .end local v1    # "app":Landroid/app/IApplicationThread;
    .end local v6    # "resolvedType":Ljava/lang/String;
    :catch_6b
    move-exception v0

    goto :goto_70

    :catch_6d
    move-exception v0

    move-object/from16 v11, p5

    :goto_70
    move-object v1, v9

    .line 1123
    .end local v9    # "options":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .local v1, "options":Landroid/os/Bundle;
    :goto_71
    new-instance v2, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v2, v0}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1466
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1470
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V
    .registers 2
    .param p1, "cancelListener"    # Landroid/app/PendingIntent$CancelListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1255
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->removeCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 1256
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1486
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1487
    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1488
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent$OnMarshaledListener;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1489
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_24

    .line 1490
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent$OnMarshaledListener;

    invoke-interface {v3, p0, p1, p2}, Landroid/app/PendingIntent$OnMarshaledListener;->onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    .line 1489
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1492
    .end local v2    # "i":I
    :cond_24
    return-void
.end method
