.class public Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
.super Ljava/lang/Object;
.source "PendingTransactionActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/PendingTransactionActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopInfo"
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityStopInfo"


# instance fields
.field private greylist-max-o mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mPersistentState:Landroid/os/PersistableBundle;

.field private greylist-max-o mState:Landroid/os/Bundle;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist collectBundleStates()Ljava/lang/String;
    .registers 4

    .line 120
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 121
    .local v0, "writer":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 122
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v2, "Bundle stats:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    invoke-static {v1, v2}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    .line 124
    const-string v2, "PersistableBundle stats:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-static {v1, v2}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->stripTrailing()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 135
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityClient;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_13

    .line 157
    nop

    .line 158
    return-void

    .line 137
    :catch_13
    move-exception v0

    .line 139
    .local v0, "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->collectBundleStates()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "bundleStats":Ljava/lang/String;
    move-object v2, v0

    .line 142
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroid/os/TransactionTooLargeException;

    const-string v4, "ActivityStopInfo"

    if-eqz v3, :cond_5b

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v5

    .line 147
    iget-object v5, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v5, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x18

    if-ge v5, v6, :cond_5a

    .line 148
    const-string v5, "App sent too much data in instance state, so it was ignored"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    return-void

    .line 152
    .end local v3    # "message":Ljava/lang/String;
    :cond_5a
    goto :goto_5e

    .line 154
    :cond_5b
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_5e
    throw v2
.end method

.method public greylist-max-o setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 104
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 105
    return-void
.end method

.method public greylist-max-o setDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 116
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mDescription:Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method public greylist-max-o setPersistentState(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "persistentState"    # Landroid/os/PersistableBundle;

    .line 112
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    .line 113
    return-void
.end method

.method public greylist-max-o setState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 108
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    .line 109
    return-void
.end method
