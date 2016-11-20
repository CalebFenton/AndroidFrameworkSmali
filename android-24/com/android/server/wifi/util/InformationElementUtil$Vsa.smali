.class public Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vsa"
.end annotation


# static fields
.field private static final ANQP_DOMID_BIT:I = 0x4


# instance fields
.field public anqpDomainID:I

.field public hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 242
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@6
    .line 243
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    #@9
    .line 239
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 5
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    .line 246
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v2

    #@6
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@8
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v0

    #@c
    .line 247
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@e
    array-length v2, v2

    #@f
    const/4 v3, 0x5

    #@10
    if-lt v2, v3, :cond_1

    #@12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@15
    move-result v2

    #@16
    const v3, 0x109a6f50

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@1e
    move-result v2

    #@1f
    and-int/lit16 v1, v2, 0xff

    #@21
    .line 249
    .local v1, "hsConf":I
    shr-int/lit8 v2, v1, 0x4

    #@23
    and-int/lit8 v2, v2, 0xf

    #@25
    packed-switch v2, :pswitch_data_0

    #@28
    .line 257
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2a
    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2c
    .line 260
    :goto_0
    and-int/lit8 v2, v1, 0x4

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 261
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@32
    array-length v2, v2

    #@33
    const/4 v3, 0x7

    #@34
    if-ge v2, v3, :cond_0

    #@36
    .line 262
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@38
    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "HS20 indication element too short: "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@46
    array-length v4, v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    .line 262
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 251
    :pswitch_0
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@55
    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@57
    goto :goto_0

    #@58
    .line 254
    :pswitch_1
    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@5a
    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@5c
    goto :goto_0

    #@5d
    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    #@60
    move-result v2

    #@61
    const v3, 0xffff

    #@64
    and-int/2addr v2, v3

    #@65
    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    #@67
    .line 245
    .end local v1    # "hsConf":I
    :cond_1
    return-void

    #@68
    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
