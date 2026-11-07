.class Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;
.super Ljava/lang/Object;
.source "CellularIdentifierDisclosureNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisclosureWindow"
.end annotation


# instance fields
.field private blacklist mDisclosureCount:I

.field private blacklist mLastEvent:Ljava/time/Instant;

.field private blacklist mSubId:I

.field private blacklist mWhenWindowCloses:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mWindowFirstOpen:Ljava/time/Instant;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;


# direct methods
.method public static synthetic blacklist $r8$lambda$fd13gMThEOxruJ1l27awDPWCCmk(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->lambda$closeWindowRunnable$0(Landroid/content/Context;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;I)V
    .registers 3
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

    .line 317
    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->this$0:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 318
    iput p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mDisclosureCount:I

    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWindowFirstOpen:Ljava/time/Instant;

    .line 320
    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mLastEvent:Ljava/time/Instant;

    .line 321
    iput p2, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mSubId:I

    .line 322
    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWhenWindowCloses:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private blacklist cancelWindowCloseFuture()Z
    .registers 2

    .line 392
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWhenWindowCloses:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 398
    :cond_6
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method private blacklist closeWindowRunnable(Landroid/content/Context;)Ljava/lang/Runnable;
    .registers 3

    .line 379
    new-instance v0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$closeWindowRunnable$0(Landroid/content/Context;)V
    .registers 4

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disclosure window closing for subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Disclosure count was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->getDisclosureCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v1, "CellularIdentifierDisclosureNotifier"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->close()V

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->this$0:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    invoke-static {v0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->-$$Nest$fgetmSafetySource(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mSubId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->clearIdentifierDisclosure(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method blacklist close()V
    .registers 3

    const/4 v0, 0x0

    .line 368
    iput v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mDisclosureCount:I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWindowFirstOpen:Ljava/time/Instant;

    .line 370
    iput-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mLastEvent:Ljava/time/Instant;

    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWhenWindowCloses:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_d

    return-void

    .line 375
    :cond_d
    iput-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWhenWindowCloses:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method blacklist getCurrentEnd()Ljava/time/Instant;
    .registers 1

    .line 364
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mLastEvent:Ljava/time/Instant;

    return-object p0
.end method

.method blacklist getDisclosureCount()I
    .registers 1

    .line 356
    iget p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mDisclosureCount:I

    return p0
.end method

.method blacklist getFirstOpen()Ljava/time/Instant;
    .registers 1

    .line 360
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWindowFirstOpen:Ljava/time/Instant;

    return-object p0
.end method

.method blacklist increment(Landroid/content/Context;Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)V
    .registers 6

    .line 327
    iget v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mDisclosureCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mDisclosureCount:I

    .line 329
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 330
    iget v2, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mDisclosureCount:I

    if-ne v2, v1, :cond_10

    .line 332
    iput-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWindowFirstOpen:Ljava/time/Instant;

    .line 335
    :cond_10
    iput-object v0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mLastEvent:Ljava/time/Instant;

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->cancelWindowCloseFuture()Z

    .line 340
    :try_start_15
    invoke-static {p2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->-$$Nest$fgetmSerializedWorkQueue(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 342
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->closeWindowRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->-$$Nest$fgetmWindowCloseDuration(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)J

    move-result-wide v1

    invoke-static {p2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->-$$Nest$fgetmWindowCloseUnit(Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;)Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    .line 341
    invoke-interface {v0, p1, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mWhenWindowCloses:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_15 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to schedule closeWindow for subId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier$DisclosureWindow;->mSubId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " :  "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 346
    const-string p1, "CellularIdentifierDisclosureNotifier"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
