.class public Lcom/android/internal/util/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TC;>;"
        }
    .end annotation
.end field

.field private mFirst64Removed:J

.field private mNotificationLevel:I

.field private final mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback",
            "<TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private mRemainderRemoved:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback",
            "<TC;TT;TA;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "notifier":Lcom/android/internal/util/CallbackRegistry$NotifierCallback;, "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<TC;TT;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@a
    .line 54
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    #@e
    .line 78
    iput-object p1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    #@10
    .line 77
    return-void
.end method

.method private isRemovedLocked(I)Z
    .locals 12
    .param p1, "index"    # I

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v8, 0x1

    #@2
    const-wide/16 v10, 0x0

    #@4
    const/4 v5, 0x1

    #@5
    const/4 v6, 0x0

    #@6
    .line 229
    const/16 v7, 0x40

    #@8
    if-ge p1, v7, :cond_1

    #@a
    .line 231
    shl-long v0, v8, p1

    #@c
    .line 232
    .local v0, "bitMask":J
    iget-wide v8, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    #@e
    and-long/2addr v8, v0

    #@f
    cmp-long v7, v8, v10

    #@11
    if-eqz v7, :cond_0

    #@13
    :goto_0
    return v5

    #@14
    :cond_0
    move v5, v6

    #@15
    goto :goto_0

    #@16
    .line 233
    .end local v0    # "bitMask":J
    :cond_1
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@18
    if-nez v7, :cond_2

    #@1a
    .line 235
    return v6

    #@1b
    .line 237
    :cond_2
    div-int/lit8 v7, p1, 0x40

    #@1d
    add-int/lit8 v4, v7, -0x1

    #@1f
    .line 238
    .local v4, "maskIndex":I
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@21
    array-length v7, v7

    #@22
    if-lt v4, v7, :cond_3

    #@24
    .line 240
    return v6

    #@25
    .line 243
    :cond_3
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@27
    aget-wide v2, v7, v4

    #@29
    .line 244
    .local v2, "bits":J
    rem-int/lit8 v7, p1, 0x40

    #@2b
    shl-long v0, v8, v7

    #@2d
    .line 245
    .restart local v0    # "bitMask":J
    and-long v8, v2, v0

    #@2f
    cmp-long v7, v8, v10

    #@31
    if-eqz v7, :cond_4

    #@33
    :goto_1
    return v5

    #@34
    :cond_4
    move v5, v6

    #@35
    goto :goto_1
.end method

.method private notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .locals 8
    .param p2, "arg"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I
    .param p6, "bits"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 201
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    const-wide/16 v0, 0x1

    #@2
    .line 202
    .local v0, "bitMask":J
    move v2, p4

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_1

    #@5
    .line 203
    and-long v4, p6, v0

    #@7
    const-wide/16 v6, 0x0

    #@9
    cmp-long v3, v4, v6

    #@b
    if-nez v3, :cond_0

    #@d
    .line 204
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    #@f
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@11
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    #@18
    .line 206
    :cond_0
    const/4 v3, 0x1

    #@19
    shl-long/2addr v0, v3

    #@1a
    .line 202
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 200
    :cond_1
    return-void
.end method

.method private notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x40

    #@8
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v5

    #@c
    .line 124
    .local v5, "maxNotified":I
    iget-wide v6, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    #@e
    const/4 v4, 0x0

    #@f
    move-object v0, p0

    #@10
    move-object v1, p1

    #@11
    move v2, p2

    #@12
    move-object v3, p3

    #@13
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    #@16
    .line 122
    return-void
.end method

.method private notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 143
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v5

    #@6
    .line 144
    .local v5, "callbackCount":I
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v8, -0x1

    #@b
    .line 148
    .local v8, "remainderIndex":I
    :goto_0
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    #@e
    .line 152
    add-int/lit8 v0, v8, 0x2

    #@10
    mul-int/lit8 v4, v0, 0x40

    #@12
    .line 155
    .local v4, "startCallbackIndex":I
    const-wide/16 v6, 0x0

    #@14
    move-object v0, p0

    #@15
    move-object v1, p1

    #@16
    move v2, p2

    #@17
    move-object v3, p3

    #@18
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    #@1b
    .line 142
    return-void

    #@1c
    .line 144
    .end local v4    # "startCallbackIndex":I
    .end local v8    # "remainderIndex":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@1e
    array-length v0, v0

    #@1f
    add-int/lit8 v8, v0, -0x1

    #@21
    .restart local v8    # "remainderIndex":I
    goto :goto_0
.end method

