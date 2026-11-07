.class public final Landroid/app/UiAutomationConnection;
.super Landroid/app/IUiAutomationConnection$Stub;
.source "UiAutomationConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomationConnection$Repeater;
    }
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_FROZEN_ROTATION_UNSPECIFIED:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UiAutomationConnection"


# instance fields
.field private final greylist-max-o mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private final blacklist mActivityManager:Landroid/app/IActivityManager;

.field private greylist-max-o mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private greylist-max-o mInitialFrozenRotation:I

.field private greylist-max-o mIsShutdown:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mOwningUid:I

.field private final blacklist mPermissionManager:Landroid/permission/IPermissionManager;

.field private final greylist-max-o mToken:Landroid/os/Binder;

.field private final greylist-max-o mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 3

    .line 102
    invoke-direct {p0}, Landroid/app/IUiAutomationConnection$Stub;-><init>()V

    .line 77
    nop

    .line 78
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    .line 80
    nop

    .line 81
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 83
    nop

    .line 84
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 86
    nop

    .line 87
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiAutomationConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private blacklist handleExecuteShellCommandProcess(Ljava/lang/Process;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 15
    .param p1, "process"    # Ljava/lang/Process;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "stderrSink"    # Landroid/os/ParcelFileDescriptor;

    .line 576
    if-eqz p2, :cond_1d

    .line 577
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 578
    .local v0, "sink_in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 580
    .local v2, "sink_out":Ljava/io/OutputStream;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/app/UiAutomationConnection$Repeater;

    invoke-direct {v4, p0, v0, v2}, Landroid/app/UiAutomationConnection$Repeater;-><init>(Landroid/app/UiAutomationConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 581
    .local v3, "readFromProcess":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 582
    .end local v0    # "sink_in":Ljava/io/InputStream;
    .end local v2    # "sink_out":Ljava/io/OutputStream;
    goto :goto_1e

    .line 583
    .end local v3    # "readFromProcess":Ljava/lang/Thread;
    :cond_1d
    const/4 v3, 0x0

    .line 588
    .restart local v3    # "readFromProcess":Ljava/lang/Thread;
    :goto_1e
    if-eqz p3, :cond_3c

    .line 589
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 590
    .local v0, "source_out":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 592
    .local v2, "source_in":Ljava/io/InputStream;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/app/UiAutomationConnection$Repeater;

    invoke-direct {v5, p0, v2, v0}, Landroid/app/UiAutomationConnection$Repeater;-><init>(Landroid/app/UiAutomationConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 593
    .local v4, "writeToProcess":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 594
    .end local v0    # "source_out":Ljava/io/OutputStream;
    .end local v2    # "source_in":Ljava/io/InputStream;
    move-object v2, v4

    goto :goto_3e

    .line 595
    .end local v4    # "writeToProcess":Ljava/lang/Thread;
    :cond_3c
    const/4 v4, 0x0

    move-object v2, v4

    .line 600
    .local v2, "writeToProcess":Ljava/lang/Thread;
    :goto_3e
    if-eqz p4, :cond_5c

    .line 601
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 602
    .local v0, "sink_in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 604
    .local v4, "sink_out":Ljava/io/OutputStream;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Landroid/app/UiAutomationConnection$Repeater;

    invoke-direct {v6, p0, v0, v4}, Landroid/app/UiAutomationConnection$Repeater;-><init>(Landroid/app/UiAutomationConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 605
    .local v5, "readStderrFromProcess":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 606
    .end local v0    # "sink_in":Ljava/io/InputStream;
    .end local v4    # "sink_out":Ljava/io/OutputStream;
    move-object v4, v5

    goto :goto_5e

    .line 607
    .end local v5    # "readStderrFromProcess":Ljava/lang/Thread;
    :cond_5c
    const/4 v5, 0x0

    move-object v4, v5

    .line 610
    .local v4, "readStderrFromProcess":Ljava/lang/Thread;
    :goto_5e
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Landroid/app/UiAutomationConnection$1;

    move-object v1, p0

    move-object v8, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/UiAutomationConnection$1;-><init>(Landroid/app/UiAutomationConnection;Ljava/lang/Thread;Ljava/lang/Thread;Ljava/lang/Thread;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/Process;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 632
    .local v9, "cleanup":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 633
    return-void
.end method

.method private greylist-max-o isConnectedLocked()Z
    .registers 2

    .line 741
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;II)V
    .registers 11
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 671
    nop

    .line 672
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 671
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 673
    .local v1, "manager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 674
    .local v4, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v0, -0x1

    iput v0, v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 675
    const/16 v0, 0x10

    iput v0, v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 676
    iget v0, v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const v2, 0x10012

    or-int/2addr v0, v2

    iput v0, v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 679
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 682
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_2c

    .line 683
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setAccessibilityTool(Z)V

    .line 688
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2e} :catch_3b

    move-object v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local p2    # "userId":I
    .end local p3    # "flags":I
    .local v3, "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .local v5, "userId":I
    .local v6, "flags":I
    :try_start_31
    invoke-interface/range {v1 .. v6}, Landroid/view/accessibility/IAccessibilityManager;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;II)V

    .line 689
    iput-object v3, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_38

    .line 693
    nop

    .line 694
    return-void

    .line 690
    :catch_38
    move-exception v0

    move-object p1, v0

    goto :goto_40

    .end local v3    # "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v5    # "userId":I
    .end local v6    # "flags":I
    .restart local p1    # "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .restart local p2    # "userId":I
    .restart local p3    # "flags":I
    :catch_3b
    move-exception v0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .line 691
    .end local p2    # "userId":I
    .end local p3    # "flags":I
    .restart local v3    # "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .restart local v5    # "userId":I
    .restart local v6    # "flags":I
    .local p1, "re":Landroid/os/RemoteException;
    :goto_40
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while registering UiTestAutomationService for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private greylist-max-o restoreRotationStateLocked()V
    .registers 4

    .line 724
    :try_start_0
    iget v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_15

    const/4 v1, -0x1

    const-string v2, "UiAutomationConnection#restoreRotationStateLocked"

    if-eq v0, v1, :cond_f

    .line 727
    :try_start_7
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->freezeRotation(ILjava/lang/String;)V

    goto :goto_14

    .line 732
    :cond_f
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->thawRotation(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    .line 737
    :goto_14
    goto :goto_16

    .line 735
    :catch_15
    move-exception v0

    .line 738
    :goto_16
    return-void
.end method

.method private greylist-max-o storeRotationStateLocked()V
    .registers 2

    .line 712
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 715
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v0

    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 719
    :cond_10
    goto :goto_12

    .line 717
    :catch_11
    move-exception v0

    .line 720
    :goto_12
    return-void
.end method

.method private greylist-max-o throwIfCalledByNotTrustedUidLocked()V
    .registers 4

    .line 757
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 758
    .local v0, "callingUid":I
    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    if-eq v0, v1, :cond_19

    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_19

    if-nez v0, :cond_11

    goto :goto_19

    .line 760
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling from not trusted UID!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    :cond_19
    :goto_19
    return-void
.end method

.method private greylist-max-o throwIfNotConnectedLocked()V
    .registers 3

    .line 751
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 754
    return-void

    .line 752
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfShutdownLocked()V
    .registers 3

    .line 745
    iget-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    if-nez v0, :cond_5

    .line 748
    return-void

    .line 746
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection shutdown!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o unregisterUiTestAutomationServiceLocked()V
    .registers 5

    .line 697
    nop

    .line 698
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 697
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 702
    .local v0, "manager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_b
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 703
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_15

    .line 707
    nop

    .line 708
    return-void

    .line 704
    :catch_15
    move-exception v1

    .line 705
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error while unregistering UiTestAutomationService"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public blacklist addOverridePermissionState(ILjava/lang/String;I)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 444
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 445
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 446
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    .line 447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 448
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 450
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, v0, p1, p2, p3}, Landroid/app/IActivityManager;->addOverridePermissionState(IILjava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 452
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    throw v3

    .line 446
    .end local v0    # "callingUid":I
    .end local v1    # "identity":J
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 397
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 398
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 399
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_20

    .line 400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 402
    .local v0, "identity":J
    :try_start_11
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, p1, p2}, Landroid/app/IActivityManager;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    nop

    .line 406
    return-void

    .line 404
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    throw v2

    .line 399
    .end local v0    # "identity":J
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist clearAllOverridePermissionStates()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 492
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 493
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 494
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    .line 495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 496
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 498
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->clearAllOverridePermissionStates(I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 500
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    throw v3

    .line 494
    .end local v0    # "callingUid":I
    .end local v1    # "identity":J
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist clearOverridePermissionStates(I)V
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 476
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 477
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 478
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    .line 479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 480
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 482
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, v0, p1}, Landroid/app/IActivityManager;->clearOverridePermissionStates(II)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 484
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    nop

    .line 486
    return-void

    .line 484
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    throw v3

    .line 478
    .end local v0    # "callingUid":I
    .end local v1    # "identity":J
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public greylist-max-o clearWindowAnimationFrameStats()V
    .registers 4

    .line 322
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 324
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 325
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 326
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 329
    .local v0, "identity":J
    :try_start_11
    invoke-static {}, Landroid/view/SurfaceControl;->clearAnimationFrameStats()Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    .line 331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    throw v2

    .line 326
    .end local v0    # "identity":J
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public greylist-max-o clearWindowContentFrameStats(I)Z
    .registers 7
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 284
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 285
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 286
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_32

    .line 287
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 288
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 290
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v3, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2d

    .line 291
    .local v3, "token":Landroid/os/IBinder;
    if-nez v3, :cond_23

    .line 292
    nop

    .line 296
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    const/4 v4, 0x0

    return v4

    .line 294
    :cond_23
    :try_start_23
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2d

    .line 296
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return v4

    .line 296
    .end local v3    # "token":Landroid/os/IBinder;
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    throw v3

    .line 286
    .end local v0    # "callingUserId":I
    .end local v1    # "identity":J
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public greylist-max-o connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .registers 6
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "flags"    # I

    .line 108
    if-eqz p1, :cond_30

    .line 111
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_5
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 113
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_25

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 117
    nop

    .line 118
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 117
    invoke-direct {p0, p1, v1, p2}, Landroid/app/UiAutomationConnection;->registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;II)V

    .line 119
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->storeRotationStateLocked()V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 114
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already connected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomationConnection;
    .end local p1    # "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local p2    # "flags":I
    throw v1

    .line 120
    .restart local p0    # "this":Landroid/app/UiAutomationConnection;
    .restart local p1    # "client":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .restart local p2    # "flags":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v1

    .line 109
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o disconnect()V
    .registers 4

    .line 125
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 127
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 128
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 131
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 132
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->unregisterUiTestAutomationServiceLocked()V

    .line 133
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->restoreRotationStateLocked()V

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 129
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already disconnected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/UiAutomationConnection;
    throw v1

    .line 134
    .restart local p0    # "this":Landroid/app/UiAutomationConnection;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist dropShellPermissionIdentity()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 412
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 413
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 414
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_20

    .line 415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 417
    .local v0, "identity":J
    :try_start_11
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopDelegateShellPermissionIdentity()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 419
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    nop

    .line 421
    return-void

    .line 419
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    throw v2

    .line 414
    .end local v0    # "identity":J
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public greylist-max-o executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/UiAutomationConnection;->executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 537
    return-void
.end method

.method public blacklist executeShellCommandArrayWithStderr([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "command"    # [Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "stderrSink"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 641
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 642
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 643
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_40

    .line 647
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_1a

    .line 651
    .local v0, "process":Ljava/lang/Process;
    nop

    .line 652
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/app/UiAutomationConnection;->handleExecuteShellCommandProcess(Ljava/lang/Process;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 653
    return-void

    .line 648
    .end local v0    # "process":Ljava/lang/Process;
    :catch_1a
    move-exception v0

    .line 649
    .local v0, "exc":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running shell command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 650
    invoke-static {v3, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 643
    .end local v0    # "exc":Ljava/io/IOException;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public blacklist executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "stderrSink"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 545
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 546
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 547
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_4e

    .line 551
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_15} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_15} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_15} :catch_1a

    .line 567
    .local v0, "process":Ljava/lang/Process;
    nop

    .line 568
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/app/UiAutomationConnection;->handleExecuteShellCommandProcess(Ljava/lang/Process;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 569
    return-void

    .line 560
    .end local v0    # "process":Ljava/lang/Process;
    :catch_1a
    move-exception v0

    .line 562
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 563
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 564
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 566
    throw v0

    .line 552
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_25
    move-exception v0

    .line 554
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 555
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 556
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 559
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running shell command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 547
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public blacklist getAdoptedShellPermissions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 428
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 429
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 430
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_20

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 433
    .local v0, "identity":J
    :try_start_11
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 435
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    return-object v2

    .line 435
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    throw v2

    .line 430
    .end local v0    # "identity":J
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public greylist-max-o getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .registers 4

    .line 337
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 339
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 340
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 341
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    .line 342
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 344
    .local v0, "identity":J
    :try_start_11
    new-instance v2, Landroid/view/WindowAnimationFrameStats;

    invoke-direct {v2}, Landroid/view/WindowAnimationFrameStats;-><init>()V

    .line 345
    .local v2, "stats":Landroid/view/WindowAnimationFrameStats;
    invoke-static {v2}, Landroid/view/SurfaceControl;->getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    .line 346
    nop

    .line 348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    return-object v2

    .line 348
    .end local v2    # "stats":Landroid/view/WindowAnimationFrameStats;
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    throw v2

    .line 341
    .end local v0    # "identity":J
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public greylist-max-o getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .registers 7
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 304
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 305
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 306
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_32

    .line 307
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 308
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 310
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v3, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2d

    .line 311
    .local v3, "token":Landroid/os/IBinder;
    if-nez v3, :cond_23

    .line 312
    nop

    .line 316
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    const/4 v4, 0x0

    return-object v4

    .line 314
    :cond_23
    :try_start_23
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2d

    .line 316
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    return-object v4

    .line 316
    .end local v3    # "token":Landroid/os/IBinder;
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    throw v3

    .line 306
    .end local v0    # "callingUserId":I
    .end local v1    # "identity":J
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public greylist-max-o grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 360
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 361
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 362
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    .line 363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 365
    .local v0, "identity":J
    :try_start_11
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPermissionManager:Landroid/permission/IPermissionManager;

    const-string v3, "default:0"

    invoke-interface {v2, p1, p2, v3, p3}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    nop

    .line 370
    return-void

    .line 368
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    throw v2

    .line 362
    .end local v0    # "identity":J
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;ZZ)Z
    .registers 11
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z
    .param p3, "waitForAnimations"    # Z

    .line 139
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 141
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 142
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 143
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_79

    .line 147
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    .line 148
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 149
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    .line 150
    .local v3, "syncTransactionsBefore":Z
    :goto_1f
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_26

    goto :goto_27

    :cond_26
    move v2, v1

    .line 151
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    .local v2, "syncTransactionsAfter":Z
    :goto_27
    goto :goto_45

    .line 152
    .end local v2    # "syncTransactionsAfter":Z
    .end local v3    # "syncTransactionsBefore":Z
    :cond_28
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 153
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_3c

    .line 154
    const/16 v3, 0x2002

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3c

    :cond_3a
    move v3, v1

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v3, v2

    .line 155
    .restart local v3    # "syncTransactionsBefore":Z
    :goto_3d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_44

    goto :goto_45

    :cond_44
    move v2, v1

    .line 158
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v2    # "syncTransactionsAfter":Z
    :goto_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 160
    .local v4, "identity":J
    if-eqz v3, :cond_50

    .line 161
    :try_start_4b
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p3}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V

    .line 164
    :cond_50
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    .line 165
    if-eqz p2, :cond_58

    const/4 v6, 0x2

    goto :goto_59

    .line 166
    :cond_58
    move v6, v1

    .line 164
    :goto_59
    invoke-virtual {v0, p1, v6}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    .line 168
    .local v0, "result":Z
    if-eqz v2, :cond_64

    .line 169
    iget-object v6, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p3}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_64} :catch_6b
    .catchall {:try_start_4b .. :try_end_64} :catchall_69

    .line 171
    :cond_64
    nop

    .line 175
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    return v0

    .line 175
    .end local v0    # "result":Z
    :catchall_69
    move-exception v0

    goto :goto_75

    .line 172
    :catch_6b
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_69

    .line 175
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    nop

    .line 177
    return v1

    .line 175
    :goto_75
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    throw v0

    .line 143
    .end local v2    # "syncTransactionsAfter":Z
    .end local v3    # "syncTransactionsBefore":Z
    .end local v4    # "identity":J
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public blacklist injectInputEventToInputFilter(Landroid/view/InputEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 184
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 185
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 186
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 187
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManager;->injectInputEventToInputFilter(Landroid/view/InputEvent;)V

    .line 188
    return-void

    .line 186
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist removeOverridePermissionState(ILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 460
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 461
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 462
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    .line 463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 464
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 466
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, v0, p1, p2}, Landroid/app/IActivityManager;->removeOverridePermissionState(IILjava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 468
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    nop

    .line 470
    return-void

    .line 468
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    throw v3

    .line 462
    .end local v0    # "callingUid":I
    .end local v1    # "identity":J
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public greylist-max-o revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 380
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 381
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 382
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2d

    .line 383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 385
    .local v1, "identity":J
    :try_start_11
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mPermissionManager:Landroid/permission/IPermissionManager;

    const-string v6, "default:0"
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_24

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permission":Ljava/lang/String;
    .end local p3    # "userId":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "permission":Ljava/lang/String;
    .local v7, "userId":I
    :try_start_19
    invoke-interface/range {v3 .. v8}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_21

    .line 388
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    nop

    .line 390
    return-void

    .line 388
    :catchall_21
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permission":Ljava/lang/String;
    .end local v7    # "userId":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permission":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_24
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    move-object p1, v0

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permission":Ljava/lang/String;
    .end local p3    # "userId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permission":Ljava/lang/String;
    .restart local v7    # "userId":I
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    throw p1

    .line 382
    .end local v1    # "identity":J
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permission":Ljava/lang/String;
    .end local v7    # "userId":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permission":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_2d
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    move-object p1, v0

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permission":Ljava/lang/String;
    .end local p3    # "userId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permission":Ljava/lang/String;
    .restart local v7    # "userId":I
    :goto_32
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_34

    throw p1

    :catchall_34
    move-exception v0

    move-object p1, v0

    goto :goto_32
.end method

.method public greylist-max-o setRotation(I)Z
    .registers 6
    .param p1, "rotation"    # I

    .line 206
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 208
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 209
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 210
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_35

    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 213
    .local v0, "identity":J
    const/4 v2, -0x2

    if-ne p1, v2, :cond_1c

    .line 214
    :try_start_14
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    const-string v3, "UiAutomationConnection#setRotation"

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->thawRotation(Ljava/lang/String;)V

    goto :goto_23

    .line 216
    :cond_1c
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    const-string v3, "UiAutomationConnection#setRotation"

    invoke-interface {v2, p1, v3}, Landroid/view/IWindowManager;->freezeRotation(ILjava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_2e
    .catchall {:try_start_14 .. :try_end_23} :catchall_29

    .line 219
    :goto_23
    nop

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    const/4 v2, 0x1

    return v2

    .line 223
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw v2

    .line 220
    :catch_2e
    move-exception v2

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    nop

    .line 225
    const/4 v2, 0x0

    return v2

    .line 210
    .end local v0    # "identity":J
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public greylist-max-o shutdown()V
    .registers 3

    .line 657
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 659
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 661
    :cond_c
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 662
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    .line 663
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 664
    invoke-virtual {p0}, Landroid/app/UiAutomationConnection;->disconnect()V

    .line 666
    :cond_1b
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist syncInputTransactions(Z)V
    .registers 4
    .param p1, "waitForAnimations"    # Z

    .line 192
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 194
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 195
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 196
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 199
    :try_start_d
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 201
    goto :goto_14

    .line 200
    :catch_13
    move-exception v0

    .line 202
    :goto_14
    return-void

    .line 196
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist takeScreenshot(Landroid/graphics/Rect;Landroid/window/ScreenCapture$ScreenCaptureListener;I)Z
    .registers 8
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;
    .param p3, "displayId"    # I

    .line 231
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 233
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 234
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 235
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_35

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 239
    .local v0, "identity":J
    :try_start_11
    new-instance v2, Landroid/window/ScreenCapture$CaptureArgs$Builder;

    invoke-direct {v2}, Landroid/window/ScreenCapture$CaptureArgs$Builder;-><init>()V

    .line 240
    invoke-virtual {v2, p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->build()Landroid/window/ScreenCapture$CaptureArgs;

    move-result-object v2

    .line 242
    .local v2, "captureArgs":Landroid/window/ScreenCapture$CaptureArgs;
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p3, v2, p2}, Landroid/view/IWindowManager;->captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_23} :catch_26
    .catchall {:try_start_11 .. :try_end_23} :catchall_24

    .line 246
    .end local v2    # "captureArgs":Landroid/window/ScreenCapture$CaptureArgs;
    goto :goto_2b

    :catchall_24
    move-exception v2

    goto :goto_31

    .line 243
    :catch_26
    move-exception v2

    .line 244
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .line 246
    nop

    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    nop

    .line 249
    const/4 v2, 0x1

    return v2

    .line 246
    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    throw v2

    .line 235
    .end local v0    # "identity":J
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public blacklist takeSurfaceControlScreenshot(Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenCaptureListener;)Z
    .registers 8
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "listener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 256
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 258
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 259
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 260
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_35

    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 264
    .local v0, "identity":J
    :try_start_11
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v2, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 266
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object v2

    .line 267
    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v2

    .line 268
    .local v2, "args":Landroid/window/ScreenCapture$LayerCaptureArgs;
    invoke-static {v2, p2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result v4
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_30

    .line 270
    .local v4, "status":I
    if-eqz v4, :cond_2a

    .line 271
    nop

    .line 274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    return v3

    .line 274
    .end local v2    # "args":Landroid/window/ScreenCapture$LayerCaptureArgs;
    .end local v4    # "status":I
    :cond_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    nop

    .line 277
    const/4 v2, 0x1

    return v2

    .line 274
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    throw v2

    .line 260
    .end local v0    # "identity":J
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method
