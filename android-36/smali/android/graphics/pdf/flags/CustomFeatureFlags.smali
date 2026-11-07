.class public Landroid/graphics/pdf/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/graphics/pdf/flags/FeatureFlags;


# instance fields
.field private blacklist mFinalizedFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/graphics/pdf/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/graphics/pdf/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/graphics/pdf/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/graphics/pdf/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/util/Map$Entry;

    .line 94
    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.graphics.pdf.flags.enable_form_filling"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 95
    const-string v4, "android.graphics.pdf.flags.enable_pdf_viewer"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 96
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 93
    invoke-static {v2}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/graphics/pdf/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Landroid/graphics/pdf/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist enableEditPdfAnnotations()Z
    .registers 3

    .line 24
    new-instance v0, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.graphics.pdf.flags.enable_edit_pdf_annotations"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableEditPdfPageObjects()Z
    .registers 3

    .line 31
    new-instance v0, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.graphics.pdf.flags.enable_edit_pdf_page_objects"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableEditPdfStampAnnotations()Z
    .registers 3

    .line 38
    new-instance v0, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.graphics.pdf.flags.enable_edit_pdf_stamp_annotations"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableEditPdfTextAnnotations()Z
    .registers 3

    .line 45
    new-instance v0, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.graphics.pdf.flags.enable_edit_pdf_text_annotations"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableEditPdfTextObjects()Z
    .registers 3

    .line 52
    new-instance v0, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.graphics.pdf.flags.enable_edit_pdf_text_objects"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableFormFilling()Z
    .registers 3

    .line 59
    new-instance v0, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.graphics.pdf.flags.enable_form_filling"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePdfViewer()Z
    .registers 3

    .line 66
    new-instance v0, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.graphics.pdf.flags.enable_pdf_viewer"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/pdf/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    const-string v5, "android.graphics.pdf.flags.enable_form_filling"

    const-string v6, "android.graphics.pdf.flags.enable_pdf_viewer"

    const-string v0, "android.graphics.pdf.flags.enable_edit_pdf_annotations"

    const-string v1, "android.graphics.pdf.flags.enable_edit_pdf_page_objects"

    const-string v2, "android.graphics.pdf.flags.enable_edit_pdf_stamp_annotations"

    const-string v3, "android.graphics.pdf.flags.enable_edit_pdf_text_annotations"

    const-string v4, "android.graphics.pdf.flags.enable_edit_pdf_text_objects"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/graphics/pdf/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 72
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/graphics/pdf/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/graphics/pdf/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagFinalized(Ljava/lang/String;)Z
    .registers 5
    .param p1, "flagName"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Landroid/graphics/pdf/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 102
    return v1

    .line 104
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Landroid/graphics/pdf/flags/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method
