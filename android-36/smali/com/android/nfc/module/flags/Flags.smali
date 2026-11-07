.class public final Lcom/android/nfc/module/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/nfc/module/flags/FeatureFlags; = null

.field public static final blacklist FLAG_NFC_HCE_LATENCY_EVENTS:Ljava/lang/String; = "com.android.nfc.module.flags.nfc_hce_latency_events"

.field public static final blacklist FLAG_OEM_EXTENSION_25Q4:Ljava/lang/String; = "com.android.nfc.module.flags.oem_extension_25q4"

.field public static final blacklist FLAG_READER_MODE_ANNOTATIONS:Ljava/lang/String; = "com.android.nfc.module.flags.reader_mode_annotations"

.field public static final blacklist FLAG_READER_MODE_IGNORE_FRAME:Ljava/lang/String; = "com.android.nfc.module.flags.reader_mode_ignore_frame"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/android/nfc/module/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/nfc/module/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/nfc/module/flags/Flags;->FEATURE_FLAGS:Lcom/android/nfc/module/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist nfcHceLatencyEvents()Z
    .registers 1

    .line 20
    sget-object v0, Lcom/android/nfc/module/flags/Flags;->FEATURE_FLAGS:Lcom/android/nfc/module/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/nfc/module/flags/FeatureFlags;->nfcHceLatencyEvents()Z

    move-result v0

    return v0
.end method

.method public static greylist oemExtension25q4()Z
    .registers 1

    .line 27
    sget-object v0, Lcom/android/nfc/module/flags/Flags;->FEATURE_FLAGS:Lcom/android/nfc/module/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/nfc/module/flags/FeatureFlags;->oemExtension25q4()Z

    move-result v0

    return v0
.end method

.method public static greylist readerModeAnnotations()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/nfc/module/flags/Flags;->FEATURE_FLAGS:Lcom/android/nfc/module/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/nfc/module/flags/FeatureFlags;->readerModeAnnotations()Z

    move-result v0

    return v0
.end method

.method public static greylist readerModeIgnoreFrame()Z
    .registers 1

    .line 41
    sget-object v0, Lcom/android/nfc/module/flags/Flags;->FEATURE_FLAGS:Lcom/android/nfc/module/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/nfc/module/flags/FeatureFlags;->readerModeIgnoreFrame()Z

    move-result v0

    return v0
.end method
