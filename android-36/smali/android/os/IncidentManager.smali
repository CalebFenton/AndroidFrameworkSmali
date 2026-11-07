.class public Landroid/os/IncidentManager;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IncidentManager$AuthListener;,
        Landroid/os/IncidentManager$PendingReport;,
        Landroid/os/IncidentManager$DumpCallback;,
        Landroid/os/IncidentManager$IncidentReport;,
        Landroid/os/IncidentManager$PrivacyPolicy;,
        Landroid/os/IncidentManager$PendingReportFlags;
    }
.end annotation


# static fields
.field public static final whitelist FLAG_ALLOW_CONSENTLESS_BUGREPORT:I = 0x2

.field public static final whitelist FLAG_CONFIRMATION_DIALOG:I = 0x1

.field public static final whitelist PRIVACY_POLICY_AUTO:I = 0xc8

.field public static final whitelist PRIVACY_POLICY_EXPLICIT:I = 0x64

.field public static final whitelist PRIVACY_POLICY_LOCAL:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IncidentManager"

.field public static final blacklist URI_AUTHORITY:Ljava/lang/String; = "android.os.IncidentManager"

.field public static final blacklist URI_PARAM_CALLING_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final blacklist URI_PARAM_FLAGS:Ljava/lang/String; = "flags"

.field public static final blacklist URI_PARAM_ID:Ljava/lang/String; = "id"

.field public static final blacklist URI_PARAM_RECEIVER_CLASS:Ljava/lang/String; = "receiver"

.field public static final blacklist URI_PARAM_REPORT_ID:Ljava/lang/String; = "r"

.field public static final blacklist URI_PARAM_TIMESTAMP:Ljava/lang/String; = "t"

.field public static final blacklist URI_PATH:Ljava/lang/String; = "/pending"

.field public static final blacklist URI_SCHEME:Ljava/lang/String; = "content"


# instance fields
.field private blacklist mCompanionService:Landroid/os/IIncidentCompanion;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mIncidentService:Landroid/os/IIncidentManager;

