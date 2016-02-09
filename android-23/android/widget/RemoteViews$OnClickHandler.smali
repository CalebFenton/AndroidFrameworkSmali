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


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 213
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 216
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@c
    move-result v2

    #@d
    .line 215
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    .line 214
    invoke-static {p1, v3, v4, v1, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    #@12
    move-result-object v9

    #@13
    .line 218
    .local v9, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@16
    move-result-object v1

    #@17
    .line 220
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@1a
    move-result-object v6

    #@1b
    .line 219
    const/high16 v3, 0x10000000

    #@1d
    .line 220
    const/high16 v4, 0x10000000

    #@1f
    const/4 v5, 0x0

    #@20
    move-object v2, p3

    #@21
    .line 217
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 229
    const/4 v1, 0x1

    #@25
    return v1

    #@26
    .line 224
    .end local v0    # "context":Landroid/content/Context;
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v8

    #@27
    .line 225
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RemoteViews"

    #@2a
    const-string/jumbo v2, "Cannot send pending intent due to unknown exception: "

    #@2d
    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    .line 227
    return v10

    #@31
    .line 221
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    #@32
    .line 222
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v1, "RemoteViews"

    #@35
    const-string/jumbo v2, "Cannot send pending intent: "

    #@38
    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 223
    return v10
.end method
