.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 40
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    #@a
    .line 44
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@11
    .line 47
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@18
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@1a
    .line 60
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@1c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@1e
    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@23
    .line 58
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    #@0
    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v1

    #@6
    .line 89
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 90
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/os/Message;

    #@11
    const-string/jumbo v3, "AdnCace reset"

    #@14
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@17
    .line 89
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    #@1f
    .line 87
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 78
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    .line 79
    .local v2, "size":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@a
    .line 80
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/util/ArrayList;

    #@12
    .line 81
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    #@14
    new-instance v4, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v5, "AdnCache reset"

    #@19
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1f
    .line 82
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    #@22
    .line 79
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 84
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@2a
    .line 77
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 307
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_0

    #@2
    .line 308
    return-void

    #@3
    .line 311
    :cond_0
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 312
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/os/Message;

    #@10
    .line 314
    .local v2, "waiter":Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@12
    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@14
    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@17
    .line 315
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 311
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 305
    .end local v2    # "waiter":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    if-eqz p1, :cond_0

    #@2
    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@a
    move-result-object v1

    #@b
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d
    .line 126
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public extensionEfForEf(I)I
    .locals 1
    .param p1, "efid"    # I

    #@0
    .prologue
    const/16 v0, 0x6f4a

    #@2
    .line 111
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 118
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 112
    :sswitch_0
    const/16 v0, 0x6fc8

    #@9
    return v0

    #@a
    .line 113
    :sswitch_1
    return v0

    #@b
    .line 114
    :sswitch_2
    const/16 v0, 0x6f4c

    #@d
    return v0

    #@e
    .line 115
    :sswitch_3
    const/16 v0, 0x6f4b

    #@10
    return v0

    #@11
    .line 116
    :sswitch_4
    return v0

    #@12
    .line 117
    :sswitch_5
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 111
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_5
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_4
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 327
    iget v6, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v6, :pswitch_data_0

    #@6
    .line 323
    :goto_0
    return-void

    #@7
    .line 330
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v1, Landroid/os/AsyncResult;

    #@b
    .line 331
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@d
    .line 334
    .local v2, "efid":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Ljava/util/ArrayList;

    #@15
    .line 335
    .local v5, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    #@1a
    .line 337
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1c
    if-nez v6, :cond_0

    #@1e
    .line 338
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    #@20
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@22
    check-cast v6, Ljava/util/ArrayList;

    #@24
    invoke-virtual {v7, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@27
    .line 340
    :cond_0
    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    #@2a
    goto :goto_0

    #@2b
    .line 343
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    .end local v5    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v1, Landroid/os/AsyncResult;

    #@2f
    .line 344
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@31
    .line 345
    .restart local v2    # "efid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@33
    .line 346
    .local v3, "index":I
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@35
    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@37
    .line 348
    .local v0, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@39
    if-nez v6, :cond_1

    #@3b
    .line 349
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    #@3d
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v6

    #@41
    check-cast v6, Ljava/util/ArrayList;

    #@43
    add-int/lit8 v7, v3, -0x1

    #@45
    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 350
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@4a
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->invalidateCache()V

    #@4d
    .line 353
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@4f
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    check-cast v4, Landroid/os/Message;

    #@55
    .line 354
    .local v4, "response":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@57
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    #@5a
    .line 356
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5c
    invoke-static {v4, v8, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@5f
    .line 357
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@62
    goto :goto_0

    #@63
    .line 327
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 250
    const/16 v2, 0x4f30

    #@3
    if-ne p1, v2, :cond_1

    #@5
    .line 251
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@7
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    #@a
    move-result-object v0

    #@b
    .line 257
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@d
    .line 258
    if-eqz p3, :cond_0

    #@f
    .line 259
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@12
    move-result-object v2

    #@13
    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@15
    .line 260
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 263
    :cond_0
    return-void

    #@19
    .line 253
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    #@1e
    .line 268
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/util/ArrayList;

    #@26
    .line 270
    .local v1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_3

    #@28
    .line 274
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 275
    return-void

    #@2c
    .line 280
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    #@2e
    .end local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@31
    .line 281
    .restart local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@39
    .line 286
    if-gez p2, :cond_5

    #@3b
    .line 289
    if-eqz p3, :cond_4

    #@3d
    .line 290
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@40
    move-result-object v2

    #@41
    .line 291
    new-instance v3, Ljava/lang/RuntimeException;

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "EF is not known ADN-like EF:"

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5a
    .line 290
    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5c
    .line 292
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@5f
    .line 295
    :cond_4
    return-void

    #@60
    .line 298
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@62
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@64
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@67
    .line 299
    const/4 v3, 0x1

    #@68
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    #@6b
    move-result-object v3

    #@6c
    .line 298
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    #@6f
    .line 246
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    #@a
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    #@d
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    #@10
    .line 68
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    #@3
    move-result v3

    #@4
    .line 144
    .local v3, "extensionEF":I
    if-gez v3, :cond_0

    #@6
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "EF is not known ADN-like EF:"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@1d
    .line 146
    return-void

    #@1e
    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Landroid/os/Message;

    #@26
    .line 150
    .local v7, "pendingResponse":Landroid/os/Message;
    if-eqz v7, :cond_1

    #@28
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v1, "Have pending update for EF:"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@3f
    .line 152
    return-void

    #@40
    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@45
    .line 157
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@47
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@49
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@4c
    .line 159
    const/4 v1, 0x2

    #@4d
    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@50
    move-result-object v6

    #@51
    move-object v1, p2

    #@52
    move v2, p1

    #@53
    move v4, p3

    #@54
    move-object v5, p4

    #@55
    .line 157
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@58
    .line 141
    return-void
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    #@3
    move-result v4

    #@4
    .line 182
    .local v4, "extensionEF":I
    if-gez v4, :cond_0

    #@6
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "EF is not known ADN-like EF:"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    move-object/from16 v0, p5

    #@1c
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@1f
    .line 184
    return-void

    #@20
    .line 189
    :cond_0
    const/16 v1, 0x4f30

    #@22
    if-ne p1, v1, :cond_1

    #@24
    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@26
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    #@29
    move-result-object v11

    #@2a
    .line 195
    .local v11, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-nez v11, :cond_2

    #@2c
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "Adn list not exist for EF:"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    move-object/from16 v0, p5

    #@42
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@45
    .line 197
    return-void

    #@46
    .line 192
    .end local v11    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    #@49
    move-result-object v11

    #@4a
    .restart local v11    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    #@4b
    .line 200
    :cond_2
    const/4 v5, -0x1

    #@4c
    .line 201
    .local v5, "index":I
    const/4 v8, 0x1

    #@4d
    .line 202
    .local v8, "count":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v10

    #@51
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_3

    #@57
    .line 203
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@5d
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_4

    #@63
    .line 204
    move v5, v8

    #@64
    .line 210
    :cond_3
    const/4 v1, -0x1

    #@65
    if-ne v5, v1, :cond_5

    #@67
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "Adn record don\'t exist for "

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    move-object/from16 v0, p5

    #@7d
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@80
    .line 212
    return-void

    #@81
    .line 207
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@83
    goto :goto_1

    #@84
    .line 215
    :cond_5
    const/16 v1, 0x4f30

    #@86
    if-ne p1, v1, :cond_6

    #@88
    .line 216
    add-int/lit8 v1, v5, -0x1

    #@8a
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v9

    #@8e
    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@90
    .line 217
    .local v9, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget p1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    #@92
    .line 218
    iget v4, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@94
    .line 219
    iget v5, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    #@96
    .line 221
    move-object/from16 v0, p3

    #@98
    iput p1, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    #@9a
    .line 222
    move-object/from16 v0, p3

    #@9c
    iput v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@9e
    .line 223
    move-object/from16 v0, p3

    #@a0
    iput v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    #@a2
    .line 226
    .end local v9    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@a4
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a7
    move-result-object v12

    #@a8
    check-cast v12, Landroid/os/Message;

    #@aa
    .line 228
    .local v12, "pendingResponse":Landroid/os/Message;
    if-eqz v12, :cond_7

    #@ac
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v2, "Have pending update for EF:"

    #@b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v1

    #@b8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    move-object/from16 v0, p5

    #@c2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@c5
    .line 230
    return-void

    #@c6
    .line 233
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@c8
    move-object/from16 v0, p5

    #@ca
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@cd
    .line 235
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@cf
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@d1
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@d4
    .line 237
    const/4 v2, 0x2

    #@d5
    move-object/from16 v0, p3

    #@d7
    invoke-virtual {p0, v2, p1, v5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@da
    move-result-object v7

    #@db
    move-object/from16 v2, p3

    #@dd
    move v3, p1

    #@de
    move-object/from16 v6, p4

    #@e0
    .line 235
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@e3
    .line 177
    return-void
.end method
