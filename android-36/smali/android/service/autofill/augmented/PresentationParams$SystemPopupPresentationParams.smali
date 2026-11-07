.class public final Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;
.super Landroid/service/autofill/augmented/PresentationParams;
.source "PresentationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/PresentationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemPopupPresentationParams"
.end annotation


# instance fields
.field private final blacklist mSuggestionArea:Landroid/service/autofill/augmented/PresentationParams$Area;


# direct methods
.method public constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "proxy"    # Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 99
    invoke-direct {p0}, Landroid/service/autofill/augmented/PresentationParams;-><init>()V

    .line 100
    new-instance v0, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams$1;-><init>(Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;->mSuggestionArea:Landroid/service/autofill/augmented/PresentationParams$Area;

    .line 101
    return-void
.end method


# virtual methods
.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 110
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "area: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;->mSuggestionArea:Landroid/service/autofill/augmented/PresentationParams$Area;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public whitelist getSuggestionArea()Landroid/service/autofill/augmented/PresentationParams$Area;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;->mSuggestionArea:Landroid/service/autofill/augmented/PresentationParams$Area;

    return-object v0
.end method
