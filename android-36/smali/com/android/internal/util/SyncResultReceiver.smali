.class public final Lcom/android/internal/util/SyncResultReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "SyncResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    }
.end annotation


# static fields
.field private static final blacklist EXTRA:Ljava/lang/String; = "EXTRA"


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mResult:I

.field private final blacklist mTimeoutMs:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "timeoutMs"    # I

    .line 49
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 50
    iput p1, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    .line 51
    return-void
.end method

.method public static blacklist bundleFor(I)Landroid/os/Bundle;
    .registers 3
    .param p0, "value"    # I

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    return-object v0
.end method

.method public static blacklist bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;
    .registers 3
    .param p0, "value"    # Landroid/os/Parcelable;

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    return-object v0
.end method

.method public static blacklist bundleFor(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method public static blacklist bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 167
    .local p0, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    return-object v0
.end method

.method public static blacklist bundleFor([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p0, "value"    # [Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    return-object v0
.end method

.method private blacklist waitResult()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget v2, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 61
    nop

    .line 62
    return-void

    .line 56
    :cond_10
    new-instance v1, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not called in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;-><init>(Ljava/lang/String;Lcom/android/internal/util/SyncResultReceiver-IA;)V

    .end local p0    # "this":Lcom/android/internal/util/SyncResultReceiver;
    throw v1
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_31} :catch_31

    .line 58
    .restart local p0    # "this":Lcom/android/internal/util/SyncResultReceiver;
    :catch_31
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 60
    new-instance v2, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;

    const-string v3, "Interrupted"

    invoke-direct {v2, v3, v0}, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;-><init>(Ljava/lang/String;Lcom/android/internal/util/SyncResultReceiver-IA;)V

    throw v2
.end method


# virtual methods
.method public blacklist getIntResult()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    .line 69
    iget v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mResult:I

    return v0
.end method

.method public blacklist getOptionalExtraIntResult(I)I
    .registers 4
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_19

    .line 118
    :cond_12
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 116
    :cond_19
    :goto_19
    return p1
.end method

.method public blacklist getParcelableListResult()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">()",
            "Ljava/util/ArrayList<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    .line 105
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public blacklist getParcelableResult()Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">()TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    .line 96
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public blacklist getStringArrayResult()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    .line 87
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public blacklist getStringResult()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public blacklist send(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 123
    iput p1, p0, Lcom/android/internal/util/SyncResultReceiver;->mResult:I

    .line 124
    iput-object p2, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    .line 125
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    return-void
.end method
