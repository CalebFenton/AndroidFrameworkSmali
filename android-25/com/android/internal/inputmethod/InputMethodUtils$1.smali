.class final Lcom/android/internal/inputmethod/InputMethodUtils$1;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"

# interfaces
.implements Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor",
        "<",
        "Landroid/view/inputmethod/InputMethodSubtype;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;
    .locals 1
    .param p1, "source"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 506
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Locale;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 505
    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    #@2
    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$1;->get(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
