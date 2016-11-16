.class Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
.super Ljava/lang/Object;
.source "BackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SharedPrefsSynchronizer"
.end annotation


# instance fields
.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupAgent;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/backup/BackupAgent;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->this$0:Landroid/app/backup/BackupAgent;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 144
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@b
    iput-object v0, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@d
    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 148
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    #@3
    .line 149
    iget-object v0, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@8
    .line 147
    return-void
.end method
