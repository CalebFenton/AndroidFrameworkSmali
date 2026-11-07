.class public final Lcom/android/internal/accessibility/util/ShortcutUtils;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AccessibilityShortcutUtils"

.field private static final blacklist sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertToKey(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I

    .line 207
    sparse-switch p0, :sswitch_data_32

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported user shortcut type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :sswitch_1c
    const-string v0, "accessibility_key_gesture_targets"

    goto :goto_30

    .line 209
    :sswitch_1f
    const-string v0, "accessibility_gesture_targets"

    goto :goto_30

    .line 214
    :sswitch_22
    const-string v0, "accessibility_qs_targets"

    goto :goto_30

    .line 213
    :sswitch_25
    const-string v0, "accessibility_magnification_two_finger_triple_tap_enabled"

    goto :goto_30

    .line 211
    :sswitch_28
    const-string v0, "accessibility_display_magnification_enabled"

    goto :goto_30

    .line 210
    :sswitch_2b
    const-string v0, "accessibility_shortcut_target_service"

    goto :goto_30

    .line 208
    :sswitch_2e
    const-string v0, "accessibility_button_targets"

    .line 207
    :goto_30
    return-object v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2b
        0x4 -> :sswitch_28
        0x8 -> :sswitch_25
        0x10 -> :sswitch_22
        0x20 -> :sswitch_1f
        0x40 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static blacklist convertToType(Ljava/lang/String;)I
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_80

    :cond_a
    goto :goto_51

    :sswitch_b
    const-string v0, "accessibility_display_magnification_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_52

    :sswitch_15
    const-string v0, "accessibility_key_gesture_targets"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto :goto_52

    :sswitch_1f
    const-string v0, "accessibility_magnification_two_finger_triple_tap_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_52

    :sswitch_29
    const-string v0, "accessibility_button_targets"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_52

    :sswitch_33
    const-string v0, "accessibility_qs_targets"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_52

    :sswitch_3d
    const-string v0, "accessibility_gesture_targets"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_52

    :sswitch_47
    const-string v0, "accessibility_shortcut_target_service"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_52

    :goto_51
    const/4 v0, -0x1

    :goto_52
    packed-switch v0, :pswitch_data_9e

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported user shortcut key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_6e
    const/16 v1, 0x40

    goto :goto_7e

    .line 237
    :pswitch_71
    const/16 v1, 0x8

    goto :goto_7e

    .line 235
    :pswitch_74
    goto :goto_7e

    .line 233
    :pswitch_75
    move v1, v2

    goto :goto_7e

    .line 232
    :pswitch_77
    const/16 v1, 0x10

    goto :goto_7e

    .line 231
    :pswitch_7a
    const/16 v1, 0x20

    goto :goto_7e

    .line 230
    :pswitch_7d
    move v1, v3

    .line 229
    :goto_7e
    return v1

    nop

    :sswitch_data_80
    .sparse-switch
        -0x6f8248d1 -> :sswitch_47
        -0x3f36d8e5 -> :sswitch_3d
        -0x3977748a -> :sswitch_33
        -0x87f9bfa -> :sswitch_29
        0x1edc733a -> :sswitch_1f
        0x3ff75dbb -> :sswitch_15
        0x6e8c1b57 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_75
        :pswitch_74
        :pswitch_71
        :pswitch_6e
    .end packed-switch
.end method

.method public static blacklist getButtonMode(Landroid/content/Context;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist getEnabledShortcutTypes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Ljava/lang/String;

    .line 187
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 188
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 190
    :cond_c
    const/4 v2, 0x0

    .line 191
    .local v2, "shortcutTypes":I
    sget-object v3, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v4, v3

    :goto_10
    if-ge v1, v4, :cond_22

    aget v5, v3, v1

    .line 192
    .local v5, "shortcutType":I
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 193
    or-int/2addr v2, v5

    .line 191
    .end local v5    # "shortcutType":I
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 196
    :cond_22
    return v2
.end method

.method public static blacklist getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "targetKey":Ljava/lang/String;
    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 313
    const-string v1, "accessibility_magnification_two_finger_triple_tap_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4a

    .line 320
    :cond_15
    nop

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 320
    invoke-static {v1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "targetString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 327
    :cond_29
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 328
    .local v2, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 329
    :goto_33
    sget-object v3, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 330
    sget-object v3, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 332
    :cond_45
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 314
    .end local v1    # "targetString":Ljava/lang/String;
    .end local v2    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4a
    :goto_4a
    nop

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 314
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_58

    move v2, v3

    .line 316
    .local v2, "magnificationEnabled":Z
    :cond_58
    if-eqz v2, :cond_61

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_65

    .line 317
    :cond_61
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 316
    :goto_65
    return-object v1
.end method

.method public static blacklist isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "componentId"    # Ljava/lang/String;

    .line 141
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "targetKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "targetString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 146
    return v3

    .line 149
    :cond_14
    sget-object v2, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 150
    :goto_19
    sget-object v2, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 151
    sget-object v2, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 153
    const/4 v3, 0x1

    return v3

    .line 155
    .end local v2    # "id":Ljava/lang/String;
    :cond_2f
    goto :goto_19

    .line 157
    :cond_30
    return v3
.end method

.method public static blacklist isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .line 171
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 172
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_14

    .line 173
    nop

    .line 174
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    return v1

    .line 176
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "componentId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    new-instance v0, Ljava/util/StringJoiner;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "targetKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "targetString":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 85
    return-void

    .line 88
    :cond_1e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 91
    :cond_27
    invoke-virtual {v0, p2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    return-void
.end method

.method public static blacklist optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "componentId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    new-instance v0, Ljava/util/StringJoiner;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "targetsKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "targetsValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 116
    return-void

    .line 119
    :cond_1e
    sget-object v3, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 120
    :cond_23
    :goto_23
    sget-object v3, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 121
    sget-object v3, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 123
    goto :goto_23

    .line 125
    :cond_3e
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    .end local v3    # "id":Ljava/lang/String;
    goto :goto_23

    .line 128
    :cond_42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    return-void
.end method

.method public static blacklist setButtonMode(Landroid/content/Context;II)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 360
    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getButtonMode(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    .line 361
    return v1

    .line 363
    :cond_8
    and-int/lit8 v0, p1, 0x3

    if-eq v0, p1, :cond_25

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to set button mode to unexpected value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccessibilityShortcutUtils"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v1

    .line 370
    :cond_25
    nop

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    const-string v1, "accessibility_button_mode"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static blacklist updateInvisibleToggleAccessibilityServiceEnableState(Landroid/content/Context;Ljava/util/Set;I)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 256
    .local p1, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 257
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_b

    return-void

    .line 259
    :cond_b
    nop

    .line 260
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 263
    .local v2, "invisibleToggleServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 264
    .local v4, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-static {v4}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_37

    .line 266
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v4    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_37
    goto :goto_19

    .line 270
    :cond_38
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 271
    .local v3, "servicesWithShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_41
    if-ge v6, v5, :cond_50

    aget v7, v4, v6

    .line 276
    .local v7, "shortcutType":I
    nop

    .line 277
    invoke-static {p0, v7, p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    move-result-object v8

    .line 276
    invoke-interface {v3, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 271
    .end local v7    # "shortcutType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 280
    :cond_50
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 282
    .local v5, "componentName":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 284
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 285
    .local v6, "enableA11yService":Z
    nop

    .line 287
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 285
    invoke-static {p0, v7, v6, p2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 291
    .end local v5    # "componentName":Ljava/lang/String;
    .end local v6    # "enableA11yService":Z
    :cond_72
    goto :goto_54

    .line 292
    :cond_73
    return-void
.end method
