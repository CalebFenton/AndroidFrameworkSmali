.class public final Landroid/os/DdmSyncState;
.super Ljava/lang/Object;
.source "DdmSyncState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DdmSyncState$Stage;
    }
.end annotation


# static fields
.field private static blacklist sCurrentStageIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    sput v0, Landroid/os/DdmSyncState;->sCurrentStageIndex:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getInternalState()Ljava/lang/String;
    .registers 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "level = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/DdmSyncState;->sCurrentStageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v2, "stages = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Landroid/os/DdmSyncState$Stage;->values()[Landroid/os/DdmSyncState$Stage;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/os/DdmSyncState$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/os/DdmSyncState$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized blacklist getStage()Landroid/os/DdmSyncState$Stage;
    .registers 3

    const-class v0, Landroid/os/DdmSyncState;

    monitor-enter v0

    .line 82
    :try_start_3
    invoke-static {}, Landroid/os/DdmSyncState$Stage;->values()[Landroid/os/DdmSyncState$Stage;

    move-result-object v1

    sget v2, Landroid/os/DdmSyncState;->sCurrentStageIndex:I

    aget-object v1, v1, v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 82
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static declared-synchronized blacklist next(Landroid/os/DdmSyncState$Stage;)V
    .registers 7
    .param p0, "nextStage"    # Landroid/os/DdmSyncState$Stage;

    const-class v0, Landroid/os/DdmSyncState;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-static {}, Landroid/os/DdmSyncState$Stage;->values()[Landroid/os/DdmSyncState$Stage;

    move-result-object v1

    .line 101
    .local v1, "stages":[Landroid/os/DdmSyncState$Stage;
    sget v2, Landroid/os/DdmSyncState;->sCurrentStageIndex:I

    .line 102
    .local v2, "rover":I
    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_13

    aget-object v3, v1, v2

    if-eq v3, p0, :cond_13

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 106
    :cond_13
    array-length v3, v1

    if-eq v2, v3, :cond_1e

    aget-object v3, v1, v2

    if-ne v3, p0, :cond_1e

    .line 111
    sput v2, Landroid/os/DdmSyncState;->sCurrentStageIndex:I
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_45

    .line 112
    monitor-exit v0

    return-void

    .line 107
    :cond_1e
    :try_start_1e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot go to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 108
    invoke-static {}, Landroid/os/DdmSyncState;->getInternalState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    .end local v1    # "stages":[Landroid/os/DdmSyncState$Stage;
    .end local v2    # "rover":I
    .end local p0    # "nextStage":Landroid/os/DdmSyncState$Stage;
    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1e .. :try_end_47} :catchall_45

    throw p0
.end method

.method public static blacklist reset()V
    .registers 1

    .line 89
    const/4 v0, 0x0

    sput v0, Landroid/os/DdmSyncState;->sCurrentStageIndex:I

    .line 90
    return-void
.end method
