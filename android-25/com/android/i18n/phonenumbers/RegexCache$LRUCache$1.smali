.class Lcom/android/i18n/phonenumbers/RegexCache$LRUCache$1;
.super Ljava/util/LinkedHashMap;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;


# direct methods
.method constructor <init>(Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;IFZ)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Z

    #@0
    .prologue
    .line 57
    .local p1, "this$1":Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;, "Lcom/google/i18n/phonenumbers/RegexCache$LRUCache<TK;TV;>;"
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache$1;->this$1:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    #@2
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@5
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
    .line 60
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache$1;->size()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache$1;->this$1:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    #@6
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;->-get0(Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;)I

    #@9
    move-result v1

    #@a
    if-le v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
