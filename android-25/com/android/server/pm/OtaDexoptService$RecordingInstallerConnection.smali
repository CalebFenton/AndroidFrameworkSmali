.class Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;
.super Lcom/android/internal/os/InstallerConnection;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OtaDexoptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingInstallerConnection"
.end annotation


# instance fields
.field public commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    #@3
    .line 418
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;->commands:Ljava/util/List;

    #@b
    .line 417
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Should not reach here"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public dumpProfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePaths"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Should not reach here"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public mergeProfiles(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Should not reach here"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 2
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Should not reach here"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public declared-synchronized transact(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;->commands:Ljava/util/List;

    #@3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6
    .line 428
    const-string/jumbo v0, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public waitForConnection()V
    .locals 2

    #@0
    .prologue
    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Should not reach here"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
