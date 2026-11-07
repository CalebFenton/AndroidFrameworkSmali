.class public final Landroid/graphics/pdf/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_EDIT_PDF_ANNOTATIONS:Ljava/lang/String; = "android.graphics.pdf.flags.enable_edit_pdf_annotations"

.field public static final blacklist FLAG_ENABLE_EDIT_PDF_PAGE_OBJECTS:Ljava/lang/String; = "android.graphics.pdf.flags.enable_edit_pdf_page_objects"

.field public static final blacklist FLAG_ENABLE_EDIT_PDF_STAMP_ANNOTATIONS:Ljava/lang/String; = "android.graphics.pdf.flags.enable_edit_pdf_stamp_annotations"

.field public static final blacklist FLAG_ENABLE_EDIT_PDF_TEXT_ANNOTATIONS:Ljava/lang/String; = "android.graphics.pdf.flags.enable_edit_pdf_text_annotations"

.field public static final blacklist FLAG_ENABLE_EDIT_PDF_TEXT_OBJECTS:Ljava/lang/String; = "android.graphics.pdf.flags.enable_edit_pdf_text_objects"

.field public static final blacklist FLAG_ENABLE_FORM_FILLING:Ljava/lang/String; = "android.graphics.pdf.flags.enable_form_filling"

.field public static final blacklist FLAG_ENABLE_PDF_VIEWER:Ljava/lang/String; = "android.graphics.pdf.flags.enable_pdf_viewer"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/graphics/pdf/flags/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableEditPdfAnnotations()Z
    .registers 1

    .line 22
    sget-object v0, Landroid/graphics/pdf/flags/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/FeatureFlags;->enableEditPdfAnnotations()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableEditPdfPageObjects()Z
    .registers 1

    .line 26
    sget-object v0, Landroid/graphics/pdf/flags/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/FeatureFlags;->enableEditPdfPageObjects()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableEditPdfStampAnnotations()Z
    .registers 1

    .line 30
    sget-object v0, Landroid/graphics/pdf/flags/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/FeatureFlags;->enableEditPdfStampAnnotations()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableEditPdfTextAnnotations()Z
    .registers 1

    .line 34
    sget-object v0, Landroid/graphics/pdf/flags/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/FeatureFlags;->enableEditPdfTextAnnotations()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableEditPdfTextObjects()Z
    .registers 1

    .line 38
    sget-object v0, Landroid/graphics/pdf/flags/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/FeatureFlags;->enableEditPdfTextObjects()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableFormFilling()Z
    .registers 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_8
    sget-object v0, Landroid/graphics/pdf/flags/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/FeatureFlags;->enableFormFilling()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePdfViewer()Z
    .registers 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    .line 50
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_8
    sget-object v0, Landroid/graphics/pdf/flags/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/FeatureFlags;->enablePdfViewer()Z

    move-result v0

    return v0
.end method
