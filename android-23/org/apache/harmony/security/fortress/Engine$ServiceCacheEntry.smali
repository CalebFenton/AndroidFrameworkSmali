.class final Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCacheEntry"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final cacheVersion:I

.field private final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->cacheVersion:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->services:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "cacheVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;

    #@5
    .line 104
    iput p2, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->cacheVersion:I

    #@7
    .line 105
    iput-object p3, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->services:Ljava/util/ArrayList;

    #@9
    .line 102
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "cacheVersion"    # I
    .param p3, "services"    # Ljava/util/ArrayList;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    #@3
    return-void
.end method
