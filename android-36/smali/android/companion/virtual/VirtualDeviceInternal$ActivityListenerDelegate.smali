.class Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;
.super Ljava/lang/Object;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$6fkyx7j63UAsHyDdcNPQ-NVOxO4(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onTopActivityChanged$0(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$71KUarUyJDWp7E0Q8jPWObnCYh8(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onActivityLaunchBlocked$3(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TZeRdor0029pchwGRMNdCVG-VHc(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onSecureWindowHidden$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mUFhDTlFMzGoXsmBaLHj_br-LT4(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onSecureWindowShown$4(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nJVQ8kY_b5c1qDPKyh5xLPdWH1w(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onDisplayEmpty$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wMTNQEFQS9Syz-aC40dZOG_d1HQ(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onTopActivityChanged$1(ILandroid/content/ComponentName;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 596
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 597
    return-void
.end method

.method private synthetic blacklist lambda$onActivityLaunchBlocked$3(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "intentSender"    # Landroid/content/IntentSender;

    .line 616
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDisplayEmpty$2(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 610
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSecureWindowHidden$5(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 627
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onSecureWindowHidden(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSecureWindowShown$4(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 623
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onSecureWindowShown(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTopActivityChanged$0(ILandroid/content/ComponentName;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;

    .line 600
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTopActivityChanged$1(ILandroid/content/ComponentName;I)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 606
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public blacklist onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "intentSender"    # Landroid/content/IntentSender;

    .line 615
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "displayId":I
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "user":Landroid/os/UserHandle;
    .end local p4    # "intentSender":Landroid/content/IntentSender;
    .local v3, "displayId":I
    .local v4, "componentName":Landroid/content/ComponentName;
    .local v5, "user":Landroid/os/UserHandle;
    .local v6, "intentSender":Landroid/content/IntentSender;
    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 618
    return-void
.end method

.method public blacklist onDisplayEmpty(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 610
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda4;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public blacklist onSecureWindowHidden(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 627
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 628
    return-void
.end method

.method public blacklist onSecureWindowShown(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 622
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 624
    return-void
.end method

.method public blacklist onTopActivityChanged(ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;

    .line 600
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method

.method public blacklist onTopActivityChanged(ILandroid/content/ComponentName;I)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 605
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 607
    return-void
.end method
