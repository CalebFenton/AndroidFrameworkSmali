.class public Landroid/preference/RingtonePreference;
.super Landroid/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private greylist mRequestCode:I

.field private greylist-max-o mRingtoneType:I

.field private greylist-max-o mShowDefault:Z

.field private greylist-max-o mShowSilent:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    sget-object v0, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    .line 70
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    .line 72
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist getRingtoneType()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public whitelist getShowDefault()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public whitelist getShowSilent()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;)Z
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 248
    iget v0, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    if-ne p1, v0, :cond_24

    .line 250
    if-eqz p3, :cond_22

    .line 251
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 253
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    invoke-virtual {p0, v1}, Landroid/preference/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 254
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 258
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_22
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 3
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .line 240
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 242
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 243
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    .line 244
    return-void
.end method

.method protected whitelist onClick()V
    .registers 5

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v1

    .line 154
    .local v1, "owningFragment":Landroid/preference/PreferenceFragment;
    if-eqz v1, :cond_1a

    .line 155
    iget v2, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_27

    .line 157
    :cond_1a
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    :goto_27
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 214
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 170
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_23

    .line 175
    nop

    .line 176
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 175
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    :cond_23
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 182
    const-string v0, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    return-void
.end method

.method protected whitelist onRestoreRingtone()Landroid/net/Uri;
    .registers 4

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method protected whitelist onSaveRingtone(Landroid/net/Uri;)V
    .registers 3
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 195
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 196
    return-void
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 5
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValueObj"    # Ljava/lang/Object;

    .line 219
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 229
    return-void

    .line 233
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 234
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 236
    :cond_13
    return-void
.end method

.method public whitelist setRingtoneType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 106
    iput p1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    .line 107
    return-void
.end method

.method public whitelist setShowDefault(Z)V
    .registers 2
    .param p1, "showDefault"    # Z

    .line 126
    iput-boolean p1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    .line 127
    return-void
.end method

.method public whitelist setShowSilent(Z)V
    .registers 2
    .param p1, "showSilent"    # Z

    .line 145
    iput-boolean p1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    .line 146
    return-void
.end method
