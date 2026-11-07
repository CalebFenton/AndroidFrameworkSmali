.class Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;
.super Landroid/os/AsyncTask;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshAvailabilityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/voice/AlwaysOnHotwordDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1846
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private blacklist internalGetInitialAvailability()I
    .registers 4

    .line 1885
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v0, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1887
    :try_start_5
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmAvailability(Landroid/service/voice/AlwaysOnHotwordDetector;)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_10

    .line 1888
    monitor-exit v0

    return v2

    .line 1890
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_31

    .line 1892
    const-wide/32 v0, 0x100b2394

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1895
    :try_start_1a
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmSoundTriggerSession(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object v0

    .line 1896
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_29

    .line 1899
    .local v0, "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    nop

    .line 1902
    if-nez v0, :cond_2f

    .line 1903
    const/4 v1, -0x2

    return v1

    .line 1897
    .end local v0    # "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catch_29
    move-exception v0

    .line 1898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1907
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    const/4 v0, 0x0

    return v0

    .line 1890
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private blacklist internalUpdateEnrolledKeyphraseMetadata()V
    .registers 5

    .line 1912
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmModelManagementService(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmText(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmLocale(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;

    move-result-object v3

    .line 1913
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 1912
    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getEnrolledKeyphraseMetadata(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fputmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/hardware/soundtrigger/KeyphraseMetadata;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 1916
    nop

    .line 1917
    return-void

    .line 1914
    :catch_21
    move-exception v0

    .line 1915
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1846
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .line 1851
    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->internalGetInitialAvailability()I

    move-result v0

    .line 1853
    .local v0, "availability":I
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v1, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_23

    .line 1854
    if-nez v0, :cond_19

    .line 1855
    :try_start_b
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->internalUpdateEnrolledKeyphraseMetadata()V

    .line 1856
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 1857
    const/4 v0, 0x2

    goto :goto_19

    .line 1859
    :cond_18
    const/4 v0, 0x1

    .line 1862
    :cond_19
    :goto_19
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$mupdateAndNotifyStateChangedLocked(Landroid/service/voice/AlwaysOnHotwordDetector;I)V

    .line 1863
    monitor-exit v1

    .line 1876
    .end local v0    # "availability":I
    goto :goto_5d

    .line 1863
    .restart local v0    # "availability":I
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_20

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;
    .end local p1    # "params":[Ljava/lang/Void;
    :try_start_22
    throw v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    .line 1864
    .end local v0    # "availability":I
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catch_23
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Failed to refresh availability"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1868
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v1, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1869
    const-wide/32 v2, 0x10b7a7d9

    :try_start_33
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1870
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to refresh availability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1871
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1870
    invoke-static {v2, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$msendUnknownFailure(Landroid/service/voice/AlwaysOnHotwordDetector;Ljava/lang/String;)V

    goto :goto_5c

    .line 1873
    :cond_56
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$mupdateAndNotifyStateChangedLocked(Landroid/service/voice/AlwaysOnHotwordDetector;I)V

    .line 1875
    :goto_5c
    monitor-exit v1

    .line 1878
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5d
    const/4 v0, 0x0

    return-object v0

    .line 1875
    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v2

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_33 .. :try_end_61} :catchall_5f

    throw v2
.end method
