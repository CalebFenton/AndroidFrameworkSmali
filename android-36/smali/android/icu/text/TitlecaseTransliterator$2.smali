.class Landroid/icu/text/TitlecaseTransliterator$2;
.super Ljava/lang/Object;
.source "TitlecaseTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/TitlecaseTransliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/text/Transform<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/text/TitlecaseTransliterator;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/TitlecaseTransliterator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/text/TitlecaseTransliterator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Landroid/icu/text/TitlecaseTransliterator$2;->this$0:Landroid/icu/text/TitlecaseTransliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 167
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/TitlecaseTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist transform(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator$2;->this$0:Landroid/icu/text/TitlecaseTransliterator;

    invoke-static {v0}, Landroid/icu/text/TitlecaseTransliterator;->-$$Nest$fgetlocale(Landroid/icu/text/TitlecaseTransliterator;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
