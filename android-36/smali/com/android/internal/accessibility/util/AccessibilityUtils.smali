.class public final Lcom/android/internal/accessibility/util/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/util/AccessibilityUtils$State;,
        Lcom/android/internal/accessibility/util/AccessibilityUtils$A11yTextChangeType;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_MENU_IN_SYSTEM:Landroid/content/ComponentName;

.field public static final blacklist MENU_SERVICE_RELATIVE_CLASS_NAME:Ljava/lang/String; = ".AccessibilityMenuService"

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist PARCELABLE_SPAN:I = 0x2

.field public static final blacklist TEXT:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui.accessibility.accessibilitymenu"

    const-string v2, "com.android.systemui.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/util/AccessibilityUtils;->ACCESSIBILITY_MENU_IN_SYSTEM:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static blacklist findA11yMenuComponentNames(Landroid/content/pm/PackageManager;I)Ljava/util/Set;
    .registers 9
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 342
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-wide/32 v1, 0xc0200

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 346
    .local v1, "flags":Landroid/content/pm/PackageManager$ResolveInfoFlags;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 348
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 349
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".AccessibilityMenuService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 350
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_3c
    goto :goto_1b

    .line 353
    :cond_3d
    return-object v0
.end method

.method public static blacklist getAccessibilityMenuComponentToMigrate(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .registers 6
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I

    .line 325
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->findA11yMenuComponentNames(Landroid/content/pm/PackageManager;I)Ljava/util/Set;

    move-result-object v0

    .line 327
    .local v0, "menuComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/util/AccessibilityUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 328
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 329
    .local v1, "menuOutsideSystem":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    sget-object v2, Lcom/android/internal/accessibility/util/AccessibilityUtils;->ACCESSIBILITY_MENU_IN_SYSTEM:Landroid/content/ComponentName;

    .line 330
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 331
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 332
    .local v2, "shouldMigrateToMenuInSystem":Z
    :goto_2d
    if-eqz v2, :cond_36

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    return-object v3
.end method

.method public static blacklist getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 6
    .param p0, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 180
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 182
    .local v0, "targetSdk":I
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    .line 185
    .local v1, "requestA11yButton":Z
    :goto_15
    const/16 v4, 0x1d

    if-gt v0, v4, :cond_1a

    .line 186
    return v3

    .line 188
    :cond_1a
    if-eqz v1, :cond_1d

    .line 189
    goto :goto_1e

    .line 190
    :cond_1d
    const/4 v2, 0x2

    .line 188
    :goto_1e
    return v2
.end method

.method public static blacklist getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 106
    nop

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "enabledServicesSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 113
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v1, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 116
    .local v2, "colonSplitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 118
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 121
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_3e

    .line 122
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v4    # "componentNameString":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_3e
    goto :goto_29

    .line 126
    :cond_3f
    return-object v1
.end method

.method public static blacklist getInstalledAccessibilityServiceComponentNameByLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;

    .line 360
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 361
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 362
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 363
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    .line 365
    .local v1, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 366
    .local v3, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 367
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 368
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_45

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 369
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 370
    :cond_45
    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 372
    .end local v3    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_4f
    goto :goto_11

    .line 373
    :cond_50
    const/4 v2, 0x0

    return-object v2
.end method

.method public static blacklist interceptHeadsetHookForActiveCall(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 229
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 231
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v2

    goto :goto_11

    .line 232
    :cond_10
    move v2, v1

    :goto_11
    nop

    .line 233
    .local v2, "callState":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 234
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 235
    return v3

    .line 236
    :cond_19
    const/4 v4, 0x2

    if-ne v2, v4, :cond_20

    .line 237
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    .line 238
    return v3

    .line 240
    :cond_20
    return v1
.end method

.method public static blacklist isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentId"    # Ljava/lang/String;

    .line 202
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 204
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 205
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 208
    .local v3, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 210
    const/4 v2, 0x1

    return v2

    .line 212
    .end local v3    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v4    # "id":Ljava/lang/String;
    :cond_2e
    goto :goto_12

    .line 214
    :cond_2f
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isUserSetupCompleted(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v3, 0x1

    :cond_10
    return v3
.end method

.method static synthetic blacklist lambda$getAccessibilityMenuComponentToMigrate$0(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 328
    sget-object v0, Lcom/android/internal/accessibility/util/AccessibilityUtils;->ACCESSIBILITY_MENU_IN_SYSTEM:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist parcelableSpansEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 12
    .param p0, "before"    # Ljava/lang/CharSequence;
    .param p1, "after"    # Ljava/lang/CharSequence;

    .line 278
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 279
    .local v0, "spansA":[Ljava/lang/Object;
    sget-object v1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 280
    .local v1, "spansB":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 281
    .local v2, "a":Landroid/text/Spanned;
    const/4 v3, 0x0

    .line 282
    .local v3, "b":Landroid/text/Spanned;
    instance-of v4, p0, Landroid/text/Spanned;

    const/4 v5, 0x0

    if-eqz v4, :cond_18

    .line 283
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    .line 284
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v6, Landroid/text/ParcelableSpan;

    invoke-interface {v2, v5, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 286
    :cond_18
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_29

    .line 287
    move-object v3, p1

    check-cast v3, Landroid/text/Spanned;

    .line 288
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v6, Landroid/text/ParcelableSpan;

    invoke-interface {v3, v5, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 290
    :cond_29
    array-length v4, v0

    array-length v6, v1

    if-eq v4, v6, :cond_2e

    .line 291
    return v5

    .line 293
    :cond_2e
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    array-length v6, v0

    if-ge v4, v6, :cond_63

    .line 294
    aget-object v6, v0, v4

    .line 295
    .local v6, "thisSpan":Ljava/lang/Object;
    aget-object v7, v1, v4

    .line 296
    .local v7, "otherSpan":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_62

    .line 297
    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v3, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-ne v8, v9, :cond_62

    .line 298
    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v3, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-ne v8, v9, :cond_62

    .line 299
    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v3, v7}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    if-eq v8, v9, :cond_5f

    goto :goto_62

    .line 293
    .end local v6    # "thisSpan":Ljava/lang/Object;
    .end local v7    # "otherSpan":Ljava/lang/Object;
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 300
    .restart local v6    # "thisSpan":Ljava/lang/Object;
    .restart local v7    # "otherSpan":Ljava/lang/Object;
    :cond_62
    :goto_62
    return v5

    .line 303
    .end local v4    # "i":I
    .end local v6    # "thisSpan":Ljava/lang/Object;
    .end local v7    # "otherSpan":Ljava/lang/Object;
    :cond_63
    const/4 v4, 0x1

    return v4
.end method

.method public static blacklist setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 135
    return-void
.end method

.method public static blacklist setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 142
    invoke-static {p0, p3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    .line 145
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 146
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v1

    .line 149
    :cond_11
    if-eqz p2, :cond_17

    .line 150
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 152
    :cond_17
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v1, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 157
    .local v3, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    goto :goto_23

    .line 162
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 163
    .local v2, "enabledServicesBuilderLength":I
    if-lez v2, :cond_47

    .line 164
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 167
    :cond_47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    const-string v5, "enabled_accessibility_services"

    invoke-static {v3, v5, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 170
    return-void
.end method

.method public static blacklist textOrSpanChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "before"    # Ljava/lang/CharSequence;
    .param p1, "after"    # Ljava/lang/CharSequence;

    .line 266
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 267
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_8
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_10

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_18

    .line 270
    :cond_10
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->parcelableSpansEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 271
    const/4 v0, 0x2

    return v0

    .line 274
    :cond_18
    const/4 v0, 0x0

    return v0
.end method
