.class Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;
.super Ljava/lang/Object;
.source "PKCS12KeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoresCaseHashtable"
.end annotation


# instance fields
.field private blacklist keys:Ljava/util/Hashtable;

.field private blacklist orig:Ljava/util/Hashtable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetkeys(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 1909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1911
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    .line 1912
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist elements()Ljava/util/Enumeration;
    .registers 2

    .line 1956
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 1945
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez p1, :cond_7

    move-object v2, v1

    goto :goto_b

    :cond_7
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1946
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 1948
    return-object v1

    .line 1951
    :cond_14
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public blacklist keys()Ljava/util/Enumeration;
    .registers 2

    .line 1929
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1916
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1917
    .local v0, "lower":Ljava/lang/String;
    :goto_8
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1918
    .local v1, "k":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 1920
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    :cond_17
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    return-void
.end method

.method public blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 1934
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez p1, :cond_7

    move-object v2, v1

    goto :goto_b

    :cond_7
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1935
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 1937
    return-object v1

    .line 1940
    :cond_14
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public blacklist size()I
    .registers 2

    .line 1961
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
