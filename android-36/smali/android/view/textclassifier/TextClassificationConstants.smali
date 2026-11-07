.class public final Landroid/view/textclassifier/TextClassificationConstants;
.super Ljava/lang/Object;
.source "TextClassificationConstants.java"


# static fields
.field private static final blacklist DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

.field static final greylist-max-o GENERATE_LINKS_MAX_TEXT_LENGTH:Ljava/lang/String; = "generate_links_max_text_length"

.field private static final greylist-max-o GENERATE_LINKS_MAX_TEXT_LENGTH_DEFAULT:I = 0x186a0

.field static final greylist-max-o LOCAL_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "local_textclassifier_enabled"

.field private static final greylist-max-o LOCAL_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o MODEL_DARK_LAUNCH_ENABLED:Ljava/lang/String; = "model_dark_launch_enabled"

.field private static final greylist-max-o MODEL_DARK_LAUNCH_ENABLED_DEFAULT:Z = false

.field private static final greylist-max-o SMART_LINKIFY_ENABLED:Ljava/lang/String; = "smart_linkify_enabled"

.field private static final greylist-max-o SMART_LINKIFY_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o SMART_SELECTION_ENABLED:Ljava/lang/String; = "smart_selection_enabled"

.field private static final greylist-max-o SMART_SELECTION_ENABLED_DEFAULT:Z = true

.field private static final blacklist SMART_SELECTION_TRIM_DELTA:Ljava/lang/String; = "smart_selection_trim_delta"

.field private static final blacklist SMART_SELECTION_TRIM_DELTA_DEFAULT:I = 0x78

.field private static final greylist-max-o SMART_SELECT_ANIMATION_ENABLED:Ljava/lang/String; = "smart_select_animation_enabled"

.field private static final greylist-max-o SMART_SELECT_ANIMATION_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o SMART_TEXT_SHARE_ENABLED:Ljava/lang/String; = "smart_text_share_enabled"

.field private static final greylist-max-o SMART_TEXT_SHARE_ENABLED_DEFAULT:Z = true

.field static final blacklist SYSTEM_TEXT_CLASSIFIER_API_TIMEOUT_IN_SECOND:Ljava/lang/String; = "system_textclassifier_api_timeout_in_second"

.field private static final blacklist SYSTEM_TEXT_CLASSIFIER_API_TIMEOUT_IN_SECOND_DEFAULT:J = 0x3cL

.field static final greylist-max-o SYSTEM_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "system_textclassifier_enabled"

.field private static final greylist-max-o SYSTEM_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field static final blacklist TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String; = "textclassifier_service_package_override"

.field private static blacklist sGenerateLinksMaxTextLength:I

.field private static blacklist sLocalTextClassifierEnabled:Z

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static volatile blacklist sMemoizedValuesInitialized:Z

.field private static blacklist sModelDarkLaunchEnabled:Z

.field private static blacklist sSmartLinkifyEnabled:Z

.field private static blacklist sSmartSelectAnimationEnabled:Z

.field private static blacklist sSmartSelectionEnabled:Z

.field private static blacklist sSmartSelectionTrimDelta:I

.field private static blacklist sSmartTextShareEnabled:Z

.field private static blacklist sSystemTextClassifierApiTimeoutInSecond:J

