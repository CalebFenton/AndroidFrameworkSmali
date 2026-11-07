.class public final Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
.super Landroid/view/textclassifier/TextClassifierEvent$Builder;
.source "TextClassifierEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/textclassifier/TextClassifierEvent$Builder<",
        "Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mRelativeSuggestedWordEndIndex:I

.field blacklist mRelativeSuggestedWordStartIndex:I

.field blacklist mRelativeWordEndIndex:I

.field blacklist mRelativeWordStartIndex:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 861
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;-><init>(IILandroid/view/textclassifier/TextClassifierEvent-IA;)V

    .line 862
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
    .registers 3

    .line 913
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    return-object v0
.end method

.method bridge synthetic blacklist self()Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 2

    .line 848
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist self()Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 1

    .line 905
    return-object p0
.end method

.method public whitelist setRelativeSuggestedWordEndIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 2
    .param p1, "relativeSuggestedWordEndIndex"    # I

    .line 899
    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordEndIndex:I

    .line 900
    return-object p0
.end method

.method public whitelist setRelativeSuggestedWordStartIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 2
    .param p1, "relativeSuggestedWordStartIndex"    # I

    .line 889
    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordStartIndex:I

    .line 890
    return-object p0
.end method

.method public whitelist setRelativeWordEndIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 2
    .param p1, "relativeWordEndIndex"    # I

    .line 879
    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordEndIndex:I

    .line 880
    return-object p0
.end method

.method public whitelist setRelativeWordStartIndex(I)Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    .registers 2
    .param p1, "relativeWordStartIndex"    # I

    .line 869
    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordStartIndex:I

    .line 870
    return-object p0
.end method
