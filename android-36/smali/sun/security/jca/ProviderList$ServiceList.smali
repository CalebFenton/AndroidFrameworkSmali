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
        "Ljava/util/AbstractList<",
        "Ljava/security/Provider$Service;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist algorithm:Ljava/lang/String;

.field private blacklist firstService:Ljava/security/Provider$Service;

.field private final blacklist ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist providerIndex:I

.field private blacklist services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lsun/security/jca/ProviderList;

.field private final blacklist type:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtryGet(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;
    .registers 2

    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Lsun/security/jca/ProviderList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 400
    iput-object p2, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    .line 401
    iput-object p3, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    .line 402
    const/4 p1, 0x0

    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    .line 403
    return-void
.end method

.method constructor blacklist <init>(Lsun/security/jca/ProviderList;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/jca/ServiceId;",
            ">;)V"
        }
    .end annotation

    .line 405
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 406
    const/4 p1, 0x0

    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    .line 407
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    .line 408
    iput-object p2, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    .line 409
    return-void
.end method

.method private blacklist addService(Ljava/security/Provider$Service;)V
    .registers 4
    .param p1, "s"    # Ljava/security/Provider$Service;

    .line 412
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    if-nez v0, :cond_7

    .line 413
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    goto :goto_1f

    .line 415
    :cond_7
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    if-nez v0, :cond_1a

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    .line 417
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_1a
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :goto_1f
    return-void
.end method

.method private blacklist tryGet(I)Ljava/security/Provider$Service;
    .registers 7
    .param p1, "index"    # I

    .line 425
    nop

    :goto_1
    if-nez p1, :cond_a

    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    if-eqz v0, :cond_a

    .line 426
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    return-object v0

    .line 427
    :cond_a
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1f

    .line 428
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    return-object v0

    .line 430
    :cond_1f
    iget v0, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    invoke-static {v1}, Lsun/security/jca/ProviderList;->-$$Nest$fgetconfigs(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2c

    .line 431
    const/4 v0, 0x0

    return-object v0

    .line 434
    :cond_2c
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->this$0:Lsun/security/jca/ProviderList;

    iget v1, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/jca/ProviderList$ServiceList;->providerIndex:I

    invoke-virtual {v0, v1}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v0

    .line 435
    .local v0, "p":Ljava/security/Provider;
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 437
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->type:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/jca/ProviderList$ServiceList;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 438
    .local v1, "s":Ljava/security/Provider$Service;
    if-eqz v1, :cond_49

    .line 439
    invoke-direct {p0, v1}, Lsun/security/jca/ProviderList$ServiceList;->addService(Ljava/security/Provider$Service;)V

    .line 441
    .end local v1    # "s":Ljava/security/Provider$Service;
    :cond_49
    goto :goto_6a

    .line 443
    :cond_4a
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList;->ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/jca/ServiceId;

    .line 444
    .local v2, "id":Lsun/security/jca/ServiceId;
    iget-object v3, v2, Lsun/security/jca/ServiceId;->type:Ljava/lang/String;

    iget-object v4, v2, Lsun/security/jca/ServiceId;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 445
    .local v3, "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_69

    .line 446
    invoke-direct {p0, v3}, Lsun/security/jca/ProviderList$ServiceList;->addService(Ljava/security/Provider$Service;)V

    .line 448
    .end local v2    # "id":Lsun/security/jca/ServiceId;
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_69
    goto :goto_50

    .line 450
    .end local v0    # "p":Ljava/security/Provider;
    :cond_6a
    :goto_6a
    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 376
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->get(I)Ljava/security/Provider$Service;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/security/Provider$Service;
    .registers 4
    .param p1, "index"    # I

    .line 454
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    move-result-object v0

    .line 455
    .local v0, "s":Ljava/security/Provider$Service;
    if-eqz v0, :cond_7

    .line 458
    return-object v0

    .line 456
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 3

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .line 482
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList$1;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$ServiceList$1;-><init>(Lsun/security/jca/ProviderList$ServiceList;)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 463
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 464
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "n":I
    goto :goto_12

    .line 466
    .end local v0    # "n":I
    :cond_b
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList;->firstService:Ljava/security/Provider$Service;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 468
    .restart local v0    # "n":I
    :goto_12
    invoke-direct {p0, v0}, Lsun/security/jca/ProviderList$ServiceList;->tryGet(I)Ljava/security/Provider$Service;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 471
    :cond_1b
    return v0
.end method
