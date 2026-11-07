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
        "Ljava/util/Iterator<",
        "Ljava/security/Provider$Service;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist index:I

.field final synthetic blacklist this$1:Lsun/security/jca/ProviderList$ServiceList;


# direct methods
.method constructor blacklist <init>(Lsun/security/jca/ProviderList$ServiceList;)V
    .registers 2
    .param p1, "this$1"    # Lsun/security/jca/ProviderList$ServiceList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 486
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    iget v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    invoke-static {v0, v1}, Lsun/security/jca/ProviderList$ServiceList;->-$$Nest$mtryGet(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 482
    invoke-virtual {p0}, Lsun/security/jca/ProviderList$ServiceList$1;->next()Ljava/security/Provider$Service;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/security/Provider$Service;
    .registers 3

    .line 490
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    iget v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    invoke-static {v0, v1}, Lsun/security/jca/ProviderList$ServiceList;->-$$Nest$mtryGet(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;

    move-result-object v0

    .line 491
    .local v0, "s":Ljava/security/Provider$Service;
    if-eqz v0, :cond_11

    .line 494
    iget v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    .line 495
    return-object v0

    .line 492
    :cond_11
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
