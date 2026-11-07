.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags; = null

.field public static final blacklist FLAG_ANNOUNCE_SHORTCUTS_AND_SUGGESTED_APPS_LEGACY:Ljava/lang/String; = "android.service.chooser.announce_shortcuts_and_suggested_apps_legacy"

.field public static final blacklist FLAG_CHOOSER_ALBUM_TEXT:Ljava/lang/String; = "android.service.chooser.chooser_album_text"

.field public static final blacklist FLAG_CHOOSER_PAYLOAD_TOGGLING:Ljava/lang/String; = "android.service.chooser.chooser_payload_toggling"

.field public static final blacklist FLAG_ENABLE_CHOOSER_RESULT:Ljava/lang/String; = "android.service.chooser.enable_chooser_result"

.field public static final blacklist FLAG_ENABLE_SHARESHEET_METADATA_EXTRA:Ljava/lang/String; = "android.service.chooser.enable_sharesheet_metadata_extra"

.field public static final blacklist FLAG_FIX_RESOLVER_MEMORY_LEAK:Ljava/lang/String; = "android.service.chooser.fix_resolver_memory_leak"

.field public static final blacklist FLAG_NOTIFY_SINGLE_ITEM_CHANGE_ON_ICON_LOAD:Ljava/lang/String; = "android.service.chooser.notify_single_item_change_on_icon_load"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist announceShortcutsAndSuggestedAppsLegacy()Z
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result v0

    return v0
.end method

.method public static blacklist chooserAlbumText()Z
    .registers 1

    .line 33
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->chooserAlbumText()Z

    move-result v0

    return v0
.end method

.method public static blacklist chooserPayloadToggling()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->chooserPayloadToggling()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableChooserResult()Z
    .registers 1

    .line 47
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->enableChooserResult()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSharesheetMetadataExtra()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->enableSharesheetMetadataExtra()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixResolverMemoryLeak()Z
    .registers 1

    .line 61
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->fixResolverMemoryLeak()Z

    move-result v0

    return v0
.end method

.method public static blacklist notifySingleItemChangeOnIconLoad()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->notifySingleItemChangeOnIconLoad()Z

    move-result v0

    return v0
.end method
