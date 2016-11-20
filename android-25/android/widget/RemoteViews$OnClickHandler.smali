.class public Landroid/widget/RemoteViews$OnClickHandler;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickHandler"
.end annotation


# instance fields
.field private mEnterAnimationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 233
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "launchStackId"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 240
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 242
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 243
    iget v1, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    #@f
    move-result-object v9

    #@10
    .line 250
    .local v9, "opts":Landroid/app/ActivityOptions;
    :goto_0
    const/4 v1, -0x1

    #@11
    if-eq p4, v1, :cond_0

    #@13
    .line 251
    invoke-virtual {v9, p4}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    #@16
    .line 254
    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@19
    move-result-object v1

    #@1a
    .line 256
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@1d
    move-result-object v6

    #@1e
    .line 255
    const/high16 v3, 0x10000000

    #@20
    .line 256
    const/high16 v4, 0x10000000

    #@22
    const/4 v5, 0x0

    #@23
    move-object v2, p3

    #@24
    .line 253
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    #@27
    .line 265
    const/4 v1, 0x1

    #@28
    return v1

    #@29
    .line 247
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@2c
    move-result v1

    #@2d
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@30
    move-result v2

    #@31
    .line 246
    const/4 v3, 0x0

    #@32
    const/4 v4, 0x0

    #@33
    .line 245
    invoke-static {p1, v3, v4, v1, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result-object v9

    #@37
    .restart local v9    # "opts":Landroid/app/ActivityOptions;
    goto :goto_0

    #@38
    .line 260
    .end local v0    # "context":Landroid/content/Context;
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v8

    #@39
    .line 261
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RemoteViews"

    #@3c
    const-string/jumbo v2, "Cannot send pending intent due to unknown exception: "

    #@3f
    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 263
    return v10

    #@43
    .line 257
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    #@44
    .line 258
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v1, "RemoteViews"

    #@47
    const-string/jumbo v2, "Cannot send pending intent: "

    #@4a
    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    .line 259
    return v10
.end method

.method public setEnterAnimationId(I)V
    .locals 0
    .param p1, "enterAnimationId"    # I

    #@0
    .prologue
    .line 269
    iput p1, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    #@2
    .line 268
    return-void
.end method