.field private blacklist mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$aMxIZf9jBHeyt-5BI14dj672I8o(Landroid/os/IncidentManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/IncidentManager;->lambda$getCompanionServiceLocked$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z82u9FYdAfbEmHqbSggjHRJmRTU(Landroid/os/IncidentManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/IncidentManager;->lambda$getIIncidentManagerLocked$0()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentManager;->mLock:Ljava/lang/Object;

    .line 476
    iput-object p1, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    .line 477
    return-void
.end method

.method private blacklist getCompanionServiceLocked()Landroid/os/IIncidentCompanion;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    if-eqz v0, :cond_7

    .line 784
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    return-object v0

    .line 787
    :cond_7
    monitor-enter p0

    .line 788
    :try_start_8
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    if-eqz v0, :cond_10

    .line 789
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    monitor-exit p0

    return-object v0

    .line 791
    :cond_10
    const-string/jumbo v0, "incidentcompanion"

    .line 792
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 791
    invoke-static {v0}, Landroid/os/IIncidentCompanion$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentCompanion;

    move-result-object v0

    iput-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    .line 793
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    if-eqz v0, :cond_30

    .line 794
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    invoke-interface {v0}, Landroid/os/IIncidentCompanion;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/os/IncidentManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/os/IncidentManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/IncidentManager;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 800
    :cond_30
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    monitor-exit p0

    return-object v0

    .line 801
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private greylist-max-o getIIncidentManagerLocked()Landroid/os/IIncidentManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    iget-object v0, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    if-eqz v0, :cond_7

    .line 762
    iget-object v0, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    return-object v0

    .line 765
    :cond_7
    iget-object v0, p0, Landroid/os/IncidentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_a
    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    if-eqz v1, :cond_12

    .line 767
    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    monitor-exit v0

    return-object v1

    .line 769
    :cond_12
    const-string/jumbo v1, "incident"

    .line 770
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 769
    invoke-static {v1}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v1

    iput-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    .line 771
    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    if-eqz v1, :cond_32

    .line 772
    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    invoke-interface {v1}, Landroid/os/IIncidentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/os/IncidentManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/os/IncidentManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/IncidentManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 778
    :cond_32
    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    monitor-exit v0

    return-object v1

    .line 779
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_36

    throw v1
.end method

.method private synthetic blacklist lambda$getCompanionServiceLocked$1()V
    .registers 3

    .line 795
    iget-object v0, p0, Landroid/os/IncidentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private synthetic blacklist lambda$getIIncidentManagerLocked$0()V
    .registers 3

    .line 773
    iget-object v0, p0, Landroid/os/IncidentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    .line 775
    monitor-exit v0

    .line 776
    return-void

    .line 775
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private greylist-max-o reportIncidentInternal(Landroid/os/IncidentReportArgs;)V
    .registers 5
    .param p1, "args"    # Landroid/os/IncidentReportArgs;

    .line 749
    const-string v0, "IncidentManager"

    :try_start_2
    invoke-direct {p0}, Landroid/os/IncidentManager;->getIIncidentManagerLocked()Landroid/os/IIncidentManager;

    move-result-object v1

    .line 750
    .local v1, "service":Landroid/os/IIncidentManager;
    if-nez v1, :cond_f

    .line 751
    const-string/jumbo v2, "reportIncident can\'t find incident binder service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void

    .line 754
    :cond_f
    invoke-interface {v1, p1}, Landroid/os/IIncidentManager;->reportIncident(Landroid/os/IncidentReportArgs;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_13

    .line 757
    .end local v1    # "service":Landroid/os/IIncidentManager;
    goto :goto_1a

    .line 755
    :catch_13
    move-exception v1

    .line 756
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "reportIncident failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method


# virtual methods
.method public whitelist approveReport(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 559
    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IIncidentCompanion;->approveReport(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 563
    nop

    .line 564
    return-void

    .line 560
    :catch_d
    move-exception v0

    .line 562
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist cancelAuthorization(Landroid/os/IncidentManager$AuthListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/IncidentManager$AuthListener;

    .line 527
    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    iget-object v1, p1, Landroid/os/IncidentManager$AuthListener;->mBinder:Landroid/os/IIncidentAuthListener$Stub;

    invoke-interface {v0, v1}, Landroid/os/IIncidentCompanion;->cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 531
    nop

    .line 532
    return-void

    .line 528
    :catch_b
    move-exception v0

    .line 530
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist deleteIncidentReports(Landroid/net/Uri;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 714
    const-string v0, "System server or incidentd going down"

    if-nez p1, :cond_19

    .line 716
    :try_start_4
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v1

    iget-object v2, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IIncidentCompanion;->deleteAllIncidentReports(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 719
    goto :goto_3c

    .line 717
    :catch_12
    move-exception v1

    .line 718
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 721
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_19
    const-string/jumbo v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_76

    .line 727
    const-string/jumbo v2, "receiver"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "cls":Ljava/lang/String;
    if-eqz v2, :cond_5d

    .line 733
    const-string/jumbo v3, "r"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 740
    :try_start_34
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Landroid/os/IIncidentCompanion;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3d

    .line 743
    nop

    .line 745
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    :goto_3c
    return-void

    .line 741
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "cls":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    :catch_3d
    move-exception v4

    .line 742
    .local v4, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 735
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: No r parameter. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    .end local v3    # "id":Ljava/lang/String;
    :cond_5d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: No receiver parameter. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    .end local v2    # "cls":Ljava/lang/String;
    :cond_76
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: No pkg parameter. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist denyReport(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 572
    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IIncidentCompanion;->denyReport(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 576
    nop

    .line 577
    return-void

    .line 573
    :catch_d
    move-exception v0

    .line 575
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getIncidentReport(Landroid/net/Uri;)Landroid/os/IncidentManager$IncidentReport;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 677
    const-string/jumbo v0, "r"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 681
    const/4 v1, 0x0

    return-object v1

    .line 684
    :cond_b
    const-string/jumbo v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_48

    .line 690
    const-string/jumbo v2, "receiver"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "cls":Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 697
    :try_start_1d
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Landroid/os/IIncidentCompanion;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_26

    return-object v3

    .line 698
    :catch_26
    move-exception v3

    .line 699
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "System server or incidentd going down"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 692
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: No receiver parameter. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 686
    .end local v2    # "cls":Ljava/lang/String;
    :cond_48
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: No pkg parameter. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getIncidentReportList(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "receiverClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 651
    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    iget-object v1, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    .line 652
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-interface {v0, v1, p1}, Landroid/os/IIncidentCompanion;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_2c

    .line 655
    .local v0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 656
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 657
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v1, :cond_2b

    .line 659
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 661
    .end local v3    # "i":I
    :cond_2b
    return-object v2

    .line 653
    .end local v0    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "size":I
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_2c
    move-exception v0

    .line 654
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System server or incidentd going down"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getPendingReports()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IncidentManager$PendingReport;",
            ">;"
        }
    .end annotation

    .line 541
    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IIncidentCompanion;->getPendingReports()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_2b

    .line 544
    .local v0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 545
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 546
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IncidentManager$PendingReport;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_2a

    .line 548
    new-instance v4, Landroid/os/IncidentManager$PendingReport;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/IncidentManager$PendingReport;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 550
    .end local v3    # "i":I
    :cond_2a
    return-object v2

    .line 542
    .end local v0    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "size":I
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IncidentManager$PendingReport;>;"
    :catch_2b
    move-exception v0

    .line 543
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist registerSection(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/IncidentManager$DumpCallback;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/os/IncidentManager$DumpCallback;

    .line 598
    const-string v0, "IncidentManager"

    const-string v1, "executor cannot be null"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 599
    const-string v1, "callback cannot be null"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 601
    :try_start_c
    invoke-static {p4}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fgetmExecutor(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 605
    invoke-static {p4, p3}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fputmExecutor(Landroid/os/IncidentManager$DumpCallback;Ljava/util/concurrent/Executor;)V

    .line 606
    invoke-static {p4, p1}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fputmId(Landroid/os/IncidentManager$DumpCallback;I)V

    .line 607
    invoke-direct {p0}, Landroid/os/IncidentManager;->getIIncidentManagerLocked()Landroid/os/IIncidentManager;

    move-result-object v1

    .line 608
    .local v1, "service":Landroid/os/IIncidentManager;
    if-nez v1, :cond_25

    .line 609
    const-string/jumbo v2, "registerSection can\'t find incident binder service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void

    .line 612
    :cond_25
    iget-object v2, p4, Landroid/os/IncidentManager$DumpCallback;->mBinder:Landroid/os/IIncidentDumpCallback$Stub;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IIncidentManager;->registerSection(ILjava/lang/String;Landroid/os/IIncidentDumpCallback;)V

    .line 615
    .end local v1    # "service":Landroid/os/IIncidentManager;
    goto :goto_3a

    .line 602
    :cond_2b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Do not reuse DumpCallback objects when calling registerSection"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/IncidentManager;
    .end local p1    # "id":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/os/IncidentManager$DumpCallback;
    throw v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_33} :catch_33

    .line 613
    .restart local p0    # "this":Landroid/os/IncidentManager;
    .restart local p1    # "id":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/os/IncidentManager$DumpCallback;
    :catch_33
    move-exception v1

    .line 614
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "registerSection failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method

.method public whitelist reportIncident(Landroid/os/IncidentReportArgs;)V
    .registers 2
    .param p1, "args"    # Landroid/os/IncidentReportArgs;

    .line 487
    invoke-direct {p0, p1}, Landroid/os/IncidentManager;->reportIncidentInternal(Landroid/os/IncidentReportArgs;)V

    .line 488
    return-void
.end method

.method public whitelist requestAuthorization(ILjava/lang/String;ILandroid/os/IncidentManager$AuthListener;)V
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "listener"    # Landroid/os/IncidentManager$AuthListener;

    .line 496
    iget-object v0, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    .line 497
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 496
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    .end local p1    # "callingUid":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "listener":Landroid/os/IncidentManager$AuthListener;
    .local v2, "callingUid":I
    .local v3, "callingPackage":Ljava/lang/String;
    .local v4, "flags":I
    .local v6, "listener":Landroid/os/IncidentManager$AuthListener;
    invoke-virtual/range {v1 .. v6}, Landroid/os/IncidentManager;->requestAuthorization(ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/IncidentManager$AuthListener;)V

    .line 498
    return-void
.end method

.method public blacklist requestAuthorization(ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/IncidentManager$AuthListener;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "listener"    # Landroid/os/IncidentManager$AuthListener;

    .line 508
    :try_start_0
    iget-object v0, p5, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_16

    .line 512
    iput-object p4, p5, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 513
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v1

    iget-object v7, p5, Landroid/os/IncidentManager$AuthListener;->mBinder:Landroid/os/IIncidentAuthListener$Stub;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_24

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move v6, p3

    .end local p1    # "callingUid":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "flags":I
    .local v2, "callingUid":I
    .local v3, "callingPackage":Ljava/lang/String;
    .local v6, "flags":I
    :try_start_11
    invoke-interface/range {v1 .. v7}, Landroid/os/IIncidentCompanion;->authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 518
    nop

    .line 519
    return-void

    .line 509
    .end local v2    # "callingUid":I
    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v6    # "flags":I
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "flags":I
    :cond_16
    move v2, p1

    move-object v3, p2

    move v6, p3

    .end local p1    # "callingUid":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v2    # "callingUid":I
    .restart local v3    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "flags":I
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Do not reuse AuthListener objects when calling requestAuthorization"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "callingUid":I
    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v6    # "flags":I
    .end local p0    # "this":Landroid/os/IncidentManager;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "listener":Landroid/os/IncidentManager$AuthListener;
    throw p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_21} :catch_21

    .line 515
    .restart local v2    # "callingUid":I
    .restart local v3    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "flags":I
    .restart local p0    # "this":Landroid/os/IncidentManager;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "listener":Landroid/os/IncidentManager$AuthListener;
    :catch_21
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .end local v2    # "callingUid":I
    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v6    # "flags":I
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catch_24
    move-exception v0

    move v2, p1

    move-object v3, p2

    move v6, p3

    move-object p1, v0

    .line 517
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v2    # "callingUid":I
    .restart local v3    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "flags":I
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_29
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist unregisterSection(I)V
    .registers 5
    .param p1, "id"    # I

    .line 624
    const-string v0, "IncidentManager"

    :try_start_2
    invoke-direct {p0}, Landroid/os/IncidentManager;->getIIncidentManagerLocked()Landroid/os/IIncidentManager;

    move-result-object v1

    .line 625
    .local v1, "service":Landroid/os/IIncidentManager;
    if-nez v1, :cond_f

    .line 626
    const-string/jumbo v2, "unregisterSection can\'t find incident binder service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void

    .line 629
    :cond_f
    invoke-interface {v1, p1}, Landroid/os/IIncidentManager;->unregisterSection(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_13

    .line 632
    .end local v1    # "service":Landroid/os/IIncidentManager;
    goto :goto_1a

    .line 630
    :catch_13
    move-exception v1

    .line 631
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "unregisterSection failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method
