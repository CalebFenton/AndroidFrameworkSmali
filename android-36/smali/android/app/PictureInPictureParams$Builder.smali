.class public Landroid/app/PictureInPictureParams$Builder;
.super Ljava/lang/Object;
.source "PictureInPictureParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAspectRatio:Landroid/util/Rational;

.field private blacklist mAutoEnterEnabled:Ljava/lang/Boolean;

.field private blacklist mCloseAction:Landroid/app/RemoteAction;

.field private blacklist mExpandedAspectRatio:Landroid/util/Rational;

.field private blacklist mIsLaunchIntoPip:Ljava/lang/Boolean;

.field private blacklist mSeamlessResizeEnabled:Ljava/lang/Boolean;

.field private greylist-max-o mSourceRectHint:Landroid/graphics/Rect;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/PictureInPictureParams;)V
    .registers 3
    .param p1, "original"    # Landroid/app/PictureInPictureParams;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmAspectRatio(Landroid/app/PictureInPictureParams;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    .line 78
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmUserActions(Landroid/app/PictureInPictureParams;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    .line 79
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmCloseAction(Landroid/app/PictureInPictureParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    .line 80
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSourceRectHint(Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    .line 81
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmAutoEnterEnabled(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    .line 82
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSeamlessResizeEnabled(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    .line 83
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmTitle(Landroid/app/PictureInPictureParams;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 84
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSubtitle(Landroid/app/PictureInPictureParams;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 85
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmIsLaunchIntoPip(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/PictureInPictureParams;
    .registers 12

    .line 273
    new-instance v0, Landroid/app/PictureInPictureParams;

    iget-object v1, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    iget-object v2, p0, Landroid/app/PictureInPictureParams$Builder;->mExpandedAspectRatio:Landroid/util/Rational;

    iget-object v3, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    iget-object v4, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    iget-object v5, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    iget-object v7, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    iget-object v8, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v10, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    invoke-direct/range {v0 .. v10}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Landroid/util/Rational;Ljava/util/List;Landroid/app/RemoteAction;Landroid/graphics/Rect;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 277
    .local v0, "params":Landroid/app/PictureInPictureParams;
    return-object v0
.end method

.method public whitelist setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)",
            "Landroid/app/PictureInPictureParams$Builder;"
        }
    .end annotation

    .line 131
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    .line 134
    :cond_7
    if-eqz p1, :cond_10

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    .line 137
    :cond_10
    return-object p0
.end method

.method public whitelist setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2
    .param p1, "aspectRatio"    # Landroid/util/Rational;

    .line 97
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    .line 98
    return-object p0
.end method

.method public whitelist setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;
    .registers 3
    .param p1, "autoEnterEnabled"    # Z

    .line 200
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    .line 201
    return-object p0
.end method

.method public whitelist setCloseAction(Landroid/app/RemoteAction;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2
    .param p1, "action"    # Landroid/app/RemoteAction;

    .line 155
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    .line 156
    return-object p0
.end method

.method public whitelist setExpandedAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2
    .param p1, "expandedAspectRatio"    # Landroid/util/Rational;

    .line 115
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mExpandedAspectRatio:Landroid/util/Rational;

    .line 116
    return-object p0
.end method

.method blacklist setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;
    .registers 3
    .param p1, "isLaunchIntoPip"    # Z

    .line 261
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 262
    return-object p0
.end method

.method public whitelist setSeamlessResizeEnabled(Z)Landroid/app/PictureInPictureParams$Builder;
    .registers 3
    .param p1, "seamlessResizeEnabled"    # Z

    .line 217
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    .line 218
    return-object p0
.end method

.method public whitelist setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;
    .registers 3
    .param p1, "launchBounds"    # Landroid/graphics/Rect;

    .line 177
    if-nez p1, :cond_6

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    goto :goto_d

    .line 180
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    .line 182
    :goto_d
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 246
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 247
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/app/PictureInPictureParams$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 230
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 231
    return-object p0
.end method
