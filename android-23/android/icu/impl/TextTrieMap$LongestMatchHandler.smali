.class Landroid/icu/impl/TextTrieMap$LongestMatchHandler;
.super Ljava/lang/Object;
.source "TextTrieMap.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongestMatchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private length:I

.field private matches:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 193
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap<TV;>.LongestMatchHandler<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 194
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    #@6
    .line 195
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    #@9
    .line 193
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TextTrieMap$LongestMatchHandler;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap<TV;>.LongestMatchHandler<TV;>;"
    invoke-direct {p0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getMatchLength()I
    .locals 1

    #@0
    .prologue
    .line 210
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap<TV;>.LongestMatchHandler<TV;>;"
    iget v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    #@2
    return v0
.end method

.method public getMatches()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap<TV;>.LongestMatchHandler<TV;>;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    #@2
    return-object v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 1
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 198
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap<TV;>.LongestMatchHandler<TV;>;"
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    iget v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 199
    iput p1, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    #@6
    .line 200
    iput-object p2, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    #@8
    .line 202
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0
.end method
