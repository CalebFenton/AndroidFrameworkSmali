.class public final Landroid/content/ClipData$Item$Builder;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHtmlText:Ljava/lang/String;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mIntentSender:Landroid/content/IntentSender;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/ClipData$Item;
    .registers 8

    .line 305
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v1, p0, Landroid/content/ClipData$Item$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/content/ClipData$Item$Builder;->mHtmlText:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/ClipData$Item$Builder;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Landroid/content/ClipData$Item$Builder;->mIntentSender:Landroid/content/IntentSender;

    iget-object v5, p0, Landroid/content/ClipData$Item$Builder;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;Landroid/content/ClipData-IA;)V

    return-object v0
.end method

.method public whitelist setHtmlText(Ljava/lang/String;)Landroid/content/ClipData$Item$Builder;
    .registers 2
    .param p1, "htmlText"    # Ljava/lang/String;

    .line 257
    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mHtmlText:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/content/ClipData$Item$Builder;
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 267
    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mIntent:Landroid/content/Intent;

    .line 268
    return-object p0
.end method

.method public whitelist setIntentSender(Landroid/content/IntentSender;)Landroid/content/ClipData$Item$Builder;
    .registers 4
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 282
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/IntentSender;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 283
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected intent sender to be immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_11
    :goto_11
    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mIntentSender:Landroid/content/IntentSender;

    .line 286
    return-object p0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/content/ClipData$Item$Builder;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 247
    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mText:Ljava/lang/CharSequence;

    .line 248
    return-object p0
.end method

.method public whitelist setUri(Landroid/net/Uri;)Landroid/content/ClipData$Item$Builder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 295
    iput-object p1, p0, Landroid/content/ClipData$Item$Builder;->mUri:Landroid/net/Uri;

    .line 296
    return-object p0
.end method
