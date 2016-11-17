.class Lsun/util/LocaleServiceProviderPool$1;
.super Ljava/lang/Object;
.source "LocaleServiceProviderPool.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/util/LocaleServiceProviderPool;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/util/LocaleServiceProviderPool;

.field final synthetic val$c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lsun/util/LocaleServiceProviderPool;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lsun/util/LocaleServiceProviderPool;

    #@0
    .prologue
    .line 130
    .local p2, "val$c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/spi/LocaleServiceProvider;>;"
    iput-object p1, p0, Lsun/util/LocaleServiceProviderPool$1;->this$0:Lsun/util/LocaleServiceProviderPool;

    #@2
    iput-object p2, p0, Lsun/util/LocaleServiceProviderPool$1;->val$c:Ljava/lang/Class;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 132
    iget-object v2, p0, Lsun/util/LocaleServiceProviderPool$1;->val$c:Ljava/lang/Class;

    #@2
    invoke-static {v2}, Ljava/util/ServiceLoader;->loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "provider$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/spi/LocaleServiceProvider;

    #@16
    .line 133
    .local v0, "provider":Ljava/util/spi/LocaleServiceProvider;
    iget-object v2, p0, Lsun/util/LocaleServiceProviderPool$1;->this$0:Lsun/util/LocaleServiceProviderPool;

    #@18
    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->-get0(Lsun/util/LocaleServiceProviderPool;)Ljava/util/Set;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    goto :goto_0

    #@20
    .line 135
    .end local v0    # "provider":Ljava/util/spi/LocaleServiceProvider;
    :cond_0
    const/4 v2, 0x0

    #@21
    return-object v2
.end method
