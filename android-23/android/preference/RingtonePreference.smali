.class public Landroid/preference/RingtonePreference;
.super Landroid/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 73
    const v0, 0x1010093

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 58
    sget-object v1, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    #@6
    .line 57
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e
    move-result v1

    #@f
    iput v1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    #@11
    .line 61
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@14
    move-result v1

    #@15
    iput-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    #@17
    .line 63
    const/4 v1, 0x2

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b
    move-result v1

    #@1c
    iput-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    #@1e
    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@21
    .line 54
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    #@2
    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    #@0
    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    #@2
    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    #@0
    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    #@2
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 239
    iget v1, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    #@2
    if-ne p1, v1, :cond_2

    #@4
    .line 241
    if-eqz p3, :cond_0

    #@6
    .line 242
    const-string/jumbo v1, "android.intent.extra.ringtone.PICKED_URI"

    #@9
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/net/Uri;

    #@f
    .line 244
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    #@11
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :goto_0
    invoke-virtual {p0, v1}, Landroid/preference/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 245
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    #@1e
    .line 249
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    #@1f
    return v1

    #@20
    .line 244
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v1, ""

    #@23
    goto :goto_0

    #@24
    .line 252
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    #@25
    return v1
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    #@0
    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    #@3
    .line 233
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    #@6
    .line 234
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextRequestCode()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    #@c
    .line 230
    return-void
.end method

.method protected onClick()V
    .locals 4

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.RINGTONE_PICKER"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    #@b
    .line 144
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    #@12
    move-result-object v1

    #@13
    .line 145
    .local v1, "owningFragment":Landroid/preference/PreferenceFragment;
    if-eqz v1, :cond_0

    #@15
    .line 146
    iget v2, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    #@17
    invoke-virtual {v1, v0, v2}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    #@1a
    .line 140
    :goto_0
    return-void

    #@1b
    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    #@22
    move-result-object v2

    #@23
    iget v3, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    #@25
    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@28
    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 205
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 161
    const-string/jumbo v0, "android.intent.extra.ringtone.EXISTING_URI"

    #@3
    .line 162
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    #@6
    move-result-object v1

    #@7
    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@a
    .line 164
    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    #@d
    iget-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@12
    .line 165
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 166
    const-string/jumbo v0, "android.intent.extra.ringtone.DEFAULT_URI"

    #@19
    .line 167
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    #@1c
    move-result v1

    #@1d
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    #@20
    move-result-object v1

    #@21
    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@24
    .line 170
    :cond_0
    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_SILENT"

    #@27
    iget-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    #@29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@2c
    .line 171
    const-string/jumbo v0, "android.intent.extra.ringtone.TYPE"

    #@2f
    iget v1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    #@31
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@34
    .line 172
    const-string/jumbo v0, "android.intent.extra.ringtone.TITLE"

    #@37
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@3e
    .line 173
    const-string/jumbo v0, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    #@41
    .line 174
    const/16 v1, 0x40

    #@43
    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@46
    .line 159
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 199
    invoke-virtual {p0, v1}, Landroid/preference/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 200
    .local v0, "uriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 186
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->persistString(Ljava/lang/String;)Z

    #@9
    .line 185
    return-void

    #@a
    .line 186
    :cond_0
    const-string/jumbo v0, ""

    #@d
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValueObj"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p2

    #@1
    .line 210
    check-cast v0, Ljava/lang/String;

    #@3
    .line 219
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@5
    .line 220
    return-void

    #@6
    .line 224
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 225
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p0, v1}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    #@13
    .line 209
    :cond_1
    return-void
.end method

.method public setRingtoneType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 97
    iput p1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    #@2
    .line 96
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .param p1, "showDefault"    # Z

    #@0
    .prologue
    .line 117
    iput-boolean p1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    #@2
    .line 116
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .param p1, "showSilent"    # Z

    #@0
    .prologue
    .line 136
    iput-boolean p1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    #@2
    .line 135
    return-void
.end method
