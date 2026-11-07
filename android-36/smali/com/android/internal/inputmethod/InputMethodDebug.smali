.class public final Lcom/android/internal/inputmethod/InputMethodDebug;
.super Ljava/lang/Object;
.source "InputMethodDebug.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static blacklist dumpViewInfo(Landroid/view/View;)Ljava/lang/String;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 352
    if-nez p0, :cond_5

    .line 353
    const-string v0, "null"

    return-object v0

    .line 355
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",windowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",temporaryDetach="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",hasImeFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist handwritingGestureTypeFlagsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "gestureTypeFlags"    # I

    .line 323
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 324
    .local v0, "joiner":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    .line 325
    const-string v1, "SELECT"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 327
    :cond_11
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1a

    .line 328
    const-string v1, "SELECT_RANGE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 330
    :cond_1a
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_23

    .line 331
    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 333
    :cond_23
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2c

    .line 334
    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 336
    :cond_2c
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_35

    .line 337
    const-string v1, "DELETE_RANGE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 339
    :cond_35
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3e

    .line 340
    const-string v1, "REMOVE_SPACE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 342
    :cond_3e
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_47

    .line 343
    const-string v1, "JOIN_OR_SPLIT"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 345
    :cond_47
    const-string v1, "(none)"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist softInputDisplayReasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 191
    packed-switch p0, :pswitch_data_c8

    .line 311
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 309
    :pswitch_17
    const-string v0, "IME_REQUESTED_CHANGED_LISTENER"

    return-object v0

    .line 307
    :pswitch_1a
    const-string v0, "HIDE_WINDOW_LOST_FOCUS"

    return-object v0

    .line 305
    :pswitch_1d
    const-string v0, "HIDE_INPUT_TARGET_CHANGED"

    return-object v0

    .line 303
    :pswitch_20
    const-string v0, "SHOW_INPUT_TARGET_CHANGED"

    return-object v0

    .line 301
    :pswitch_23
    const-string v0, "CONTROL_WINDOW_INSETS_ANIMATION"

    return-object v0

    .line 299
    :pswitch_26
    const-string v0, "SHOW_SOFT_INPUT_IMM_DEPRECATION"

    return-object v0

    .line 297
    :pswitch_29
    const-string v0, "SHOW_SOFT_INPUT_IME_TOGGLE_SOFT_INPUT"

    return-object v0

    .line 295
    :pswitch_2c
    const-string v0, "HIDE_SOFT_INPUT_REQUEST_HIDE_WITH_CONTROL"

    return-object v0

    .line 293
    :pswitch_2f
    const-string v0, "HIDE_SOFT_INPUT_ON_ANIMATION_STATE_CHANGED"

    return-object v0

    .line 291
    :pswitch_32
    const-string v0, "UNBIND_CURRENT_METHOD"

    return-object v0

    .line 289
    :pswitch_35
    const-string v0, "DISPLAY_CONTROLS_CHANGED"

    return-object v0

    .line 287
    :pswitch_38
    const-string v0, "DISPLAY_INSETS_CHANGED"

    return-object v0

    .line 285
    :pswitch_3b
    const-string v0, "DISPLAY_CONFIGURATION_CHANGED"

    return-object v0

    .line 283
    :pswitch_3e
    const-string v0, "CONTROLS_CHANGED"

    return-object v0

    .line 281
    :pswitch_41
    const-string v0, "UPDATE_CANDIDATES_VIEW_VISIBILITY"

    return-object v0

    .line 279
    :pswitch_44
    const-string v0, "RESET_NEW_CONFIGURATION"

    return-object v0

    .line 277
    :pswitch_47
    const-string v0, "HIDE_WINDOW_LEGACY_DIRECT"

    return-object v0

    .line 275
    :pswitch_4a
    const-string v0, "SHOW_WINDOW_LEGACY_DIRECT"

    return-object v0

    .line 273
    :pswitch_4d
    const-string v0, "HIDE_SOFT_INPUT_LEGACY_DIRECT"

    return-object v0

    .line 271
    :pswitch_50
    const-string v0, "SHOW_SOFT_INPUT_LEGACY_DIRECT"

    return-object v0

    .line 269
    :pswitch_53
    const-string v0, "HIDE_SOFT_INPUT_FROM_VIEW"

    return-object v0

    .line 267
    :pswitch_56
    const-string v0, "HIDE_SOFT_INPUT_CLOSE_CURRENT_SESSION"

    return-object v0

    .line 265
    :pswitch_59
    const-string v0, "HIDE_WHEN_INPUT_TARGET_INVISIBLE"

    return-object v0

    .line 263
    :pswitch_5c
    const-string v0, "REMOVE_IME_SCREENSHOT_FROM_IMMS"

    return-object v0

    .line 261
    :pswitch_5f
    const-string v0, "SHOW_IME_SCREENSHOT_FROM_IMMS"

    return-object v0

    .line 259
    :pswitch_62
    const-string v0, "HIDE_WINDOW_GAINED_FOCUS_WITHOUT_EDITOR"

    return-object v0

    .line 257
    :pswitch_65
    const-string v0, "HIDE_SOFT_INPUT_IMM_DEPRECATION"

    return-object v0

    .line 255
    :pswitch_68
    const-string v0, "HIDE_SOFT_INPUT_EXTRACT_INPUT_CHANGED"

    return-object v0

    .line 253
    :pswitch_6b
    const-string v0, "HIDE_SOFT_INPUT_IME_TOGGLE_SOFT_INPUT"

    return-object v0

    .line 251
    :pswitch_6e
    const-string v0, "HIDE_SOFT_INPUT_BY_BACK_KEY"

    return-object v0

    .line 249
    :pswitch_71
    const-string v0, "HIDE_SOFT_INPUT_BY_INSETS_API"

    return-object v0

    .line 247
    :pswitch_74
    const-string v0, "HIDE_DISPLAY_IME_POLICY_HIDE"

    return-object v0

    .line 245
    :pswitch_77
    const-string v0, "SHOW_SOFT_INPUT_BY_INSETS_API"

    return-object v0

    .line 243
    :pswitch_7a
    const-string v0, "HIDE_TOGGLE_SOFT_INPUT"

    return-object v0

    .line 241
    :pswitch_7d
    const-string v0, "SHOW_TOGGLE_SOFT_INPUT"

    return-object v0

    .line 239
    :pswitch_80
    const-string v0, "SHOW_RESTORE_IME_VISIBILITY"

    return-object v0

    .line 237
    :pswitch_83
    const-string v0, "HIDE_REMOVE_CLIENT"

    return-object v0

    .line 235
    :pswitch_86
    const-string v0, "HIDE_SAME_WINDOW_FOCUSED_WITHOUT_EDITOR"

    return-object v0

    .line 233
    :pswitch_89
    const-string v0, "HIDE_BUBBLES"

    return-object v0

    .line 231
    :pswitch_8c
    const-string v0, "HIDE_RECENTS_ANIMATION"

    return-object v0

    .line 229
    :pswitch_8f
    const-string v0, "HIDE_DOCKED_STACK_ATTACHED"

    return-object v0

    .line 227
    :pswitch_92
    const-string v0, "HIDE_POWER_BUTTON_GO_HOME"

    return-object v0

    .line 225
    :pswitch_95
    const-string v0, "HIDE_SETTINGS_ON_CHANGE"

    return-object v0

    .line 223
    :pswitch_98
    const-string v0, "HIDE_RESET_SHELL_COMMAND"

    return-object v0

    .line 221
    :pswitch_9b
    const-string v0, "HIDE_ALWAYS_HIDDEN_STATE"

    return-object v0

    .line 219
    :pswitch_9e
    const-string v0, "HIDE_STATE_HIDDEN_FORWARD_NAV"

    return-object v0

    .line 217
    :pswitch_a1
    const-string v0, "HIDE_UNSPECIFIED_WINDOW"

    return-object v0

    .line 215
    :pswitch_a4
    const-string v0, "HIDE_INVALID_USER"

    return-object v0

    .line 213
    :pswitch_a7
    const-string v0, "HIDE_SWITCH_USER"

    return-object v0

    .line 211
    :pswitch_aa
    const-string v0, "SHOW_SETTINGS_ON_CHANGE"

    return-object v0

    .line 209
    :pswitch_ad
    const-string v0, "SHOW_STATE_ALWAYS_VISIBLE"

    return-object v0

    .line 207
    :pswitch_b0
    const-string v0, "SHOW_STATE_VISIBLE_FORWARD_NAV"

    return-object v0

    .line 205
    :pswitch_b3
    const-string v0, "SHOW_AUTO_EDITOR_FORWARD_NAV"

    return-object v0

    .line 203
    :pswitch_b6
    const-string v0, "HIDE_SOFT_INPUT_FROM_IME"

    return-object v0

    .line 201
    :pswitch_b9
    const-string v0, "HIDE_SOFT_INPUT"

    return-object v0

    .line 199
    :pswitch_bc
    const-string v0, "SHOW_SOFT_INPUT_FROM_IME"

    return-object v0

    .line 197
    :pswitch_bf
    const-string v0, "ATTACH_NEW_INPUT"

    return-object v0

    .line 195
    :pswitch_c2
    const-string v0, "SHOW_SOFT_INPUT"

    return-object v0

    .line 193
    :pswitch_c5
    const-string v0, "NOT_SET"

    return-object v0

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_3
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public static blacklist softInputModeToString(I)Ljava/lang/String;
    .registers 8
    .param p0, "softInputMode"    # I

    .line 109
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    .local v0, "joiner":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0xf

    .line 111
    .local v1, "state":I
    and-int/lit16 v2, p0, 0xf0

    .line 112
    .local v2, "adjust":I
    and-int/lit16 v3, p0, 0x100

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 115
    .local v3, "isForwardNav":Z
    :goto_13
    const-string v4, ")"

    packed-switch v1, :pswitch_data_a0

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_UNKNOWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_57

    .line 132
    :pswitch_33
    const-string v5, "STATE_ALWAYS_VISIBLE"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 133
    goto :goto_57

    .line 129
    :pswitch_39
    const-string v5, "STATE_VISIBLE"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 130
    goto :goto_57

    .line 126
    :pswitch_3f
    const-string v5, "STATE_ALWAYS_HIDDEN"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    goto :goto_57

    .line 123
    :pswitch_45
    const-string v5, "STATE_HIDDEN"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 124
    goto :goto_57

    .line 120
    :pswitch_4b
    const-string v5, "STATE_UNCHANGED"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 121
    goto :goto_57

    .line 117
    :pswitch_51
    const-string v5, "STATE_UNSPECIFIED"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    nop

    .line 139
    :goto_57
    sparse-switch v2, :sswitch_data_b0

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADJUST_UNKNOWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_8d

    .line 150
    :sswitch_75
    const-string v4, "ADJUST_NOTHING"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 151
    goto :goto_8d

    .line 147
    :sswitch_7b
    const-string v4, "ADJUST_PAN"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    goto :goto_8d

    .line 144
    :sswitch_81
    const-string v4, "ADJUST_RESIZE"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 145
    goto :goto_8d

    .line 141
    :sswitch_87
    const-string v4, "ADJUST_UNSPECIFIED"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 142
    nop

    .line 157
    :goto_8d
    if-eqz v3, :cond_94

    .line 159
    const-string v4, "IS_FORWARD_NAVIGATION"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 162
    :cond_94
    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
    .end packed-switch

    :sswitch_data_b0
    .sparse-switch
        0x0 -> :sswitch_87
        0x10 -> :sswitch_81
        0x20 -> :sswitch_7b
        0x30 -> :sswitch_75
    .end sparse-switch
