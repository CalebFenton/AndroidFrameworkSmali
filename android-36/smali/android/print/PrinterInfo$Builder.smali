.class public final Landroid/print/PrinterInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private greylist-max-o mCustomPrinterIconGen:I

.field private greylist-max-o mDescription:Ljava/lang/String;

.field private greylist-max-o mHasCustomPrinterIcon:Z

.field private greylist-max-o mIconResourceId:I

.field private greylist-max-o mInfoIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPrinterId:Landroid/print/PrinterId;

.field private greylist-max-o mStatus:I


# direct methods
.method public constructor whitelist <init>(Landroid/print/PrinterId;Ljava/lang/String;I)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$smcheckPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    .line 425
    invoke-static {p2}, Landroid/print/PrinterInfo;->-$$Nest$smcheckName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    .line 426
    invoke-static {p3}, Landroid/print/PrinterInfo;->-$$Nest$smcheckStatus(I)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    .line 427
    return-void
.end method

.method public constructor whitelist <init>(Landroid/print/PrinterInfo;)V
    .registers 3
    .param p1, "other"    # Landroid/print/PrinterInfo;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmId(Landroid/print/PrinterInfo;)Landroid/print/PrinterId;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    .line 436
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmName(Landroid/print/PrinterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    .line 437
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmStatus(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    .line 438
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmIconResourceId(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    .line 439
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmHasCustomPrinterIcon(Landroid/print/PrinterInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    .line 440
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmDescription(Landroid/print/PrinterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    .line 441
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmInfoIntent(Landroid/print/PrinterInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    .line 442
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmCapabilities(Landroid/print/PrinterInfo;)Landroid/print/PrinterCapabilitiesInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 443
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$fgetmCustomPrinterIconGen(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    .line 444
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/print/PrinterInfo;
    .registers 12

    .line 547
    new-instance v0, Landroid/print/PrinterInfo;

    iget-object v1, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    iget-object v2, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    iget v3, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    iget v4, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    iget-boolean v5, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    iget-object v6, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    iget-object v7, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget v9, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;ILandroid/print/PrinterInfo-IA;)V

    return-object v0
.end method

.method public greylist-max-o incCustomPrinterIconGen()Landroid/print/PrinterInfo$Builder;
    .registers 2

    .line 561
    iget v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    .line 562
    return-object p0
.end method

.method public whitelist setCapabilities(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterInfo$Builder;
    .registers 2
    .param p1, "capabilities"    # Landroid/print/PrinterCapabilitiesInfo;

    .line 537
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 538
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 514
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    .line 515
    return-object p0
.end method

.method public whitelist setHasCustomPrinterIcon(Z)Landroid/print/PrinterInfo$Builder;
    .registers 2
    .param p1, "hasCustomPrinterIcon"    # Z

    .line 490
    iput-boolean p1, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    .line 491
    return-object p0
.end method

.method public whitelist setIconResourceId(I)Landroid/print/PrinterInfo$Builder;
    .registers 3
    .param p1, "iconResourceId"    # I

    .line 469
    const-string/jumbo v0, "iconResourceId can\'t be negative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    .line 471
    return-object p0
.end method

.method public whitelist setInfoIntent(Landroid/app/PendingIntent;)Landroid/print/PrinterInfo$Builder;
    .registers 2
    .param p1, "infoIntent"    # Landroid/app/PendingIntent;

    .line 526
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    .line 527
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 502
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$smcheckName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    .line 503
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/print/PrinterInfo$Builder;
    .registers 3
    .param p1, "status"    # I

    .line 456
    invoke-static {p1}, Landroid/print/PrinterInfo;->-$$Nest$smcheckStatus(I)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    .line 457
    return-object p0
.end method
