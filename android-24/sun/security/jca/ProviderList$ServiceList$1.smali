.class Lsun/security/jca/ProviderList$ServiceList$1;
.super Ljava/lang/Object;
.source "ProviderList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderList$ServiceList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/security/Provider$Service;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$1:Lsun/security/jca/ProviderList$ServiceList;


# direct methods
.method constructor <init>(Lsun/security/jca/ProviderList$ServiceList;)V
    .locals 0
    .param p1, "this$1"    # Lsun/security/jca/ProviderList$ServiceList;

    #@0
    .prologue
    .line 481
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    #@2
    iget v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    #@4
    invoke-static {v0, v1}, Lsun/security/jca/ProviderList$ServiceList;->-wrap0(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 488
    invoke-virtual {p0}, Lsun/security/jca/ProviderList$ServiceList$1;->next()Ljava/security/Provider$Service;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/security/Provider$Service;
    .locals 3

    #@0
    .prologue
    .line 489
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    #@2
    iget v2, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    #@4
    invoke-static {v1, v2}, Lsun/security/jca/ProviderList$ServiceList;->-wrap0(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;

    #@7
    move-result-object v0

    #@8
    .line 490
    .local v0, "s":Ljava/security/Provider$Service;
    if-nez v0, :cond_0

    #@a
    .line 491
    new-instance v1, Ljava/util/NoSuchElementException;

    #@c
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@f
    throw v1

    #@10
    .line 493
    :cond_0
    iget v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    iput v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    #@16
    .line 494
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
