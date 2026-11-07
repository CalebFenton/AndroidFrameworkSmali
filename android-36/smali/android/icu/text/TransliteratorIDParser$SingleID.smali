.class Landroid/icu/text/TransliteratorIDParser$SingleID;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorIDParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleID"
.end annotation


# instance fields
.field public blacklist basicID:Ljava/lang/String;

.field public blacklist canonID:Ljava/lang/String;

.field public blacklist filter:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "f"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method blacklist getInstance()Landroid/icu/text/Transliterator;
    .registers 4

    .line 128
    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 131
    :cond_d
    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    .local v0, "t":Landroid/icu/text/Transliterator;
    goto :goto_1e

    .line 129
    .end local v0    # "t":Landroid/icu/text/Transliterator;
    :cond_16
    :goto_16
    const-string v0, "Any-Null"

    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    .line 133
    .restart local v0    # "t":Landroid/icu/text/Transliterator;
    :goto_1e
    if-eqz v0, :cond_2e

    .line 134
    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 135
    new-instance v1, Landroid/icu/text/UnicodeSet;

    iget-object v2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    .line 138
    :cond_2e
    return-object v0
.end method
