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
.field private greylist-max-o mFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPort:I

.field private final greylist-max-o mPortCount:I

.field private final greylist-max-o mProtocol:Ljava/lang/String;

.field private final greylist-max-o mType:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwrite(Landroid/net/sip/SimpleSessionDescription$Media;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Media;->write(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "portCount"    # I
    .param p4, "protocol"    # Ljava/lang/String;

    .line 245
    const-string v0, "icbka"

    invoke-direct {p0, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    .line 246
    iput-object p1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    .line 247
    iput p2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    .line 248
    iput p3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    .line 249
    iput-object p4, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    .line 250
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;Landroid/net/sip/SimpleSessionDescription-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/sip/SimpleSessionDescription$Media;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private greylist-max-o write(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 369
    const-string v0, "m="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    iget v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    .line 371
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    :cond_27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "format":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .end local v2    # "format":Ljava/lang/String;
    goto :goto_36

    .line 377
    :cond_4a
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mwrite(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V

    .line 379
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getAddress()Ljava/lang/String;
    .registers 2

    .line 237
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 237
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getAttributeNames()[Ljava/lang/String;
    .registers 2

    .line 237
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getBandwidth(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 237
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidth(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist getBandwidthTypes()[Ljava/lang/String;
    .registers 2

    .line 237
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidthTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getEncryptionKey()Ljava/lang/String;
    .registers 2

    .line 237
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getEncryptionMethod()Ljava/lang/String;
    .registers 2

    .line 237
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFmtp(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=fmtp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mget(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFmtp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=fmtp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mget(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFormats()[Ljava/lang/String;
    .registers 3

    .line 284
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPort()I
    .registers 2

    .line 263
    iget v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    return v0
.end method

.method public greylist-max-o getPortCount()I
    .registers 2

    .line 270
    iget v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    return v0
.end method

.method public greylist-max-o getProtocol()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRtpPayloadTypes()[I
    .registers 6

    .line 319
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 320
    .local v0, "types":[I
    const/4 v1, 0x0

    .line 321
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    .local v3, "format":Ljava/lang/String;
    :try_start_1b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_21} :catch_24

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 325
    :catch_24
    move-exception v4

    :goto_25
    nop

    .line 326
    .end local v3    # "format":Ljava/lang/String;
    goto :goto_f

    .line 327
    :cond_27
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o getRtpmap(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=rtpmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mget(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getType()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o removeFormat(Ljava/lang/String;)V
    .registers 6
    .param p1, "format"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=rtpmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mset(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a=fmtp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mset(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    .line 313
    return-void
.end method

.method public greylist-max-o removeRtpPayload(I)V
    .registers 3
    .param p1, "type"    # I

    .line 365
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->removeFormat(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public bridge synthetic blacklist setAddress(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 237
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic blacklist setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 237
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic blacklist setBandwidth(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 237
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic blacklist setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 237
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setEncryption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist-max-o setFormat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "fmtp"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=rtpmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p0, v0, v2, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mset(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=fmtp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mset(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    .line 304
    return-void
.end method

.method public greylist-max-o setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "rtpmap"    # Ljava/lang/String;
    .param p3, "fmtp"    # Ljava/lang/String;

    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "format":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 355
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a=rtpmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {p0, v1, v2, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mset(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a=fmtp:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2, p3}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mset(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    .line 358
    return-void
.end method