.method private notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 8
    .param p2, "arg"    # I
    .param p4, "remainderIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 171
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    if-gez p4, :cond_0

    #@2
    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry;->notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V

    #@5
    .line 170
    :goto_0
    return-void

    #@6
    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@8
    aget-wide v6, v0, p4

    #@a
    .line 175
    .local v6, "bits":J
    add-int/lit8 v0, p4, 0x1

    #@c
    mul-int/lit8 v4, v0, 0x40

    #@e
    .line 176
    .local v4, "startIndex":I
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    add-int/lit8 v1, v4, 0x40

    #@16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v5

    #@1a
    .line 177
    .local v5, "endIndex":I
    add-int/lit8 v0, p4, -0x1

    #@1c
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    #@1f
    move-object v0, p0

    #@20
    move-object v1, p1

    #@21
    move v2, p2

    #@22
    move-object v3, p3

    #@23
    .line 178
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    #@26
    goto :goto_0
.end method

.method private removeRemovedCallbacks(IJ)V
    .locals 8
    .param p1, "startIndex"    # I
    .param p2, "removed"    # J

    #@0
    .prologue
    .line 259
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    add-int/lit8 v2, p1, 0x40

    #@2
    .line 261
    .local v2, "endIndex":I
    const-wide/high16 v0, -0x8000000000000000L

    #@4
    .line 262
    .local v0, "bitMask":J
    add-int/lit8 v3, v2, -0x1

    #@6
    .local v3, "i":I
    :goto_0
    if-lt v3, p1, :cond_1

    #@8
    .line 263
    and-long v4, p2, v0

    #@a
    const-wide/16 v6, 0x0

    #@c
    cmp-long v4, v4, v6

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 264
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@12
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@15
    .line 266
    :cond_0
    const/4 v4, 0x1

    #@16
    ushr-long/2addr v0, v4

    #@17
    .line 262
    add-int/lit8 v3, v3, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 257
    :cond_1
    return-void
.end method

