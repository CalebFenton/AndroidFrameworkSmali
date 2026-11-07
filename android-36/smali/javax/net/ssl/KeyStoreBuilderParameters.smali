.class public Ljavax/net/ssl/KeyStoreBuilderParameters;
.super Ljava/lang/Object;
.source "KeyStoreBuilderParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private final greylist-max-o parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/KeyStore$Builder;)V
    .registers 3
    .param p1, "builder"    # Ljava/security/KeyStore$Builder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$Builder;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->parameters:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/KeyStore$Builder;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->parameters:Ljava/util/List;

    .line 73
    return-void

    .line 68
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->parameters:Ljava/util/List;

    return-object v0
.end method
