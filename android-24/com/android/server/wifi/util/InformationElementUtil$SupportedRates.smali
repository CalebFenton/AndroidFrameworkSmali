.class public Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedRates"
.end annotation


# static fields
.field public static final MASK:I = 0x7f


# instance fields
.field public mRates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 670
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    #@6
    .line 674
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@d
    .line 673
    return-void
.end method

.method public static getRateFromByte(I)I
    .locals 1
    .param p0, "byteVal"    # I

    #@0
    .prologue
    .line 688
    and-int/lit8 p0, p0, 0x7f

    #@2
    .line 689
    sparse-switch p0, :sswitch_data_0

    #@5
    .line 720
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 691
    :sswitch_0
    const v0, 0xf4240

    #@a
    return v0

    #@b
    .line 693
    :sswitch_1
    const v0, 0x1e8480

    #@e
    return v0

    #@f
    .line 695
    :sswitch_2
    const v0, 0x53ec60

    #@12
    return v0

    #@13
    .line 697
    :sswitch_3
    const v0, 0x5b8d80

    #@16
    return v0

    #@17
    .line 699
    :sswitch_4
    const v0, 0x895440

    #@1a
    return v0

    #@1b
    .line 701
    :sswitch_5
    const v0, 0xa7d8c0

    #@1e
    return v0

    #@1f
    .line 703
    :sswitch_6
    const v0, 0xb71b00

    #@22
    return v0

    #@23
    .line 705
    :sswitch_7
    const v0, 0x112a880

    #@26
    return v0

    #@27
    .line 707
    :sswitch_8
    const v0, 0x14fb180

    #@2a
    return v0

    #@2b
    .line 709
    :sswitch_9
    const v0, 0x16e3600

    #@2e
    return v0

    #@2f
    .line 711
    :sswitch_a
    const v0, 0x1f78a40

    #@32
    return v0

    #@33
    .line 713
    :sswitch_b
    const v0, 0x2255100

    #@36
    return v0

    #@37
    .line 715
    :sswitch_c
    const v0, 0x2dc6c00

    #@3a
    return v0

    #@3b
    .line 717
    :sswitch_d
    const v0, 0x337f980

    #@3e
    return v0

    #@3f
    .line 689
    nop

    #@40
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x12 -> :sswitch_4
        0x16 -> :sswitch_5
        0x18 -> :sswitch_6
        0x24 -> :sswitch_7
        0x2c -> :sswitch_8
        0x30 -> :sswitch_9
        0x42 -> :sswitch_a
        0x48 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6c -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 7
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 733
    iput-boolean v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    #@4
    .line 734
    if-eqz p1, :cond_0

    #@6
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@8
    if-nez v4, :cond_1

    #@a
    .line 735
    :cond_0
    return-void

    #@b
    .line 734
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@d
    array-length v4, v4

    #@e
    const/16 v5, 0x8

    #@10
    if-gt v4, v5, :cond_0

    #@12
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@14
    array-length v4, v4

    #@15
    if-lt v4, v6, :cond_0

    #@17
    .line 737
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@19
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@1c
    move-result-object v4

    #@1d
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@1f
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@22
    move-result-object v0

    #@23
    .line 739
    .local v0, "data":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    #@24
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@26
    array-length v4, v4

    #@27
    if-ge v2, v4, :cond_3

    #@29
    .line 740
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@2c
    move-result v4

    #@2d
    invoke-static {v4}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->getRateFromByte(I)I

    #@30
    move-result v3

    #@31
    .line 741
    .local v3, "rate":I
    if-lez v3, :cond_2

    #@33
    .line 742
    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 739
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 744
    :cond_2
    return-void

    #@40
    .line 747
    .end local v3    # "rate":I
    :catch_0
    move-exception v1

    #@41
    .line 748
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    return-void

    #@42
    .line 750
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    #@44
    .line 751
    return-void
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 759
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "rate$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Integer;

    #@17
    .line 760
    .local v0, "rate":Ljava/lang/Integer;
    const-string/jumbo v3, "%.1f"

    #@1a
    const/4 v4, 0x1

    #@1b
    new-array v4, v4, [Ljava/lang/Object;

    #@1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v5

    #@21
    int-to-double v6, v5

    #@22
    const-wide v8, 0x412e848000000000L    # 1000000.0

    #@27
    div-double/2addr v6, v8

    #@28
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2b
    move-result-object v5

    #@2c
    const/4 v6, 0x0

    #@2d
    aput-object v5, v4, v6

    #@2f
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    const-string/jumbo v4, ", "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_0

    #@3e
    .line 762
    .end local v0    # "rate":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    return-object v3
.end method