.method private setRemovalBitLocked(I)V
    .locals 10
    .param p1, "index"    # I

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v8, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 286
    const/16 v4, 0x40

    #@5
    if-ge p1, v4, :cond_0

    #@7
    .line 288
    shl-long v0, v8, p1

    #@9
    .line 289
    .local v0, "bitMask":J
    iget-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    #@b
    or-long/2addr v4, v0

    #@c
    iput-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    #@e
    .line 285
    :goto_0
    return-void

    #@f
    .line 291
    .end local v0    # "bitMask":J
    :cond_0
    div-int/lit8 v4, p1, 0x40

    #@11
    add-int/lit8 v3, v4, -0x1

    #@13
    .line 292
    .local v3, "remainderIndex":I
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@15
    if-nez v4, :cond_2

    #@17
    .line 293
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@19
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1c
    move-result v4

    #@1d
    div-int/lit8 v4, v4, 0x40

    #@1f
    new-array v4, v4, [J

    #@21
    iput-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@23
    .line 300
    :cond_1
    :goto_1
    rem-int/lit8 v4, p1, 0x40

    #@25
    shl-long v0, v8, v4

    #@27
    .line 301
    .restart local v0    # "bitMask":J
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@29
    aget-wide v6, v4, v3

    #@2b
    or-long/2addr v6, v0

    #@2c
    aput-wide v6, v4, v3

    #@2e
    goto :goto_0

    #@2f
    .line 294
    .end local v0    # "bitMask":J
    :cond_2
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@31
    array-length v4, v4

    #@32
    if-ge v4, v3, :cond_1

    #@34
    .line 296
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@36
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@39
    move-result v4

    #@3a
    div-int/lit8 v4, v4, 0x40

    #@3c
    new-array v2, v4, [J

    #@3e
    .line 297
    .local v2, "newRemainders":[J
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@40
    iget-object v5, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@42
    array-length v5, v5

    #@43
    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@46
    .line 298
    iput-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@48
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    #@1
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@3
    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 217
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@9
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@11
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_1
    monitor-exit p0

    #@15
    .line 215
    return-void

    #@16
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    #@1
    .line 346
    :try_start_0
    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    #@3
    if-nez v1, :cond_1

    #@5
    .line 347
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@7
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 345
    return-void

    #@c
    .line 348
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 349
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@16
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@19
    move-result v1

    #@1a
    add-int/lit8 v0, v1, -0x1

    #@1c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@1e
    .line 350
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 349
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@25
    monitor-exit p0

    #@26
    throw v1
.end method

.method public declared-synchronized clone()Lcom/android/internal/util/CallbackRegistry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/CallbackRegistry",
            "<TC;TT;TA;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    #@1
    .line 356
    const/4 v2, 0x0

    #@2
    .line 358
    .local v2, "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    move-object v0, v6

    #@7
    check-cast v0, Lcom/android/internal/util/CallbackRegistry;

    #@9
    move-object v2, v0

    #@a
    .line 359
    .local v2, "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v6, 0x0

    #@c
    iput-wide v6, v2, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    #@e
    .line 360
    const/4 v6, 0x0

    #@f
    iput-object v6, v2, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@11
    .line 361
    const/4 v6, 0x0

    #@12
    iput v6, v2, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    #@14
    .line 362
    new-instance v6, Ljava/util/ArrayList;

    #@16
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v6, v2, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@1b
    .line 363
    iget-object v6, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@1d
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@20
    move-result v5

    #@21
    .line 364
    .local v5, "numListeners":I
    const/4 v4, 0x0

    #@22
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    #@24
    .line 365
    invoke-direct {p0, v4}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    #@27
    move-result v6

    #@28
    if-nez v6, :cond_0

    #@2a
    .line 366
    iget-object v6, v2, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@2c
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@2e
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 364
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0

    #@38
    .line 369
    .end local v2    # "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .end local v4    # "i":I
    .end local v5    # "numListeners":I
    :catch_0
    move-exception v3

    #@39
    .line 370
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_1
    monitor-exit p0

    #@3d
    .line 372
    return-object v2

    #@3e
    :catchall_0
    move-exception v6

    #@3f
    monitor-exit p0

    #@40
    throw v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/CallbackRegistry;->clone()Lcom/android/internal/util/CallbackRegistry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized copyListeners()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    #@1
    .line 311
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@5
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@8
    move-result v3

    #@9
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 312
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@11
    move-result v2

    #@12
    .line 313
    .local v2, "numListeners":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@15
    .line 314
    invoke-direct {p0, v1}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 315
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@1d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 318
    return-object v0

    #@29
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .end local v1    # "i":I
    .end local v2    # "numListeners":I
    :catchall_0
    move-exception v3

    #@2a
    monitor-exit p0

    #@2b
    throw v3
.end method

.method public declared-synchronized isEmpty()Z
    .locals 5

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 328
    return v4

    #@d
    .line 329
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    if-nez v2, :cond_1

    #@11
    monitor-exit p0

    #@12
    .line 330
    return v3

    #@13
    .line 332
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@15
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@18
    move-result v1

    #@19
    .line 333
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@1c
    .line 334
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_2

    #@22
    monitor-exit p0

    #@23
    .line 335
    return v3

    #@24
    .line 333
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    :cond_3
    monitor-exit p0

    #@28
    .line 338
    return v4

    #@29
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit p0

    #@2b
    throw v2
.end method

.method public declared-synchronized notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    const-wide/16 v6, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 92
    :try_start_0
    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    #@5
    add-int/lit8 v1, v1, 0x1

    #@7
    iput v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    #@9
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry;->notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V

    #@c
    .line 94
    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    iput v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    #@12
    .line 95
    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    #@14
    if-nez v1, :cond_2

    #@16
    .line 96
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 97
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@1c
    array-length v1, v1

    #@1d
    add-int/lit8 v0, v1, -0x1

    #@1f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@21
    .line 98
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@23
    aget-wide v2, v1, v0

    #@25
    .line 99
    .local v2, "removedBits":J
    cmp-long v1, v2, v6

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 100
    add-int/lit8 v1, v0, 0x1

    #@2b
    mul-int/lit8 v1, v1, 0x40

    #@2d
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    #@30
    .line 101
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    #@32
    const-wide/16 v4, 0x0

    #@34
    aput-wide v4, v1, v0

    #@36
    .line 97
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_0

    #@39
    .line 105
    .end local v0    # "i":I
    .end local v2    # "removedBits":J
    :cond_1
    iget-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    #@3b
    cmp-long v1, v4, v6

    #@3d
    if-eqz v1, :cond_2

    #@3f
    .line 106
    iget-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    #@41
    const/4 v1, 0x0

    #@42
    invoke-direct {p0, v1, v4, v5}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    #@45
    .line 107
    const-wide/16 v4, 0x0

    #@47
    iput-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    :cond_2
    monitor-exit p0

    #@4a
    .line 91
    return-void

    #@4b
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit p0

    #@4d
    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    #@1
    .line 275
    :try_start_0
    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    #@3
    if-nez v1, :cond_1

    #@5
    .line 276
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@7
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    :goto_0
    monitor-exit p0

    #@b
    .line 274
    return-void

    #@c
    .line 278
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@e
    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    .line 279
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@14
    .line 280
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    goto :goto_0

    #@18
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0

    #@1a
    throw v1
.end method
