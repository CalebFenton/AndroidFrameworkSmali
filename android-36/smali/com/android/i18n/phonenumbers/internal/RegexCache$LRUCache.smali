.class Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/internal/RegexCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private blacklist size:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetsize(Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;)I
    .registers 1

    iget p0, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->size:I

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 6
    .param p1, "size"    # I

    .line 57
    .local p0, "this":Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->size:I

    .line 60
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache$1;

    mul-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache$1;-><init>(Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;IFZ)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist containsKey(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 77
    .end local p0    # "this":Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .local p0, "this":Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 69
    .end local p0    # "this":Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 74
    monitor-exit p0

    return-void

    .line 72
    .end local p0    # "this":Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method
