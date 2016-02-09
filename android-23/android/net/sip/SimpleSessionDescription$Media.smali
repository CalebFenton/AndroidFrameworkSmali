.class public Landroid/net/sip/SimpleSessionDescription$Media;
.super Landroid/net/sip/SimpleSessionDescription$Fields;
.source "SimpleSessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SimpleSessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Media"
.end annotation


# instance fields
.field private mFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPort:I

.field private final mPortCount:I

.field private final mProtocol:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/net/sip/SimpleSessionDescription$Media;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Media;->write(Ljava/lang/StringBuilder;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "portCount"    # I
    .param p4, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    const-string/jumbo v0, "icbka"

    #@3
    invoke-direct {p0, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    #@6
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@d
    .line 246
    iput-object p1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    #@f
    .line 247
    iput p2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    #@11
    .line 248
    iput p3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    #@13
    .line 249
    iput-object p4, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    #@15
    .line 244
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/net/sip/SimpleSessionDescription$Media;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "portCount"    # I
    .param p4, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/sip/SimpleSessionDescription$Media;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@3
    return-void
.end method

.method private write(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 369
    const-string/jumbo v2, "m="

    #@5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v2

    #@9
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget v3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    .line 370
    iget v2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    #@1a
    const/4 v3, 0x1

    #@1b
    if-eq v2, v3, :cond_0

    #@1d
    .line 371
    const/16 v2, 0x2f

    #@1f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    iget v3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 373
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 374
    iget-object v2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@33
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v1

    #@37
    .local v1, "format$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_1

    #@3d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Ljava/lang/String;

    #@43
    .line 375
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    goto :goto_0

    #@4b
    .line 377
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "\r\n"

    #@4e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 378
    invoke-static {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap3(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V

    #@54
    .line 368
    return-void
.end method


# virtual methods
.method public bridge synthetic getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAddress()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getAttributeNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttributeNames()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getBandwidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidth(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getBandwidthTypes()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidthTypes()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getEncryptionKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionKey()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getEncryptionMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionMethod()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFmtp(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "a=fmtp:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0x20

    #@16
    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap0(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getFmtp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "a=fmtp:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0x20

    #@16
    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap0(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Ljava/lang/String;

    #@10
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 263
    iget v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    #@2
    return v0
.end method

.method public getPortCount()I
    .locals 1

    #@0
    .prologue
    .line 270
    iget v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    #@2
    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRtpPayloadTypes()[I
    .locals 6

    #@0
    .prologue
    .line 319
    iget-object v5, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v5

    #@6
    new-array v4, v5, [I

    #@8
    .line 320
    .local v4, "types":[I
    const/4 v3, 0x0

    #@9
    .line 321
    .local v3, "length":I
    iget-object v5, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "format$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_0

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/lang/String;

    #@1b
    .line 323
    .local v1, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1e
    move-result v5

    #@1f
    aput v5, v4, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 324
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 327
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    #@27
    move-result-object v5

    #@28
    return-object v5

    #@29
    .line 325
    .restart local v1    # "format":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2a
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getRtpmap(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "a=rtpmap:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0x20

    #@16
    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap0(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public removeFormat(Ljava/lang/String;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v2, 0x20

    #@3
    .line 310
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "a=rtpmap:"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {p0, v0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap2(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    #@1f
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "a=fmtp:"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-static {p0, v0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap2(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    #@36
    .line 309
    return-void
.end method

.method public removeRtpPayload(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 365
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->removeFormat(Ljava/lang/String;)V

    #@7
    .line 364
    return-void
.end method

.method public bridge synthetic setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAddress(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public bridge synthetic setBandwidth(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public bridge synthetic setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setEncryption(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public setFormat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "fmtp"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 300
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    .line 301
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "a=rtpmap:"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const/4 v1, 0x0

    #@21
    invoke-static {p0, v0, v2, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap2(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    #@24
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v1, "a=fmtp:"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-static {p0, v0, v2, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap2(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    #@3b
    .line 299
    return-void
.end method

.method public setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "rtpmap"    # Ljava/lang/String;
    .param p3, "fmtp"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 354
    .local v0, "format":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 355
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "a=rtpmap:"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {p0, v1, v3, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap2(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    #@27
    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "a=fmtp:"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {p0, v1, v3, p3}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap2(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    #@3e
    .line 352
    return-void
.end method
