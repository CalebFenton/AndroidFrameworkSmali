.class public Landroid/security/ConfirmationPrompt;
.super Ljava/lang/Object;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/ConfirmationPrompt$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ConfirmationPrompt"


# instance fields
.field private greylist-max-o mCallback:Landroid/security/ConfirmationCallback;

.field private final blacklist mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mExtraData:[B

.field private greylist-max-o mPromptText:Ljava/lang/CharSequence;

.field private blacklist mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/security/ConfirmationPrompt;)Landroid/security/ConfirmationCallback;
    .registers 1

    iget-object p0, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/security/ConfirmationPrompt;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/security/ConfirmationPrompt;Landroid/security/ConfirmationCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Landroid/security/ConfirmationPrompt;Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoCallback(Landroid/security/ConfirmationPrompt;I[BLandroid/security/ConfirmationCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/security/ConfirmationPrompt;->doCallback(I[BLandroid/security/ConfirmationCallback;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/CharSequence;[B)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "promptText"    # Ljava/lang/CharSequence;
    .param p3, "extraData"    # [B

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/security/ConfirmationPrompt$1;

    invoke-direct {v0, p0}, Landroid/security/ConfirmationPrompt$1;-><init>(Landroid/security/ConfirmationPrompt;)V

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    .line 211
    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Landroid/security/ConfirmationPrompt;->mPromptText:Ljava/lang/CharSequence;

    .line 213
    iput-object p3, p0, Landroid/security/ConfirmationPrompt;->mExtraData:[B

    .line 214
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Ljava/lang/CharSequence;[BLandroid/security/ConfirmationPrompt-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/security/ConfirmationPrompt;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[B)V

    return-void
.end method

.method private greylist-max-o doCallback(I[BLandroid/security/ConfirmationCallback;)V
    .registers 7
    .param p1, "responseCode"    # I
    .param p2, "dataThatWasConfirmed"    # [B
    .param p3, "callback"    # Landroid/security/ConfirmationCallback;

    .line 106
    packed-switch p1, :pswitch_data_3e

    .line 124
    :pswitch_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from onConfirmtionPromptCompleted() callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/security/ConfirmationCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 120
    :pswitch_25
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "System error returned by ConfirmationUI."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/security/ConfirmationCallback;->onError(Ljava/lang/Throwable;)V

    .line 121
    goto :goto_3c

    .line 116
    :pswitch_30
    invoke-virtual {p3}, Landroid/security/ConfirmationCallback;->onCanceled()V

    .line 117
    goto :goto_3c

    .line 112
    :pswitch_34
    invoke-virtual {p3}, Landroid/security/ConfirmationCallback;->onDismissed()V

    .line 113
    goto :goto_3c

    .line 108
    :pswitch_38
    invoke-virtual {p3, p2}, Landroid/security/ConfirmationCallback;->onConfirmed([B)V

    .line 109
    nop

    .line 128
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_3
        :pswitch_3
        :pswitch_25
    .end packed-switch
.end method

.method private blacklist getService()Landroid/security/AndroidProtectedConfirmation;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    if-nez v0, :cond_b

    .line 99
    new-instance v0, Landroid/security/AndroidProtectedConfirmation;

    invoke-direct {v0}, Landroid/security/AndroidProtectedConfirmation;-><init>()V

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    .line 101
    :cond_b
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    return-object v0
.end method

.method private greylist-max-o getUiOptionsAsFlags()I
    .registers 9

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "uiOptionsAsFlags":I
    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 219
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 221
    .local v2, "inversionEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 222
    or-int/lit8 v0, v0, 0x1

    .line 224
    :cond_13
    const-string v3, "font_scale"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 226
    .local v3, "fontScale":F
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_24

    .line 227
    or-int/lit8 v0, v0, 0x2

    .line 229
    :cond_24
    return v0
.end method

.method private static greylist-max-o isAccessibilityServiceRunning(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "serviceRunning":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 236
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_10

    .line 238
    .local v2, "a11yEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 239
    const/4 v0, 0x1

    .line 244
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "a11yEnabled":I
    :cond_f
    goto :goto_1b

    .line 241
    :catch_10
    move-exception v1

    .line 242
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ConfirmationPrompt"

    const-string v3, "Unexpected SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 245
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1b
    return v0
.end method

.method public static whitelist isSupported(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 332
    invoke-static {p0}, Landroid/security/ConfirmationPrompt;->isAccessibilityServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 333
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_8
    new-instance v0, Landroid/security/AndroidProtectedConfirmation;

    invoke-direct {v0}, Landroid/security/AndroidProtectedConfirmation;-><init>()V

    invoke-virtual {v0}, Landroid/security/AndroidProtectedConfirmation;->isConfirmationPromptSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist cancelPrompt()V
    .registers 4

    .line 310
    nop

    .line 311
    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getService()Landroid/security/AndroidProtectedConfirmation;

    move-result-object v0

    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    invoke-virtual {v0, v1}, Landroid/security/AndroidProtectedConfirmation;->cancelConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;)I

    move-result v0

    .line 312
    .local v0, "responseCode":I
    if-nez v0, :cond_e

    .line 313
    return-void

    .line 314
    :cond_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 315
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 318
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from cancelConfirmationPrompt() call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmationPrompt"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public whitelist presentPrompt(Ljava/util/concurrent/Executor;Landroid/security/ConfirmationCallback;)V
    .registers 10
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/security/ConfirmationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/ConfirmationAlreadyPresentingException;,
            Landroid/security/ConfirmationNotAvailableException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    if-nez v0, :cond_68

    .line 270
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/security/ConfirmationPrompt;->isAccessibilityServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 273
    iput-object p2, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    .line 274
    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 276
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "locale":Ljava/lang/String;
    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getUiOptionsAsFlags()I

    move-result v6

    .line 278
    .local v6, "uiOptionsAsFlags":I
    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getService()Landroid/security/AndroidProtectedConfirmation;

    move-result-object v1

    iget-object v2, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mPromptText:Ljava/lang/CharSequence;

    .line 279
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/security/ConfirmationPrompt;->mExtraData:[B

    .line 278
    invoke-virtual/range {v1 .. v6}, Landroid/security/AndroidProtectedConfirmation;->presentConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "responseCode":I
    sparse-switch v0, :sswitch_data_6e

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from presentConfirmationPrompt() call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmationPrompt"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 289
    :sswitch_55
    new-instance v1, Landroid/security/ConfirmationNotAvailableException;

    invoke-direct {v1}, Landroid/security/ConfirmationNotAvailableException;-><init>()V

    throw v1

    .line 286
    :sswitch_5b
    new-instance v1, Landroid/security/ConfirmationAlreadyPresentingException;

    invoke-direct {v1}, Landroid/security/ConfirmationAlreadyPresentingException;-><init>()V

    throw v1

    .line 283
    :sswitch_61
    return-void

    .line 271
    .end local v0    # "responseCode":I
    .end local v5    # "locale":Ljava/lang/String;
    .end local v6    # "uiOptionsAsFlags":I
    :cond_62
    new-instance v0, Landroid/security/ConfirmationNotAvailableException;

    invoke-direct {v0}, Landroid/security/ConfirmationNotAvailableException;-><init>()V

    throw v0

    .line 268
    :cond_68
    new-instance v0, Landroid/security/ConfirmationAlreadyPresentingException;

    invoke-direct {v0}, Landroid/security/ConfirmationAlreadyPresentingException;-><init>()V

    throw v0

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_61
        0x3 -> :sswitch_5b
        0x6 -> :sswitch_55
    .end sparse-switch
.end method
