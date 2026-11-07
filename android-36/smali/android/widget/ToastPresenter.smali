.class public Landroid/widget/ToastPresenter;
.super Ljava/lang/Object;
.source "ToastPresenter.java"


# static fields
.field private static final blacklist LONG_DURATION_TIMEOUT:J = 0x1b58L

.field private static final blacklist SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final blacklist TAG:Ljava/lang/String; = "ToastPresenter"

.field public static final blacklist TEXT_TOAST_LAYOUT:I = 0x1090174

.field public static final blacklist TEXT_TOAST_LAYOUT_WITH_ICON:I = 0x1090175

.field private static final blacklist WINDOW_TITLE:Ljava/lang/String; = "Toast"


# instance fields
.field private final blacklist mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

.field private final blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContextPackageName:Ljava/lang/String;

.field private final blacklist mNotificationManager:Landroid/app/INotificationManager;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mParams:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessibilityManager"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "notificationManager"    # Landroid/app/INotificationManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    .line 106
    iput-object p3, p0, Landroid/widget/ToastPresenter;->mNotificationManager:Landroid/app/INotificationManager;

    .line 107
    iput-object p4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mContextPackageName:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Landroid/widget/ToastPresenter;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 110
    iput-object p2, p0, Landroid/widget/ToastPresenter;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    .line 111
    return-void
.end method

.method private blacklist addToastView()V
    .registers 6

    .line 343
    const-string v0, "ToastPresenter"

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/ToastPresenter;->getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;

    move-result-object v1

    .line 344
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-nez v1, :cond_b

    .line 345
    return-void

    .line 347
    :cond_b
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 348
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 351
    :cond_18
    :try_start_18
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_18 .. :try_end_1f} :catch_40
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_59

    .line 357
    :catch_20
    move-exception v2

    .line 359
    .local v2, "e":Landroid/view/WindowManager$InvalidDisplayException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot show toast from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on display it was scheduled on."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 352
    .end local v2    # "e":Landroid/view/WindowManager$InvalidDisplayException;
    :catch_40
    move-exception v2

    .line 356
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while attempting to show toast from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v2    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_59
    nop

    .line 362
    :goto_5a
    return-void
.end method

.method private blacklist adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;IIIIFFZ)V
    .registers 15
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "duration"    # I
    .param p4, "gravity"    # I
    .param p5, "xOffset"    # I
    .param p6, "yOffset"    # I
    .param p7, "horizontalMargin"    # F
    .param p8, "verticalMargin"    # F
    .param p9, "removeWindowAnimations"    # Z

    .line 165
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 166
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-static {p4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 167
    .local v1, "absGravity":I
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 168
    and-int/lit8 v2, v1, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    if-ne v2, v4, :cond_19

    .line 169
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 171
    :cond_19
    and-int/lit8 v2, v1, 0x70

    const/16 v4, 0x70

    if-ne v2, v4, :cond_21

    .line 172
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 174
    :cond_21
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 175
    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 176
    iput p7, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 177
    iput p8, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 178
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mContextPackageName:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 179
    nop

    .line 180
    const/4 v2, 0x1

    if-ne p3, v2, :cond_34

    const-wide/16 v2, 0x1b58

    goto :goto_36

    :cond_34
    const-wide/16 v2, 0xfa0

    :goto_36
    iput-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 181
    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 183
    if-eqz p9, :cond_46

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v3, 0x1030004

    if-ne v2, v3, :cond_46

    .line 184
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 186
    :cond_46
    return-void
.end method

.method private blacklist createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .line 143
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 144
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 146
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 147
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 148
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 150
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/widget/ToastPresenter;->setShowForAllUsersIfApplicable(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method public static blacklist getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090174

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object v0
.end method

.method public static blacklist getTextToastViewWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 78
    if-nez p2, :cond_7

    .line 79
    invoke-static {p0, p1}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 82
    :cond_7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090175

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 86
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_2d

    .line 87
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_2d
    return-object v0
.end method

.method private blacklist getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 297
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 298
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    :cond_10
    if-eqz v0, :cond_1b

    .line 302
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    return-object v1

    .line 304
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isCrossUserPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v1, 0x10700db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private blacklist setShowForAllUsersIfApplicable(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 220
    invoke-direct {p0, p2}, Landroid/widget/ToastPresenter;->isCrossUserPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 221
    const/16 v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 223
    :cond_a
    return-void
.end method


# virtual methods
.method public blacklist getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist hide(Landroid/app/ITransientNotificationCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/app/ITransientNotificationCallback;

    .line 273
    const-string v0, "ToastPresenter"

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "No toast to hide."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 275
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/ToastPresenter;->getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;

    move-result-object v1

    .line 276
    .local v1, "windowManager":Landroid/view/WindowManager;
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v1, :cond_23

    .line 277
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 280
    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_2d

    .line 283
    goto :goto_46

    .line 281
    :catch_2d
    move-exception v2

    .line 282
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error finishing toast window token from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_46
    if-eqz p1, :cond_6b

    .line 286
    :try_start_48
    invoke-interface {p1}, Landroid/app/ITransientNotificationCallback;->onToastHidden()V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 290
    goto :goto_6b

    .line 287
    :catch_4c
    move-exception v2

    .line 288
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to notify onToastHide()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6b
    :goto_6b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    .line 293
    iput-object v0, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    .line 294
    return-void
.end method

.method public blacklist show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "duration"    # I
    .param p5, "gravity"    # I
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "horizontalMargin"    # F
    .param p9, "verticalMargin"    # F
    .param p10, "callback"    # Landroid/app/ITransientNotificationCallback;

    .line 237
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V

    .line 239
    return-void
.end method

.method public blacklist show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "duration"    # I
    .param p5, "gravity"    # I
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "horizontalMargin"    # F
    .param p9, "verticalMargin"    # F
    .param p10, "callback"    # Landroid/app/ITransientNotificationCallback;
    .param p11, "removeWindowAnimations"    # Z

    .line 248
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v2, "Only one toast at a time is allowed, call hide() first."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 249
    iput-object p1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    .line 250
    iput-object p2, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    .line 252
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Landroid/widget/ToastPresenter;->adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;IIIIFFZ)V

    .line 254
    invoke-direct {p0}, Landroid/widget/ToastPresenter;->addToastView()V

    .line 255
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ToastPresenter;->trySendAccessibilityEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 256
    if-eqz p10, :cond_55

    .line 258
    :try_start_30
    invoke-interface/range {p10 .. p10}, Landroid/app/ITransientNotificationCallback;->onToastShown()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    .line 261
    goto :goto_55

    .line 259
    :catch_34
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to notify onToastShow()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ToastPresenter"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_55
    :goto_55
    return-void
.end method

.method public blacklist trySendAccessibilityEvent(Landroid/view/View;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 313
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_b

    .line 314
    return-void

    .line 323
    :cond_b
    new-instance v1, Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    .line 324
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    .line 326
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_20

    .line 327
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    .line 328
    return-void

    .line 330
    :cond_20
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 332
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v3, Landroid/widget/Toast;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 335
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 339
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    .line 340
    return-void
.end method

.method public blacklist updateLayoutParams(IIFFI)V
    .registers 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "horizontalMargin"    # F
    .param p4, "verticalMargin"    # F
    .param p5, "gravity"    # I

    .line 194
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Toast must be showing to update its layout parameters."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 195
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 196
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-static {p5, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 197
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 198
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 199
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 200
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 201
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-void
.end method
