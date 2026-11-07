.class Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineContentCallbackImplParceling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestion-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parcel(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "item"    # Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I

    .line 468
    return-void
.end method

.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 464
    check-cast p1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;->parcel(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 464
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;->unparcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    move-result-object p1

    return-object p1
.end method
