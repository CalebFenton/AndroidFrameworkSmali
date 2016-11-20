.class Landroid/icu/text/NullTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NullTransliterator.java"


# static fields
.field static SHORT_ID:Ljava/lang/String;

.field static _ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 17
    const-string/jumbo v0, "Null"

    #@3
    sput-object v0, Landroid/icu/text/NullTransliterator;->SHORT_ID:Ljava/lang/String;

    #@5
    .line 18
    const-string/jumbo v0, "Any-Null"

    #@8
    sput-object v0, Landroid/icu/text/NullTransliterator;->_ID:Ljava/lang/String;

    #@a
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 24
    sget-object v0, Landroid/icu/text/NullTransliterator;->_ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@6
    .line 23
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 39
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 1
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    #@0
    .prologue
    .line 32
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@2
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@4
    .line 31
    return-void
.end method
