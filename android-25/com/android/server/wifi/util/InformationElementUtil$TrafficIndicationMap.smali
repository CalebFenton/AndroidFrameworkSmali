.class public Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficIndicationMap"
.end annotation


# static fields
.field private static final MAX_TIM_LENGTH:I = 0xfe


# instance fields
.field public mBitmapControl:I

.field public mDtimCount:I

.field public mDtimPeriod:I

.field public mLength:I

.field private mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 567
    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    #@7
    .line 568
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    #@9
    .line 569
    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimCount:I

    #@b
    .line 571
    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    #@d
    .line 572
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mBitmapControl:I

    #@f
    .line 565
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 4
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 590
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    #@3
    .line 591
    if-eqz p1, :cond_0

    #@5
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@7
    if-nez v2, :cond_1

    #@9
    :cond_0
    return-void

    #@a
    .line 592
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@c
    array-length v2, v2

    #@d
    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    #@f
    .line 593
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@14
    move-result-object v2

    #@15
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@17
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1a
    move-result-object v0

    #@1b
    .line 595
    .local v0, "data":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@1e
    move-result v2

    #@1f
    and-int/lit16 v2, v2, 0xff

    #@21
    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimCount:I

    #@23
    .line 596
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@26
    move-result v2

    #@27
    and-int/lit16 v2, v2, 0xff

    #@29
    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    #@2b
    .line 597
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@2e
    move-result v2

    #@2f
    and-int/lit16 v2, v2, 0xff

    #@31
    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mBitmapControl:I

    #@33
    .line 599
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 603
    iget v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    #@38
    const/16 v3, 0xfe

    #@3a
    if-gt v2, v3, :cond_2

    #@3c
    iget v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    #@3e
    if-lez v2, :cond_2

    #@40
    .line 604
    const/4 v2, 0x1

    #@41
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    #@43
    .line 589
    :cond_2
    return-void

    #@44
    .line 600
    :catch_0
    move-exception v1

    #@45
    .line 601
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    return-void
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    #@2
    return v0
.end method
