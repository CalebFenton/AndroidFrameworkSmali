.class Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ContentProviderRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalProcessHandle"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExternalProcessHanldle"


# instance fields
.field private mAcquisitionCount:I

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/am/ContentProviderRecord;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    #@2
    return p1
.end method

.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 241
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    #@7
    .line 243
    const/4 v1, 0x0

    #@8
    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 240
    :goto_0
    return-void

    #@c
    .line 244
    :catch_0
    move-exception v0

    #@d
    .line 245
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "ExternalProcessHanldle"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Couldn\'t register for death for token: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    #@7
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 257
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    #@f
    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@11
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    #@13
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 258
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    #@1b
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    #@1d
    invoke-static {v0, v2}, Lcom/android/server/am/ContentProviderRecord;->-wrap0(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v1

    #@21
    .line 254
    return-void

    #@22
    .line 255
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public unlinkFromOwnDeathLocked()V
    .locals 2

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6
    .line 249
    return-void
.end method
