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
.field private mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private mCustomPrinterIconGen:I

.field private mDescription:Ljava/lang/String;

.field private mHasCustomPrinterIcon:Z

.field private mIconResourceId:I

.field private mInfoIntent:Landroid/app/PendingIntent;

.field private mName:Ljava/lang/String;

.field private mPrinterId:Landroid/print/PrinterId;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;I)V
    .locals 1
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I

    #@0
    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 409
    invoke-static {p1}, Landroid/print/PrinterInfo;->-wrap0(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    #@9
    .line 410
    invoke-static {p2}, Landroid/print/PrinterInfo;->-wrap2(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    #@f
    .line 411
    invoke-static {p3}, Landroid/print/PrinterInfo;->-wrap1(I)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    #@15
    .line 408
    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/print/PrinterInfo;

    #@0
    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 420
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get5(Landroid/print/PrinterInfo;)Landroid/print/PrinterId;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    #@9
    .line 421
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get7(Landroid/print/PrinterInfo;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    #@f
    .line 422
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get8(Landroid/print/PrinterInfo;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    #@15
    .line 423
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get4(Landroid/print/PrinterInfo;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    #@1b
    .line 424
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get3(Landroid/print/PrinterInfo;)Z

    #@1e
    move-result v0

    #@1f
    iput-boolean v0, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    #@21
    .line 425
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get2(Landroid/print/PrinterInfo;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    #@27
    .line 426
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get6(Landroid/print/PrinterInfo;)Landroid/app/PendingIntent;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    #@2d
    .line 427
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get0(Landroid/print/PrinterInfo;)Landroid/print/PrinterCapabilitiesInfo;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@33
    .line 428
    invoke-static {p1}, Landroid/print/PrinterInfo;->-get1(Landroid/print/PrinterInfo;)I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    #@39
    .line 419
    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrinterInfo;
    .locals 11

    #@0
    .prologue
    .line 532
    new-instance v0, Landroid/print/PrinterInfo;

    #@2
    iget-object v1, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    #@4
    iget-object v2, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    #@6
    iget v3, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    #@8
    iget v4, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    #@a
    .line 533
    iget-boolean v5, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    #@c
    iget-object v6, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    #@e
    iget-object v7, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    #@10
    iget-object v8, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@12
    .line 534
    iget v9, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    #@14
    .line 532
    const/4 v10, 0x0

    #@15
    invoke-direct/range {v0 .. v10}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;ILandroid/print/PrinterInfo;)V

    #@18
    return-object v0
.end method

.method public incCustomPrinterIconGen()Landroid/print/PrinterInfo$Builder;
    .locals 1

    #@0
    .prologue
    .line 546
    iget v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    #@6
    .line 547
    return-object p0
.end method

.method public setCapabilities(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterInfo$Builder;
    .locals 0
    .param p1, "capabilities"    # Landroid/print/PrinterCapabilitiesInfo;

    #@0
    .prologue
    .line 522
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2
    .line 523
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 499
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    #@2
    .line 500
    return-object p0
.end method

.method public setHasCustomPrinterIcon(Z)Landroid/print/PrinterInfo$Builder;
    .locals 0
    .param p1, "hasCustomPrinterIcon"    # Z

    #@0
    .prologue
    .line 475
    iput-boolean p1, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    #@2
    .line 476
    return-object p0
.end method

.method public setIconResourceId(I)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "iconResourceId"    # I

    #@0
    .prologue
    .line 455
    const-string/jumbo v0, "iconResourceId can\'t be negative"

    #@3
    .line 454
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    #@9
    .line 456
    return-object p0
.end method

.method public setInfoIntent(Landroid/app/PendingIntent;)Landroid/print/PrinterInfo$Builder;
    .locals 0
    .param p1, "infoIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 511
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    #@2
    .line 512
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 487
    invoke-static {p1}, Landroid/print/PrinterInfo;->-wrap2(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    #@6
    .line 488
    return-object p0
.end method

.method public setStatus(I)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 441
    invoke-static {p1}, Landroid/print/PrinterInfo;->-wrap1(I)I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    #@6
    .line 442
    return-object p0
.end method
