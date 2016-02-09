.class public Ljavax/net/ssl/KeyStoreBuilderParameters;
.super Ljava/lang/Object;
.source "KeyStoreBuilderParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private final ksbuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore$Builder;)V
    .locals 2
    .param p1, "builder"    # Ljava/security/KeyStore$Builder;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    if-nez p1, :cond_0

    #@5
    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "builder == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 47
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    #@14
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    if-nez p1, :cond_0

    #@5
    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "parameters == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "parameters.isEmpty()"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 66
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    #@28
    .line 59
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Ljavax/net/ssl/KeyStoreBuilderParameters;->ksbuilders:Ljava/util/List;

    #@2
    return-object v0
.end method
