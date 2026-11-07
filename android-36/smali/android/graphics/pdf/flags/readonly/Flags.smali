.class public final Landroid/graphics/pdf/flags/readonly/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/graphics/pdf/flags/readonly/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_EDIT_PDF_STAMP_ANNOTATIONS:Ljava/lang/String; = "android.graphics.pdf.flags.readonly.enable_edit_pdf_stamp_annotations"

.field public static final blacklist FLAG_ENABLE_EDIT_PDF_TEXT_ANNOTATIONS:Ljava/lang/String; = "android.graphics.pdf.flags.readonly.enable_edit_pdf_text_annotations"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/graphics/pdf/flags/readonly/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/graphics/pdf/flags/readonly/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/graphics/pdf/flags/readonly/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/readonly/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableEditPdfStampAnnotations()Z
    .registers 1

    .line 16
    sget-object v0, Landroid/graphics/pdf/flags/readonly/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/readonly/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/readonly/FeatureFlags;->enableEditPdfStampAnnotations()Z

    move-result v0

    return v0
.end method

.method public static greylist enableEditPdfTextAnnotations()Z
    .registers 1

    .line 23
    sget-object v0, Landroid/graphics/pdf/flags/readonly/Flags;->FEATURE_FLAGS:Landroid/graphics/pdf/flags/readonly/FeatureFlags;

    invoke-interface {v0}, Landroid/graphics/pdf/flags/readonly/FeatureFlags;->enableEditPdfTextAnnotations()Z

    move-result v0

    return v0
.end method
