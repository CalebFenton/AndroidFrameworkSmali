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
.field public basicID:Ljava/lang/String;

.field public canonID:Ljava/lang/String;

.field public filter:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 121
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "f"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@5
    .line 118
    iput-object p2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    #@7
    .line 119
    iput-object p3, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    #@9
    .line 116
    return-void
.end method


# virtual methods
.method getInstance()Landroid/icu/text/Transliterator;
    .locals 3

    #@0
    .prologue
    .line 126
    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_2

    #@c
    .line 127
    :cond_0
    const-string/jumbo v1, "Any-Null"

    #@f
    iget-object v2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@11
    invoke-static {v1, v2}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@14
    move-result-object v0

    #@15
    .line 131
    .local v0, "t":Landroid/icu/text/Transliterator;
    :goto_0
    if-eqz v0, :cond_1

    #@17
    .line 132
    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 133
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@1d
    iget-object v2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    #@1f
    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@22
    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    #@25
    .line 136
    :cond_1
    return-object v0

    #@26
    .line 129
    .end local v0    # "t":Landroid/icu/text/Transliterator;
    :cond_2
    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    #@28
    iget-object v2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@2a
    invoke-static {v1, v2}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@2d
    move-result-object v0

    #@2e
    .restart local v0    # "t":Landroid/icu/text/Transliterator;
    goto :goto_0
.end method
