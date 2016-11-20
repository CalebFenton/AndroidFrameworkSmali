.class Lsun/security/ssl/X509KeyManagerImpl$SizedMap;
.super Ljava/util/LinkedHashMap;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 93
    .local p0, "this":Lsun/security/ssl/X509KeyManagerImpl$SizedMap;, "Lsun/security/ssl/X509KeyManagerImpl$SizedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lsun/security/ssl/X509KeyManagerImpl$SizedMap;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Lsun/security/ssl/X509KeyManagerImpl$SizedMap;, "Lsun/security/ssl/X509KeyManagerImpl$SizedMap<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/ssl/X509KeyManagerImpl$SizedMap;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    .local p0, "this":Lsun/security/ssl/X509KeyManagerImpl$SizedMap;, "Lsun/security/ssl/X509KeyManagerImpl$SizedMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xa

    #@6
    if-le v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
