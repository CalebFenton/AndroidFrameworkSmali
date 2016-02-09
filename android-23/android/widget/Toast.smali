.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Landroid/widget/Toast$TN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    #@5
    .line 101
    new-instance v0, Landroid/widget/Toast$TN;

    #@7
    invoke-direct {v0}, Landroid/widget/Toast$TN;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@c
    .line 102
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object v1

    #@12
    .line 103
    const v2, 0x1050016

    #@15
    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@18
    move-result v1

    #@19
    iput v1, v0, Landroid/widget/Toast$TN;->mY:I

    #@1b
    .line 104
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@1d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v1

    #@21
    .line 105
    const v2, 0x10e0088

    #@24
    .line 104
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@27
    move-result v1

    #@28
    iput v1, v0, Landroid/widget/Toast$TN;->mGravity:I

    #@2a
    .line 99
    return-void
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    #@0
    .prologue
    .line 320
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 321
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    #@6
    return-object v0

    #@7
    .line 323
    :cond_0
    const-string/jumbo v0, "notification"

    #@a
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    #@14
    .line 324
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    #@16
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 259
    new-instance v1, Landroid/widget/Toast;

    #@2
    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    #@5
    .line 262
    .local v1, "result":Landroid/widget/Toast;
    const-string/jumbo v4, "layout_inflater"

    #@8
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 261
    check-cast v0, Landroid/view/LayoutInflater;

    #@e
    .line 263
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v4, 0x10900f5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@15
    move-result-object v3

    #@16
    .line 264
    .local v3, "v":Landroid/view/View;
    const v4, 0x102000b

    #@19
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/widget/TextView;

    #@1f
    .line 265
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 267
    iput-object v3, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    #@24
    .line 268
    iput p2, v1, Landroid/widget/Toast;->mDuration:I

    #@26
    .line 270
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    #@0
    .prologue
    .line 134
    iget-object v1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    invoke-virtual {v1}, Landroid/widget/Toast$TN;->hide()V

    #@5
    .line 137
    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    #@8
    move-result-object v1

    #@9
    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@11
    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 133
    :goto_0
    return-void

    #@15
    .line 138
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    #@0
    .prologue
    .line 174
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    #@2
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    #@4
    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    #@4
    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    #@4
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    invoke-static {v0}, Landroid/widget/Toast$TN;->-get0(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    #@4
    return v0
.end method

.method public getYOffset()I
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    #@4
    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 165
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    #@2
    .line 164
    return-void
.end method

.method public setGravity(III)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    #@4
    .line 213
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@6
    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    #@8
    .line 214
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@a
    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    #@c
    .line 211
    return-void
.end method

.method public setMargin(FF)V
    .locals 1
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@2
    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    #@4
    .line 189
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@6
    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    #@8
    .line 187
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    #@9
    .line 293
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 302
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 303
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "This Toast was not created with Toast.makeText()"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 305
    :cond_0
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    #@f
    const v2, 0x102000b

    #@12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/widget/TextView;

    #@18
    .line 306
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    #@1a
    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v2, "This Toast was not created with Toast.makeText()"

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 309
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@26
    .line 301
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    #@2
    .line 147
    return-void
.end method

.method public show()V
    .locals 6

    #@0
    .prologue
    .line 112
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 113
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "setView must have been called"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 116
    :cond_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    #@10
    move-result-object v2

    #@11
    .line 117
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 118
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    #@19
    .line 119
    .local v3, "tn":Landroid/widget/Toast$TN;
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    #@1b
    iput-object v4, v3, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    #@1d
    .line 122
    :try_start_0
    iget v4, p0, Landroid/widget/Toast;->mDuration:I

    #@1f
    invoke-interface {v2, v1, v3, v4}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 111
    :goto_0
    return-void

    #@23
    .line 123
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
