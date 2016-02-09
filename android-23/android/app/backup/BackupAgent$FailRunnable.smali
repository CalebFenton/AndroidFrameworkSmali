.class Landroid/app/backup/BackupAgent$FailRunnable;
.super Ljava/lang/Object;
.source "BackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FailRunnable"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 960
    iput-object p1, p0, Landroid/app/backup/BackupAgent$FailRunnable;->mMessage:Ljava/lang/String;

    #@5
    .line 959
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 965
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    iget-object v1, p0, Landroid/app/backup/BackupAgent$FailRunnable;->mMessage:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method
