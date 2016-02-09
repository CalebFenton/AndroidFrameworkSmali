.class final Lcom/android/server/power/PowerManagerService$WakeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeLock"
.end annotation


# instance fields
.field public mDisabled:Z

.field public mFlags:I

.field public mHistoryTag:Ljava/lang/String;

.field public final mLock:Landroid/os/IBinder;

.field public mNotifiedAcquired:Z

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "lock"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "ownerUid"    # I
    .param p9, "ownerPid"    # I

    #@0
    .prologue
    .line 2841
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2843
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    #@7
    .line 2844
    iput p3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@9
    .line 2845
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@b
    .line 2846
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@d
    .line 2847
    invoke-static {p6}, Lcom/android/server/power/PowerManagerService;->-wrap0(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@13
    .line 2848
    iput-object p7, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@15
    .line 2849
    iput p8, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@17
    .line 2850
    iput p9, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@19
    .line 2842
    return-void
.end method

.method private getLockFlagsString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2925
    const-string/jumbo v0, ""

    #@3
    .line 2926
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@5
    const/high16 v2, 0x10000000

    #@7
    and-int/2addr v1, v2

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2927
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " ACQUIRE_CAUSES_WAKEUP"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 2929
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@20
    const/high16 v2, 0x20000000

    #@22
    and-int/2addr v1, v2

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 2930
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, " ON_AFTER_RELEASE"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 2932
    :cond_1
    return-object v0
.end method

.method private getLockLevelString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2904
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 2920
    const-string/jumbo v0, "???                           "

    #@c
    return-object v0

    #@d
    .line 2906
    :sswitch_0
    const-string/jumbo v0, "FULL_WAKE_LOCK                "

    #@10
    return-object v0

    #@11
    .line 2908
    :sswitch_1
    const-string/jumbo v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    #@14
    return-object v0

    #@15
    .line 2910
    :sswitch_2
    const-string/jumbo v0, "SCREEN_DIM_WAKE_LOCK          "

    #@18
    return-object v0

    #@19
    .line 2912
    :sswitch_3
    const-string/jumbo v0, "PARTIAL_WAKE_LOCK             "

    #@1c
    return-object v0

    #@1d
    .line 2914
    :sswitch_4
    const-string/jumbo v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    #@20
    return-object v0

    #@21
    .line 2916
    :sswitch_5
    const-string/jumbo v0, "DOZE_WAKE_LOCK                "

    #@24
    return-object v0

    #@25
    .line 2918
    :sswitch_6
    const-string/jumbo v0, "DRAW_WAKE_LOCK                "

    #@28
    return-object v0

    #@29
    .line 2904
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    #@0
    .prologue
    .line 2855
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0, p0}, Lcom/android/server/power/PowerManagerService;->-wrap18(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@5
    .line 2854
    return-void
.end method

.method public hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z
    .locals 2
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2860
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@3
    if-ne v1, p1, :cond_0

    #@5
    .line 2861
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    .line 2860
    if-eqz v1, :cond_0

    #@d
    .line 2862
    invoke-virtual {p0, p3}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    #@10
    move-result v1

    #@11
    .line 2860
    if-eqz v1, :cond_0

    #@13
    .line 2863
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@15
    if-ne v1, p4, :cond_0

    #@17
    .line 2864
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@19
    if-ne v1, p5, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 2860
    :cond_0
    return v0
.end method

.method public hasSameWorkSource(Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 2888
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@2
    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2897
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getLockLevelString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 2898
    const-string/jumbo v1, " \'"

    #@10
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 2898
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@16
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 2898
    const-string/jumbo v1, "\'"

    #@1d
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 2898
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 2898
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@2b
    if-eqz v0, :cond_0

    #@2d
    const-string/jumbo v0, " DISABLED"

    #@30
    .line 2897
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 2899
    const-string/jumbo v1, " (uid="

    #@37
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 2899
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@3d
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 2899
    const-string/jumbo v1, ", pid="

    #@44
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 2899
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@4a
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 2899
    const-string/jumbo v1, ", ws="

    #@51
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 2899
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@57
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 2899
    const-string/jumbo v1, ")"

    #@5e
    .line 2897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    return-object v0

    #@67
    .line 2898
    :cond_0
    const-string/jumbo v0, ""

    #@6a
    goto :goto_0
.end method

.method public updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p5, "historyTag"    # Ljava/lang/String;
    .param p6, "ownerUid"    # I
    .param p7, "ownerPid"    # I

    #@0
    .prologue
    .line 2869
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2870
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Existing wake lock package name changed: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 2871
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@18
    .line 2870
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 2871
    const-string/jumbo v2, " to "

    #@1f
    .line 2870
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 2873
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@31
    if-eq v0, p6, :cond_1

    #@33
    .line 2874
    new-instance v0, Ljava/lang/IllegalStateException;

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v2, "Existing wake lock uid changed: "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 2875
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@43
    .line 2874
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 2875
    const-string/jumbo v2, " to "

    #@4a
    .line 2874
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@59
    throw v0

    #@5a
    .line 2877
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@5c
    if-eq v0, p7, :cond_2

    #@5e
    .line 2878
    new-instance v0, Ljava/lang/IllegalStateException;

    #@60
    new-instance v1, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v2, "Existing wake lock pid changed: "

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    .line 2879
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@6e
    .line 2878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    .line 2879
    const-string/jumbo v2, " to "

    #@75
    .line 2878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0

    #@85
    .line 2881
    :cond_2
    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@87
    .line 2882
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@89
    .line 2883
    invoke-virtual {p0, p4}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    #@8c
    .line 2884
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@8e
    .line 2868
    return-void
.end method

.method public updateWorkSource(Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 2892
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-wrap0(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@6
    .line 2891
    return-void
.end method
