.class public Lcom/android/i18n/phonenumbers/RegexCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;
    }
.end annotation


# instance fields
.field private cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/phonenumbers/RegexCache$LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    new-instance v0, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    #@5
    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/RegexCache;->cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    #@a
    .line 31
    return-void
.end method


# virtual methods
.method containsRegex(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/RegexCache;->cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/RegexCache;->cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/regex/Pattern;

    #@8
    .line 37
    .local v0, "pattern":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    #@a
    .line 38
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v0

    #@e
    .line 39
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/RegexCache;->cache:Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;

    #@10
    invoke-virtual {v1, p1, v0}, Lcom/android/i18n/phonenumbers/RegexCache$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13
    .line 41
    :cond_0
    return-object v0
.end method
