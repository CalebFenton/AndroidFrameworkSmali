.class public Landroid/preference/VolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VolumePreference$VolumeStore;,
        Landroid/preference/VolumePreference$SavedState;
    }
.end annotation


# instance fields
.field private mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 56
    const v0, 0x1160023

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 51
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
    const/4 v2, 0x0

    #@1
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 46
    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    #@6
    .line 45
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    #@10
    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@13
    .line 42
    return-void
.end method

.method private cleanup()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 131
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    #@8
    .line 133
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 134
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    #@f
    move-result-object v0

    #@10
    .line 135
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    #@12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 136
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1f
    move-result-object v2

    #@20
    const v3, 0x102038d

    #@23
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@26
    move-result-object v1

    #@27
    .line 137
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    #@29
    .line 138
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@2c
    .line 142
    :cond_0
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@2e
    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->revertVolume()V

    #@31
    .line 145
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@33
    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->stop()V

    #@36
    .line 146
    iput-object v4, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@38
    .line 130
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 123
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@6
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    #@9
    .line 121
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    #@3
    .line 71
    const v1, 0x102038d

    #@6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/SeekBar;

    #@c
    .line 72
    .local v0, "seekBar":Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/SeekBarVolumizer;

    #@e
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    #@11
    move-result-object v2

    #@12
    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    #@14
    const/4 v4, 0x0

    #@15
    invoke-direct {v1, v2, v3, v4, p0}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    #@18
    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@1a
    .line 73
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@1c
    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->start()V

    #@1f
    .line 74
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@21
    invoke-virtual {v1, v0}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    #@24
    .line 76
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    #@2b
    .line 80
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@2e
    .line 81
    const/4 v1, 0x1

    #@2f
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    #@32
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@35
    .line 68
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    #@0
    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    #@3
    .line 114
    if-nez p1, :cond_0

    #@5
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 115
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@b
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->revertVolume()V

    #@e
    .line 118
    :cond_0
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    #@11
    .line 111
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 87
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@4
    if-nez v1, :cond_0

    #@6
    return v3

    #@7
    .line 88
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 89
    .local v0, "isdown":Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    #@11
    .line 106
    return v2

    #@12
    .line 88
    .end local v0    # "isdown":Z
    :cond_1
    const/4 v0, 0x0

    #@13
    .restart local v0    # "isdown":Z
    goto :goto_0

    #@14
    .line 91
    :sswitch_0
    if-eqz v0, :cond_2

    #@16
    .line 92
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@18
    const/4 v2, -0x1

    #@19
    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    #@1c
    .line 94
    :cond_2
    return v3

    #@1d
    .line 96
    :sswitch_1
    if-eqz v0, :cond_3

    #@1f
    .line 97
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@21
    invoke-virtual {v1, v3}, Landroid/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    #@24
    .line 99
    :cond_3
    return v3

    #@25
    .line 101
    :sswitch_2
    if-eqz v0, :cond_4

    #@27
    .line 102
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@29
    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->muteVolume()V

    #@2c
    .line 104
    :cond_4
    return v3

    #@2d
    .line 89
    nop

    #@2e
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMuted(ZZ)V
    .locals 0
    .param p1, "muted"    # Z
    .param p2, "zenMuted"    # Z

    #@0
    .prologue
    .line 164
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    #@0
    .prologue
    .line 159
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 185
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    const-class v2, Landroid/preference/VolumePreference$SavedState;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    move-object v0, p1

    #@f
    .line 191
    check-cast v0, Landroid/preference/VolumePreference$SavedState;

    #@11
    .line 192
    .local v0, "myState":Landroid/preference/VolumePreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@18
    .line 193
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 194
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@1e
    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    #@25
    .line 184
    :cond_0
    return-void

    #@26
    .line 187
    .end local v0    # "myState":Landroid/preference/VolumePreference$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@29
    .line 188
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "volumizer"    # Landroid/preference/SeekBarVolumizer;

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 154
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@a
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    #@d
    .line 152
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    .line 170
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 171
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->isPersistent()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 173
    return-object v1

    #@b
    .line 176
    :cond_0
    new-instance v0, Landroid/preference/VolumePreference$SavedState;

    #@d
    invoke-direct {v0, v1}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@10
    .line 177
    .local v0, "myState":Landroid/preference/VolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 178
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    #@16
    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Landroid/preference/SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    #@1d
    .line 180
    :cond_1
    return-object v0
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 64
    iput p1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    #@2
    .line 63
    return-void
.end method
