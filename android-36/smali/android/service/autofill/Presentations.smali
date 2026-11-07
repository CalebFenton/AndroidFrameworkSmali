.class public final Landroid/service/autofill/Presentations;
.super Ljava/lang/Object;
.source "Presentations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/Presentations$Builder;
    }
.end annotation


# instance fields
.field private blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mMenuPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultDialogPresentation()Landroid/widget/RemoteViews;
    .registers 1

    invoke-static {}, Landroid/service/autofill/Presentations;->defaultDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultInlinePresentation()Landroid/service/autofill/InlinePresentation;
    .registers 1

    invoke-static {}, Landroid/service/autofill/Presentations;->defaultInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;
    .registers 1

    invoke-static {}, Landroid/service/autofill/Presentations;->defaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultMenuPresentation()Landroid/widget/RemoteViews;
    .registers 1

    invoke-static {}, Landroid/service/autofill/Presentations;->defaultMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)V
    .registers 5
    .param p1, "menuPresentation"    # Landroid/widget/RemoteViews;
    .param p2, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p3, "dialogPresentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/service/autofill/Presentations;->mMenuPresentation:Landroid/widget/RemoteViews;

    .line 115
    iput-object p2, p0, Landroid/service/autofill/Presentations;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 116
    iput-object p3, p0, Landroid/service/autofill/Presentations;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 117
    iput-object p4, p0, Landroid/service/autofill/Presentations;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 119
    invoke-direct {p0}, Landroid/service/autofill/Presentations;->onConstructed()V

    .line 120
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    return-void
.end method

.method private static blacklist defaultDialogPresentation()Landroid/widget/RemoteViews;
    .registers 1

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultInlinePresentation()Landroid/service/autofill/InlinePresentation;
    .registers 1

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;
    .registers 1

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultMenuPresentation()Landroid/widget/RemoteViews;
    .registers 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist onConstructed()V
    .registers 3

    .line 82
    iget-object v0, p0, Landroid/service/autofill/Presentations;->mMenuPresentation:Landroid/widget/RemoteViews;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mDialogPresentation:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_d

    goto :goto_15

    .line 85
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All presentations are null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v0, :cond_1e

    goto :goto_26

    .line 88
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inline presentation is required for mInlineTooltipPresentation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public whitelist getDialogPresentation()Landroid/widget/RemoteViews;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/service/autofill/Presentations;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public whitelist getInlinePresentation()Landroid/service/autofill/InlinePresentation;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object v0
.end method

.method public whitelist getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object v0
.end method

.method public whitelist getMenuPresentation()Landroid/widget/RemoteViews;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/service/autofill/Presentations;->mMenuPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method
