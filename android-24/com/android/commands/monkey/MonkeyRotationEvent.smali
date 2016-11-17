.class public Lcom/android/commands/monkey/MonkeyRotationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyRotationEvent.java"


# instance fields
.field private final mPersist:Z

.field private final mRotationDegree:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "degree"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 39
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 40
    iput p1, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    #@6
    .line 41
    iput-boolean p2, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    #@8
    .line 38
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 4
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    .line 46
    if-lez p3, :cond_0

    #@2
    .line 47
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, ":Sending rotation degree="

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget v3, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 48
    const-string/jumbo v3, ", persist="

    #@19
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 48
    iget-boolean v3, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    #@1f
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 53
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    #@2c
    invoke-interface {p1, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    #@2f
    .line 54
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    #@31
    if-nez v1, :cond_1

    #@33
    .line 55
    invoke-interface {p1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 57
    :cond_1
    const/4 v1, 0x1

    #@37
    return v1

    #@38
    .line 58
    :catch_0
    move-exception v0

    #@39
    .line 59
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@3a
    return v1
.end method
