.class Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager$SyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncNotificationInfo"
.end annotation


# instance fields
.field public isActive:Z

.field public startTime:Ljava/lang/Long;

.field final synthetic this$1:Lcom/android/server/content/SyncManager$SyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/content/SyncManager$SyncHandler;

    #@0
    .prologue
    .line 2174
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2176
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    #@8
    .line 2180
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    #@b
    .line 2174
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2189
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    #@8
    .line 2190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 2183
    const-string/jumbo v0, "isActive "

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v0

    #@7
    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ", startTime "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    .line 2182
    return-void
.end method
