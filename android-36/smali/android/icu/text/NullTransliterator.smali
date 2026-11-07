.class Landroid/icu/text/NullTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NullTransliterator.java"


# static fields
.field static final blacklist SHORT_ID:Ljava/lang/String; = "Null"

.field static final blacklist _ID:Ljava/lang/String; = "Any-Null"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 26
    const-string v0, "Any-Null"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 4
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 44
    return-void
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 5
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    .line 35
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 36
    return-void
.end method
