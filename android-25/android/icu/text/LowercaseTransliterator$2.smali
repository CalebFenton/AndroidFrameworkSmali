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
        "Landroid/icu/text/Transform",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/LowercaseTransliterator;


# direct methods
.method constructor <init>(Landroid/icu/text/LowercaseTransliterator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/LowercaseTransliterator;

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Landroid/icu/text/LowercaseTransliterator$2;->this$0:Landroid/icu/text/LowercaseTransliterator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 126
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/LowercaseTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator$2;->this$0:Landroid/icu/text/LowercaseTransliterator;

    #@2
    invoke-static {v0}, Landroid/icu/text/LowercaseTransliterator;->-get0(Landroid/icu/text/LowercaseTransliterator;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
