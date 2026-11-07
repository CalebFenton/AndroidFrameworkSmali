.class Landroid/icu/text/LowercaseTransliterator$2;
.super Ljava/lang/Object;
.source "LowercaseTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/LowercaseTransliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
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
.field final synthetic blacklist this$0:Landroid/icu/text/LowercaseTransliterator;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/LowercaseTransliterator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/text/LowercaseTransliterator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Landroid/icu/text/LowercaseTransliterator$2;->this$0:Landroid/icu/text/LowercaseTransliterator;

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

    .line 128
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/LowercaseTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist transform(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator$2;->this$0:Landroid/icu/text/LowercaseTransliterator;

    invoke-static {v0}, Landroid/icu/text/LowercaseTransliterator;->-$$Nest$fgetlocale(Landroid/icu/text/LowercaseTransliterator;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
