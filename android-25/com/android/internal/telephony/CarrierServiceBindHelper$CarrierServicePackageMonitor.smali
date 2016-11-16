.class Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
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
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@0
    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    #@3
    return-void
.end method

.method private evaluateBinding(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "forceUnbind"    # Z

    #@0
    .prologue
    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get0(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@5
    move-result-object v4

    #@6
    const/4 v3, 0x0

    #@7
    array-length v5, v4

    #@8
    :goto_0
    if-ge v3, v5, :cond_4

    #@a
    aget-object v0, v4, v3

    #@c
    .line 314
    .local v0, "appBinding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPackage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 315
    .local v1, "appBindingPackage":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    .line 320
    .local v2, "isBindingForPackage":Z
    if-eqz v2, :cond_0

    #@16
    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    const-string/jumbo v7, " changed and corresponds to a phone. Rebinding."

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@2d
    .line 323
    :cond_0
    if-eqz v1, :cond_1

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 324
    :cond_1
    if-eqz p2, :cond_2

    #@33
    .line 325
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@36
    .line 327
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->rebind()V

    #@39
    .line 313
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 312
    .end local v0    # "appBinding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    .end local v1    # "appBindingPackage":Ljava/lang/String;
    .end local v2    # "isBindingForPackage":Z
    :cond_4
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    #@0
    .prologue
    .line 304
    if-eqz p4, :cond_0

    #@2
    .line 305
    const/4 v1, 0x0

    #@3
    array-length v2, p2

    #@4
    :goto_0
    if-ge v1, v2, :cond_0

    #@6
    aget-object v0, p2, v1

    #@8
    .line 306
    .local v0, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    #@9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@c
    .line 305
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 309
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 284
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@4
    .line 283
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 299
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@4
    .line 298
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 289
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@4
    .line 288
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 294
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@4
    .line 293
    return-void
.end method