.field private static blacklist sSystemTextClassifierEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    const/4 v0, 0x0

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ensureMemoizedValues()V
    .registers 7

    .line 124
    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sMemoizedValuesInitialized:Z

    if-eqz v0, :cond_5

    .line 125
    return-void

    .line 127
    :cond_5
    sget-object v0, Landroid/view/textclassifier/TextClassificationConstants;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_8
    sget-boolean v1, Landroid/view/textclassifier/TextClassificationConstants;->sMemoizedValuesInitialized:Z

    if-eqz v1, :cond_e

    .line 129
    monitor-exit v0

    return-void

    .line 134
    :cond_e
    const-string/jumbo v1, "textclassifier"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 135
    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 136
    .local v1, "properties":Landroid/provider/DeviceConfig$Properties;
    const-string v3, "local_textclassifier_enabled"

    .line 137
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/view/textclassifier/TextClassificationConstants;->sLocalTextClassifierEnabled:Z

    .line 140
    const-string v3, "model_dark_launch_enabled"

    .line 141
    invoke-virtual {v1, v3, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sModelDarkLaunchEnabled:Z

    .line 144
    const-string/jumbo v2, "smart_selection_enabled"

    .line 145
    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectionEnabled:Z

    .line 148
    const-string/jumbo v2, "smart_text_share_enabled"

    .line 149
    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartTextShareEnabled:Z

    .line 152
    const-string/jumbo v2, "smart_linkify_enabled"

    .line 153
    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartLinkifyEnabled:Z

    .line 156
    const-string/jumbo v2, "smart_select_animation_enabled"

    .line 157
    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectAnimationEnabled:Z

    .line 160
    const-string v2, "generate_links_max_text_length"

    .line 161
    const v3, 0x186a0

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/view/textclassifier/TextClassificationConstants;->sGenerateLinksMaxTextLength:I

    .line 164
    const-string/jumbo v2, "system_textclassifier_api_timeout_in_second"

    .line 165
    const-wide/16 v5, 0x3c

    invoke-virtual {v1, v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/view/textclassifier/TextClassificationConstants;->sSystemTextClassifierApiTimeoutInSecond:J

    .line 168
    const-string/jumbo v2, "smart_selection_trim_delta"

    .line 169
    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectionTrimDelta:I

    .line 173
    sput-boolean v4, Landroid/view/textclassifier/TextClassificationConstants;->sMemoizedValuesInitialized:Z

    .line 174
    .end local v1    # "properties":Landroid/provider/DeviceConfig$Properties;
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_8 .. :try_end_74} :catchall_72

    throw v1
.end method

.method public static blacklist resetMemoizedValues()V
    .registers 1

    .line 179
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sMemoizedValuesInitialized:Z

    .line 180
    return-void
.end method


# virtual methods
.method blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 246
    const-string v0, "TextClassificationConstants:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 248
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "generate_links_max_text_length"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 249
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isLocalTextClassifierEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "local_textclassifier_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 250
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "model_dark_launch_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 251
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_linkify_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 252
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionAnimationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_select_animation_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 253
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_selection_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 254
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartTextShareEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_text_share_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 255
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSystemTextClassifierEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "system_textclassifier_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 256
    nop

    .line 258
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string/jumbo v1, "textclassifier_service_package_override"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 260
    nop

    .line 262
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getSystemTextClassifierApiTimeoutInSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 260
    const-string/jumbo v1, "system_textclassifier_api_timeout_in_second"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 264
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getSmartSelectionTrimDelta()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "smart_selection_trim_delta"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 265
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 266
    return-void
.end method

.method public greylist-max-o getGenerateLinksMaxTextLength()I
    .registers 2

    .line 231
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 232
    sget v0, Landroid/view/textclassifier/TextClassificationConstants;->sGenerateLinksMaxTextLength:I

    return v0
.end method

.method public blacklist getSmartSelectionTrimDelta()I
    .registers 2

    .line 241
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 242
    sget v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectionTrimDelta:I

    return v0
.end method

.method public blacklist getSystemTextClassifierApiTimeoutInSecond()J
    .registers 3

    .line 236
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 237
    sget-wide v0, Landroid/view/textclassifier/TextClassificationConstants;->sSystemTextClassifierApiTimeoutInSecond:J

    return-wide v0
.end method

.method public blacklist getTextClassifierServicePackageOverride()Ljava/lang/String;
    .registers 4

    .line 186
    const-string/jumbo v0, "textclassifier_service_package_override"

    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

    const-string/jumbo v2, "textclassifier"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isLocalTextClassifierEnabled()Z
    .registers 2

    .line 193
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 194
    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sLocalTextClassifierEnabled:Z

    return v0
.end method

.method public greylist-max-o isModelDarkLaunchEnabled()Z
    .registers 2

    .line 206
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 207
    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sModelDarkLaunchEnabled:Z

    return v0
.end method

.method public greylist-max-o isSmartLinkifyEnabled()Z
    .registers 2

    .line 221
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 222
    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartLinkifyEnabled:Z

    return v0
.end method

.method public greylist-max-o isSmartSelectionAnimationEnabled()Z
    .registers 2

    .line 226
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 227
    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectAnimationEnabled:Z

    return v0
.end method

.method public greylist-max-o isSmartSelectionEnabled()Z
    .registers 2

    .line 211
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 212
    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectionEnabled:Z

    return v0
.end method

.method public greylist-max-o isSmartTextShareEnabled()Z
    .registers 2

    .line 216
    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    .line 217
    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartTextShareEnabled:Z

    return v0
.end method

.method public greylist-max-o isSystemTextClassifierEnabled()Z
    .registers 4

    .line 200
    const-string/jumbo v0, "system_textclassifier_enabled"

    const/4 v1, 0x1

    const-string/jumbo v2, "textclassifier"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
