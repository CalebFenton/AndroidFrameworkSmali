.class public Landroid/app/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ProgressDialog;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    #@6
    .line 78
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    #@9
    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    #@6
    .line 83
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    #@9
    .line 81
    return-void
.end method

.method private initFormats()V
    .locals 2

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, "%1d/%2d"

    #@3
    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    #@5
    .line 88
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    #@b
    .line 89
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@11
    .line 86
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 354
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    #@3
    const/4 v1, 0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 355
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 353
    :cond_0
    :goto_0
    return-void

    #@13
    .line 356
    :cond_1
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    #@15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@18
    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 94
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    #@0
    .prologue
    .line 99
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    #@0
    .prologue
    .line 104
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    #@0
    .prologue
    .line 110
    new-instance v0, Landroid/app/ProgressDialog;

    #@2
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #@5
    .line 111
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@8
    .line 112
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@b
    .line 113
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@e
    .line 114
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    #@11
    .line 115
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@14
    .line 116
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    #@17
    .line 117
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 247
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 249
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mMax:I

    #@d
    return v0
.end method

.method public getProgress()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 233
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 235
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    #@d
    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 240
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 242
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    #@d
    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 263
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    #@9
    .line 264
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    #@c
    .line 261
    :goto_0
    return-void

    #@d
    .line 266
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    #@f
    add-int/2addr v0, p1

    #@10
    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    #@12
    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 272
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    #@9
    .line 273
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    #@c
    .line 270
    :goto_0
    return-void

    #@d
    .line 275
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    #@f
    add-int/2addr v0, p1

    #@10
    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    #@12
    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 305
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 307
    :cond_0
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    #@d
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const v8, 0x102000d

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    .line 122
    iget-object v3, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    #@7
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@a
    move-result-object v1

    #@b
    .line 123
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    #@d
    .line 124
    sget-object v4, Lcom/android/internal/R$styleable;->AlertDialog:[I

    #@f
    .line 125
    const v5, 0x101005d

    #@12
    .line 123
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@15
    move-result-object v0

    #@16
    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    #@18
    const/4 v4, 0x1

    #@19
    if-ne v3, v4, :cond_8

    #@1b
    .line 131
    new-instance v3, Landroid/app/ProgressDialog$1;

    #@1d
    invoke-direct {v3, p0}, Landroid/app/ProgressDialog$1;-><init>(Landroid/app/ProgressDialog;)V

    #@20
    iput-object v3, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    #@22
    .line 157
    const/16 v3, 0x11

    #@24
    .line 158
    const v4, 0x109002d

    #@27
    .line 156
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@2e
    move-result-object v2

    #@2f
    .line 159
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/widget/ProgressBar;

    #@35
    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@37
    .line 160
    const v3, 0x10202fe

    #@3a
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Landroid/widget/TextView;

    #@40
    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    #@42
    .line 161
    const v3, 0x10202fd

    #@45
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Landroid/widget/TextView;

    #@4b
    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    #@4d
    .line 162
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    #@50
    .line 171
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@53
    .line 172
    iget v3, p0, Landroid/app/ProgressDialog;->mMax:I

    #@55
    if-lez v3, :cond_0

    #@57
    .line 173
    iget v3, p0, Landroid/app/ProgressDialog;->mMax:I

    #@59
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    #@5c
    .line 175
    :cond_0
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    #@5e
    if-lez v3, :cond_1

    #@60
    .line 176
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    #@62
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    #@65
    .line 178
    :cond_1
    iget v3, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    #@67
    if-lez v3, :cond_2

    #@69
    .line 179
    iget v3, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    #@6b
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    #@6e
    .line 181
    :cond_2
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    #@70
    if-lez v3, :cond_3

    #@72
    .line 182
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    #@74
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    #@77
    .line 184
    :cond_3
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    #@79
    if-lez v3, :cond_4

    #@7b
    .line 185
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    #@7d
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    #@80
    .line 187
    :cond_4
    iget-object v3, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@82
    if-eqz v3, :cond_5

    #@84
    .line 188
    iget-object v3, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@86
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@89
    .line 190
    :cond_5
    iget-object v3, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@8b
    if-eqz v3, :cond_6

    #@8d
    .line 191
    iget-object v3, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@8f
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@92
    .line 193
    :cond_6
    iget-object v3, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    #@94
    if-eqz v3, :cond_7

    #@96
    .line 194
    iget-object v3, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    #@98
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@9b
    .line 196
    :cond_7
    iget-boolean v3, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    #@9d
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@a0
    .line 197
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    #@a3
    .line 198
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    #@a6
    .line 121
    return-void

    #@a7
    .line 165
    .end local v2    # "view":Landroid/view/View;
    :cond_8
    const/16 v3, 0x10

    #@a9
    .line 166
    const v4, 0x10900b7

    #@ac
    .line 164
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@af
    move-result v3

    #@b0
    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@b3
    move-result-object v2

    #@b4
    .line 167
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@b7
    move-result-object v3

    #@b8
    check-cast v3, Landroid/widget/ProgressBar;

    #@ba
    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@bc
    .line 168
    const v3, 0x102000b

    #@bf
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@c2
    move-result-object v3

    #@c3
    check-cast v3, Landroid/widget/TextView;

    #@c5
    iput-object v3, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    #@c7
    .line 169
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    #@ca
    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    #@0
    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    #@3
    .line 204
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    #@6
    .line 202
    return-void
.end method

.method protected onStop()V
    .locals 1

    #@0
    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    #@3
    .line 210
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    #@6
    .line 208
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 297
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@9
    .line 295
    :goto_0
    return-void

    #@a
    .line 299
    :cond_0
    iput-boolean p1, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    #@c
    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 289
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 287
    :goto_0
    return-void

    #@a
    .line 291
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 254
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    #@9
    .line 255
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    #@c
    .line 252
    :goto_0
    return-void

    #@d
    .line 257
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mMax:I

    #@f
    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 313
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 314
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@c
    .line 311
    :goto_0
    return-void

    #@d
    .line 316
    :cond_0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@12
    goto :goto_0

    #@13
    .line 319
    :cond_1
    iput-object p1, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    #@15
    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 214
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 215
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@9
    .line 216
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    #@c
    .line 213
    :goto_0
    return-void

    #@d
    .line 218
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    #@f
    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 281
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 279
    :goto_0
    return-void

    #@a
    .line 283
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 336
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    #@2
    .line 337
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    #@5
    .line 335
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    #@0
    .prologue
    .line 349
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    #@2
    .line 350
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    #@5
    .line 348
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    #@0
    .prologue
    .line 324
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    #@2
    .line 323
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 224
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@9
    .line 225
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    #@c
    .line 222
    :goto_0
    return-void

    #@d
    .line 227
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    #@f
    goto :goto_0
.end method
