.class final Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;
.super Ljava/lang/Object;
.source "TextClassificationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionEventHelper"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/view/textclassifier/TextClassificationContext;

.field private blacklist mInvocationMethod:I

.field private blacklist mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

.field private final blacklist mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private blacklist mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

.field private blacklist mStartEvent:Landroid/view/textclassifier/SelectionEvent;


# direct methods
.method constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V
    .registers 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "context"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    .line 183
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 184
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 185
    return-void
.end method

.method private blacklist modifyAutoSelectionEventType(Landroid/view/textclassifier/SelectionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 270
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 286
    return-void

    .line 274
    :pswitch_8
    nop

    .line 275
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getResultId()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/view/textclassifier/SelectionSessionLogger;->isPlatformLocalTextClassifierSmartSelection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 276
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    .line 277
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    goto :goto_2d

    .line 279
    :cond_24
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    goto :goto_2d

    .line 282
    :cond_29
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    .line 284
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist updateInvocationMethod(Landroid/view/textclassifier/SelectionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 261
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V

    .line 262
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getInvocationMethod()I

    move-result v0

    if-nez v0, :cond_11

    .line 263
    iget v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setInvocationMethod(I)V

    goto :goto_17

    .line 265
    :cond_11
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getInvocationMethod()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    .line 267
    :goto_17
    return-void
.end method


# virtual methods
.method blacklist endSession()V
    .registers 2

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 256
    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 257
    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 258
    return-void
.end method

.method blacklist sanitizeEvent(Landroid/view/textclassifier/SelectionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 193
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->updateInvocationMethod(Landroid/view/textclassifier/SelectionEvent;)V

    .line 194
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->modifyAutoSelectionEventType(Landroid/view/textclassifier/SelectionEvent;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-nez v0, :cond_1a

    .line 198
    const-string v0, "TextClassificationSession"

    const-string v2, "Selection session not yet started. Ignoring event"

    invoke-static {v0, v2}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return v1

    .line 202
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 203
    .local v3, "now":J
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_f2

    goto :goto_6c

    .line 217
    :sswitch_26
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_6c

    .line 218
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getEntityType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEntityType(Ljava/lang/String;)V

    goto :goto_6c

    .line 213
    :sswitch_34
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 214
    goto :goto_6c

    .line 222
    :sswitch_37
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 223
    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    if-ne v0, v5, :cond_6c

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 224
    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v5

    if-ne v0, v5, :cond_6c

    .line 226
    return v1

    .line 205
    :sswitch_54
    nop

    .line 206
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    add-int/2addr v5, v2

    if-ne v0, v5, :cond_61

    move v1, v2

    .line 205
    :cond_61
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 207
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    .line 208
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 209
    nop

    .line 233
    :cond_6c
    :goto_6c
    invoke-virtual {p1, v3, v4}, Landroid/view/textclassifier/SelectionEvent;->setEventTime(J)Landroid/view/textclassifier/SelectionEvent;

    .line 234
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_a6

    .line 235
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 236
    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getEventTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/textclassifier/SelectionEvent;->setDurationSinceSessionStart(J)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setStart(I)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setEnd(I)Landroid/view/textclassifier/SelectionEvent;

    .line 240
    :cond_a6
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_d5

    .line 241
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getResultId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 243
    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 244
    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;

    .line 246
    :cond_d5
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_ef

    .line 247
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getEventTime()J

    move-result-wide v0

    sub-long v0, v3, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setDurationSincePreviousEvent(J)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 248
    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getEventIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;

    .line 250
    :cond_ef
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 251
    return v2

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_54
        0x2 -> :sswitch_37
        0x3 -> :sswitch_34
        0x4 -> :sswitch_34
        0x5 -> :sswitch_34
        0x64 -> :sswitch_26
        0x6b -> :sswitch_26
    .end sparse-switch
.end method
