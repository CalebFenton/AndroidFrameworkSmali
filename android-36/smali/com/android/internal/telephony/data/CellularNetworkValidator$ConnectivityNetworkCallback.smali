.class public Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CellularNetworkValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/CellularNetworkValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityNetworkCallback"
.end annotation


# instance fields
.field private final blacklist mSubId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;I)V
    .registers 3
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

    .line 369
    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 370
    iput p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 5

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network onAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNetworkValidate(I)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-static {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$fgetmValidatedNetworkCache(Lcom/android/internal/telephony/data/CellularNetworkValidator;)Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->isRecentlyValidated(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 383
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$mreportValidationResult(Lcom/android/internal/telephony/data/CellularNetworkValidator;ZI)V

    return-void

    .line 385
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    invoke-static {v0, p1, p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$mreportNetworkAvailable(Lcom/android/internal/telephony/data/CellularNetworkValidator;Landroid/net/Network;I)V

    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    const/16 p1, 0x10

    .line 416
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 417
    const-string p1, "onValidated"

    invoke-static {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-static {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$fgetmValidatedNetworkCache(Lcom/android/internal/telephony/data/CellularNetworkValidator;)Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->storeLastValidationResult(IZ)V

    .line 420
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    invoke-static {p1, v0, p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$mreportValidationResult(Lcom/android/internal/telephony/data/CellularNetworkValidator;ZI)V

    :cond_20
    return-void
.end method

.method public whitelist onLosing(Landroid/net/Network;I)V
    .registers 5

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network onLosing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " maxMsToLive "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-static {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$fgetmValidatedNetworkCache(Lcom/android/internal/telephony/data/CellularNetworkValidator;)Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->storeLastValidationResult(IZ)V

    .line 394
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    invoke-static {p1, v0, p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$mreportValidationResult(Lcom/android/internal/telephony/data/CellularNetworkValidator;ZI)V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 4

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network onLost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 400
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-static {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$fgetmValidatedNetworkCache(Lcom/android/internal/telephony/data/CellularNetworkValidator;)Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->storeLastValidationResult(IZ)V

    .line 402
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$mreportValidationResult(Lcom/android/internal/telephony/data/CellularNetworkValidator;ZI)V

    return-void
.end method

.method public whitelist onUnavailable()V
    .registers 4

    .line 407
    const-string v0, "onUnavailable"

    invoke-static {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-static {v0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$fgetmValidatedNetworkCache(Lcom/android/internal/telephony/data/CellularNetworkValidator;)Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->storeLastValidationResult(IZ)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    invoke-static {v0, v2, p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$mreportValidationResult(Lcom/android/internal/telephony/data/CellularNetworkValidator;ZI)V

    return-void
.end method
