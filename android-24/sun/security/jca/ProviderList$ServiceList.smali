.class final Lsun/security/jca/ProviderList$ServiceList;
.super Ljava/util/AbstractList;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/security/Provider$Service;",
        ">;"
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private firstService:Ljava/security/Provider$Service;

.field private final ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private providerIndex:I

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/security/jca/ProviderList;

.field private final type:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Lsun/security/jca/ProviderList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lsun/security/jca/ProviderList;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@5
    .line 399
    iput-object p2, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    #@7
    .line 400
    iput-object p3, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    #@9
    .line 401
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    #@c
    .line 398
    return-void
.end method

.method constructor <init>(Lsun/security/jca/ProviderList;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lsun/security/jca/ProviderList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    const/4 v0, 0x0

    #@1
    .line 404
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    #@3
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@6
    .line 405
    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    #@8
    .line 406
    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    #@a
    .line 407
    iput-object p2, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    #@c
    .line 404
    return-void
.end method

.method private addService(Ljava/security/Provider$Service;)V
    .locals 2
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 412
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    #@6
    .line 410
    :goto_0
    return-void

    #@7
    .line 414
    :cond_0
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 415
    new-instance v0, Ljava/util/ArrayList;

    #@d
    const/4 v1, 0x4

    #@e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@13
    .line 416
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@15
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    #@17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    .line 418
    :cond_1
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@1c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    goto :goto_0
.end method

.method private tryGet(I)Ljava/security/Provider$Service;
    .locals 8
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 424
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    #@3
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    #@5
    if-eqz v4, :cond_1

    #@7
    .line 425
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    #@9
    return-object v4

    #@a
    .line 426
    :cond_1
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@c
    if-eqz v4, :cond_2

    #@e
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@10
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@13
    move-result v4

    #@14
    if-le v4, p1, :cond_2

    #@16
    .line 427
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@18
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Ljava/security/Provider$Service;

    #@1e
    return-object v4

    #@1f
    .line 429
    :cond_2
    iget v4, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    #@21
    iget-object v5, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    #@23
    invoke-static {v5}, Lsun/security/jca/ProviderList;->-get0(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;

    #@26
    move-result-object v5

    #@27
    array-length v5, v5

    #@28
    if-lt v4, v5, :cond_3

    #@2a
    .line 430
    return-object v7

    #@2b
    .line 433
    :cond_3
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    #@2d
    iget v5, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    #@2f
    add-int/lit8 v6, v5, 0x1

    #@31
    iput v6, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    #@33
    invoke-virtual {v4, v5}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    #@36
    move-result-object v2

    #@37
    .line 434
    .local v2, "p":Ljava/security/Provider;
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    #@39
    if-eqz v4, :cond_4

    #@3b
    .line 436
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    #@3d
    iget-object v5, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    #@3f
    invoke-virtual {v2, v4, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@42
    move-result-object v3

    #@43
    .line 437
    .local v3, "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_0

    #@45
    .line 438
    invoke-direct {p0, v3}, Lsun/security/jca/ProviderList$ServiceList;->addService(Ljava/security/Provider$Service;)V

    #@48
    goto :goto_0

    #@49
    .line 442
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_4
    iget-object v4, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    #@4b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v1

    #@4f
    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_0

    #@55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Lsun/security/jca/ServiceId;

    #@5b
    .line 443
    .local v0, "id":Lsun/security/jca/ServiceId;
    iget-object v4, v0, Lsun/security/jca/ServiceId;->type:Ljava/lang/String;

    #@5d
    iget-object v5, v0, Lsun/security/jca/ServiceId;->algorithm:Ljava/lang/String;

    #@5f
    invoke-virtual {v2, v4, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@62
    move-result-object v3

    #@63
    .line 444
    .restart local v3    # "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_5

    #@65
    .line 445
    invoke-direct {p0, v3}, Lsun/security/jca/ProviderList$ServiceList;->addService(Ljava/security/Provider$Service;)V

    #@68
    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->get(I)Ljava/security/Provider$Service;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(I)Ljava/security/Provider$Service;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 453
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    #@3
    move-result-object v0

    #@4
    .line 454
    .local v0, "s":Ljava/security/Provider$Service;
    if-nez v0, :cond_0

    #@6
    .line 455
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v1

    #@c
    .line 457
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 477
    invoke-direct {p0, v0}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 481
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList$1;

    #@2
    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$ServiceList$1;-><init>(Lsun/security/jca/ProviderList$ServiceList;)V

    #@5
    return-object v0
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 462
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 463
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    #@6
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    .line 467
    .local v0, "n":I
    :goto_0
    invoke-direct {p0, v0}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 468
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 465
    .end local v0    # "n":I
    :cond_0
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    #@15
    if-eqz v1, :cond_1

    #@17
    const/4 v0, 0x1

    #@18
    .restart local v0    # "n":I
    goto :goto_0

    #@19
    .end local v0    # "n":I
    :cond_1
    const/4 v0, 0x0

    #@1a
    .restart local v0    # "n":I
    goto :goto_0

    #@1b
    .line 470
    :cond_2
    return v0
.end method
