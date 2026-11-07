.class Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private blacklist mCallerInfo:Landroid/telecom/CallerInfo;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPendingListenerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mQueryUri:Landroid/net/Uri;

.field final synthetic blacklist this$0:Landroid/telecom/CallerInfoAsyncQuery;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/telecom/CallerInfo;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 253
    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Landroid/telecom/CallerInfoAsyncQuery;

    .line 254
    invoke-static {p2}, Landroid/telecom/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    .line 255
    iput-object p2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    .line 256
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;Landroid/telecom/CallerInfoAsyncQuery-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected whitelist createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 260
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected whitelist onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 20
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v8, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    const-string v10, "CallerInfoAsyncQuery"

    invoke-static {v10, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    move-object/from16 v11, p2

    check-cast v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    .line 279
    .local v11, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v11, :cond_34

    .line 284
    const-string v2, "Cookie is null, ignoring onQueryComplete() request."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v10, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    if-eqz v8, :cond_33

    .line 286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_33
    return-void

    .line 291
    :cond_34
    iget v2, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v12, 0x3

    if-ne v2, v12, :cond_5f

    .line 292
    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 293
    .local v3, "r":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 294
    .end local v3    # "r":Ljava/lang/Runnable;
    goto :goto_3f

    .line 295
    :cond_4f
    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 297
    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Landroid/telecom/CallerInfoAsyncQuery;

    invoke-static {v2}, Landroid/telecom/CallerInfoAsyncQuery;->-$$Nest$mrelease(Landroid/telecom/CallerInfoAsyncQuery;)V

    .line 298
    if-eqz v8, :cond_5e

    .line 299
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_5e
    return-void

    .line 306
    :cond_5f
    iget v2, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v13, 0x0

    const/4 v14, 0x6

    if-ne v2, v14, :cond_7e

    .line 307
    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-eqz v2, :cond_6f

    .line 308
    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v3, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    iput-object v3, v2, Landroid/telecom/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 311
    :cond_6f
    new-instance v2, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v13}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery-IA;)V

    .line 312
    .local v2, "endMarker":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    iput v12, v2, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 313
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v2    # "endMarker":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    :cond_7e
    iget-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-nez v1, :cond_121

    .line 318
    iget-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_117

    iget-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-eqz v1, :cond_117

    .line 328
    iget v1, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9d

    .line 331
    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/telecom/CallerInfo;->markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    goto :goto_103

    .line 332
    :cond_9d
    iget v1, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b2

    .line 333
    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget v3, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-virtual {v1, v2, v3}, Landroid/telecom/CallerInfo;->markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    goto :goto_103

    .line 335
    :cond_b2
    iget-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v1, v2, v8}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 338
    iget-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v2, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v3, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-static {v1, v2, v3}, Landroid/telecom/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;

    move-result-object v15

    .line 340
    .local v15, "newCallerInfo":Landroid/telecom/CallerInfo;
    iget-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-eq v15, v1, :cond_cc

    .line 341
    iput-object v15, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 347
    :cond_cc
    iget-object v1, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e9

    .line 348
    iget-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v2, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v3, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v3, v3, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    .line 350
    invoke-static {v4}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-static {v2, v3, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/CallerInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 357
    :cond_e9
    iget-object v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-virtual {v1}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 359
    iput v14, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 360
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p1

    move-object v2, v11

    .end local v11    # "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    .local v2, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    invoke-virtual/range {v0 .. v7}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v2    # "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    .restart local v11    # "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    return-void

    .line 369
    .end local v15    # "newCallerInfo":Landroid/telecom/CallerInfo;
    :cond_103
    :goto_103
    new-instance v2, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v13}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery-IA;)V

    .line 370
    .local v2, "endMarker":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    iput v12, v2, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 371
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_123

    .line 318
    .end local v2    # "endMarker":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    :cond_117
    move/from16 v1, p1

    .line 319
    new-instance v2, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;

    const-string v3, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v2, v3}, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_121
    move/from16 v1, p1

    .line 375
    :goto_123
    iget-object v2, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v2, :cond_132

    .line 376
    iget-object v2, v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    new-instance v3, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;

    invoke-direct {v3, v0, v11, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_139

    .line 386
    :cond_132
    const-string v2, "There is no listener to notify for this query."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v10, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :goto_139
    if-eqz v8, :cond_13e

    .line 390
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_13e
    return-void
.end method
