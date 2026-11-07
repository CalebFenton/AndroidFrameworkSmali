.class public Landroid/window/SystemPerformanceHinter;
.super Ljava/lang/Object;
.source "SystemPerformanceHinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SystemPerformanceHinter$DisplayRootProvider;,
        Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;,
        Landroid/window/SystemPerformanceHinter$HighPerfSession;,
        Landroid/window/SystemPerformanceHinter$HintFlags;
    }
.end annotation


# static fields
.field public static final blacklist HINT_ADPF:I = 0x4

.field public static final blacklist HINT_ALL:I = 0x7

.field private static final blacklist HINT_GLOBAL:I = 0x5

.field private static final blacklist HINT_NO_OP:I = 0x0

.field private static final blacklist HINT_PER_DISPLAY:I = 0x2

.field public static final blacklist HINT_SF:I = 0x3

.field public static final blacklist HINT_SF_EARLY_WAKEUP:I = 0x1

.field public static final blacklist HINT_SF_FRAME_RATE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SystemPerformanceHinter"


# instance fields
.field private final blacklist mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/SystemPerformanceHinter$HighPerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAdpfSession:Landroid/os/PerformanceHintManager$Session;

.field private blacklist mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

.field public blacklist mTraceTag:J

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveSessions(Landroid/window/SystemPerformanceHinter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mendSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->endSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayRootProvider"    # Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/window/SystemPerformanceHinter;-><init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;Ljava/util/function/Supplier;)V

    .line 176
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;Ljava/util/function/Supplier;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayRootProvider"    # Landroid/window/SystemPerformanceHinter$DisplayRootProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/window/SystemPerformanceHinter$DisplayRootProvider;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p3, "transactionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    .line 185
    iput-object p2, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    .line 186
    if-eqz p3, :cond_19

    .line 187
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    goto :goto_1e

    .line 188
    :cond_19
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :goto_1e
    iput-object v0, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 189
    return-void
.end method

.method private blacklist asyncTraceBegin(II)V
    .registers 9
    .param p1, "flag"    # I
    .param p2, "displayId"    # I

    .line 379
    packed-switch p1, :pswitch_data_4a

    .line 383
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfHint-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 382
    :pswitch_17
    const-string v0, "PerfHint-adpf"

    goto :goto_1f

    .line 381
    :pswitch_1a
    const-string v0, "PerfHint-framerate"

    goto :goto_1f

    .line 380
    :pswitch_1d
    const-string v0, "PerfHint-early_wakeup"

    .line 383
    :goto_1f
    nop

    .line 385
    .local v0, "prefix":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3b

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    move-object v1, v0

    .line 387
    .local v1, "name":Ljava/lang/String;
    :goto_3c
    iget-wide v2, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    .line 388
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v4, p1

    .line 387
    const-string v5, "SystemPerformanceHinter"

    invoke-static {v2, v3, v5, v1, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 389
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist asyncTraceEnd(I)V
    .registers 6
    .param p1, "flag"    # I

    .line 392
    iget-wide v0, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, p1

    const-string v3, "SystemPerformanceHinter"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 393
    return-void
.end method

.method private blacklist calculateActiveHintFlags(I)I
    .registers 5
    .param p1, "filterFlags"    # I

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "flags":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 357
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v2

    and-int/2addr v2, p1

    or-int/2addr v0, v2

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 359
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method private blacklist calculateActiveHintFlagsForDisplay(II)I
    .registers 7
    .param p1, "filterFlags"    # I
    .param p2, "displayId"    # I

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "flags":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 370
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    .line 371
    .local v2, "session":Landroid/window/SystemPerformanceHinter$HighPerfSession;
    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    if-ne v3, p2, :cond_26

    .line 372
    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v3}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    and-int/2addr v3, p1

    or-int/2addr v0, v3

    .line 369
    .end local v2    # "session":Landroid/window/SystemPerformanceHinter$HighPerfSession;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 375
    .end local v1    # "i":I
    :cond_29
    return v0
.end method

.method private blacklist endSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .registers 12
    .param p1, "session"    # Landroid/window/SystemPerformanceHinter$HighPerfSession;

    .line 289
    invoke-virtual {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->asyncTraceEnd()Z

    move-result v0

    .line 290
    .local v0, "isTraceEnabled":Z
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v2

    .line 291
    .local v2, "oldGlobalFlags":I
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v3

    .line 293
    .local v3, "oldPerDisplayFlags":I
    iget-object v5, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 294
    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v1

    .line 295
    .local v1, "newGlobalFlags":I
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v5

    .line 298
    .local v5, "newPerDisplayFlags":I
    const/4 v6, 0x0

    .line 300
    .local v6, "transactionChanged":Z
    invoke-direct {p0, v3, v5, v4}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 301
    iget-object v7, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v7

    .line 303
    .local v7, "displaySurfaceControl":Landroid/view/SurfaceControl;
    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 308
    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v7, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    .line 310
    const/4 v6, 0x1

    .line 311
    if-eqz v0, :cond_45

    .line 312
    invoke-direct {p0, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    .line 317
    .end local v7    # "displaySurfaceControl":Landroid/view/SurfaceControl;
    :cond_45
    const/4 v7, 0x1

    invoke-direct {p0, v2, v1, v7}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 318
    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    .line 319
    const/4 v6, 0x1

    .line 320
    if-eqz v0, :cond_57

    .line 321
    invoke-direct {p0, v7}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    .line 324
    :cond_57
    iget-object v7, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-eqz v7, :cond_6c

    const/4 v7, 0x4

    invoke-direct {p0, v2, v1, v7}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 325
    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    invoke-virtual {v8, v4}, Landroid/os/PerformanceHintManager$Session;->sendHint(I)V

    .line 326
    if-eqz v0, :cond_6c

    .line 327
    invoke-direct {p0, v7}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    .line 330
    :cond_6c
    if-eqz v6, :cond_73

    .line 331
    iget-object v4, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    .line 333
    :cond_73
    return-void
.end method

.method private blacklist nowDisabled(III)Z
    .registers 5
    .param p1, "oldFlags"    # I
    .param p2, "newFlags"    # I
    .param p3, "checkFlags"    # I

    .line 348
    and-int v0, p1, p3

    if-eqz v0, :cond_a

    and-int v0, p2, p3

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist nowEnabled(III)Z
    .registers 5
    .param p1, "oldFlags"    # I
    .param p2, "newFlags"    # I
    .param p3, "checkFlags"    # I

    .line 340
    and-int v0, p1, p3

    if-nez v0, :cond_a

    and-int v0, p2, p3

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .registers 14
    .param p1, "session"    # Landroid/window/SystemPerformanceHinter$HighPerfSession;

    .line 239
    invoke-virtual {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->asyncTraceBegin()Z

    move-result v0

    .line 240
    .local v0, "isTraceEnabled":Z
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v2

    .line 241
    .local v2, "oldGlobalFlags":I
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v3

    .line 243
    .local v3, "oldPerDisplayFlags":I
    iget-object v5, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v5

    .line 245
    .local v5, "newGlobalFlags":I
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v6

    invoke-direct {p0, v4, v6}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v6

    .line 248
    .local v6, "newPerDisplayFlags":I
    const/4 v7, 0x0

    .line 250
    .local v7, "transactionChanged":Z
    invoke-direct {p0, v3, v6, v4}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_4a

    .line 251
    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v8

    .line 253
    .local v8, "displaySurfaceControl":Landroid/view/SurfaceControl;
    iget-object v11, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 258
    iget-object v11, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v8, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    .line 260
    const/4 v7, 0x1

    .line 261
    if-eqz v0, :cond_4a

    .line 262
    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v1

    invoke-direct {p0, v4, v1}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    .line 267
    .end local v8    # "displaySurfaceControl":Landroid/view/SurfaceControl;
    :cond_4a
    invoke-direct {p0, v2, v5, v10}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_5c

    .line 268
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    .line 269
    const/4 v7, 0x1

    .line 270
    if-eqz v0, :cond_5c

    .line 271
    invoke-direct {p0, v10, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    .line 274
    :cond_5c
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-eqz v1, :cond_71

    const/4 v1, 0x4

    invoke-direct {p0, v2, v5, v1}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 275
    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    invoke-virtual {v8, v9}, Landroid/os/PerformanceHintManager$Session;->sendHint(I)V

    .line 276
    if-eqz v0, :cond_71

    .line 277
    invoke-direct {p0, v1, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    .line 280
    :cond_71
    if-eqz v7, :cond_78

    .line 281
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    .line 283
    :cond_78
    return-void
.end method


# virtual methods
.method public blacklist createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;
    .registers 7
    .param p1, "hintFlags"    # I
    .param p2, "displayId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 203
    if-eqz p1, :cond_6c

    .line 206
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    if-nez v0, :cond_13

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_b

    goto :goto_13

    .line 207
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Using SF frame rate hints requires a valid display root provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-nez v0, :cond_24

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1c

    goto :goto_24

    .line 211
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Using ADPF hints requires an ADPF session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_24
    :goto_24
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_66

    .line 214
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-interface {v0, p2}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_66

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No display root for displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPerformanceHinter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfHint-NoDisplayRoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 219
    new-instance v0, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;

    invoke-direct {v0, p0}, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;)V

    return-object v0

    .line 222
    :cond_66
    new-instance v0, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/window/SystemPerformanceHinter$HighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;IILjava/lang/String;)V

    return-object v0

    .line 204
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allow empty hint flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SystemPerformanceHinter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Active sessions ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_56
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a3

    .line 403
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    .line 404
    .local v2, "s":Landroid/window/SystemPerformanceHinter$HighPerfSession;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetreason(Landroid/window/SystemPerformanceHinter$HighPerfSession;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    .end local v2    # "s":Landroid/window/SystemPerformanceHinter$HighPerfSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 408
    .end local v1    # "i":I
    :cond_a3
    return-void
.end method

.method public blacklist setAdpfSession(Landroid/os/PerformanceHintManager$Session;)V
    .registers 2
    .param p1, "adpfSession"    # Landroid/os/PerformanceHintManager$Session;

    .line 197
    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    .line 198
    return-void
.end method

.method public blacklist startSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;
    .registers 6
    .param p1, "hintFlags"    # I
    .param p2, "displayId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 230
    invoke-virtual {p0, p1, p2, p3}, Landroid/window/SystemPerformanceHinter;->createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object v0

    .line 231
    .local v0, "session":Landroid/window/SystemPerformanceHinter$HighPerfSession;
    invoke-static {v0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v1

    if-eqz v1, :cond_d

    .line 232
    invoke-direct {p0, v0}, Landroid/window/SystemPerformanceHinter;->startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    .line 234
    :cond_d
    return-object v0
.end method
