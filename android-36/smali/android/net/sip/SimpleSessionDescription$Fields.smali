.class Landroid/net/sip/SimpleSessionDescription$Fields;
.super Ljava/lang/Object;
.source "SimpleSessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SimpleSessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fields"
.end annotation


# instance fields
.field private final greylist-max-o mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOrder:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mget(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparse(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mset(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwrite(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->write(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "order"    # Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    .line 395
    iput-object p1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    .line 396
    return-void
.end method

.method private greylist-max-o cut(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    .line 550
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 551
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 552
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 553
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 554
    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 555
    .local v4, "i":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2c

    .line 556
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 558
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 559
    add-int/lit8 v1, v1, 0x1

    .line 561
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_38
    goto :goto_f

    .line 562
    :cond_39
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private greylist-max-o find(Ljava/lang/String;C)I
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    .line 569
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 570
    .local v0, "length":I
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_2c

    .line 571
    iget-object v2, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 572
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v0, :cond_28

    .line 573
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p2, :cond_29

    .line 574
    :cond_28
    return v1

    .line 570
    .end local v2    # "line":Ljava/lang/String;
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 577
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, -0x1

    return v1
.end method

.method private greylist-max-o get(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    .line 604
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->find(Ljava/lang/String;C)I

    move-result v0

    .line 605
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 606
    const/4 v1, 0x0

    return-object v1

    .line 608
    :cond_9
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 609
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 610
    .local v2, "length":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_1e

    const-string v3, ""

    goto :goto_24

    :cond_1e
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_24
    return-object v3
.end method

.method private greylist-max-o parse(Ljava/lang/String;)V
    .registers 7
    .param p1, "line"    # Ljava/lang/String;

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 529
    .local v1, "type":C
    iget-object v2, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 530
    return-void

    .line 532
    :cond_f
    const/16 v2, 0x3d

    .line 533
    .local v2, "delimiter":C
    const-string v4, "a=rtpmap:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "a=fmtp:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_2d

    .line 535
    :cond_22
    const/16 v4, 0x62

    if-eq v1, v4, :cond_2a

    const/16 v4, 0x61

    if-ne v1, v4, :cond_2f

    .line 536
    :cond_2a
    const/16 v2, 0x3a

    goto :goto_2f

    .line 534
    :cond_2d
    :goto_2d
    const/16 v2, 0x20

    .line 538
    :cond_2f
    :goto_2f
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 539
    .local v4, "i":I
    if-ne v4, v3, :cond_3b

    .line 540
    const-string v0, ""

    invoke-direct {p0, p1, v2, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    goto :goto_48

    .line 542
    :cond_3b
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    .line 544
    :goto_48
    return-void
.end method

.method private greylist-max-o set(Ljava/lang/String;CLjava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # C
    .param p3, "value"    # Ljava/lang/String;

    .line 585
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->find(Ljava/lang/String;C)I

    move-result v0

    .line 586
    .local v0, "index":I
    const/4 v1, -0x1

    if-eqz p3, :cond_30

    .line 587
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 590
    :cond_22
    if-ne v0, v1, :cond_2a

    .line 591
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 593
    :cond_2a
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 595
    :cond_30
    if-eq v0, v1, :cond_37

    .line 596
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 598
    :cond_37
    :goto_37
    return-void
.end method

.method private greylist-max-o write(Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 515
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 516
    .local v1, "type":C
    iget-object v2, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 517
    .local v3, "line":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_31

    .line 518
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .end local v3    # "line":Ljava/lang/String;
    :cond_31
    goto :goto_15

    .line 514
    .end local v1    # "type":C
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    .end local v0    # "i":I
    :cond_35
    return-void
.end method


# virtual methods
.method public greylist-max-o getAddress()Ljava/lang/String;
    .registers 6

    .line 402
    const-string v0, "c"

    const/16 v1, 0x3d

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "address":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 404
    return-object v1

    .line 406
    :cond_c
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_17

    .line 408
    return-object v1

    .line 410
    :cond_17
    const/4 v1, 0x2

    aget-object v3, v2, v1

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 411
    .local v3, "slash":I
    if-gez v3, :cond_25

    aget-object v1, v2, v1

    goto :goto_2c

    :cond_25
    aget-object v1, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_2c
    return-object v1
.end method

.method public greylist-max-o getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAttributeNames()[Ljava/lang/String;
    .registers 3

    .line 493
    const-string v0, "a="

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->cut(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBandwidth(Ljava/lang/String;)I
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "value":Ljava/lang/String;
    const/4 v1, -0x1

    if-eqz v0, :cond_25

    .line 474
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 475
    :catch_21
    move-exception v2

    .line 476
    invoke-virtual {p0, p1, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    .line 478
    :cond_25
    return v1
.end method

.method public greylist-max-o getBandwidthTypes()[Ljava/lang/String;
    .registers 3

    .line 463
    const-string v0, "b="

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->cut(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEncryptionKey()Ljava/lang/String;
    .registers 5

    .line 442
    const-string v0, "k"

    const/16 v1, 0x3d

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "encryption":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 444
    return-object v1

    .line 446
    :cond_c
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 447
    .local v2, "colon":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    goto :goto_1d

    :cond_16
    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    return-object v1
.end method

.method public greylist-max-o getEncryptionMethod()Ljava/lang/String;
    .registers 4

    .line 430
    const-string v0, "k"

    const/16 v1, 0x3d

    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "encryption":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 432
    const/4 v1, 0x0

    return-object v1

    .line 434
    :cond_c
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 435
    .local v1, "colon":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    move-object v2, v0

    goto :goto_1c

    :cond_17
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1c
    return-object v2
.end method

.method public greylist-max-o setAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 419
    if-eqz p1, :cond_20

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_12

    const-string v1, "IN IP4 "

    goto :goto_14

    :cond_12
    const-string v1, "IN IP6 "

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 423
    :cond_20
    const-string v0, "c"

    const/16 v1, 0x3d

    invoke-direct {p0, v0, v1, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    .line 424
    return-void
.end method

.method public greylist-max-o setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    .line 511
    return-void
.end method

.method public greylist-max-o setBandwidth(Ljava/lang/String;I)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-gez p2, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1b
    const/16 v2, 0x3a

    invoke-direct {p0, v0, v2, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    .line 487
    return-void
.end method

.method public greylist-max-o setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 455
    if-eqz p1, :cond_1d

    if-nez p2, :cond_5

    goto :goto_1d

    .line 456
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    :goto_1d
    move-object v0, p1

    .line 455
    :goto_1e
    const-string v1, "k"

    const/16 v2, 0x3d

    invoke-direct {p0, v1, v2, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    .line 457
    return-void
.end method