.end method

.method public static blacklist startInputFlagsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "startInputFlags"    # I

    .line 172
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 173
    .local v0, "joiner":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    .line 174
    const-string v1, "VIEW_HAS_FOCUS"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 176
    :cond_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1a

    .line 177
    const-string v1, "IS_TEXT_EDITOR"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 179
    :cond_1a
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_23

    .line 180
    const-string v1, "INITIAL_CONNECTION"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 183
    :cond_23
    const-string v1, "(none)"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist startInputReasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 45
    packed-switch p0, :pswitch_data_3c

    .line 71
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_17
    const-string v0, "BOUND_ACCESSIBILITY_SESSION_TO_IMMS"

    return-object v0

    .line 67
    :pswitch_1a
    const-string v0, "SESSION_CREATED_BY_IME"

    return-object v0

    .line 65
    :pswitch_1d
    const-string v0, "DEACTIVATED_BY_IMMS"

    return-object v0

    .line 63
    :pswitch_20
    const-string v0, "ACTIVATED_BY_IMMS"

    return-object v0

    .line 61
    :pswitch_23
    const-string v0, "UNBOUND_FROM_IMMS"

    return-object v0

    .line 59
    :pswitch_26
    const-string v0, "BOUND_TO_IMMS"

    return-object v0

    .line 57
    :pswitch_29
    const-string v0, "CHECK_FOCUS"

    return-object v0

    .line 55
    :pswitch_2c
    const-string v0, "APP_CALLED_RESTART_INPUT_API"

    return-object v0

    .line 53
    :pswitch_2f
    const-string v0, "SCHEDULED_CHECK_FOCUS"

    return-object v0

    .line 51
    :pswitch_32
    const-string v0, "WINDOW_FOCUS_GAIN_REPORT_ONLY"

    return-object v0

    .line 49
    :pswitch_35
    const-string v0, "WINDOW_FOCUS_GAIN"

    return-object v0

    .line 47
    :pswitch_38
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method public static blacklist unbindReasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 82
    packed-switch p0, :pswitch_data_2c

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :pswitch_17
    const-string v0, "SWITCH_USER"

    return-object v0

    .line 94
    :pswitch_1a
    const-string v0, "SWITCH_IME_FAILED"

    return-object v0

    .line 92
    :pswitch_1d
    const-string v0, "NO_IME"

    return-object v0

    .line 90
    :pswitch_20
    const-string v0, "DISCONNECT_IME"

    return-object v0

    .line 88
    :pswitch_23
    const-string v0, "SWITCH_IME"

    return-object v0

    .line 86
    :pswitch_26
    const-string v0, "SWITCH_CLIENT"

    return-object v0

    .line 84
    :pswitch_29
    const-string v0, "UNSPECIFIED"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method
