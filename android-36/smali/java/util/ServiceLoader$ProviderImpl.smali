.class Ljava/util/ServiceLoader$ProviderImpl;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/ServiceLoader$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ServiceLoader$Provider<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final blacklist ctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+TS;>;"
        }
    .end annotation
.end field

.field final blacklist factoryMethod:Ljava/lang/reflect/Method;

.field final blacklist service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field final blacklist type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Class<",
            "+TS;>;",
            "Ljava/lang/reflect/Constructor<",
            "+TS;>;)V"
        }
    .end annotation

    .line 646
    .local p0, "this":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TS;>;"
    .local p3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p1, p0, Ljava/util/ServiceLoader$ProviderImpl;->service:Ljava/lang/Class;

    .line 648
    iput-object p2, p0, Ljava/util/ServiceLoader$ProviderImpl;->type:Ljava/lang/Class;

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ServiceLoader$ProviderImpl;->factoryMethod:Ljava/lang/reflect/Method;

    .line 650
    iput-object p3, p0, Ljava/util/ServiceLoader$ProviderImpl;->ctor:Ljava/lang/reflect/Constructor;

    .line 651
    return-void
.end method

.method private blacklist invokeFactoryMethod()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 676
    .local p0, "this":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    const/4 v0, 0x0

    .line 677
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 681
    .local v1, "exc":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Ljava/util/ServiceLoader$ProviderImpl;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    move-object v0, v2

    .line 684
    goto :goto_10

    .line 682
    :catchall_e
    move-exception v2

    .line 683
    .local v2, "x":Ljava/lang/Throwable;
    move-object v1, v2

    .line 704
    .end local v2    # "x":Ljava/lang/Throwable;
    :goto_10
    if-eqz v1, :cond_34

    .line 705
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_1a

    .line 706
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 707
    :cond_1a
    iget-object v2, p0, Ljava/util/ServiceLoader$ProviderImpl;->service:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/util/ServiceLoader$ProviderImpl;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    :cond_34
    if-nez v0, :cond_50

    .line 710
    iget-object v2, p0, Ljava/util/ServiceLoader$ProviderImpl;->service:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/util/ServiceLoader$ProviderImpl;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 713
    :cond_50
    move-object v2, v0

    .line 714
    .local v2, "p":Ljava/lang/Object;, "TS;"
    return-object v2
.end method

.method private blacklist newInstance()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 724
    .local p0, "this":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    const/4 v0, 0x0

    .line 725
    .local v0, "p":Ljava/lang/Object;, "TS;"
    const/4 v1, 0x0

    .line 729
    .local v1, "exc":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Ljava/util/ServiceLoader$ProviderImpl;->ctor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    move-object v0, v2

    .line 732
    goto :goto_f

    .line 730
    :catchall_d
    move-exception v2

    .line 731
    .local v2, "x":Ljava/lang/Throwable;
    move-object v1, v2

    .line 752
    .end local v2    # "x":Ljava/lang/Throwable;
    :goto_f
    if-eqz v1, :cond_41

    .line 753
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_19

    .line 754
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 755
    :cond_19
    iget-object v2, p0, Ljava/util/ServiceLoader$ProviderImpl;->ctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "cn":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/ServiceLoader$ProviderImpl;->service:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 759
    .end local v2    # "cn":Ljava/lang/String;
    :cond_41
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "ob"    # Ljava/lang/Object;

    .line 777
    .local p0, "this":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    instance-of v0, p1, Ljava/util/ServiceLoader$ProviderImpl;

    if-eqz v0, :cond_15

    .line 775
    move-object v0, p1

    check-cast v0, Ljava/util/ServiceLoader$ProviderImpl;

    .local v0, "that":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<*>;"
    iget-object v1, p0, Ljava/util/ServiceLoader$ProviderImpl;->service:Ljava/lang/Class;

    iget-object v2, v0, Ljava/util/ServiceLoader$ProviderImpl;->service:Ljava/lang/Class;

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Ljava/util/ServiceLoader$ProviderImpl;->type:Ljava/lang/Class;

    iget-object v2, v0, Ljava/util/ServiceLoader$ProviderImpl;->type:Ljava/lang/Class;

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    .end local v0    # "that":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<*>;"
    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 661
    .local p0, "this":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader$ProviderImpl;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 662
    invoke-direct {p0}, Ljava/util/ServiceLoader$ProviderImpl;->invokeFactoryMethod()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 664
    :cond_9
    invoke-direct {p0}, Ljava/util/ServiceLoader$ProviderImpl;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 770
    .local p0, "this":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader$ProviderImpl;->service:Ljava/lang/Class;

    iget-object v1, p0, Ljava/util/ServiceLoader$ProviderImpl;->type:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TS;>;"
        }
    .end annotation

    .line 656
    .local p0, "this":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader$ProviderImpl;->type:Ljava/lang/Class;

    return-object v0
.end method
