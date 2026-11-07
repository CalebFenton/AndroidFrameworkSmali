.class public final Landroid/nearby/ScanRequest$Builder;
.super Ljava/lang/Object;
.source "ScanRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/ScanRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist INVALID_SCAN_TYPE:I = -0x1


# instance fields
.field private blacklist mBleEnabled:Z

.field private blacklist mOffloadOnly:Z

.field private blacklist mScanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanMode:I

.field private blacklist mScanType:I

.field private blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Landroid/nearby/ScanRequest$Builder;->mScanType:I

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nearby/ScanRequest$Builder;->mBleEnabled:Z

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nearby/ScanRequest$Builder;->mOffloadOnly:Z

    .line 293
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/nearby/ScanRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/ScanRequest$Builder;->mScanFilters:Ljava/util/List;

    .line 295
    return-void
.end method


# virtual methods
.method public whitelist addScanFilter(Landroid/nearby/ScanFilter;)Landroid/nearby/ScanRequest$Builder;
    .registers 3
    .param p1, "scanFilter"    # Landroid/nearby/ScanFilter;

    .line 383
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Landroid/nearby/ScanRequest$Builder;->mScanFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-object p0
.end method

.method public whitelist build()Landroid/nearby/ScanRequest;
    .registers 11

    .line 397
    iget v0, p0, Landroid/nearby/ScanRequest$Builder;->mScanType:I

    invoke-static {v0}, Landroid/nearby/ScanRequest;->isValidScanType(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nearby/ScanRequest$Builder;->mScanType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scan type must be one of ScanRequest#SCAN_TYPE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 400
    iget v0, p0, Landroid/nearby/ScanRequest$Builder;->mScanMode:I

    invoke-static {v0}, Landroid/nearby/ScanRequest;->isValidScanMode(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nearby/ScanRequest$Builder;->mScanMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scan mode must be one of ScanMode#SCAN_MODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 403
    new-instance v2, Landroid/nearby/ScanRequest;

    iget v3, p0, Landroid/nearby/ScanRequest$Builder;->mScanType:I

    iget v4, p0, Landroid/nearby/ScanRequest$Builder;->mScanMode:I

    iget-boolean v5, p0, Landroid/nearby/ScanRequest$Builder;->mBleEnabled:Z

    iget-boolean v6, p0, Landroid/nearby/ScanRequest$Builder;->mOffloadOnly:Z

    iget-object v7, p0, Landroid/nearby/ScanRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p0, Landroid/nearby/ScanRequest$Builder;->mScanFilters:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/nearby/ScanRequest;-><init>(IIZZLandroid/os/WorkSource;Ljava/util/List;Landroid/nearby/ScanRequest-IA;)V

    return-object v2
.end method

.method public whitelist setBleEnabled(Z)Landroid/nearby/ScanRequest$Builder;
    .registers 2
    .param p1, "bleEnabled"    # Z

    .line 328
    iput-boolean p1, p0, Landroid/nearby/ScanRequest$Builder;->mBleEnabled:Z

    .line 329
    return-object p0
.end method

.method public whitelist setOffloadOnly(Z)Landroid/nearby/ScanRequest$Builder;
    .registers 2
    .param p1, "offloadOnly"    # Z

    .line 344
    iput-boolean p1, p0, Landroid/nearby/ScanRequest$Builder;->mOffloadOnly:Z

    .line 345
    return-object p0
.end method

.method public whitelist setScanMode(I)Landroid/nearby/ScanRequest$Builder;
    .registers 2
    .param p1, "scanMode"    # I

    .line 317
    iput p1, p0, Landroid/nearby/ScanRequest$Builder;->mScanMode:I

    .line 318
    return-object p0
.end method

.method public whitelist setScanType(I)Landroid/nearby/ScanRequest$Builder;
    .registers 2
    .param p1, "scanType"    # I

    .line 305
    iput p1, p0, Landroid/nearby/ScanRequest$Builder;->mScanType:I

    .line 306
    return-object p0
.end method

.method public whitelist setWorkSource(Landroid/os/WorkSource;)Landroid/nearby/ScanRequest$Builder;
    .registers 3
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 363
    if-nez p1, :cond_a

    .line 364
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/nearby/ScanRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_c

    .line 366
    :cond_a
    iput-object p1, p0, Landroid/nearby/ScanRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 368
    :goto_c
    return-object p0
.end method
