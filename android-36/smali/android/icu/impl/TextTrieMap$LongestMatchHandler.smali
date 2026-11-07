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
        "Landroid/icu/impl/TextTrieMap$ResultHandler<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o length:I

.field private greylist-max-o matches:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 221
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap$LongestMatchHandler<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TextTrieMap-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o getMatchLength()I
    .registers 2

    .line 239
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap$LongestMatchHandler<TV;>;"
    iget v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    return v0
.end method

.method public greylist-max-o getMatches()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap$LongestMatchHandler<TV;>;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    return-object v0
.end method

.method public blacklist handlePrefixMatch(ILjava/util/Iterator;)Z
    .registers 4
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "TV;>;)Z"
        }
    .end annotation

    .line 227
    .local p0, "this":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap$LongestMatchHandler<TV;>;"
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    iget v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    if-le p1, v0, :cond_8

    .line 228
    iput p1, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    .line 229
    iput-object p2, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    .line 231
    :cond_8
    const/4 v0, 0x1

    return v0
.end method
