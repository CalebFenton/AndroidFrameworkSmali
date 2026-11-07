.class final Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
.super Landroid/safetycenter/IOnSafetyCenterDataChangedListener$Stub;
.source "SafetyCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mOriginalListener:Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;

.field private volatile blacklist mRemoved:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$DvDQ1P5VZPf7w3xD93rv5MnIsQc(Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;Landroid/safetycenter/SafetyCenterErrorDetails;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->lambda$onError$1(Landroid/safetycenter/SafetyCenterErrorDetails;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gAHYyvO8TRr2TMJIrUPlfESmQUI(Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;Landroid/safetycenter/SafetyCenterData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->lambda$onSafetyCenterDataChanged$0(Landroid/safetycenter/SafetyCenterData;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "originalListener"    # Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;

    .line 668
    invoke-direct {p0}, Landroid/safetycenter/IOnSafetyCenterDataChangedListener$Stub;-><init>()V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mRemoved:Z

    .line 669
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 670
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mOriginalListener:Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;

    .line 671
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;Landroid/safetycenter/SafetyCenterManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(Landroid/safetycenter/SafetyCenterErrorDetails;)V
    .registers 3
    .param p1, "safetyCenterErrorDetails"    # Landroid/safetycenter/SafetyCenterErrorDetails;

    .line 703
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mRemoved:Z

    if-eqz v0, :cond_5

    .line 704
    return-void

    .line 710
    :cond_5
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mOriginalListener:Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;

    invoke-interface {v0, p1}, Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;->onError(Landroid/safetycenter/SafetyCenterErrorDetails;)V

    .line 711
    return-void
.end method

.method private synthetic blacklist lambda$onSafetyCenterDataChanged$0(Landroid/safetycenter/SafetyCenterData;)V
    .registers 3
    .param p1, "safetyCenterData"    # Landroid/safetycenter/SafetyCenterData;

    .line 681
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mRemoved:Z

    if-eqz v0, :cond_5

    .line 682
    return-void

    .line 688
    :cond_5
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mOriginalListener:Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;

    invoke-interface {v0, p1}, Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;->onSafetyCenterDataChanged(Landroid/safetycenter/SafetyCenterData;)V

    .line 689
    return-void
.end method


# virtual methods
.method public blacklist markAsRemoved()V
    .registers 2

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mRemoved:Z

    .line 719
    return-void
.end method

.method public blacklist onError(Landroid/safetycenter/SafetyCenterErrorDetails;)V
    .registers 6
    .param p1, "safetyCenterErrorDetails"    # Landroid/safetycenter/SafetyCenterErrorDetails;

    .line 697
    const-string v0, "safetyCenterErrorDetails cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    .local v0, "identity":J
    :try_start_9
    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;Landroid/safetycenter/SafetyCenterErrorDetails;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    nop

    .line 715
    return-void

    .line 713
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    throw v2
.end method

.method public blacklist onSafetyCenterDataChanged(Landroid/safetycenter/SafetyCenterData;)V
    .registers 6
    .param p1, "safetyCenterData"    # Landroid/safetycenter/SafetyCenterData;

    .line 675
    const-string v0, "safetyCenterData cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 679
    .local v0, "identity":J
    :try_start_9
    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;Landroid/safetycenter/SafetyCenterData;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    nop

    .line 693
    return-void

    .line 691
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw v2
.end method
