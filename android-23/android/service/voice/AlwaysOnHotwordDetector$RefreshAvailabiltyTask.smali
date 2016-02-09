.class Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;
.super Landroid/os/AsyncTask;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshAvailabiltyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method constructor <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    #@0
    .prologue
    .line 682
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method

.method private internalGetInitialAvailability()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x3

    #@1
    .line 715
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@3
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get4(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    monitor-enter v3

    #@8
    .line 717
    :try_start_0
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@a
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get0(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v2

    #@e
    if-ne v2, v4, :cond_0

    #@10
    monitor-exit v3

    #@11
    .line 718
    return v4

    #@12
    :cond_0
    monitor-exit v3

    #@13
    .line 722
    const/4 v0, 0x0

    #@14
    .line 725
    .local v0, "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_start_1
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@16
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get5(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@1c
    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get6(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@23
    move-result-object v0

    #@24
    .line 730
    .end local v0    # "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :goto_0
    if-nez v0, :cond_1

    #@26
    .line 731
    const/4 v2, -0x2

    #@27
    return v2

    #@28
    .line 715
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2

    #@2b
    .line 726
    .restart local v0    # "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catch_0
    move-exception v1

    #@2c
    .line 727
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AlwaysOnHotwordDetector"

    #@2f
    const-string/jumbo v3, "RemoteException in getDspProperties!"

    #@32
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0

    #@36
    .line 734
    .end local v0    # "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@38
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get2(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@3b
    move-result-object v2

    #@3c
    if-nez v2, :cond_2

    #@3e
    .line 735
    const/4 v2, -0x1

    #@3f
    return v2

    #@40
    .line 737
    :cond_2
    const/4 v2, 0x0

    #@41
    return v2
.end method

.method private internalGetIsEnrolled(ILjava/util/Locale;)Z
    .locals 4
    .param p1, "keyphraseId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@2
    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get5(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@5
    move-result-object v1

    #@6
    .line 746
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@8
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get6(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 745
    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 747
    :catch_0
    move-exception v0

    #@16
    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AlwaysOnHotwordDetector"

    #@19
    const-string/jumbo v2, "RemoteException in listRegisteredKeyphraseSoundModels!"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 750
    const/4 v1, 0x0

    #@20
    return v1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 685
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 686
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->internalGetInitialAvailability()I

    #@3
    move-result v0

    #@4
    .line 687
    .local v0, "availability":I
    const/4 v1, 0x0

    #@5
    .line 689
    .local v1, "enrolled":Z
    if-eqz v0, :cond_0

    #@7
    .line 690
    const/4 v2, 0x1

    #@8
    if-ne v0, v2, :cond_2

    #@a
    .line 692
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@c
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get2(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@f
    move-result-object v2

    #@10
    iget v2, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    #@12
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@14
    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get3(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;

    #@17
    move-result-object v3

    #@18
    invoke-direct {p0, v2, v3}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->internalGetIsEnrolled(ILjava/util/Locale;)Z

    #@1b
    move-result v1

    #@1c
    .line 693
    .local v1, "enrolled":Z
    if-nez v1, :cond_3

    #@1e
    .line 694
    const/4 v0, 0x1

    #@1f
    .line 700
    .end local v1    # "enrolled":Z
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@21
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-get4(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    monitor-enter v3

    #@26
    .line 705
    :try_start_0
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@28
    invoke-static {v2, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-set0(Landroid/service/voice/AlwaysOnHotwordDetector;I)I

    #@2b
    .line 706
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@2d
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->-wrap0(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v3

    #@31
    .line 708
    const/4 v2, 0x0

    #@32
    return-object v2

    #@33
    .line 691
    .local v1, "enrolled":Z
    :cond_2
    const/4 v2, 0x2

    #@34
    if-ne v0, v2, :cond_1

    #@36
    goto :goto_0

    #@37
    .line 696
    .local v1, "enrolled":Z
    :cond_3
    const/4 v0, 0x2

    #@38
    goto :goto_1

    #@39
    .line 700
    .end local v1    # "enrolled":Z
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2
.end method
