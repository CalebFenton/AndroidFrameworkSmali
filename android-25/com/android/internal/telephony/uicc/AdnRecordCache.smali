.class public Lcom/android/internal/telephony/uicc/AdnRecordCache;
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
    .line 313
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_0

    #@2
    .line 314
    return-void

    #@3
    .line 317
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
    .line 318
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/os/Message;

    #@10
    .line 320
    .local v2, "waiter":Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@12
    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@14
    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@17
    .line 321
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 317
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 311
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
    .line 333
    iget v6, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v6, :pswitch_data_0

    #@6
    .line 329
    :goto_0
    return-void

    #@7
    .line 336
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v1, Landroid/os/AsyncResult;

    #@b
    .line 337
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@d
    .line 340
    .local v2, "efid":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Ljava/util/ArrayList;

    #@15
    .line 341
    .local v5, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    #@1a
    .line 343
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1c
    if-nez v6, :cond_0

    #@1e
    .line 344
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    #@20
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@22
    check-cast v6, Ljava/util/ArrayList;

    #@24
    invoke-virtual {v7, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@27
    .line 346
    :cond_0
    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    #@2a
    goto :goto_0

    #@2b
    .line 349
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    .end local v5    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v1, Landroid/os/AsyncResult;

    #@2f
    .line 350
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@31
    .line 351
    .restart local v2    # "efid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@33
    .line 352
    .local v3, "index":I
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@35
    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@37
    .line 354
    .local v0, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@39
    if-nez v6, :cond_1

    #@3b
    .line 355
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
    .line 356
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@4a
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->invalidateCache()V

    #@4d
    .line 359
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@4f
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    check-cast v4, Landroid/os/Message;

    #@55
    .line 360
    .local v4, "response":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@57
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    #@5a
    .line 362
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5c
    invoke-static {v4, v8, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@5f
    .line 363
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@62
    goto :goto_0

    #@63
    .line 333
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
    .line 255
    const/16 v2, 0x4f30

    #@3
    if-ne p1, v2, :cond_1

    #@5
    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@7
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    #@a
    move-result-object v0

    #@b
    .line 262
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@d
    .line 263
    if-eqz p3, :cond_0

    #@f
    .line 264
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@12
    move-result-object v2

    #@13
    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@15
    .line 265
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 268
    :cond_0
    return-void

    #@19
    .line 258
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    #@1e
    .line 273
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/util/ArrayList;

    #@26
    .line 275
    .local v1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_3

    #@28
    .line 279
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 280
    return-void

    #@2c
    .line 285
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    #@2e
    .end local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@31
    .line 286
    .restart local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@39
    .line 291
    if-gez p2, :cond_5

    #@3b
    .line 294
    if-eqz p3, :cond_4

    #@3d
    .line 295
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@40
    move-result-object v2

    #@41
    .line 296
    new-instance v3, Ljava/lang/RuntimeException;

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "EF is not known ADN-like EF:0x"

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    .line 296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@62
    .line 295
    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@64
    .line 298
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@67
    .line 301
    :cond_4
    return-void

    #@68
    .line 304
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@6a
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@6c
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@6f
    .line 305
    const/4 v3, 0x1

    #@70
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    #@73
    move-result-object v3

    #@74
    .line 304
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    #@77
    .line 251
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
    const-string/jumbo v1, "EF is not known ADN-like EF:0x"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@25
    .line 147
    return-void

    #@26
    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Landroid/os/Message;

    #@2e
    .line 151
    .local v7, "pendingResponse":Landroid/os/Message;
    if-eqz v7, :cond_1

    #@30
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v1, "Have pending update for EF:0x"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@4f
    .line 154
    return-void

    #@50
    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@52
    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@55
    .line 159
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@57
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@59
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@5c
    .line 161
    const/4 v1, 0x2

    #@5d
    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@60
    move-result-object v6

    #@61
    move-object v1, p2

    #@62
    move v2, p1

    #@63
    move v4, p3

    #@64
    move-object v5, p4

    #@65
    .line 159
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@68
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
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    #@3
    move-result v4

    #@4
    .line 184
    .local v4, "extensionEF":I
    if-gez v4, :cond_0

    #@6
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "EF is not known ADN-like EF:0x"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    move-object/from16 v0, p5

    #@24
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@27
    .line 187
    return-void

    #@28
    .line 192
    :cond_0
    const/16 v1, 0x4f30

    #@2a
    if-ne p1, v1, :cond_1

    #@2c
    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #@2e
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    #@31
    move-result-object v11

    #@32
    .line 198
    .local v11, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-nez v11, :cond_2

    #@34
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v2, "Adn list not exist for EF:0x"

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    move-object/from16 v0, p5

    #@52
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@55
    .line 201
    return-void

    #@56
    .line 195
    .end local v11    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    #@59
    move-result-object v11

    #@5a
    .restart local v11    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    #@5b
    .line 204
    :cond_2
    const/4 v5, -0x1

    #@5c
    .line 205
    .local v5, "index":I
    const/4 v8, 0x1

    #@5d
    .line 206
    .local v8, "count":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@60
    move-result-object v10

    #@61
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@64
    move-result v1

    #@65
    if-eqz v1, :cond_3

    #@67
    .line 207
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6a
    move-result-object v1

    #@6b
    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@6d
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_4

    #@73
    .line 208
    move v5, v8

    #@74
    .line 214
    :cond_3
    const/4 v1, -0x1

    #@75
    if-ne v5, v1, :cond_5

    #@77
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v2, "Adn record don\'t exist for "

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    move-object/from16 v0, p5

    #@8d
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@90
    .line 216
    return-void

    #@91
    .line 211
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@93
    goto :goto_1

    #@94
    .line 219
    :cond_5
    const/16 v1, 0x4f30

    #@96
    if-ne p1, v1, :cond_6

    #@98
    .line 220
    add-int/lit8 v1, v5, -0x1

    #@9a
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v9

    #@9e
    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@a0
    .line 221
    .local v9, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget p1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    #@a2
    .line 222
    iget v4, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@a4
    .line 223
    iget v5, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    #@a6
    .line 225
    move-object/from16 v0, p3

    #@a8
    iput p1, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    #@aa
    .line 226
    move-object/from16 v0, p3

    #@ac
    iput v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@ae
    .line 227
    move-object/from16 v0, p3

    #@b0
    iput v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    #@b2
    .line 230
    .end local v9    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@b4
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b7
    move-result-object v12

    #@b8
    check-cast v12, Landroid/os/Message;

    #@ba
    .line 232
    .local v12, "pendingResponse":Landroid/os/Message;
    if-eqz v12, :cond_7

    #@bc
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v2, "Have pending update for EF:0x"

    #@c4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v1

    #@c8
    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    move-object/from16 v0, p5

    #@da
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    #@dd
    .line 235
    return-void

    #@de
    .line 238
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    #@e0
    move-object/from16 v0, p5

    #@e2
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e5
    .line 240
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@e7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@e9
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@ec
    .line 242
    const/4 v2, 0x2

    #@ed
    move-object/from16 v0, p3

    #@ef
    invoke-virtual {p0, v2, p1, v5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@f2
    move-result-object v7

    #@f3
    move-object/from16 v2, p3

    #@f5
    move v3, p1

    #@f6
    move-object/from16 v6, p4

    #@f8
    .line 240
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@fb
    .line 179
    return-void
.end method
