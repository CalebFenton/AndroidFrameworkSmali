.class public final Landroid/service/autofill/Presentations$Builder;
.super Ljava/lang/Object;
.source "Presentations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Presentations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mMenuPresentation:Landroid/widget/RemoteViews;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    .line 178
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 259
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 263
    return-void

    .line 260
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/autofill/Presentations;
    .registers 7

    .line 235
    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    .line 236
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    .line 238
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 239
    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    .line 241
    :cond_1b
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 242
    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 244
    :cond_2a
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 245
    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 247
    :cond_39
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_48

    .line 248
    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 250
    :cond_48
    new-instance v0, Landroid/service/autofill/Presentations;

    iget-object v1, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v3, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/service/autofill/Presentations;-><init>(Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)V

    .line 255
    .local v0, "o":Landroid/service/autofill/Presentations;
    return-object v0
.end method

.method public whitelist setDialogPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;
    .registers 6
    .param p1, "value"    # Landroid/widget/RemoteViews;

    .line 214
    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    .line 215
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    .line 216
    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 217
    return-object p0
.end method

.method public whitelist setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;
    .registers 6
    .param p1, "value"    # Landroid/service/autofill/InlinePresentation;

    .line 200
    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    .line 201
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    .line 202
    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 203
    return-object p0
.end method

.method public whitelist setInlineTooltipPresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;
    .registers 6
    .param p1, "value"    # Landroid/service/autofill/InlinePresentation;

    .line 227
    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    .line 228
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    .line 229
    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 230
    return-object p0
.end method

.method public whitelist setMenuPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;
    .registers 6
    .param p1, "value"    # Landroid/widget/RemoteViews;

    .line 188
    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    .line 189
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    .line 190
    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    .line 191
    return-object p0
.end method
