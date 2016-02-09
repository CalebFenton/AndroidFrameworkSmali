.class public Ljava/security/cert/CollectionCertStoreParameters;
.super Ljava/lang/Object;
.source "CollectionCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# static fields
.field private static final defaultCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@2
    sput-object v0, Ljava/security/cert/CollectionCertStoreParameters;->defaultCollection:Ljava/util/Collection;

    #@4
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    sget-object v0, Ljava/security/cert/CollectionCertStoreParameters;->defaultCollection:Ljava/util/Collection;

    #@5
    iput-object v0, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    #@7
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    if-nez p1, :cond_0

    #@5
    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "collection == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 64
    :cond_0
    iput-object p1, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    #@10
    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 75
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 76
    :catch_0
    move-exception v0

    #@6
    .line 77
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@7
    return-object v1
.end method

.method public getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "CollectionCertStoreParameters: [\ncollection: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 101
    const-string/jumbo v1, "\n]"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method
