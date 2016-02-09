.class Lcom/android/commands/am/Am$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field private mFinished:Z

.field final synthetic this$0:Lcom/android/commands/am/Am;


# direct methods
.method private constructor <init>(Lcom/android/commands/am/Am;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/commands/am/Am;

    #@0
    .prologue
    .line 1748
    iput-object p1, p0, Lcom/android/commands/am/Am$IntentReceiver;->this$0:Lcom/android/commands/am/Am;

    #@2
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@5
    .line 1749
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/commands/am/Am$IntentReceiver;->mFinished:Z

    #@8
    .line 1748
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$IntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/am/Am;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/commands/am/Am$IntentReceiver;-><init>(Lcom/android/commands/am/Am;)V

    #@3
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 1754
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Broadcast completed: result="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 1755
    .local v0, "line":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ", data=\""

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "\""

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 1756
    :cond_0
    if-eqz p4, :cond_1

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, ", extras: "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .line 1757
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@51
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 1758
    monitor-enter p0

    #@55
    .line 1759
    const/4 v1, 0x1

    #@56
    :try_start_0
    iput-boolean v1, p0, Lcom/android/commands/am/Am$IntentReceiver;->mFinished:Z

    #@58
    .line 1760
    invoke-virtual {p0}, Lcom/android/commands/am/Am$IntentReceiver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5b
    monitor-exit p0

    #@5c
    .line 1753
    return-void

    #@5d
    .line 1758
    :catchall_0
    move-exception v1

    #@5e
    monitor-exit p0

    #@5f
    throw v1
.end method

.method public declared-synchronized waitForFinish()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1766
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/commands/am/Am$IntentReceiver;->mFinished:Z

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-virtual {p0}, Lcom/android/commands/am/Am$IntentReceiver;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 1767
    :catch_0
    move-exception v0

    #@a
    .line 1768
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 1764
    return-void
.end method
