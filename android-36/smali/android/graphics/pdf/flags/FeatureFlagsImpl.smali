.class public final Landroid/graphics/pdf/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/graphics/pdf/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist enableEditPdfAnnotations:Z

.field private static blacklist enableEditPdfPageObjects:Z

.field private static blacklist enableEditPdfStampAnnotations:Z

.field private static blacklist enableEditPdfTextAnnotations:Z

.field private static blacklist enableEditPdfTextObjects:Z

.field private static blacklist enableFormFilling:Z

.field private static blacklist enablePdfViewer:Z

.field private static volatile blacklist isCached:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfAnnotations:Z

    .line 12
    sput-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfPageObjects:Z

    .line 13
    sput-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfStampAnnotations:Z

    .line 14
    sput-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfTextAnnotations:Z

    .line 15
    sput-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfTextObjects:Z

    .line 16
    sput-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableFormFilling:Z

    .line 17
    sput-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enablePdfViewer:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 7

    .line 20
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "android.graphics.pdf.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 21
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v3, "enable_edit_pdf_annotations"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfAnnotations:Z

    .line 22
    const-string v3, "enable_edit_pdf_page_objects"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfPageObjects:Z

    .line 23
    const-string v3, "enable_edit_pdf_stamp_annotations"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfStampAnnotations:Z

    .line 24
    const-string v3, "enable_edit_pdf_text_annotations"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfTextAnnotations:Z

    .line 25
    const-string v3, "enable_edit_pdf_text_objects"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfTextObjects:Z

    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    if-lt v3, v5, :cond_3a

    move v3, v1

    goto :goto_40

    :cond_3a
    const-string v3, "enable_form_filling"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_40
    sput-boolean v3, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableFormFilling:Z

    .line 27
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_48

    move v3, v1

    goto :goto_4e

    :cond_48
    const-string v3, "enable_pdf_viewer"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_4e
    sput-boolean v3, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enablePdfViewer:Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_50} :catch_5a
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_50} :catch_51

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_62

    .line 31
    :catch_51
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 28
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_5a
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_62
    nop

    .line 36
    :goto_63
    sput-boolean v1, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist enableEditPdfAnnotations()Z
    .registers 2

    .line 40
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 41
    invoke-direct {p0}, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->init()V

    .line 43
    :cond_7
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfAnnotations:Z

    return v0
.end method

.method public blacklist enableEditPdfPageObjects()Z
    .registers 2

    .line 48
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 49
    invoke-direct {p0}, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->init()V

    .line 51
    :cond_7
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfPageObjects:Z

    return v0
.end method

.method public blacklist enableEditPdfStampAnnotations()Z
    .registers 2

    .line 56
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 57
    invoke-direct {p0}, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->init()V

    .line 59
    :cond_7
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfStampAnnotations:Z

    return v0
.end method

.method public blacklist enableEditPdfTextAnnotations()Z
    .registers 2

    .line 64
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 65
    invoke-direct {p0}, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->init()V

    .line 67
    :cond_7
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfTextAnnotations:Z

    return v0
.end method

.method public blacklist enableEditPdfTextObjects()Z
    .registers 2

    .line 72
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 73
    invoke-direct {p0}, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->init()V

    .line 75
    :cond_7
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableEditPdfTextObjects:Z

    return v0
.end method

.method public blacklist enableFormFilling()Z
    .registers 2

    .line 80
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 81
    invoke-direct {p0}, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->init()V

    .line 83
    :cond_7
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enableFormFilling:Z

    return v0
.end method

.method public blacklist enablePdfViewer()Z
    .registers 2

    .line 88
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 89
    invoke-direct {p0}, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->init()V

    .line 91
    :cond_7
    sget-boolean v0, Landroid/graphics/pdf/flags/FeatureFlagsImpl;->enablePdfViewer:Z

    return v0
.end method
