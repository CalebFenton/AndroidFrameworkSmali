.class public Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;
.super Ljava/lang/Object;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingRequest"
.end annotation


# static fields
.field public static final blacklist TYPE_DATA:I = 0x1

.field public static final blacklist TYPE_MULTIPART_TEXT:I = 0x3

.field public static final blacklist TYPE_RETRY_SMS:I = 0x4

.field public static final blacklist TYPE_TEXT:I = 0x2

.field private static final blacklist sNextUniqueMessageId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final blacklist callingPackage:Ljava/lang/String;

.field public final blacklist callingUser:I

.field public final blacklist data:[B

.field public final blacklist deliveryIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist destAddr:Ljava/lang/String;

.field public final blacklist destPort:I

.field public final blacklist expectMore:Z

.field public final blacklist isForVvm:Z

.field public final blacklist isMtSmsPolling:Z

.field public final blacklist messageId:J

.field public final blacklist messageUri:Landroid/net/Uri;

.field public final blacklist persistMessage:Z

.field public final blacklist priority:I

.field public final blacklist scAddr:Ljava/lang/String;

.field public final blacklist sentIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist skipShortCodeCheck:Z

.field public final blacklist texts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field public final blacklist type:I

.field public final blacklist uniqueMessageId:J

.field public final blacklist validityPeriod:I


# direct methods
.method public static synthetic blacklist $r8$lambda$jVExf0ZvCtc_nFdVC9TyW4_GBoE(J)J
    .registers 4

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    .line 291
    rem-long/2addr p0, v0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sNextUniqueMessageId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;Z[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "ZIZIJZZ)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    .line 261
    iput-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 262
    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    .line 263
    iput p4, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    .line 264
    iput-object p5, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    .line 265
    iput-object p6, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    .line 266
    iput-object p7, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 267
    iput-object p8, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    .line 268
    iput-boolean p9, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    .line 270
    iput-object p10, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->data:[B

    .line 271
    iput p11, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destPort:I

    .line 273
    iput-object p12, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    .line 274
    iput-object p13, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    .line 275
    iput-boolean p14, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    .line 276
    iput p15, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    move/from16 p1, p16

    .line 277
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    move/from16 p1, p17

    .line 278
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-wide/from16 p3, p18

    .line 279
    iput-wide p3, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move/from16 p1, p20

    .line 280
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    if-eqz p2, :cond_3a

    .line 282
    iget-wide p1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUniqueMessageId:J

    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    :goto_37
    move/from16 p1, p21

    goto :goto_41

    .line 284
    :cond_3a
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    goto :goto_37

    .line 286
    :goto_41
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    return-void
.end method

.method public static blacklist getNextUniqueMessageId()J
    .registers 2

    .line 290
    sget-object v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sNextUniqueMessageId:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method
