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
.field private final mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrder:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # C
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->write(Ljava/lang/StringBuilder;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "order"    # Ljava/lang/String;

    #@0
    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@a
    .line 395
    iput-object p1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    #@c
    .line 394
    return-void
.end method

.method private cut(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    #@0
    .prologue
    .line 550
    iget-object v5, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v5

    #@6
    new-array v4, v5, [Ljava/lang/String;

    #@8
    .line 551
    .local v4, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    .line 552
    .local v1, "length":I
    iget-object v5, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    .local v3, "line$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_2

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Ljava/lang/String;

    #@1b
    .line 553
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 554
    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v0

    #@25
    .line 555
    .local v0, "i":I
    const/4 v5, -0x1

    #@26
    if-ne v0, v5, :cond_1

    #@28
    .line 556
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2b
    move-result v0

    #@2c
    .line 558
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2f
    move-result v5

    #@30
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    aput-object v5, v4, v1

    #@36
    .line 559
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 562
    .end local v0    # "i":I
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@3c
    move-result-object v5

    #@3d
    check-cast v5, [Ljava/lang/String;

    #@3f
    return-object v5
.end method

.method private find(Ljava/lang/String;C)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    #@0
    .prologue
    .line 569
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 570
    .local v1, "length":I
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    add-int/lit8 v0, v3, -0x1

    #@c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@e
    .line 571
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 572
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1f
    move-result v3

    #@20
    if-eq v3, v1, :cond_0

    #@22
    .line 573
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v3

    #@26
    if-ne v3, p2, :cond_1

    #@28
    .line 574
    :cond_0
    return v0

    #@29
    .line 570
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 577
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    const/4 v3, -0x1

    #@2d
    return v3
.end method

.method private get(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    #@0
    .prologue
    .line 604
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->find(Ljava/lang/String;C)I

    #@3
    move-result v0

    #@4
    .line 605
    .local v0, "index":I
    const/4 v3, -0x1

    #@5
    if-ne v0, v3, :cond_0

    #@7
    .line 606
    const/4 v3, 0x0

    #@8
    return-object v3

    #@9
    .line 608
    :cond_0
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/lang/String;

    #@11
    .line 609
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v1

    #@15
    .line 610
    .local v1, "length":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@18
    move-result v3

    #@19
    if-ne v3, v1, :cond_1

    #@1b
    const-string/jumbo v3, ""

    #@1e
    :goto_0
    return-object v3

    #@1f
    :cond_1
    add-int/lit8 v3, v1, 0x1

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 528
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v2

    #@6
    .line 529
    .local v2, "type":C
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    #@8
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    #@b
    move-result v3

    #@c
    if-ne v3, v4, :cond_0

    #@e
    .line 530
    return-void

    #@f
    .line 532
    :cond_0
    const/16 v0, 0x3d

    #@11
    .line 533
    .local v0, "delimiter":C
    const-string/jumbo v3, "a=rtpmap:"

    #@14
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_1

    #@1a
    const-string/jumbo v3, "a=fmtp:"

    #@1d
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 534
    :cond_1
    const/16 v0, 0x20

    #@25
    .line 538
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@28
    move-result v1

    #@29
    .line 539
    .local v1, "i":I
    if-ne v1, v4, :cond_5

    #@2b
    .line 540
    const-string/jumbo v3, ""

    #@2e
    invoke-direct {p0, p1, v0, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    #@31
    .line 527
    :goto_1
    return-void

    #@32
    .line 535
    .end local v1    # "i":I
    :cond_3
    const/16 v3, 0x62

    #@34
    if-eq v2, v3, :cond_4

    #@36
    const/16 v3, 0x61

    #@38
    if-ne v2, v3, :cond_2

    #@3a
    .line 536
    :cond_4
    const/16 v0, 0x3a

    #@3c
    goto :goto_0

    #@3d
    .line 542
    .restart local v1    # "i":I
    :cond_5
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    add-int/lit8 v4, v1, 0x1

    #@43
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {p0, v3, v0, v4}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    #@4a
    goto :goto_1
.end method

.method private set(Ljava/lang/String;CLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # C
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 585
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->find(Ljava/lang/String;C)I

    #@4
    move-result v0

    #@5
    .line 586
    .local v0, "index":I
    if-eqz p3, :cond_3

    #@7
    .line 587
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    .line 590
    :cond_0
    if-ne v0, v2, :cond_2

    #@24
    .line 591
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 584
    :cond_1
    :goto_0
    return-void

    #@2a
    .line 593
    :cond_2
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2f
    goto :goto_0

    #@30
    .line 595
    :cond_3
    if-eq v0, v2, :cond_1

    #@32
    .line 596
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@37
    goto :goto_0
.end method

.method private write(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 514
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    #@3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    if-ge v0, v4, :cond_2

    #@9
    .line 515
    iget-object v4, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mOrder:Ljava/lang/String;

    #@b
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v3

    #@f
    .line 516
    .local v3, "type":C
    iget-object v4, p0, Landroid/net/sip/SimpleSessionDescription$Fields;->mLines:Ljava/util/ArrayList;

    #@11
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "line$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/lang/String;

    #@21
    .line 517
    .local v1, "line":Ljava/lang/String;
    const/4 v4, 0x0

    #@22
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v4

    #@26
    if-ne v4, v3, :cond_0

    #@28
    .line 518
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, "\r\n"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    goto :goto_1

    #@33
    .line 514
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 513
    .end local v2    # "line$iterator":Ljava/util/Iterator;
    .end local v3    # "type":C
    :cond_2
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x2

    #@3
    .line 402
    const-string/jumbo v3, "c"

    #@6
    const/16 v4, 0x3d

    #@8
    invoke-direct {p0, v3, v4}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 403
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    #@e
    .line 404
    return-object v6

    #@f
    .line 406
    :cond_0
    const-string/jumbo v3, " "

    #@12
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 407
    .local v1, "parts":[Ljava/lang/String;
    array-length v3, v1

    #@17
    const/4 v4, 0x3

    #@18
    if-eq v3, v4, :cond_1

    #@1a
    .line 408
    return-object v6

    #@1b
    .line 410
    :cond_1
    aget-object v3, v1, v5

    #@1d
    const/16 v4, 0x2f

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v2

    #@23
    .line 411
    .local v2, "slash":I
    if-gez v2, :cond_2

    #@25
    aget-object v3, v1, v5

    #@27
    :goto_0
    return-object v3

    #@28
    :cond_2
    aget-object v3, v1, v5

    #@2a
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "a="

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
    const/16 v1, 0x3a

    #@16
    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 493
    const-string/jumbo v0, "a="

    #@3
    const/16 v1, 0x3a

    #@5
    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->cut(Ljava/lang/String;C)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getBandwidth(Ljava/lang/String;)I
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v3, "b="

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const/16 v3, 0x3a

    #@17
    invoke-direct {p0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 472
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@1d
    .line 474
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    return v2

    #@22
    .line 475
    :catch_0
    move-exception v0

    #@23
    .line 476
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0, p1, v4}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    #@26
    .line 478
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return v4
.end method

.method public getBandwidthTypes()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 463
    const-string/jumbo v0, "b="

    #@3
    const/16 v1, 0x3a

    #@5
    invoke-direct {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->cut(Ljava/lang/String;C)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getEncryptionKey()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 442
    const-string/jumbo v3, "k"

    #@4
    const/16 v4, 0x3d

    #@6
    invoke-direct {p0, v3, v4}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 443
    .local v1, "encryption":Ljava/lang/String;
    if-nez v1, :cond_0

    #@c
    .line 444
    return-object v2

    #@d
    .line 446
    :cond_0
    const/16 v3, 0x3a

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@12
    move-result v0

    #@13
    .line 447
    .local v0, "colon":I
    const/4 v3, -0x1

    #@14
    if-ne v0, v3, :cond_1

    #@16
    :goto_0
    return-object v2

    #@17
    :cond_1
    add-int/lit8 v2, v0, 0x1

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    goto :goto_0
.end method

.method public getEncryptionMethod()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 430
    const-string/jumbo v2, "k"

    #@4
    const/16 v3, 0x3d

    #@6
    invoke-direct {p0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 431
    .local v1, "encryption":Ljava/lang/String;
    if-nez v1, :cond_0

    #@c
    .line 432
    return-object v4

    #@d
    .line 434
    :cond_0
    const/16 v2, 0x3a

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@12
    move-result v0

    #@13
    .line 435
    .local v0, "colon":I
    const/4 v2, -0x1

    #@14
    if-ne v0, v2, :cond_1

    #@16
    .end local v1    # "encryption":Ljava/lang/String;
    :goto_0
    return-object v1

    #@17
    .restart local v1    # "encryption":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@18
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 419
    if-eqz p1, :cond_0

    #@2
    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const/16 v0, 0x3a

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v0

    #@d
    if-gez v0, :cond_1

    #@f
    const-string/jumbo v0, "IN IP4 "

    #@12
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    .line 423
    :cond_0
    const-string/jumbo v0, "c"

    #@21
    const/16 v1, 0x3d

    #@23
    invoke-direct {p0, v0, v1, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    #@26
    .line 418
    return-void

    #@27
    .line 420
    :cond_1
    const-string/jumbo v0, "IN IP6 "

    #@2a
    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "a="

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
    const/16 v1, 0x3a

    #@16
    invoke-direct {p0, v0, v1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    #@19
    .line 509
    return-void
.end method

.method public setBandwidth(Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "b="

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
    move-result-object v1

    #@14
    if-gez p2, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    :goto_0
    const/16 v2, 0x3a

    #@19
    invoke-direct {p0, v1, v2, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    #@1c
    .line 485
    return-void

    #@1d
    .line 486
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    goto :goto_0
.end method

.method public setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 455
    const-string/jumbo v0, "k"

    #@3
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .end local p1    # "method":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v1, 0x3d

    #@9
    invoke-direct {p0, v0, v1, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V

    #@c
    .line 454
    return-void

    #@d
    .line 456
    .restart local p1    # "method":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const/16 v2, 0x3a

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    goto :goto_0
.end method
