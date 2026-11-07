.class Landroid/telephony/TelephonyScanManager$1;
.super Landroid/os/Handler;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telephony/TelephonyScanManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 2
    .param p0, "cb"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 140
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$1([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 4
    .param p0, "ci"    # [Landroid/telephony/CellInfo;
    .param p1, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyScanManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onResults(Ljava/util/List;)V

    .line 177
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$2(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 4
    .param p0, "errorCode"    # I
    .param p1, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyScanManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    .line 188
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$3(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 199
    const-string v0, "TelephonyScanManager"

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onComplete()V

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .line 125
    const-string/jumbo v0, "message cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_56

    .line 128
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    :try_start_13
    iget-object v2, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v2}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 130
    iget-object v2, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v2}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 134
    .local v2, "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    if-nez v2, :cond_2e

    goto :goto_45

    .line 135
    :cond_2e
    invoke-static {v2}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmExecutor(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 136
    .local v3, "e":Ljava/util/concurrent/Executor;
    invoke-static {v2}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmCallback(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v4
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_53

    .line 137
    .local v4, "cb":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    if-eqz v3, :cond_45

    if-nez v4, :cond_3b

    goto :goto_45

    .line 139
    :cond_3b
    :try_start_3b
    new-instance v5, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_43
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3b .. :try_end_43} :catch_44
    .catchall {:try_start_3b .. :try_end_43} :catchall_53

    .line 143
    goto :goto_45

    .line 141
    :catch_44
    move-exception v5

    .line 129
    .end local v2    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .end local v3    # "e":Ljava/util/concurrent/Executor;
    .end local v4    # "cb":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    :cond_45
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 146
    .end local v1    # "i":I
    :cond_48
    :try_start_48
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    throw v1

    .line 152
    :cond_56
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 153
    :try_start_5d
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 154
    .local v1, "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_142

    .line 155
    if-nez v1, :cond_95

    .line 156
    const-string v0, "TelephonyScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpceted message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as there is no NetworkScanInfo with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 161
    :cond_95
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmCallback(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v0

    .line 162
    .local v0, "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmExecutor(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 164
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_146

    .line 210
    const-string v3, "TelephonyScanManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_141

    .line 198
    :pswitch_c2
    :try_start_c2
    new-instance v3, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 202
    iget-object v3, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v3}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d1} :catch_e1

    .line 203
    :try_start_d1
    iget-object v4, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v4}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 204
    monitor-exit v3

    .line 207
    goto :goto_141

    .line 204
    :catchall_de
    move-exception v4

    monitor-exit v3
    :try_end_e0
    .catchall {:try_start_d1 .. :try_end_e0} :catchall_de

    .end local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .end local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/telephony/TelephonyScanManager$1;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_e0
    throw v4
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e1} :catch_e1

    .line 205
    .restart local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .restart local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/telephony/TelephonyScanManager$1;
    .restart local p1    # "message":Landroid/os/Message;
    :catch_e1
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onComplete"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_141

    .line 184
    :pswitch_ea
    :try_start_ea
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 185
    .local v3, "errorCode":I
    new-instance v4, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;-><init>(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    iget-object v4, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v4}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_fb} :catch_10b

    .line 190
    :try_start_fb
    iget-object v5, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v5}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 191
    monitor-exit v4

    .line 194
    .end local v3    # "errorCode":I
    goto :goto_141

    .line 191
    .restart local v3    # "errorCode":I
    :catchall_108
    move-exception v5

    monitor-exit v4
    :try_end_10a
    .catchall {:try_start_fb .. :try_end_10a} :catchall_108

    .end local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .end local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/telephony/TelephonyScanManager$1;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_10a
    throw v5
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10b} :catch_10b

    .line 192
    .end local v3    # "errorCode":I
    .restart local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .restart local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/telephony/TelephonyScanManager$1;
    .restart local p1    # "message":Landroid/os/Message;
    :catch_10b
    move-exception v3

    .line 193
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onError"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_141

    .line 168
    :pswitch_114
    :try_start_114
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 169
    .local v3, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "scanResult"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 170
    .local v4, "parcelables":[Landroid/os/Parcelable;
    array-length v5, v4

    new-array v5, v5, [Landroid/telephony/CellInfo;

    .line 171
    .local v5, "ci":[Landroid/telephony/CellInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_123
    array-length v7, v4

    if-ge v6, v7, :cond_12f

    .line 172
    aget-object v7, v4, v6

    check-cast v7, Landroid/telephony/CellInfo;

    aput-object v7, v5, v6

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_123

    .line 174
    .end local v6    # "i":I
    :cond_12f
    new-instance v6, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda1;-><init>([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_137} :catch_138

    .line 180
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "parcelables":[Landroid/os/Parcelable;
    .end local v5    # "ci":[Landroid/telephony/CellInfo;
    goto :goto_141

    .line 178
    :catch_138
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onResults"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 213
    :goto_141
    return-void

    .line 154
    .end local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .end local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :catchall_142
    move-exception v1

    :try_start_143
    monitor-exit v0
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    throw v1

    nop

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_114
        :pswitch_ea
        :pswitch_c2
        :pswitch_114
    .end packed-switch
.end method
