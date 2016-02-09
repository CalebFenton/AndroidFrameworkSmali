.class Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverEntry"
.end annotation


# instance fields
.field public final notifyForDescendants:Z

.field public final observer:Landroid/database/IContentObserver;

.field private final observersLock:Ljava/lang/Object;

.field public final pid:I

.field final synthetic this$1:Lcom/android/server/content/ContentService$ObserverNode;

.field public final uid:I

.field private final userHandle:I


# direct methods
.method static synthetic -get0(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/content/ContentService$ObserverNode;
    .param p2, "o"    # Landroid/database/IContentObserver;
    .param p3, "n"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "_uid"    # I
    .param p6, "_pid"    # I
    .param p7, "_userHandle"    # I

    #@0
    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$1:Lcom/android/server/content/ContentService$ObserverNode;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 954
    iput-object p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    #@7
    .line 955
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@9
    .line 956
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    #@b
    .line 957
    iput p6, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    #@d
    .line 958
    iput p7, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    #@f
    .line 959
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    #@11
    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@13
    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x0

    #@18
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 953
    :goto_0
    return-void

    #@1c
    .line 962
    :catch_0
    move-exception v0

    #@1d
    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->binderDied()V

    #@20
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 968
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$1:Lcom/android/server/content/ContentService$ObserverNode;

    #@5
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@7
    invoke-virtual {v0, v2}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 967
    return-void

    #@c
    .line 968
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "pidCounts"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 975
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    #@3
    iget v2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    #@5
    invoke-virtual {p6, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@8
    move-result v2

    #@9
    add-int/lit8 v2, v2, 0x1

    #@b
    invoke-virtual {p6, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@e
    .line 976
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    const-string/jumbo v1, ": pid="

    #@17
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 977
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    #@1c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1f
    const-string/jumbo v1, " uid="

    #@22
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    .line 978
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    #@27
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2a
    const-string/jumbo v1, " user="

    #@2d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 979
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    #@32
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@35
    const-string/jumbo v1, " target="

    #@38
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 981
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@3d
    if-eqz v1, :cond_0

    #@3f
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@41
    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@44
    move-result-object v0

    #@45
    .line 980
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@48
    move-result v0

    #@49
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@50
    .line 974
    return-void
.end method
