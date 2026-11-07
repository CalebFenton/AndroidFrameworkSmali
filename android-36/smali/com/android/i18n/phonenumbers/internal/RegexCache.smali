.class public Lcom/android/i18n/phonenumbers/internal/RegexCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;
    }
.end annotation


# instance fields
.field private blacklist cache:Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;

    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache;->cache:Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;

    .line 35
    return-void
.end method


# virtual methods
.method blacklist containsRegex(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache;->cache:Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache;->cache:Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 39
    .local v0, "pattern":Ljava/util/regex/Pattern;
    if-nez v0, :cond_13

    .line 40
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/internal/RegexCache;->cache:Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/i18n/phonenumbers/internal/RegexCache$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_13
    return-object v0
.end method
