.class Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;
.super Lcom/android/internal/telephony/PackageChangeReceiver;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierServicePackageMonitor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Lcom/android/internal/telephony/PackageChangeReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    return-void
.end method

.method private blacklist evaluateBinding(Ljava/lang/String;Z)V
    .registers 10

    const/4 v0, 0x0

    .line 529
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object v1, v1, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object v1, v1, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .line 531
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 538
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " changed and corresponds to a phone. Rebinding."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    :cond_35
    if-eqz v2, :cond_39

    if-eqz v3, :cond_42

    :cond_39
    if-eqz p2, :cond_3f

    const/4 v2, 0x1

    .line 543
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    .line 545
    :cond_3f
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->rebind()V

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_45
    return-void
.end method


# virtual methods
.method public blacklist onHandleForceStop([Ljava/lang/String;Z)V
    .registers 6

    if-eqz p2, :cond_29

    .line 521
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleForceStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 522
    array-length p2, p1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, p2, :cond_29

    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 523
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_29
    return-void
.end method

.method public blacklist onPackageAdded(Ljava/lang/String;)V
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 497
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist onPackageModified(Ljava/lang/String;)V
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageModified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist onPackageRemoved(Ljava/lang/String;)V
    .registers 5

    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist onPackageUpdateFinished(Ljava/lang/String;)V
    .registers 5

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageUpdateFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    return-void
.end method
