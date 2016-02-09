.class public Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;
.super Ljava/lang/Object;
.source "X509CollectionStoreParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/x509/X509StoreParameters;


# instance fields
.field private collection:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    if-nez p1, :cond_0

    #@5
    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "collection cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 33
    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;->collection:Ljava/util/Collection;

    #@10
    .line 27
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;->collection:Ljava/util/Collection;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public getCollection()Ljava/util/Collection;
    .locals 2

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;->collection:Ljava/util/Collection;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 65
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "X509CollectionStoreParameters: [\n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "  collection: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;->collection:Ljava/util/Collection;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "\n"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 67
    const-string/jumbo v1, "]"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    return-object v1
.end method
