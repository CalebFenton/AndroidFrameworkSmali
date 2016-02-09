.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;
.super Ljava/lang/Object;
.source "PKCS12KeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoresCaseHashtable"
.end annotation


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private orig:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1720
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    #@a
    .line 1721
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    #@11
    .line 1718
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1754
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    #@3
    if-nez p1, :cond_0

    #@5
    move-object v1, v2

    #@6
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 1755
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_1

    #@e
    .line 1757
    return-object v2

    #@f
    .line 1754
    .end local v0    # "k":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    goto :goto_0

    #@14
    .line 1760
    .restart local v0    # "k":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1725
    if-nez p1, :cond_1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1726
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 1727
    .local v0, "k":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@d
    .line 1729
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    #@f
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 1732
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    #@14
    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1733
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    #@19
    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1723
    return-void

    #@1d
    .line 1725
    .end local v0    # "k":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .local v1, "lower":Ljava/lang/String;
    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1743
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    #@3
    if-nez p1, :cond_0

    #@5
    move-object v1, v2

    #@6
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 1744
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_1

    #@e
    .line 1746
    return-object v2

    #@f
    .line 1743
    .end local v0    # "k":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    goto :goto_0

    #@14
    .line 1749
    .restart local v0    # "k":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method
