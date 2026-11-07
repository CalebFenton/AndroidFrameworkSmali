.class public Landroid/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarPreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mMax:I

.field private greylist-max-o mProgress:I

.field private greylist-max-o mTrackingTouch:Z


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    const v0, 0x11200ec

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    sget-object v0, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->setMax(I)V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    sget-object v1, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    const v2, 0x109011e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 62
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 65
    return-void
.end method

.method private greylist-max-o setProgress(IZ)V
    .registers 4
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .line 129
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_6

    .line 130
    iget p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 132
    :cond_6
    if-gez p1, :cond_9

    .line 133
    const/4 p1, 0x0

    .line 135
    :cond_9
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_17

    .line 136
    iput p1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 137
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->persistInt(I)Z

    .line 138
    if-eqz p2, :cond_17

    .line 139
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    .line 142
    :cond_17
    return-void
.end method


# virtual methods
.method public greylist-max-o getProgress()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method protected whitelist onBindView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 84
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 85
    const v0, 0x10204fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 87
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    iget v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 89
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 91
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 106
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 107
    return v1

    .line 110
    :cond_8
    const v0, 0x10204fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 111
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_14

    .line 112
    return v1

    .line 114
    :cond_14
    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 166
    if-eqz p3, :cond_9

    iget-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_9

    .line 167
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 169
    :cond_9
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 207
    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 209
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 210
    return-void

    .line 214
    :cond_10
    move-object v0, p1

    check-cast v0, Landroid/preference/SeekBarPreference$SavedState;

    .line 215
    .local v0, "myState":Landroid/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 217
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 218
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    .line 219
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 192
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 193
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 195
    return-object v0

    .line 199
    :cond_b
    new-instance v1, Landroid/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 200
    .local v1, "myState":Landroid/preference/SeekBarPreference$SavedState;
    iget v2, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    iput v2, v1, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    .line 201
    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    iput v2, v1, Landroid/preference/SeekBarPreference$SavedState;->max:I

    .line 202
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 95
    if-eqz p1, :cond_9

    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_10

    .line 96
    :cond_9
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    :goto_10
    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 97
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 174
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 179
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_e

    .line 180
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 182
    :cond_e
    return-void
.end method

.method public greylist-max-o setMax(I)V
    .registers 3
    .param p1, "max"    # I

    .line 118
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_9

    .line 119
    iput p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 120
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    .line 122
    :cond_9
    return-void
.end method

.method public greylist-max-o setProgress(I)V
    .registers 3
    .param p1, "progress"    # I

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 126
    return-void
.end method

.method greylist-max-o syncProgress(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 153
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 154
    .local v0, "progress":I
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1c

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 156
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    goto :goto_1c

    .line 158
    :cond_17
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    :cond_1c
    :goto_1c
    return-void
.end method
